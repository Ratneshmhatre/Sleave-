<?php
	$con=mysqli_connect("localhost","root","","sleave");
    
	if(isset($_POST['email']))
    {
		$email = $_POST['email'];
		$password = $_POST['Password'];
        $Id = $_POST['id'];
        if($Id=="T3" and $email=="vijay@gmail.com" and $password=="3")
        {
            $alert = "<script>alert('WELCOME HEAD OF DEPARTMENT');window.location='../Hod/Home.html'</script>";
            echo $alert;
        }
        else
        {
            $a="select * from teacher where temail='".$email."'AND tpassword='".$password."' limit 1";
            $result=mysqli_query($con,$a);
            $check = mysqli_num_rows($result);
        
            if($check==1){
                $alert = "<script>alert('WELCOME');window.location='../Teachers/Home.html'</script>";
                echo $alert;
            }
            else{
                $alert = "<script>alert('YOU HAVE ENTERED WRONG CREDENTIALS');window.location='login_as_teacher.html'</script>";
                echo $alert;
            }
        }
    }
      
?>
