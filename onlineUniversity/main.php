<?php
session_start();
error_reporting(0);
include("includes/config.php");

?>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <style>
      
.button {
  display: inline-block;
  padding: 15px 25px;
  font-size: 24px;
  cursor: pointer;
  text-align: center;
  text-decoration: none;
  outline: none;
  color: #fff;
 background-color: #FAF9E3;
  border-radius: 15px;
  box-shadow: 0 9px #999;
    float: left;
  width: 50%;
  padding: 10px;
  height: 300px;
}

.button:hover {background-color:  #E8E8E3}

.button:active {
  background-color: #3e8e41;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}
        body{ 
           background-image: linear-gradient(to top, #a8edea 0%, #fed6e3 100%);
        }   

</style>
    
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />

    <title>Student Login</title>
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <link href="assets/css/style.css" rel="stylesheet" />
</head>
<body>
    <?php include('includes/header.php');?>
    
    <div class="content-wrapper">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h4 class="page-head-line">Please choose your role </h4>

                </div>

            </div>
             <button class="button" onclick="index.php" > <a href="index.php"> Student</a></button>
             <button class="button" onclick="admin/index.php"><a href="admin/index.php">Admin </a></button>
             <div class="row">
  
</div>
                                    </div>
            </div>
   
        
    <?php include('includes/footer.php');?>
    <script src="assets/js/jquery-1.11.1.js"></script>
    <script src="assets/js/bootstrap.js"></script>
    
</body>
</html>
