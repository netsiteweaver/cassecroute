<?php defined('BASEPATH') or exit('No direct script access allowed');

class Reports extends MY_Controller
{

    public $data;

    public function __construct()
    {
        parent::__construct();
        $this->data['controller']   = str_replace("-", "", $this->uri->segment(1, "dashboard"));
        $this->data['method']       = $this->uri->segment(2, "index");
        $this->mybreadcrumb->add('Reports', base_url('reports/index'));
        $this->load->model("accesscontrol_model");
        $this->load->model("orders_model");
        $this->load->model("system_model");
    }

    public function index()
    {
        //Access Control
        if (!isAuthorised("reports","index")) return false;

        //Breadcrumbs
        $this->mybreadcrumb->add('Reports', base_url('reports/index'));
        $this->data['breadcrumbs'] = $this->mybreadcrumb->render();
        $this->data['page_title'] = "Reports Selector";

        $this->data["content"] = $this->load->view("/reports/index", $this->data, true);
        $this->load->view("/layouts/AdminLTE-3.2.0/default",$this->data);
    }

    public function orders()
    {
        //Access Control
        if (!isAuthorised("reports","orders")) return false;

        //Breadcrumbs
        $this->mybreadcrumb->add('Orders', base_url('reports/orders'));
        $this->data['breadcrumbs'] = $this->mybreadcrumb->render();
        $this->data['page_title'] = "Orders Report";

        $this->data['agents'] = $this->db->select("id,name")->from("users")->where("status","1")->get()->result();
        $this->data['payment_modes'] = $this->db->select("id,name")->from("payment_modes")->where("status","1")->get()->result();

        $this->data["content"] = $this->load->view("/reports/orders", $this->data, true);
        $this->load->view("/layouts/AdminLTE-3.2.0/default",$this->data);
    }

    public function processOrders()
    {
        $type = $this->input->post("type");
        $singleDate = $this->input->post("singleDate");
        $mMonth = $this->input->post("mMonth");
        $mYear = $this->input->post("mYear");
        $year = $this->input->post("year");
        $dateRange = $this->input->post("dateRange");
        $dt = explode(" - ",$dateRange);
        $startDate = $dt[0];
        $endDate = $dt[1];
        $options = $this->input->post("options");

        // debug($options);

        $this->db->select("
                o.*
                , u.name as agent
                , pm.name paymentMode
                ")
                ->from("orders o")
                ->join("users u","u.id=o.created_by","left")
                ->join("payment_modes pm","pm.id=o.payment_mode_id","left");
        $this->db->where("o.status","1");

        switch($type){
            case "day":
                $this->db->where(["DATE(o.order_date)"=>$singleDate]);
                break;
            case "month":
                $this->db->where(["MONTH(o.order_date)"=>$mMonth,"YEAR(o.order_date)"=>$mYear]);
                break;
            case "year":
                $this->db->where(["YEAR(o.order_date)"=>$year]);
                break;
            case "custom":
                $this->db->where(["DATE(o.order_date)>="=>$dt[0],"DATE(o.order_date)<="=>$dt[1]]);
                break;
        }
        if(!empty($options['payment_mode_only'])) $this->db->where("o.payment_mode_id",$options['payment_mode_only']);
        if(!empty($options['agent_only'])) $this->db->where("o.created_by",$options['agent_only']);
        $this->db->order_by($options['sort_by'],$options['sort_dir']);
        $orders = $this->db->get()->result(); 
        echo json_encode(array(
            "result"        =>  true,
            "rows"          =>  count($orders),
            "orders"        =>  $orders,
            "query"         =>  $this->db->last_query()
        ));
        exit;     
    }

    public function products()
    {
        //Access Control
        if (!isAuthorised("reports","products")) return false;

        //Breadcrumbs
        $this->mybreadcrumb->add('Products', base_url('reports/products'));
        $this->data['breadcrumbs'] = $this->mybreadcrumb->render();
        $this->data['page_title'] = "Products Report";

        // Get distinct years from orders table
        $years = $this->db->select("YEAR(order_date) as year")
            ->from("orders")
            ->where("status", "1")
            ->group_by("YEAR(order_date)")
            ->order_by("year", "DESC")
            ->get()
            ->result();
        
        $this->data['years'] = $years;

        $this->data["content"] = $this->load->view("/reports/products", $this->data, true);
        $this->load->view("/layouts/AdminLTE-3.2.0/default",$this->data);
    }

    public function processProducts()
    {
        $type = $this->input->post("type");
        $singleDate = $this->input->post("singleDate");
        $mMonth = $this->input->post("mMonth");
        $mYear = $this->input->post("mYear");
        $year = $this->input->post("year");
        $dateRange = $this->input->post("dateRange");
        $includeAddons = $this->input->post("includeAddons");
        
        $this->db->select("
                p.id,
                p.name as product_name,
                p.stockref,
                p.type as product_type,
                pc.name as category_name,
                SUM(od.quantity) as total_quantity
                ")
                ->from("order_details od")
                ->join("orders o","o.id=od.order_id","inner")
                ->join("products p","p.id=od.product_id","inner")
                ->join("product_categories pc","pc.id=p.category_id","left")
                ->where("o.status","1");
        
        // Only filter by product type if addons are not included
        if(empty($includeAddons) || $includeAddons == 0){
            $this->db->where("p.type","product");
        }
        
        $this->db->group_by("p.id, p.name, p.stockref, p.type, pc.name");

        switch($type){
            case "day":
                if(!empty($singleDate)){
                    $this->db->where(["DATE(o.order_date)"=>$singleDate]);
                }
                break;
            case "month":
                if(!empty($mMonth) && !empty($mYear)){
                    $this->db->where(["MONTH(o.order_date)"=>$mMonth,"YEAR(o.order_date)"=>$mYear]);
                }
                break;
            case "year":
                if(!empty($year)){
                    $this->db->where(["YEAR(o.order_date)"=>$year]);
                }
                break;
            case "custom":
                if(!empty($dateRange)){
                    $dt = explode(" - ",$dateRange);
                    if(isset($dt[0]) && isset($dt[1]) && !empty($dt[0]) && !empty($dt[1])){
                        $this->db->where(["DATE(o.order_date)>="=>trim($dt[0]),"DATE(o.order_date)<="=>trim($dt[1])]);
                    }
                }
                break;
        }

        $this->db->order_by("total_quantity","desc");
        $products = $this->db->get()->result(); 
        
        echo json_encode(array(
            "result"        =>  true,
            "rows"          =>  count($products),
            "products"      =>  $products,
            "query"         =>  $this->db->last_query()
        ));
        exit;     
    }
}
