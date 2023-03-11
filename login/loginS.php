<?php
	$con=mysqli_connect("localhost","root","","sleave");
	if(isset($_POST['email'])){
		$email = $_POST['email'];
		$password = $_POST['Password'];
	
        $sql="select * from student where semail='".$email."'AND spassword='".$password."' limit 1";
        $result=mysqli_query($con,$sql);
        $check = mysqli_num_rows($result);
        
        if($check==1){
            $alert = "<script>alert('WELCOME');window.location='../Student/Home.html'</script>";
            echo $alert;
        }
        else{
            $alert = "<script>alert('You Have Entered Incorrect Credentials');window.location='login_as_student.html'</script>";
            echo $alert;
        }
    
    
    
        
}
?>
