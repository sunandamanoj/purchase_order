<?php
// Try to find the config file in different possible locations
$config_paths = [
    '../config.php',
    '../../config.php',
    '../../../config.php',
    $_SERVER['DOCUMENT_ROOT'] . '/purchase_order/config.php'
];

$config_loaded = false;
foreach($config_paths as $path) {
    if(file_exists($path)) {
        require_once($path);
        $config_loaded = true;
        break;
    }
}

if(!$config_loaded) {
    die("Configuration file not found. Please check your file structure.");
}

if($_settings->chk_flashdata('success')): ?>
<script>
    alert_toast("<?php echo $_settings->flashdata('success') ?>",'success')
</script>
<?php endif;?>

<style>
    .card {
        border-radius: 5px;
        box-shadow: 0 0 15px rgba(0,0,0,0.1);
        margin-bottom: 20px;
    }
    .card-header {
        background-color: #f8f9fa;
        border-bottom: 1px solid #e9ecef;
        padding: 15px;
    }
    .card-body {
        padding: 20px;
    }
    .customer-card {
        background-color: #ffffff;
        border-radius: 5px;
        border: 1px solid #e9ecef;
        padding: 15px;
        margin-bottom: 15px;
    }
    .customer-header {
        display: flex;
        justify-content: space-between;
        align-items: center;
        margin-bottom: 10px;
        border-bottom: 1px solid #f5f5f5;
        padding-bottom: 8px;
    }
       
    
    .btn-create {
        background-color: #212529;
        color: white;
        border-radius: 4px;
        padding: 8px 16px;
        font-weight: 500;
    }

    .customer-name {
        font-weight: bold;
        font-size: 1rem;
        color: #333;
    }
    .info-row {
        padding: 5px 0;
        border-bottom: 1px solid #f5f5f5;
        color: #666;
    }
    .contact-row {
        display: flex;
        align-items: center;
        padding: 8px 0;
        border-bottom: 1px solid #f5f5f5;
    }
    .contact-icon {
        display: inline-flex;
        align-items: center;
        justify-content: center;
        width: 24px;
        height: 24px;
        border-radius: 50%;
        color: white;
        margin-right: 10px;
        font-size: 12px;
    }
    .whatsapp-icon {
        background-color: #25D366;
    }
    .phone-icon {
        background-color: #333;
    }
    .contact-label {
        flex-grow: 1;
        font-size: 14px;
    }
    .badge {
        padding: 4px 8px;
        border-radius: 15px;
        font-size: 0.75rem;
    }
    .status-badge {
        padding: 5px 12px;
        border-radius: 15px;
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
    .footer-actions {
        display: flex;
        justify-content: space-between;
        align-items: center;
        margin-top: 10px;
        padding-top: 10px;
    }
    .btn-action {
        padding: 3px 8px;
        font-size: 12px;
    }
    .pencil-icon {
        font-size: 14px;
        color: #555;
    }
</style>

<div class="container-fluid items-container">
        <div class="action-header mb-3 text-right">
            <button id="create_new" class="btn btn-create">Create New Item</button>
        </div>
        <div class="card-body">

            <!-- Search Box -->
            <div class="row mb-3">
                <div class="col-md-6 offset-md-3">
                    <div class="search-box">
                        <i class="fa fa-search search-icon"></i>
                        <input type="text" class="form-control" id="search_customer" placeholder="Search By Name">
                    </div>
                </div>
            </div>



            <!-- Customer Cards -->
            <div class="row" id="customer-list">
                <?php 
                $i = 1;
                $qry = $conn->query("SELECT * from `remind_list` order by (`name`) asc ");
                while($row = $qry->fetch_assoc()):
                ?>
                <div class="col-lg-6 customer-item" data-name="<?php echo strtolower($row['name']) ?>">
                    <div class="customer-card">
                        <div class="customer-header">
                            <div class="customer-name">
                                <?php echo $row['name'] ?>
                            </div>
                            <div>
                                <a href="javascript:void(0)" class="edit_data" data-id="<?php echo $row['id'] ?>">
                                    <i class="fa fa-edit pencil-icon"></i>
                                </a>
                            </div>
                        </div>
                        
                        <div class="info-row">
                            <?php echo $row['address'] ?>
                        </div>
                        
                        <div class="info-row">
                            <?php echo isset($row['email']) ? $row['email'] : '-' ?>
                        </div>
                        
                        <div class="contact-row">
                            <div class="contact-icon whatsapp-icon">
                                <i class="fab fa-whatsapp"></i>
                            </div>
                            <?php echo $row['contact_person'] ?><br>
                            <div class="contact-label"></div>
                            
                            <a href="javascript:void(0)" class="btn btn-sm btn-success whatsapp_chat" data-contact="<?php echo $row['contact'] ?>">
                                <i class="fab fa-whatsapp"></i>
                            </a>
                        </div>
                        
                        <div class="contact-row">
                            <div class="contact-icon phone-icon">
                                <i class="fa fa-mobile-alt"></i>
                            </div>
                            <?php echo $row['contact'] ?>
                            <div class="contact-label"></div>
                            <a href="tel:<?php echo $row['contact_person'] ?>" class="btn btn-sm btn-info">
                                <i class="fa fa-phone"></i>
                            </a>
                        </div>
                        
                        <div class="footer-actions">
                            <div>
                                <?php if($row['status'] == 1): ?>
                                    <span class="badge badge-success status-badge">Active</span>
                                <?php else: ?>
                                    <span class="badge badge-secondary status-badge">Inactive</span>
                                <?php endif; ?>
                            </div>
                            <div class="dropdown">
                                <button type="button" class="btn btn-sm btn-outline-secondary dropdown-toggle" data-toggle="dropdown">
                                    Action
                                </button>
                                <div class="dropdown-menu dropdown-menu-right">
                                    <a class="dropdown-item view_data" href="javascript:void(0)" data-id="<?php echo $row['id'] ?>">
                                        <i class="fa fa-info-circle text-primary"></i> View
                                    </a>
                                    <a class="dropdown-item edit_data" href="javascript:void(0)" data-id="<?php echo $row['id'] ?>">
                                        <i class="fa fa-edit text-primary"></i> Edit
                                    </a>
                                    <a class="dropdown-item delete_data" href="javascript:void(0)" data-id="<?php echo $row['id'] ?>">
                                        <i class="fa fa-trash text-danger"></i> Delete
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
</div>

<script>
    $(document).ready(function(){
        // Delete customer action
        $('.delete_data').click(function(){
            _conf("Are you sure to delete this Costumer permanently?","delete_remind",[$(this).attr('data-id')])
        });
        
        // Create new customer
        $('#create_new').click(function(){
            uni_modal("<i class='fa fa-plus'></i> New Costumer Register","reminds/manage_remind.php");
        });
        
        // View customer details
        $('.view_data').click(function(){
            uni_modal("<i class='fa fa-info-circle'></i> Costumer's Details","reminds/view_details.php?id="+$(this).attr('data-id'),"");
        });
        
        // Edit customer details
        $('.edit_data').click(function(){
            uni_modal("<i class='fa fa-edit'></i> Edit Costumer's Details","reminds/manage_remind.php?id="+$(this).attr('data-id'));
        });
        
        // Custom search functionality
        $("#search_customer").on("keyup", function() {
            var value = $(this).val().toLowerCase();
            $(".customer-item").filter(function() {
                $(this).toggle($(this).data("name").indexOf(value) > -1);
            });
        });
    });

    // WhatsApp chat function
    $(document).on('click', '.whatsapp_chat', function(){
        var contact = $(this).attr('data-contact');
        
        // Check if phone number is empty
        if (!contact || contact.trim() === '') {
            alert("දුරකථන අංකය නොමැත!");
            return;
        }
        
        // Remove non-numeric characters from phone number
        var phoneNumber = contact.replace(/\D/g, '');
        
        // Add Sri Lanka country code if starts with 0
        if (phoneNumber.startsWith('0')) {
            phoneNumber = '94' + phoneNumber.substring(1);
        }
        
        // Open WhatsApp with customer's number
        window.open('https://api.whatsapp.com/send?phone=' + phoneNumber, '_blank');
    });

    // Delete supplier function
    function delete_remind($id){
        start_loader();
        $.ajax({
            url:_base_url_+"classes/Master.php?f=delete_remind",
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