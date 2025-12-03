<?php if($_settings->chk_flashdata('success')): ?>
<script>
	alert_toast("<?php echo $_settings->flashdata('success') ?>",'success')
</script>
<?php endif;?>
<?php
if(isset($_GET['id']) && $_GET['id'] > 0){
    $qry = $conn->query("SELECT * from `po_list` where id = '{$_GET['id']}' ");
    if($qry->num_rows > 0){
        foreach($qry->fetch_assoc() as $k => $v){
            $$k=$v;
        }
    }
}
?>
<style>
    span.select2-selection.select2-selection--single {
        border-radius: 0;
        padding: 0.25rem 0.5rem;
        padding-top: 0.25rem;
        padding-right: 0.5rem;
        padding-bottom: 0.25rem;
        padding-left: 0.5rem;
        height: auto;
    }
	/* Chrome, Safari, Edge, Opera */
		input::-webkit-outer-spin-button,
		input::-webkit-inner-spin-button {
		-webkit-appearance: none;
		margin: 0;
		}

		/* Firefox */
		input[type=number] {
		-moz-appearance: textfield;
		}
		[name="tax_percentage"],[name="discount_percentage"]{
			width:5vw;
		}
        .header-container {
        position: relative;
        width: 100%;
    }
    .status-text {
        position: absolute;
        top: 160px;
        right: 15px;
        font-size: 25px;
        font-weight: bold;
        color: #dc3545;
        text-transform:TOGGLE_CASE;
        z-index: 10;
    }
    .status-quotation {
        color: #17a2b8;
    }
    .status-purchase-orders {
        color: #28a745;
    }
    .status-pending {
        color: #ffc107;
    }
    /* Toggle button styles */
    .btn-toggle {
        position: relative;
        display: inline-block;
        width: 100px;
    }
    .btn-toggle.disabled {
        opacity: 0.5;
        cursor: not-allowed;
    }
</style>
<div class="card card-outline card-info">
	<div class="card-header">
		<h3 class="card-title"><?php echo isset($id) ? "Update  Details": "New form" ?> </h3>
        <div class="card-tools">
            <button class="btn btn-sm btn-flat btn-success" id="print" type="button"><i class="fa fa-print"></i> Print</button>
		    <a class="btn btn-sm btn-flat btn-primary" href="?page=purchase_orders/manage_purchase_orders&id=<?php echo $id ?>">Edit</a>
		    <a class="btn btn-sm btn-flat btn-default" href="?page=purchase_orders">Back</a>
            <button class="btn btn-sm btn-flat btn-info" id="toggle_values" type="button"><i class="fa fa-eye-slash"></i> Hide Values</button>
            <button class="btn btn-sm btn-flat btn-warning" id="toggle_totals" type="button"><i class="fa fa-calculator"></i> Hide Totals</button>
        </div>
	</div>
	<div class="card-body" id="out_print">
        <div class="row">
        <div class="col-12 header-container">
        <?php 
                // Status display handling
                $status_class = '';
                $status_text = '';
                
                if(isset($status)) {
                    if($status == 3) {
                        $status_class = 'status-quotation';
                        $status_text = 'Quotation';
                    } elseif($status == 4) {
                        $status_class = 'status-purchase-orders';
                        $status_text = 'Purchase orders';
                    } elseif($status == 5) {
                        $status_class = 'status-pending';
                        $status_text = 'Pending';
                    }
                }
                ?>
                
                <div class="status-text <?php echo $status_class; ?>"><?php echo $status_text; ?></div>
            <center><img src="Purchase Orders.PNG" alt="Flowers in Chania" width="1012" height="220">
            
            </div>
       
        <div class="col-6">
 
        </div>
        </div>
        <div class="row mb-2">
            <div class="col-6">

                <p class="m-0"><b>Customer</b></p>
                <?php 
                $sup_qry = $conn->query("SELECT * FROM supplier_list where id = '{$supplier_id}'");
                $supplier = $sup_qry->fetch_array();
                ?>
                <div>
                    <p class="m-0"><?php echo $supplier['name'] ?></p>
                    <p class="m-0"><?php echo $supplier['address'] ?></p>
                    <p class="m-0"><?php echo $supplier['contact_person'] ?></p>
                    <p class="m-0"><?php echo $supplier['contact'] ?></p>
                    <p class="m-0"><?php echo $supplier['email'] ?></p>
                </div>
            </div>
       <div class="col-6 row">
                <div class="col-6">
              
                </div>
                <div class="col-4">
                    <p  class="m-0"><b>Date Created</b></p>
                    <p><b><?php echo date("Y-m-d",strtotime($date_created)) ?></b></p>
                    <p  class="m-0"><b>Q.T. #:</b></p>
                    <p><b><?php echo $po_no ?></b></p>
                </div>
            </div> 
           
            <p  class="col-10">  <br>
                <b>Dear Sir/madam,<br> 
                
                
            </b>Thank You For Your Valuable Inquiry. We Are Pleased To Quotation For 
               <?php echo isset($for_what_quotation) ? $for_what_quotation : '' ?> As Below</b></p></b></p>
                
    

        </div>
        <div class="row">
            <div class="col-md-12">
                <table class="table table-striped table-bordered" id="item-list">
                    <colgroup>
                        <col width="10%">
                        <col width="10%">
                        <col width="20%">
                        <col width="30%">
                        <col width="15%">
                        <col width="15%">
                    </colgroup>
                    <thead>
                        <tr class="bg-navy disabled" style="">
                            <th class="bg-navy disabled text-light px-1 py-1 text-center">Qty</th>
                            <th class="bg-navy disabled text-light px-1 py-1 text-center">Unit</th>
                            <th class="bg-navy disabled text-light px-1 py-1 text-center">Item</th>
                            <th class="bg-navy disabled text-light px-1 py-1 text-center">Description</th>
                            <th class="bg-navy disabled text-light px-1 py-1 text-center">Price</th>
                            <th class="bg-navy disabled text-light px-1 py-1 text-center">Total</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php 
                        if(isset($id)):
                        $order_items_qry = $conn->query("SELECT o.*,i.name, i.description FROM `order_items` o inner join item_list i on o.item_id = i.id where o.`po_id` = '$id' ");
                        $sub_total = 0;
                        while($row = $order_items_qry->fetch_assoc()):
                            $sub_total += ($row['quantity'] * $row['unit_price']);
                        ?>
                        <tr class="po-item" data-id="">
                            <td class="align-middle p-0 text-center"><?php echo $row['quantity'] ?></td>
                            <td class="align-middle p-1"><?php echo $row['unit'] ?></td>
                            <td class="align-middle p-1"><?php echo $row['name'] ?></td>
                            <td class="align-middle p-1 item-description"><?php echo $row['description'] ?></td>
                            <td class="align-middle p-1 text-right total-price"><?php echo number_format($row['unit_price']) ?></td>
                            <td class="align-middle p-1 text-right total-price"><?php echo number_format($row['quantity'] * $row['unit_price']) ?></td>
                        </tr>
                        <?php endwhile;endif; ?>
                    </tbody>
                    <tfoot>
                        <tr class="bg-lightblue">
                            <tr class="total-row">
                                <th class="p-1 text-right" colspan="5">Sub Total</th>
                                <th class="p-1 text-right" id="sub_total"><span class="value-display"><?php echo number_format($sub_total) ?></span></th>
                            </tr>
                            <tr class="total-row">
                                <th class="p-1 text-right" colspan="5">Discount (<?php echo isset($discount_percentage) ? $discount_percentage : 0 ?>%)
                                </th>
                                <th class="p-1 text-right"><span class="value-display"><?php echo isset($discount_amount) ? number_format($discount_amount) : 0 ?></span></th>
                            </tr>
                            <tr>
                           
                            </tr>
                            <tr class="total-row">
                                <th class="p-1 text-right" colspan="5">Total</th>
                                <th class="p-1 text-right" id="total"><span class="value-display"><?php echo isset($tax_amount) ? number_format($sub_total - $discount_amount) : 0 ?></span></th>
                            </tr>
                        </tr>
                    </tfoot>
                </table>
                <div class="row">
                    <div class="col-6">
                        <label for="note" class="control-label"></label>
                        <br>
                        
                        <br>

                        <br>

                        <br>

                
                 
                        <label for="purchase_orders_notes	" class="control-label">Notes</label>
                        <p><?php echo isset($purchase_orders_notes	) ? $purchase_orders_notes	: '' ?></p>
                   
                    </div>
            
            <div>
            <br>
                        
                        <br>

                        <br>

                        <br>

                        <br>

                        <br>
                        <br>
                        
                        <br>


            
                    </div>
                </div>
            </div>
        </div>
	</div>
</div>


<table class="d-none" id="item-clone">
	<tr class="po-item" data-id="">
		<td class="align-middle p-1 text-center">
			<button class="btn btn-sm btn-danger py-0" type="button" onclick="rem_item($(this))"><i class="fa fa-times"></i></button>
		</td>
		<td class="align-middle p-0 text-center">
			<input type="number" class="text-center w-100 border-0" step="any" name="qty[]"/>
		</td>
		<td class="align-middle p-1">
			<input type="text" class="text-center w-100 border-0" name="unit[]"/>
		</td>
		<td class="align-middle p-1">
			<input type="hidden" name="item_id[]">
			<input type="text" class="text-center w-100 border-0 item_id" required/>
		</td>
		<td class="align-middle p-1 item-description"></td>
		<td class="align-middle p-1">
			<input type="number" step="any" class="text-right w-100 border-0" name="unit_price[]" value=".00"/>
		</td>
		<td class="align-middle p-1 text-right total-price">.00</td>
	</tr>
</table>
<script>
	$(function(){
        // Initialize totals visibility state
        var totalsVisible = true;
        
        // Print functionality
        $('#print').click(function(e){
    e.preventDefault();
    start_loader();
    
    // Clone head and print area
    var _h = $('head').clone();
    var _p = $('#out_print').clone();
    var _el = $('<div>');
    
    // Check current visibility states
    var valueHidden = $('.value-display').hasClass('hidden-value');
    var totalsHidden = $('.total-row').hasClass('total-row-hidden');
    
    // Replace hidden values with .00 in the print clone
    if(valueHidden) {
        _p.find('.value-display').each(function() {
            $(this).removeClass('hidden-value');
            $(this).text('.00');
        });
    }
    
    // Handle hidden totals rows
    if(totalsHidden) {
        _p.find('.total-row').addClass('total-row-hidden');
    }
    
    // Add custom print styles
    var printStyle = '<style>';
    printStyle += '@media print {';
    // Preserve status text position during print
    printStyle += '.status-text {';
    printStyle += '    position: absolute !important;';
    printStyle += '    top: 160px !important;';
    printStyle += '    right: 15px !important;';
    printStyle += '    font-size: 25px !important;';
    printStyle += '    font-weight: bold !important;';
    printStyle += '    z-index: 10 !important;';
    printStyle += '}';
    
    // Preserve status colors
    printStyle += '.status-quotation { color: #17a2b8 !important; }';
    printStyle += '.status-purchase-orders { color: #28a745 !important; }';
    printStyle += '.status-pending { color: #ffc107 !important; }';
    
    // Keep totals hidden if they were hidden
    if(totalsHidden) {
        printStyle += '.total-row-hidden { display: none !important; }';
    }
    
    // Table header styling with WHITE TEXT
    printStyle += 'table#item-list thead tr th {';
    printStyle += '    background-color: #607D8B !important;';  // Bluish gray color like in the example
    printStyle += '    color: #FFFFFF !important;';  // Explicitly set to white
    printStyle += '    font-weight: bold !important;'; 
    printStyle += '    -webkit-print-color-adjust: exact !important;';
    printStyle += '    print-color-adjust: exact !important;';
    printStyle += '    border: 1px solid #000 !important;';
    printStyle += '}';
    
    // Sub Total row styling
    printStyle += 'tfoot tr.bg-lightblue, .total-row {';
    printStyle += '    background-color: #E0E0E0 !important;';  // Light gray background
    printStyle += '    -webkit-print-color-adjust: exact !important;';
    printStyle += '    print-color-adjust: exact !important;';
    printStyle += '}';
    
    // General table styling
    printStyle += 'table#item-list {';
    printStyle += '    border-collapse: collapse !important;';
    printStyle += '    width: 100% !important;';
    printStyle += '}';
    
    printStyle += 'table#item-list td, table#item-list th {';
    printStyle += '    border: 1px solid #000 !important;';
    printStyle += '    padding: 5px !important;';
    printStyle += '}';
    
    // Alternate row styling for better readability
    printStyle += 'table#item-list tbody tr:nth-child(even) {';
    printStyle += '    background-color: #f9f9f9 !important;';
    printStyle += '    -webkit-print-color-adjust: exact !important;';
    printStyle += '    print-color-adjust: exact !important;';
    printStyle += '}';
    
    printStyle += '}';
    printStyle += '</style>';
    
    // Build print document
    _el.append(_h);
    _el.append(printStyle);
    _el.append(_p);
    
    // Open print window
    var nw = window.open("","","width=1200,height=950");
    nw.document.write(_el.html());
    nw.document.close();
    
    // Print after a short delay to ensure styles are applied
    setTimeout(() => {
        nw.print();
        setTimeout(() => {
            end_loader();
            nw.close();
        }, 300);
    }, 300);
})
        // Toggle values visibility
        $('#toggle_values').click(function(e){
            e.preventDefault();
            if($('.value-display').hasClass('hidden-value')){
                $('.value-display').removeClass('hidden-value');
                $(this).html('<i class="fa fa-eye-slash"></i> Hide Values');
            } else {
                $('.value-display').addClass('hidden-value');
                $(this).html('<i class="fa fa-eye"></i> Show Values');
            }
        });
        
        // Toggle totals rows visibility
        $('#toggle_totals').click(function(e){
            e.preventDefault();
            if(totalsVisible){
                $('.total-row').addClass('total-row-hidden');
                $(this).html('<i class="fa fa-calculator"></i> Show Totals');
                totalsVisible = false;
            } else {
                $('.total-row').removeClass('total-row-hidden');
                $(this).html('<i class="fa fa-calculator"></i> Hide Totals');
                totalsVisible = true;
            }
        });
    });
</script>