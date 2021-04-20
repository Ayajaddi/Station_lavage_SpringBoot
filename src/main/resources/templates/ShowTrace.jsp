<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Eco&EasyClean | Show Tace</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Font Awesome -->
  <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/adminlte.min.css">
  <!-- summernote -->
  <link rel="stylesheet" href="plugins/summernote/summernote-bs4.css">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
</head>
<body class="hold-transition sidebar-mini">
<div class="wrapper">
  <!-- Navbar -->
  <nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="index3.html" class="nav-link">Home</a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="#" class="nav-link">Contact</a>
      </li>
    </ul>

    <!-- SEARCH FORM -->
    <form class="form-inline ml-3">
      <div class="input-group input-group-sm">
        <input class="form-control form-control-navbar" type="search" placeholder="Search" aria-label="Search">
        <div class="input-group-append">
          <button class="btn btn-navbar" type="submit">
            <i class="fas fa-search"></i>
          </button>
        </div>
      </div>
    </form>

    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">
      <!-- Messages Dropdown Menu -->
      <li class="nav-item dropdown">
   
        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
          
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <!-- Message Start -->
            
            <!-- Message End -->
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <!-- Message Start -->
            
            <!-- Message End -->
          </a>
          
      </li>
      <!-- Notifications Dropdown Menu -->
      <li class="nav-item dropdown">
        
        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
          
          <div class="dropdown-divider"></div>
          
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            
          </a>
          <div class="dropdown-divider"></div>
          
          <div class="dropdown-divider"></div>
          
        </div>
      </li>
      <li class="nav-item">
        
      </li>
    </ul>
  </nav>
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="index3.html" class="brand-link">
      <img src="dist/img/AdminLTELogo.png"
           alt="AdminLTE Logo"
           class="brand-image img-circle elevation-3"
           style="opacity: .8">
      <span class="brand-text font-weight-light">Eco&EasyClean</span>
    </a>

    <!-- Sidebar -->
    

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          
              <li class="nav-item">
                <a href="index3.html" class="nav-link active">
                  <i class="nav-icon fas fa-tachometer-alt"></i>
                  <p>Dashboard</p>
                </a>
              </li>
                      
          
              <li class="nav-item">
                <a href="ServletSaveOperation" class="nav-link">
                   <i class="nav-icon fas fa-edit"></i>
                  <p>Enregistrement Opération</p>
                </a>
              </li>
               <li class="nav-item">
                <a href="ServletShowTraceByDate" class="nav-link">
                  <i class="nav-icon far fa-image"></i>
                  <p> Historique </p>
                </a>
              </li>
              
              
              <li class="nav-item">
                <a href="ServletShowTrace" class="nav-link">
                  <i class="nav-icon far fa-image"></i>
                  <p> Historique d'un Vehicule</p>
                </a>
              </li>
              
                  <li class="nav-item">
                <a href="ServletAddAgency" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Ajouter Agence/Compagnie</p>
                </a>
              </li>
              
              <li class="nav-item">
                <a href="ServletAuthentification" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Deconnexion</p>
                </a>
              </li>
              
              
              
          
                    
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Consultation Historique Nettoyage Bus</h1>
          </div>
          
        </div>
      </div><!-- /.container-fluid -->
    </section>

   
   <!-- Main content -->
    <section class="content">

      <div class="container-fluid">
        <!-- SELECT2 EXAMPLE -->
        <div class="card card-default">      
    
    <div class="card-header">
            <h3 class="card-title">Consultez historique nettoyage</h3>

         
          </div>
    
    
    <form method="post" action="ServletShowTrace">
              <div class="card-body">
                <div class="row">
                
                  <div class="col-4">
                     <input type="text" class="form-control" placeholder="Saisir Matricule" name="matricule" value=${model.matricule}>
                  
                  </div>
                   <div class="col-5">
					   
                  
                  <button type="submit" class="btn btn-block btn-primary">Afficher historique</button>
                  </div> 
                </div>
                
                <br>
                <br>
                
                 <!-- /.row -->
        <div class="row">
          <div class="col-12">
            <div class="card">
        
              <!-- /.card-header -->
              <div class="card-body table-responsive p-0">
                <table class="table table-hover text-nowrap">
                  <thead>
                    <tr>
                      <th>Nom Opération</th>
                      <th>Date Opération</th>
                      <th>Prix Opération</th>
                    </tr>
                  </thead>
                  <tbody>
             <c:forEach items="${model.lesOperations}" var="operation">
                    <tr>
                      <td>${operation.nomOperation}</td>
                      <td>${operation.dateOperation}</td>
                      <td>${operation.prixOperation}</td>
                    </tr>
               </c:forEach>
               
                 
                  </tbody>
                </table>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
        </div>
        <!-- /.row -->
                
                
                
                
                
              </div>
          
          
  
  

                
                <!-- /.form-group -->
                </form>
              </div>
              <!-- /.col -->
            </div>
            <!-- /.row -->

           
                
                </section>
                
     
                <!-- /.form-group -->
              </div>
              
          
 
  <!-- /.content-wrapper -->
  <footer class="main-footer">
    <div class="float-right d-none d-sm-block">
      
    </div>
    

  </footer>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script src="plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="dist/js/demo.js"></script>
<!-- Summernote -->
<script src="plugins/summernote/summernote-bs4.min.js"></script>
<script>
  $(function () {
    // Summernote
    $('.textarea').summernote()
  })
</script>
</body>
</html>
