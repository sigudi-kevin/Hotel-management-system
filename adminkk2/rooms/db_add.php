<?php 
require_once './../../include/conn/linker.php';

if($_SERVER['REQUEST_METHOD'] == 'GET')
{
    header('Location:./');
}
/*
 * If the request method is POST proceed with upload process
 */
//1):Upload data to database
$roomtype       = $_POST['roomtype'];
$number_of_beds = $_POST['number_of_beds'];
$room_service   = $_POST['room_service'];
$hot_bath       = $_POST['hot_bath'];
$reg_date       = date('D, d M Y');
$self_contained = $_POST['self_contained'];

if(!is_numeric($number_of_beds))
{
    $msg = '<div class="alert alert-danger alert-dismissible">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                <h4><i class="icon fa fa-check"></i> Data integrity Alert!</h4>
                The number of beds supplies must be numeric and not blank.
              </div>';
    
    $encoded_msg = str_replace('+', '---', base64_encode($msg));
    
    header('Location:./add.php?msg='.$encoded_msg);    return;
}
if((integer)$number_of_beds < 1)
{
    $msg = '<div class="alert alert-danger alert-dismissible">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                <h4><i class="icon fa fa-check"></i> Data integrity Alert!</h4>
                The number of beds supplies must be atleast "1" and above.
              </div>';
    
    $encoded_msg = str_replace('+', '---', base64_encode($msg));
    
    header('Location:./add.php?msg='.$encoded_msg);    return;
}

$query = "INSERT INTO `rooms`(`id`, `type`, `number_of_bed`, `room_service`, `self_contained`, `hot_bath`, `reg_date`, `status`) ";
$query .= " VALUES(NULL, '$roomtype', '$number_of_beds', '$room_service', '$self_contained', '$hot_bath', 	'$reg_date', '1')";

mysqli_query($conn, $query);

$query = "SELECT `id` FROM `rooms` ORDER BY `id` DESC LIMIT 1";

$result = mysqli_query($conn, $query);

$room_data  = mysqli_fetch_assoc($result);

$room_id = $room_data['id'];

//2): We make necessary directories based on room id

$directory = "./../../assets/img/rooms/". md5($room_id)."/";
if(!is_dir($directory))
{
    mkdir($directory, 0777, true);
}

//3): Do file uploads
if(isset($_FILES['main_image']))
{
    //do the upload if file is avilable
    $file_name = $_FILES['main_image']['name'];
    $name_array = explode('.', $file_name);
    $extension  = $name_array[count($name_array)-1];
    
    $new_name  = md5(time()).'.'.$extension;
    
    $_FILES['main_image']['name'] = $new_name;
    
    move_uploaded_file($_FILES['main_image']['tmp_name'], $directory.$_FILES['main_image']['name']);
    
    $main_file_path = str_replace('./../../assets/', 'assets/', $directory.$new_name);
    $new_directory  = str_replace('./../../assets/', 'assets/', $directory);
    
    $query = "INSERT INTO `room_gallery`(`id`,`room_id`,`main_image_path`,`other_image_path`,`upload_date`,`status`) ";
    $query .= " VALUES(NULL,'$room_id','$main_file_path','$new_directory','$reg_date','1')";
    mysqli_query($conn, $query);
}
if(isset($_FILES['other_image']))
{
    //do the upload if file is avilable
    $file_name = $_FILES['other_image']['name'];
    $name_array = explode('.', $file_name);
    $extension  = $name_array[count($name_array)-1];
    
    $new_name  = md5(time()+1).'.'.$extension;
    
    $_FILES['other_image']['name'] = $new_name;
    
    move_uploaded_file($_FILES['other_image']['tmp_name'], $directory.$_FILES['other_image']['name']);
    
    $main_file_path = $directory.$new_name;
}
$msg = '<div class="alert alert-success alert-dismissible">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                <h4><i class="icon fa fa-check"></i> Upload process successful!</h4>
                The new room was successfully added to the system
              </div>';
    
    $encoded_msg = str_replace('+', '---', base64_encode($msg));
    
    header('Location:./add.php?msg='.$encoded_msg);