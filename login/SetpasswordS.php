<?php
	$con=mysqli_connect("localhost","root","","project");
    
	if(isset($_POST['email']))
    {
		$email = $_POST['email'];
		$password = $_POST['new'];
        $confirm = $_POST['confirm'];

            if($password==$confirm)
            {
            $sql2 = "UPDATE student
                      FROM Project
        	          SET spassword='$password'
        	          WHERE semail='$email'";
        	mysqli_query($con, $sql2);
            $alert = "<script>alert('Password Changed Successfully');window.location='login_as_student.html'</script>";
            echo $alert;
        }
        else
        {
            $alert = "<script>alert('Password and confirm are not the same');window.location='SetpasswordS.html'</script>";
            echo $alert;
        }
    }
      
?>