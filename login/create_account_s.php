<?php
	$con=mysqli_connect("localhost","root","","sleave");
	if(isset($_POST['name']) and isset($_POST['rollno']))
    {
		$name = $_POST['name'];
        $rollno = $_POST['rollno'];
        $sql="select * from student where sfname='".$name."'AND srollno='".$rollno."' limit 1";
        $result=mysqli_query($con,$sql);
        $check = mysqli_num_rows($result);
        
        if($check==1){
            header("Location: Set_password.html");
        }
        else{
            $alert1 = "<script>alert('YOU HAVE ENTERED WRONG CREDENTIALS');window.location='create_account_student.html'</script>";
            echo $alert1;
        }
    }
    
   
        

?>