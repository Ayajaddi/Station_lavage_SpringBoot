<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Eco&EasyClean | Save Cleaning Operation</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Font Awesome -->
  <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- daterange picker -->
  <link rel="stylesheet" href="plugins/daterangepicker/daterangepicker.css">
  <!-- iCheck for checkboxes and radio inputs -->
  <link rel="stylesheet" href="plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- Bootstrap Color Picker -->
  <link rel="stylesheet" href="plugins/bootstrap-colorpicker/css/bootstrap-colorpicker.min.css">
  <!-- Tempusdominus Bbootstrap 4 -->
  <link rel="stylesheet" href="plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
  <!-- Select2 -->
  <link rel="stylesheet" href="plugins/select2/css/select2.min.css">
  <link rel="stylesheet" href="plugins/select2-bootstrap4-theme/select2-bootstrap4.min.css">
  <!-- Bootstrap4 Duallistbox -->
  <link rel="stylesheet" href="plugins/bootstrap4-duallistbox/bootstrap-duallistbox.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/adminlte.min.css">
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
      
      <!-- Notifications Dropdown Menu -->
      
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
                <a href="SaveOperation.jsp" class="nav-link">
                   <i class="nav-icon fas fa-edit"></i>
                  <p>Enregistrement Opération</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="ShowTrace.jsp" class="nav-link">
                  <i class="nav-icon far fa-image"></i>
                  <p>Consultation Historique</p>
                </a>
              </li>
              
                  <li class="nav-item">
                <a href="AddAgency.jsp" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Ajouter Agence/Compagnie</p>
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
            <h1>Enregistrement Opération</h1>
          </div>
          <div class="col-sm-6">
          
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>
<form method="post">
    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <!-- SELECT2 EXAMPLE -->
        <div class="card card-default">
          <div class="card-header">
            <h3 class="card-title">Enregistrez vos données de nettoyage</h3>

          
          </div>
          <!-- /.card-header -->
          <div class="card-body">
            <div class="row">
              <div class="col-md-4">
                <div class="form-group">
                  <label>Compagnie/Agence</label>
                  <select class="form-control select2"  name="nomAgence" style="width: 100%;">
                    <option selected="selected">STCI</option>
                    <option>Ben Moulehom</option>
                    <option>Aval</option>
                    <option>BM</option>
                    <option>ITravel</option>
                    <option>Promovacances</option>
                    <option>Souvenir Voyages</option>
                    <option>Confiance Voyages</option>
                  </select>
                </div>
                     <!-- /.form-group -->
                <div class="form-group">
                  <label>Opération</label>
                  <select class="form-control select2" name="nomOperation" style="width: 100%;">
                    <option selected="selected">Lavage extérieur</option>
                    <option>Lavage intérieur</option>
                    <option>Lavage Vapeur</option>
                    <option>Lavage à Chaud</option>
                    <option>Lavage rideaux</option>
                    <option>Vidange</option>
                    <option>Graissage</option>
                  </select>
                </div>
                <!-- /.form-group -->
           
                <!-- /.form-group -->
              </div>
              <!-- /.col -->
              <div class="col-md-4">
                <div class="form-group">
                  <label>Matricule Bus</label>
                  <input type="text"  name="matricule" class="form-control" placeholder="Saisir Matricule">
                  
                </div>
                
                                   
                
                <!-- /.form-group -->
               <!--  <div class="col-md-8"> -->
                <div class="form-group">
                  <label>Prix Opération</label>
                  <input type="text" name="prixOperation" class="form-control" placeholder="Enter le prix">
                  
                </div>
                
                
                <!-- /.form-group -->

              <!-- /.col -->
            </div>
            <!-- /.row -->


     <div class="col-md-3"> 
                <div class="form-group">
                  <label>Type vehicule</label>
                  <select class="form-control select2"  name="typeVehicule" style="width: 100%;">
                    <option selected="selected">Bus</option>
                    <option>Micro Bus</option>
                    <option>AutoCar</option>
                    <option>Mini Bus</option>
                    <option>Semi</option>
                    <option>Voiture</option>
                    <option>Autres</option>
                    </select>
                </div>
                <!-- /.form-group -->
       
       <div class="form-group">
                  <div class="form-group">
                  <label>Date Opération</label>
                  <div class="input-group date" id="reservationdate" data-target-input="nearest">
                        <input type="text" class="form-control datetimepicker-input" name="dateOperation" data-target="#reservationdate" data-inputmask="'alias': 'mm/dd/yyyy'" />
                        <div class="input-group-append" data-target="#reservationdate" data-toggle="datetimepicker">
                            <div class="input-group-text"><i class="fa fa-calendar"></i></div>
                        </div>
                    </div>
                </div>
       
                <!-- /.form-group -->
              </div>
              <!-- /.col -->
   
                  
                            
                
                      
                
                <!-- /.form-group -->
              </div>
              <!-- /.col -->
            </div>
            <!-- /.row -->

                   
              
              <br>
              <br>
              
              
              
              
              
              
              
              
               
              <div class="row">
              <div class="col-md-4">  
              <div class="form-group">
                   <input type="submit" class="btn btn-block btn-primary" value="Enregistrer" />
                  
                </div>
                </div>
  
                 <div class="col-md-4">
                <div class="form-group">
                <button type="submit" class="btn btn-block btn-danger" style="background-color: red">Annuler</button>
                </div>
                </div>
                </div>
                <!-- /.form-group -->
              </div>
              <!-- /.col -->
              
              <!-- /.col -->
            </div>
            <!-- /.row -->
          </div>
          
        </div>
         

                  
  </div>
  </section>
  </form>      
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
<!-- Select2 -->
<script src="plugins/select2/js/select2.full.min.js"></script>
<!-- Bootstrap4 Duallistbox -->
<script src="plugins/bootstrap4-duallistbox/jquery.bootstrap-duallistbox.min.js"></script>
<!-- InputMask -->
<script src="plugins/moment/moment.min.js"></script>
<script src="plugins/inputmask/min/jquery.inputmask.bundle.min.js"></script>
<!-- date-range-picker -->
<script src="plugins/daterangepicker/daterangepicker.js"></script>
<!-- bootstrap color picker -->
<script src="plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.min.js"></script>
<!-- Tempusdominus Bootstrap 4 -->
<script src="plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
<!-- Bootstrap Switch -->
<script src="plugins/bootstrap-switch/js/bootstrap-switch.min.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="dist/js/demo.js"></script>
<!-- Page script -->
<script>
$( function() {
    $( "#reservationdate" ).datepicker({ dateFormat: 'dd/mm/yy' });
  } );



  $(function () {
    //Initialize Select2 Elements
    $('.select2').select2()

    //Initialize Select2 Elements
    $('.select2bs4').select2({
      theme: 'bootstrap4'
    })

    //Datemask dd/mm/yyyy
    $('#datemask').inputmask('dd/mm/yyyy', { 'placeholder': 'dd/mm/yyyy' })
    //Datemask2 mm/dd/yyyy
    $('#datemask2').inputmask('mm/dd/yyyy', { 'placeholder': 'mm/dd/yyyy' })
    //Money Euro
    $('[data-mask]').inputmask()

    //Date range picker
    $('#reservationdate').datetimepicker({
        format: 'L'
    });

    //parsing the Date
    
     //Date range picker
    $('#reservation').daterangepicker()
    //Date range picker with time picker
    $('#reservationtime').daterangepicker({
      timePicker: true,
      timePickerIncrement: 30,
      locale: {
        format: 'DD/MM/YYYY hh:mm A'
      }
    })
    //Date range as a button
    $('#daterange-btn').daterangepicker(
      {
        ranges   : {
          'Today'       : [moment(), moment()],
          'Yesterday'   : [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
          'Last 7 Days' : [moment().subtract(6, 'days'), moment()],
          'Last 30 Days': [moment().subtract(29, 'days'), moment()],
          'This Month'  : [moment().startOf('month'), moment().endOf('month')],
          'Last Month'  : [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
        },
        startDate: moment().subtract(29, 'days'),
        endDate  : moment()
      },
      function (start, end) {
        $('#reportrange span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'))
      }
    )

    //Timepicker
    $('#timepicker').datetimepicker({
      format: 'LT'
    })
    
    //Bootstrap Duallistbox
    $('.duallistbox').bootstrapDualListbox()

    //Colorpicker
    $('.my-colorpicker1').colorpicker()
    //color picker with addon
    $('.my-colorpicker2').colorpicker()

    $('.my-colorpicker2').on('colorpickerChange', function(event) {
      $('.my-colorpicker2 .fa-square').css('color', event.color.toString());
    });

    $("input[data-bootstrap-switch]").each(function(){
      $(this).bootstrapSwitch('state', $(this).prop('checked'));
    });

  })
</script>
</body>
</html>
