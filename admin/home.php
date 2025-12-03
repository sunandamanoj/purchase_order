<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Prasadhi Solutions - Dashboard</title>
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/4.6.0/css/bootstrap.min.css">
    <style>
        :root {
            --primary-color: #0056b3;
            --secondary-color: #17a2b8;
            --success-color: #28a745;
            --danger-color: #dc3545;
            --dark-color: #343a40;
        }
        
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f4f6f9;
        }
        
        .header {
            background: linear-gradient(135deg, #0056b3 0%, #17a2b8 100%);
            color: white;
            padding: 1rem;
            position: sticky;
            top: 0;
            z-index: 1000;
        }
        
        .dashboard-container {
            padding: 1.5rem;
            max-width: 1400px;
            margin: 0 auto;
        }
        
        .stats-card {
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            margin-bottom: 1.5rem;
            background-color: white;
            transition: transform 0.3s;
        }
        
        .stats-card:hover {
            transform: translateY(-5px);
        }
        
        .stats-icon {
            width: 50px;
            height: 50px;
            display: flex;
            align-items: center;
            justify-content: center;
            border-radius: 8px;
            font-size: 1.25rem;
        }
        
        .icon-navy { background-color: #001f3f; }
        .icon-success { background-color: #28a745; }
        .icon-primary { background-color: #0056b3; }
        .icon-danger { background-color: #dc3545; }
        
        .action-card {
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            padding: 1.25rem;
            height: 100%;
            transition: transform 0.3s;
        }
        
        .action-card:hover {
            transform: translateY(-5px);
        }
        
        .action-icon {
            width: 40px;
            height: 40px;
            display: flex;
            align-items: center;
            justify-content: center;
            border-radius: 50%;
            background-color: #f0f0f0;
            margin-bottom: 1rem;
        }
        
        @media (max-width: 768px) {
            .stats-container .col-md-3 {
                margin-bottom: 1rem;
            }
            
            .action-card {
                margin-bottom: 1rem;
            }
        }
        
        .section-title {
            font-weight: 600;
            margin-bottom: 1.5rem;
            padding-bottom: 0.5rem;
            border-bottom: 2px solid #e9ecef;
        }
        
        .nav-section {
            background-color: white;
            border-radius: 10px;
            padding: 1rem;
            margin-bottom: 2rem;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        
        .nav-button {
            width: 60px;
            height: 60px;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            text-align: center;
            font-size: 0.75rem;
            color: #495057;
            background-color: #f8f9fa;
            border-radius: 10px;
            margin: 0 auto;
            transition: all 0.3s;
        }
        
        .nav-button:hover {
            background-color: #e9ecef;
            color: #0056b3;
        }
        
        .nav-button i {
            font-size: 1.5rem;
            margin-bottom: 0.25rem;
        }
        
        .discovery-card {
            margin-bottom: 1rem;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <div class="header">
        <div class="container-fluid">
            <div class="row align-items-center">
                <div class="col-8">
                    <h4 class="m-0">Welcome</h4>
                    <small>Prasadhi Solutions</small>
                </div>
                <div class="col-4 text-right">
                    <a href="#" class="text-white">
                        <i class="fas fa-bell"></i>
                    </a>
                    <a href="#" class="text-white ml-3">
                        <i class="fas fa-cog"></i>
                    </a>
                </div>
            </div>
        </div>
    </div>

    <div class="dashboard-container">
        <!-- Navigation Section -->
        <div class="nav-section">
            <h5 class="section-title">Manage</h5>
            <div class="row text-center">
                <div class="col-3">
                    <a href="#" class="nav-button">
                        <i class="fas fa-building"></i>
                        <span>BUSINESS</span>
                    </a>
                </div>
                <div class="col-3">
                    <a href="#" class="nav-button">
                        <i class="fas fa-user"></i>
                        <span>CUSTOMER</span>
                    </a>
                </div>
                <div class="col-3">
                    <a href="#" class="nav-button">
                        <i class="fas fa-box"></i>
                        <span>PRODUCT</span>
                    </a>
                </div>
                <div class="col-3">
                    <a href="#" class="nav-button">
                        <i class="fas fa-clipboard-list"></i>
                        <span>ITEMS</span>
                    </a>
                </div>
            </div>
        </div>

        <!-- Stats Cards -->
        <h5 class="section-title">Dashboard Overview</h5>
        <div class="row stats-container">
            <!-- Total Customer -->
            <div class="col-12 col-md-3">
                <div class="stats-card p-3">
                    <div class="d-flex align-items-center">
                        <div class="stats-icon icon-navy text-white">
                            <i class="fas fa-user"></i>
                        </div>
                        <div class="ml-3">
                            <div class="text-muted">Total Customers</div>
                            <h5 class="m-0">0</h5>
                        </div>
                    </div>
                </div>
            </div>
            
            <!-- Total Items -->
            <div class="col-12 col-md-3">
                <div class="stats-card p-3">
                    <div class="d-flex align-items-center">
                        <div class="stats-icon icon-success text-white">
                            <i class="fas fa-boxes"></i>
                        </div>
                        <div class="ml-3">
                            <div class="text-muted">Total Items</div>
                            <h5 class="m-0">0</h5>
                        </div>
                    </div>
                </div>
            </div>
            
            <!-- Purchase Orders -->
            <div class="col-12 col-md-3">
                <div class="stats-card p-3">
                    <div class="d-flex align-items-center">
                        <div class="stats-icon icon-primary text-white">
                            <i class="fas fa-file-invoice"></i>
                        </div>
                        <div class="ml-3">
                            <div class="text-muted">Purchase Orders</div>
                            <h5 class="m-0">0</h5>
                        </div>
                    </div>
                </div>
            </div>
            
            <!-- Quotations -->
            <div class="col-12 col-md-3">
                <div class="stats-card p-3">
                    <div class="d-flex align-items-center">
                        <div class="stats-icon icon-danger text-white">
                            <i class="fas fa-file-invoice"></i>
                        </div>
                        <div class="ml-3">
                            <div class="text-muted">Quotations</div>
                            <h5 class="m-0">0</h5>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Actions Section -->
        <h5 class="section-title mt-4">Discover</h5>
        <div class="row">
            <!-- Make Quotation -->
            <div class="col-12 col-md-6 col-lg-3 discovery-card">
                <div class="action-card">
                    <div class="action-icon">
                        <i class="fas fa-file-signature"></i>
                    </div>
                    <h6>Make Quotation</h6>
                    <small class="text-muted">Create new quotation</small>
                </div>
            </div>
            
            <!-- Quotation List -->
            <div class="col-12 col-md-6 col-lg-3 discovery-card">
                <div class="action-card">
                    <div class="action-icon">
                        <i class="fas fa-list-alt"></i>
                    </div>
                    <h6>Quotation List</h6>
                    <small class="text-muted">Manage all quotations</small>
                </div>
            </div>
            
            <!-- Make Invoice -->
            <div class="col-12 col-md-6 col-lg-3 discovery-card">
                <div class="action-card">
                    <div class="action-icon">
                        <i class="fas fa-file-invoice-dollar"></i>
                    </div>
                    <h6>Make Invoice</h6>
                    <small class="text-muted">Create new invoice</small>
                </div>
            </div>
            
            <!-- Invoice List -->
            <div class="col-12 col-md-6 col-lg-3 discovery-card">
                <div class="action-card">
                    <div class="action-icon">
                        <i class="fas fa-clipboard-list"></i>
                    </div>
                    <h6>Invoice List</h6>
                    <small class="text-muted">Manage all invoices</small>
                </div>
            </div>
            
            <!-- Make Purchase -->
            <div class="col-12 col-md-6 col-lg-3 discovery-card">
                <div class="action-card">
                    <div class="action-icon">
                        <i class="fas fa-shopping-cart"></i>
                    </div>
                    <h6>Make Purchase</h6>
                    <small class="text-muted">Create purchase order</small>
                </div>
            </div>
            
            <!-- Purchase List -->
            <div class="col-12 col-md-6 col-lg-3 discovery-card">
                <div class="action-card">
                    <div class="action-icon">
                        <i class="fas fa-list"></i>
                    </div>
                    <h6>Purchase</h6>
                    <small class="text-muted">Manage all purchases</small>
                </div>
            </div>
        </div>
    </div>

    <!-- Scripts -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/4.6.0/js/bootstrap.bundle.min.js"></script>
    <script>
        // PHP values would be populated here dynamically
        const dashboardStats = {
            totalCustomers: 0,
            totalItems: 0,
            purchaseOrders: 0,
            quotations: 0
        };
        
        // Update the stats in the dashboard
        function updateStats() {
            // In a real implementation, these would be populated from PHP variables
            document.querySelectorAll('.stats-card h5')[0].textContent = dashboardStats.totalCustomers;
            document.querySelectorAll('.stats-card h5')[1].textContent = dashboardStats.totalItems;
            document.querySelectorAll('.stats-card h5')[2].textContent = dashboardStats.purchaseOrders;
            document.querySelectorAll('.stats-card h5')[3].textContent = dashboardStats.quotations;
        }
        
        // Initialize the dashboard
        document.addEventListener('DOMContentLoaded', function() {
            updateStats();
            
            // Add click event listeners for the action cards
            document.querySelectorAll('.discovery-card').forEach(card => {
                card.addEventListener('click', function() {
                    const action = this.querySelector('h6').textContent;
                    console.log(`Action clicked: ${action}`);
                    // Implement navigation or modal display based on action
                });
            });
        });
    </script>
</body>
</html>