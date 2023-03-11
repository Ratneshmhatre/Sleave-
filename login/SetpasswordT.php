<?php
	$con=mysqli_connect("localhost","root","","project");
    
	if(isset($_POST['email']))
    {
		$email = $_POST['email'];
		$password = $_POST['new'];
        $confirm = $_POST['confirm'];

            if($password==$confirm)
            {
            $sql2 = "UPDATE teacher
                      FROM Project
        	          SET tpassword='$password'
        	          WHERE temail='$email'";
        	mysqli_query($con, $sql2);
            $alert = "<script>alert('Password Changed Successfully');window.location='login_as_teacher.html'</script>";
            echo $alert;
        }
        else
        {
            $alert = "<script>alert('Password and confirm are not the same');window.location='Set_passwordT.html'</script>";
            echo $alert;
        }
    }
      
?>