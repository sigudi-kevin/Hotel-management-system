<?php require_once './include/header.php';
require_once './include/conn/linker.php';
if(isset($_POST['submit']))
{
   $Names = $_POST['Names'];
   $Phone_number = $_POST['Phone_number'];
   $Email_address = $_POST['Email_address']; 
   $Id_number = $_POST['Id_number']; 

$checkin= date('D, d M Y');
$checkout= date('D, d M Y', time()+(60*60*24*7));
$query="select * from `rooms` where `occupied`='empty'";
$result= mysqli_query($conn, $query);
$total_rooms= mysqli_num_rows($result); 
$room_data= mysqli_fetch_assoc($result);
$room_id=$room_data['id'];
$query="INSERT Into`customer`(`c_id`,`Names`,`id_no`,`phone`,`email`,`room_id`,`cin`,`cout`) values(NULL,'$Names','$Id_number','$Phone_number','$Email_address','$room_id','$checkin','$checkout')"; 
mysqli_query($conn,$query);  
echo '<div class="alert alert-success text-center">Successfully booked a room</div>';
}
?>
<div class="container_fluid">
    <h1 style="text-align: center;">Room Reservation</h1>
    <h3 style="text-align: center;">Experience a good stay,enjoy fantastic offers.</h3>
    <h4 style="text-align: center;"> Find our friendly welcoming reception.</h4>
    <hr></
    <div class="row booking-container">
        <div class="col-md-12">
            <div class="row">
                <div class="col-md-12">
                    <div class="container">
                        <h4 style="text-align:center">Book Your Room Now</h4>
                        <form>
                            <legend>
                                <div class="row">
                                    <div clas="col-md-6">
                                        <div class="form-group">
                                            
                                             Names:<br/>
                                            <input type="text"  name="Names"><br/>
                                            Phone number:<br/>
                                            <input type="text" name="Phone_number"><br/>
                                            Email address:<br/>
                                            <input type="text" name="Email_address"><br/>
                                            Id number:<br/>
                                            <input type="text" name="Id_number">
                                            <br/>
                                            <br/>
                                            <input class="btn btn-primary" type="submit" value="SEND NOW">
                                            
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Rooms</label>
                                            <select class="form-control select2 select2-hidden-accessible" style="width: 100%;" tabindex="-1" aria-hidden="true">
                                              <option selected="selected">Single</option>
                                              <option>Double</option>
                                              <option>Guest House</option>
                                              <option>Deluxe</option>
                                            </select>
                                          </div>
                                    </div>
                                </div>
                            </legend>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<?php require_once './include/footer.php';?>