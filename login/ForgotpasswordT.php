<?php
$con=mysqli_connect("localhost","root","","sleave");
require 'phpmailer/includes/Exception.php';
require 'phpmailer/includes/PHPMailer.php';
require 'phpmailer/includes/SMTP.php';



use PHPMailer\PHPMailer\PHPmailer;
use PHPMailer\PHPMailer\SMTPS;
use PHPMailer\PHPMailer\Exception;

        ?>


<html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Forgot Password</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"
        integrity="sha384-W8fXfP3gkOKtndU4JGtKDvXbO53Wy8SZCQHczT5FMiiqmQfUpWbYdTil/SxwZgAN"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.min.js"
        integrity="sha384-skAcpIdS7UcVUC05LJ9Dxay8AXcDYfBJqt1CJ85S/CFujBsIzCIv+l9liuYLaMQ/"
        crossorigin="anonymous"></script>
    
    <style>
	html{
		height:100%;
		width:100%;
	}
        body{
            background-image: url("https://www.linkpicture.com/q/loginbg.jpg");
            background-repeat: none;
            background-position: center;
            background-size: cover;
        }
        .parent{
            width: 100vw;
            height: 100vh;
            position: relative;
            
        }

        .child{
            width: 380px;
            height: 370px;
            position: absolute;
            left: 50%;
            top: 50%;
            transform: translate(-50%,-50%);
            background:#dedff0;
            padding-top: 3vh;
            padding-left: 3vh;
            padding-right: 3vh;
            border-radius: 3px;
            box-shadow: 0px 0px 7px 0px black;

        }
        h2{
            font-weight: bold;

        }
        .input{
            color: #676464;
            font-weight: bold;
            border: 1px solid black;
            font-size: 14px;
            height:40px;
            width:230px;
            margin-left:50px;
            margin-top:40px;
            
        }
        .second{
            height:35px;
            width:170px;
            border-radius: 5px;
            border: 2px solid black;
            padding: 4px 16px;
            font-weight: bold;
            font-size: 14px;
            background: white;
            margin-left:80px;
            margin-top:40px;
        }
        .box{
            text-align:center;
            border:2px solid Blue;
            background:#98FB98;
            color:#32CD32;

        }
    </style>

</head>

<body>
    <div class="container-fluid parent">
        <div class="child container-fluid">
                <h2>Welcome to Sl𝔼𝔸ve</h2>
                <form>
                    <div class="First">
                        <input type="email" class="form-control input" placeholder="Email ID" name="email">
                    </div>
                    <div>
                        <button class="second" type="submit">Send Login Link</button>
                    </div><br>
                    <div class="box">
                        <?php
                    if(isset($_POST['email']) and $_POST['email']!="")
    {
    $email_1=$_POST['email'];                     
                            
                            
    $mail = new PHPMailer();
                            
    $mail->isSMTP();
                            
    $mail->Host = "smtp.gmail.com";
    $mail->SMTPAuth = "true";
     $mail->SMTPSecure= "tls";
    $mail->Port = "587";
    $mail->Username   = 'mohammedfurkanmistry@gmail.com';                     //SMTP username
    $mail->Password   = 'Romankingdom@123';                               //SMTP password
    $mail->SMTPAuth = "true";
    $mail->isHTML(true);                                  //Set email format to HTML
    $mail->Subject = 'Password Reset';
    $mail->setFrom('mohammedfurkanmistry@gmail.com', 'Sleave');
    $mail->Body = 'A request has been recieved to change the password for your sleave account.</b>Click the link below to rest it.<br>';
    $mail->Body = "http://localhost/Project/Set_passwordT.html";
    $mail->addAddress($email_1);
                            
    $mail->smtpClose();
    $sql="select * from teacher where temail='".$email_1."' limit 1";
    $result=mysqli_query($con,$sql);
    $check = mysqli_num_rows($result);
        
        if($check==1){
            $mail->send();
            $alert1 = "<script>alert('Mail Sent Successfully')</script>";
            echo $alert1;
        }
    

        else{$alert = "<script>alert('Incorrect gmail account')</script>";
            echo $alert;}
        }?>
                    </div>
        </form>

        </div>
    </div>
</body></html>