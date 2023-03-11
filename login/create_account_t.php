<?php
	$con=mysqli_connect("localhost","root","","sleave");
	if(isset($_POST['name']) and isset($_POST['id']))
    {
		$name = $_POST['name'];
        $id = $_POST['id'];
        $sql="select * from teacher where tfname='".$name."'AND t_id='".$id."' limit 1";
        $result=mysqli_query($con,$sql);
        $check = mysqli_num_rows($result);
        
        if($check==1){
            header("Location: Set_password.html");
        }
        else{
            $alert1 = "<script>alert('YOU HAVE ENTERED WRONG CREDENTIALS');window.location='create_account_teacher.html'</script>";
            echo $alert1;
        }
    }
    
   
        

?>