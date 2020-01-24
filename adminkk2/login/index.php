<?php
require_once './../../include/conn/linker.php';

if(isset($_POST['submit']))
{
   $username = $_POST['username'];
    $password = $_POST['password']; 
    
    /*
     * Passworrd hashing process
     */
    /*echo 'Username is '.$username;    
    echo '<br/>';
    echo 'Password is '.$password; s
    echo '<br/>';
    echo 'Hash is '.  md5($password);*/
    //-----------------------------------
    
    $pass_hash = md5($password);
    
    $query    = "SELECT * FROM `admin` WHERE `admin_username`='$username' AND `admin_password`='$pass_hash'";
    
    $result   = mysqli_query($conn, $query);
    
    $total_record_found = mysqli_num_rows($result);
    
    /*echo 'We found a total of '.$total_record_found.' records';*/
    
    if($total_record_found >= 1)
    {
        //Login successful now load the admin data
        $admin_data = mysqli_fetch_assoc($result);
        /*array('john', 'jane');
        array(0=>'john', 1=>'jane');
        array('admin_id'=>'1', 'admin_name'=>'Mercy');*/
        
        /*echo '<pre>';
        print_r($admin_data);
        echo '</pre>';*/
        
        //load admin data into session
        $_SESSION['admin_id']       = $admin_data['id'];
        $_SESSION['admin_username'] = $admin_data['admin_username'];
        $_SESSION['admin_password'] = $admin_data['admin_password'];
//        $_SESSION['admin_id_num']   = $admin_data['admin_id_num'];
        $_SESSION['admin_email']    = $admin_data['admin_email'];
//        $_SESSION['admin_phone']    = $admin_data['admin_phone'];
//        $_SESSION['admin_ppic']     = $admin_data['admin_ppic'];
        
        header('Location:./../');
    }
    else
    {
        //login failed
        echo '<div class="alert alert-danger text-center">Login failed. Please try again</div>';
    }
    
    
}

?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>CSRAdmin | Login</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="../../assets/bower_components/bootstrap/dist/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="../../assets/bower_components/font-awesome/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="../../assets/bower_components/Ionicons/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="../../assets/dist/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="../../assets/dist/css/skins/_all-skins.min.css">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

  <!-- Google Font -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<body class="hold-transition login-page">
<div class="login-box">
  <div class="login-logo">
    <a href="../../index2.html"><b>Admin</b>CSR</a>
  </div>
  <!-- /.login-logo -->
  <div class="login-box-body">
    <p class="login-box-msg">Sign in to start your session</p>

    <form action="" method="POST">
      <div class="form-group has-feedback">
          <input name="username" type="text" class="form-control" placeholder="Username" autocomplete="off">
        <span class="glyphicon glyphicon-user form-control-feedback"></span>
      </div>
      <div class="form-group has-feedback">
          <input name="password" type="password" class="form-control" placeholder="Password" autocomplete="off">
        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
      </div>
      <div class="row">
        <!-- /.col -->
        <div class="col-xs-4">
            <input name="submit" type="submit" class="btn btn-primary btn-block btn-flat" value="Sign In"/>
        </div>
        <!-- /.col -->
      </div>
    </form>

    <!-- /.social-auth-links -->

    <a href="#">I forgot my password</a><br>
    <a href="register.html" class="text-center">Register a new admin</a>

  </div>
  <!-- /.login-box-body -->
</div>
<!-- /.login-box -->

<!-- jQuery 3 -->
<script src="../../assets/bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="../../assets/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- iCheck -->
<script src="../../assets/plugins/iCheck/icheck.min.js"></script>
<script>
  $(function () {
    $('input').iCheck({
      checkboxClass: 'icheckbox_square-blue',
      radioClass: 'iradio_square-blue',
      increaseArea: '20%' /* optional */
    });
  });
</script>
</body>
</html>