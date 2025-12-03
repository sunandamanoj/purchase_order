<?php if($_settings->chk_flashdata('success')): ?>
<script>
    alert_toast("<?php echo $_settings->flashdata('success') ?>",'success')
</script>
<?php endif;?>
<div class="items-page">
    <div class="container-fluid items-container">
        <div class="action-header mb-3">
            <button id="create_new" class="btn btn-create">Create New Item</button>
        </div>
        <div class="card-body">
        <div class="container-fluid">
        <!-- Search bar -->

        <div class="row mb-3">
                <div class="col-md-6 offset-md-3">
                    <div class="search-box">
                        <i class="fa fa-search search-icon"></i>
                        <input type="text" class="form-control" id="search-input" placeholder="Search By Name">
                    </div>
                </div>
            </div>


        <!-- Item Cards -->
        <div class="item-cards-list">
            <?php 
            $i = 1;
            $qry = $conn->query("SELECT * from `item_list` order by (`name`) asc ");
            while($row = $qry->fetch_assoc()):
                $row['description'] = html_entity_decode($row['description']);
            ?>
                <div class="item-card" data-name="<?php echo strtolower($row['name']); ?>">
                    <div class="card-body">
                        <div class="item-header">
						<td><?php echo $row['name'] ?></td>
							
                            <a href="javascript:void(0)" class="edit-icon edit_data" data-id="<?php echo $row['id'] ?>">
                                <i class="fa fa-edit"></i>
                            </a>
                        </div>
                        <div class="card-content">
							<td><?php echo $row['description'] ?></td>
							
                            <div class="item-price">Price</div>
                        </div>
                        <div class="card-footer">
                            <div class="item-number">#<?php echo $i++; ?></div>
                            <div class="card-actions">
                                <?php if($row['status'] == 1): ?>
                                    <span class="badge-active">Active</span>
                                <?php else: ?>
                                    <span class="badge-inactive">Inactive</span>
                                <?php endif; ?>
                                <div class="action-buttons">
                                    <a href="javascript:void(0)" class="btn-action btn-view view_data" data-id="<?php echo $row['id'] ?>">
                                        <i class="fa fa-info-circle"></i>
                                    </a>
                                    <a href="javascript:void(0)" class="btn-action btn-delete delete_data" data-id="<?php echo $row['id'] ?>">
                                        <i class="fa fa-trash"></i>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            <?php endwhile; ?>
        </div>
    </div>
</div>

<style>
    body {
        background-color: #f0f2f5;
        font-family: Arial, sans-serif;
    }
    
    .items-page {
        padding: 20px 0;
    }
    
    .items-container {
        max-width: 1200px;
        margin: 0 auto;
    }
    
    .action-header {
        display: flex;
        justify-content: flex-end;
        margin-bottom: 20px;
    }
    
    .btn-create {
        background-color: #212529;
        color: white;
        border-radius: 4px;
        padding: 8px 16px;
        font-weight: 500;
    }

    .search-box {
        margin-bottom: 20px;
        position: relative;
    }
    .search-box input {
        padding-left: 40px;
        border-radius: 20px;
    }
    .search-icon {
        position: absolute;
        left: 15px;
        top: 10px;
        color: #6c757d;
    }
    
    /* Item cards */
    .item-cards-list {
        display: flex;
        flex-direction: column;
        gap: 12px;
    }
    
    .item-card {
        background-color: white;
        border-radius: 6px;
        overflow: hidden;
        box-shadow: 0 1px 3px rgba(0,0,0,0.08);
    }
    
    .item-card .card-body {
        padding: 0;
    }
    
    .item-header {
        display: flex;
        justify-content: space-between;
        align-items: center;
        padding: 15px;
        border-bottom: 1px solid #f5f5f5;
    }
    
    .item-name {
        font-size: 16px;
        font-weight: 500;
        margin: 0;
        color: #333;
    }
    
    .edit-icon {
        color: #777;
        font-size: 16px;
    }
    
    .card-content {
        padding: 15px;
    }
    
    .item-description {
        color: #666;
        font-size: 14px;
        margin-bottom: 8px;
    }
    
    .item-price {
        color: #333;
        font-size: 14px;
    }
    
    .card-footer {
        display: flex;
        justify-content: space-between;
        align-items: center;
        padding: 10px 15px;
        background-color: #fff;
        border-top: 1px solid #f5f5f5;
    }
    
    .item-number {
        color: #888;
        font-size: 12px;
    }
    
    .card-actions {
        display: flex;
        align-items: center;
        gap: 8px;
        justify-content: flex-end;
        margin-left: auto;
    }
    
    .badge-active {
        background-color: #28a745;
        color: white;
        padding: 4px 10px;
        border-radius: 4px;
        font-size: 12px;
    }
    
    .badge-inactive {
        background-color: #6c757d;
        color: white;
        padding: 4px 10px;
        border-radius: 4px;
        font-size: 12px;
    }
    
    .action-buttons {
        display: flex;
        gap: 5px;
    }
    
    .btn-action {
        width: 30px;
        height: 30px;
        display: flex;
        align-items: center;
        justify-content: center;
        border-radius: 4px;
        color: white;
    }
    
    .btn-view {
        background-color: #17a2b8;
    }
    
    .btn-delete {
        background-color: #dc3545;
    }
    
    @media (max-width: 768px) {
        .items-container {
            padding: 0 15px;
        }
    }
</style>

<script>
    $(document).ready(function(){
        // Event handlers
        $('.delete_data').click(function(){
            _conf("Are you sure to delete this Item permanently?","delete_item",[$(this).attr('data-id')])
        })
        
        $('#create_new').click(function(){
            uni_modal("<i class='fa fa-plus'></i> Create New Item","items/manage_item.php")
        })
        
        $('.view_data').click(function(){
            uni_modal("<i class='fa fa-info-circle'></i> Item's Details","items/view_details.php?id="+$(this).attr('data-id'),"")
        })
        
        $('.edit_data').click(function(){
            uni_modal("<i class='fa fa-edit'></i> Edit Item's Details","items/manage_item.php?id="+$(this).attr('data-id'))
        })
        
        // Search functionality
        $("#search-input").on("keyup", function() {
            var value = $(this).val().toLowerCase();
            $(".item-card").filter(function() {
                $(this).toggle($(this).data('name').indexOf(value) > -1)
            });
        });
    });
    
    function delete_item($id){
        start_loader();
        $.ajax({
            url:_base_url_+"classes/Master.php?f=delete_item",
            method:"POST",
            data:{id: $id},
            dataType:"json",
            error:err=>{
                console.log(err)
                alert_toast("An error occured.",'error');
                end_loader();
            },
            success:function(resp){
                if(typeof resp== 'object' && resp.status == 'success'){
                    location.reload();
                }else{
                    alert_toast("An error occured.",'error');
                    end_loader();
                }
            }
        })
    }
</script>