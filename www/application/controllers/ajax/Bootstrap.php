<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Bootstrap extends CI_Controller
{
    public function orders()
    {
        // Product categories
        $categories = $this->db->select("*")
                                ->from("product_categories pc")
                                ->where("pc.status", "1")
                                ->order_by("pc.display_order, pc.name", "asc")
                                ->get()
                                ->result();

        // All active products with category info
        $products = $this->db->select("p.*, pc.name AS categoryName")
                             ->from("products p")
                             ->join("product_categories pc", "pc.id=p.category_id", "left")
                             ->where("p.status", "1")
                             ->order_by("p.display_order, p.name", "asc")
                             ->get()
                             ->result();

        // Addons mapped by category id (using existing relation to products)
        $addons_by_category = array();
        $addons_rows = $this->db->select('ac.product_category_id, ad.*')
                                ->from("addons_categories ac")
                                ->join("product_categories pc", "pc.id=ac.product_category_id")
                                ->join("products ad", "ad.id=ac.addon_id", "left")
                                ->order_by("ad.display_order", "asc")
                                ->get()
                                ->result();
        foreach ($addons_rows as $row) {
            $catId = $row->product_category_id;
            if (!isset($addons_by_category[$catId])) $addons_by_category[$catId] = array();
            $addons_by_category[$catId][] = $row;
        }

        echo json_encode(array(
            "result" => true,
            "categories" => $categories,
            "products" => $products,
            "addons_by_category" => $addons_by_category,
            "rows" => count($products)
        ));
        exit;
    }
}

