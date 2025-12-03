<?php
require_once('../../config.php');
if(isset($_GET['id']) && $_GET['id'] > 0){
    $qry = $conn->query("SELECT * from `supplier_list` where id = '{$_GET['id']}' ");
    if($qry->num_rows > 0){
        foreach($qry->fetch_assoc() as $k => $v){
            $$k=stripslashes($v);
        }
    }
}
?>
<style>
    #uni_modal .modal-footer{
        display:none
    }
</style>
<div class="container fluid">
    <callout class="callout-primary">
        <dl class="row">
            <dt class="col-md-4">Costumer Name</dt>
            <dd class="col-md-8">: <?php echo $name ?></dd>
            <dt class="col-md-4">Address</dt>
            <dd class="col-md-8">: <span><?php echo $address ?></span></dd>
            <dt class="col-md-4">Whatsapp number #</dt>
            <dd class="col-md-8">: <?php echo $contact_person ?></dd>
            <dt class="col-md-4">Contact number #</dt>
            <dd class="col-md-8">: <?php echo $contact ?></dd>
            <dt class="col-md-4">Email</dt>
            <dd class="col-md-8">: <?php echo $email ?></dd>
            <dt class="col-md-4">Status</dt>
            <dd class="col-md-8">:&nbsp;
            <?php if($status == 1): ?>
                        <span class="badge badge-success">Active</span>
                    <?php else: ?>
                        <span class="badge badge-secondary">Inactive</span>
                    <?php endif; ?>
                </dd>
            </dl>
        </div>
    </div>
    <div class="text-right">
        <button class="btn btn-flat btn-sm btn-primary" type="button" id="edit_btn">Edit</button>
        <button class="btn btn-flat btn-sm btn-dark" type="button" data-dismiss="modal">Close</button>
    </div>
</div>
<script>
    $(function(){
        $('#edit_btn').click(function(){
            uni_modal("<i class='fa fa-edit'></i> Edit Costumer Details","suppliers/manage_supplier.php?id=<?php echo $id ?>")
        })
    })
</script>