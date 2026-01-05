var reportType = null;

jQuery(function(){

    // Ensure modal backdrop is removed when modal is hidden
    $('#loadingModal').on('hidden.bs.modal', function () {
        $('body').removeClass('modal-open');
        $('.modal-backdrop').remove();
    });

    $('#type').on("change",function(){
        let reportType = $(this).val();
        if(reportType.length>0){
            $('#dayBlock, #monthBlock, #yearBlock, #customBlock').addClass("d-none");
            $('#'+reportType+"Block").removeClass("d-none");
            $('#action').removeClass("d-none");
        }else{
            $('#dayBlock, #monthBlock, #yearBlock, #customBlock, #action').addClass("d-none");
        }

    })

    $('#proceed').on("click",function(){
        let $btn = $(this);
        let originalHtml = $btn.html();
        
        let type = $('#type :selected').val();
        let singleDate = $('input[name=singleDate]').val();
        let mMonth = $('select[name=mMonth] :selected').val();
        let mYear = $('select[name=mYear] :selected').val();
        let year = $('select[name=year] :selected').val();
        let dateRange = $('input[name=dateRange]').val();
        
        // Validate based on selected type
        let isValid = true;
        let errorMessage = "";
        
        if(!type || type === ""){
            isValid = false;
            errorMessage = "Please select a date range type";
        } else if(type == 'day') {
            if(!singleDate || singleDate === ""){
                isValid = false;
                errorMessage = "Please select a date";
            }
        } else if(type == 'month') {
            if(!mMonth || mMonth === ""){
                isValid = false;
                errorMessage = "Please select a month";
            } else if(!mYear || mYear === ""){
                isValid = false;
                errorMessage = "Please select a year";
            }
        } else if(type == 'year') {
            if(!year || year === ""){
                isValid = false;
                errorMessage = "Please select a year";
            }
        } else if(type == 'custom') {
            if(!dateRange || dateRange === ""){
                isValid = false;
                errorMessage = "Please select a date range";
            }
        }
        
        // If validation fails, show error and return
        if(!isValid){
            toastr["error"](errorMessage);
            return false;
        }
        
        // Show loader and disable button
        $btn.prop('disabled', true);
        $btn.html('<i class="fa fa-spinner fa-spin"></i> Loading...');
        
        // Show loading modal - ensure it's properly reset first
        $('#loadingModal').removeClass('show').css('display', 'none').attr('aria-hidden', 'true');
        $('body').removeClass('modal-open');
        $('.modal-backdrop').remove();
        
        // Now show it properly
        $('#loadingModal').modal('show');
        
        let includeAddons = $('#includeAddons').is(':checked') ? 1 : 0;
        let url = base_url + "reports/products"

        if(type == 'day') {
            window.history.pushState({},"", url + "?type=day&date="+singleDate)
        } else if(type == 'month') {
            window.history.pushState({},"", url + "?type=month&month="+mMonth+"&year="+mYear)
        } else if(type == 'year') {
            window.history.pushState({},"", url + "?type=year&year="+year)
        } else {
            window.history.pushState({},"", url + "?type=custom&dateRange="+dateRange)
        }

        $.ajax({
            url: base_url + "reports/processProducts",
            method:"POST",
            dataType:"JSON",
            data:{type:type,singleDate:singleDate,mMonth:mMonth, mYear:mYear,year:year,dateRange:dateRange,includeAddons:includeAddons},
            success: function(response) {
                // Close modal and clean up
                $('#loadingModal').modal('hide');
                
                // Ensure cleanup after modal animation completes
                setTimeout(function() {
                    $('#loadingModal').removeClass('show').css('display', 'none').attr('aria-hidden', 'true');
                    $('body').removeClass('modal-open');
                    $('.modal-backdrop').remove();
                }, 150);
                
                // Restore button
                $btn.prop('disabled', false);
                $btn.html(originalHtml);
                
                if(response.result){
                    if(response.rows == 0){
                        $('#result table tbody').empty();
                        $('#result').addClass("d-none");
                        toastr["error"]("Unfortunately your query returned no rows")
                        return false;
                    }
                    $('#result table tbody').empty();
                    let totalProducts = 0;
                    let totalQuantity = 0;
                    $(response.products).each(function(i,row){
                        totalProducts++;
                        totalQuantity += parseFloat(row.total_quantity);
                        let productType = row.product_type === 'addon' ? '<span class="badge badge-info">Addon</span>' : '<span class="badge badge-primary">Product</span>';
                        let html = "<tr>";
                        html += "<td>" + row.product_name + "</td>";
                        html += "<td>" + row.stockref + "</td>";
                        html += "<td>" + productType + "</td>";
                        html += "<td>" + (row.category_name || 'N/A') + "</td>";
                        html += "<td class='text-right'>" + parseFloat(row.total_quantity).toFixed(2) + "</td>";
                        html += "</tr>";
                        $('#result table tbody').append(html);
                    })
                    $('#totalProducts').text(totalProducts);
                    $('#result table tbody').append("<tr class='table-info'><td colspan='4' class='text-right'><strong>Total Quantity Sold:</strong></td><td class='text-right'><strong>"+parseFloat(totalQuantity).toFixed(2)+"</strong></td></tr>");
                    $('#result').removeClass("d-none");

                }

            },
            error: function(xhr, status, error) {
                // Close modal and clean up on error
                $('#loadingModal').modal('hide');
                
                // Ensure cleanup after modal animation completes
                setTimeout(function() {
                    $('#loadingModal').removeClass('show').css('display', 'none').attr('aria-hidden', 'true');
                    $('body').removeClass('modal-open');
                    $('.modal-backdrop').remove();
                }, 150);
                
                // Restore button on error
                $btn.prop('disabled', false);
                $btn.html(originalHtml);
                
                toastr["error"]("An error occurred while processing your request. Please try again.");
                console.error("AJAX Error:", error);
            }
        })
    })

    $('.rangepicker').daterangepicker({
        "showDropdowns": true,
        "autoApply": true,
        "locale": {
            "format": "YYYY-MM-DD",
            "separator": " - ",
            "firstDay": 1
        },
        ranges: {
            'Today': [moment(), moment()],
            'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
            'Last 7 Days': [moment().subtract(6, 'days'), moment()],
            'Last 30 Days': [moment().subtract(29, 'days'), moment()],
            'This Month': [moment().startOf('month'), moment().endOf('month')],
            'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
        },
        "alwaysShowCalendars": true,
        "startDate": moment(),
        "endDate": moment()
    }, 
    function(start, end, label) {
        console.log('New date range selected: ' + start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD') + ' (predefined range: ' + label + ')');
    });

    $('.singledatepicker').daterangepicker({
        "singleDatePicker": true,
        "showDropdowns": true,
        "maxYear": moment().year(),
        "autoApply": true,
        "locale": {
            "format": "YYYY-MM-DD",
            "separator": " - ",
            "firstDay": 1
        },
        ranges: {
            'Today': [moment(), moment()],
            'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
            'Last 7 Days': [moment().subtract(6, 'days'), moment()],
            'Last 30 Days': [moment().subtract(29, 'days'), moment()],
            'This Month': [moment().startOf('month'), moment().endOf('month')],
            'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
        },
        "alwaysShowCalendars": true,
        "startDate": moment(),
        "endDate": moment()
    }, 
    function(start, end, label) {
        console.log('New date range selected: ' + start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD') + ' (predefined range: ' + label + ')');
    });
})

