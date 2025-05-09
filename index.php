<?php include 'dbcon.php'; ?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link rel="stylesheet" href="css/style.css">
  <link rel="stylesheet" href=
"css/bootstrap.min.css">
 
</head>
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v14.0" nonce="CeiFkQrL"></script>
<body>
<div id="fb-root"></div>

 
<header>
      <div id="navbar" class="nav-bar" data-scroll>
        <a href="" class="logo">
          <img src="https://static-cms-plo.zadn.vn/v3/web/styles/img/logo.png" alt="" height="40px"/>
        </a>
       
        <div class="navigation">
          <div class="rank-1">
            <div class="wrap-iframe">
              <div class="wrap-iframe">
              <div class="fb-like" data-href="/index.php" data-width="" data-layout="button" data-action="like" data-size="small" data-share="true"></div>
              </div>
            </div>
            

            
          </div>
        </div>
        <i class="uil uil-apps nav-menu-btn"></i>
      </div>
    </header>
<div class="container" style="margin-top:12%">

        <div class="row" >
            <div class="col-lg-8 col-md-12 col-sm-12 col-xs-12">
           
                <form method="post" enctype="multipart/form-data">
                <p style="text-align: center; font-size: 1.5rem; font-weight: bold;">GỬI BÀI DỰ THI</p>
                    <?php
                     
                     
                    
                        if (isset($_POST['submit']))
                        {
                      
                          $name = $_POST['name'];    
                          $sodienthoai = $_POST['sodienthoai']; 
                          $email = $_POST['email']; 
                          $content = $_POST['content'];     
                                         
 
                          if (isset($_FILES['pdf_file']['name']))
                          {  
                            $accept = ["jpg", "png", "doc", "docx", "pdf"];
                      
                            $upext = strtolower(pathinfo($_FILES["pdf_file"]["name"], PATHINFO_EXTENSION));


                            $file_name = $_FILES['pdf_file']['name'];
                            $file_tmp = $_FILES['pdf_file']['tmp_name'];
                             
                            if (in_array($upext, $accept)){
                              move_uploaded_file($file_tmp,"./pdf/".$file_name);
                              $insertquery =
                              "INSERT INTO datafile(username,sdt,email, content, filename) VALUES('$name','$sodienthoai', '$email', '$content','$file_name')";
                              $iquery = mysqli_query($con, $insertquery);  
                              if($iquery){
                                ?>
                                <div class=
                                "alert alert-success alert-dismissible fade show text-center">
                                    
                                    <strong>Bài dự thi đã được gửi đi thành công!</strong> 
                                  </div>
                                <?php
                              }
                              else{
                                ?>
                                <div> <strong>Failed!</strong> Try Again!</div>
                                <?php 
                              }
                                
                              }
                              else
                              {
                                ?>
                                  <div class=
                                  "alert alert-danger alert-dismissible fade show text-center">
                                    <strong>Thất bại!</strong> Vui lòng tải tệp lên ở định dạng PDF, Word, Image (.pdf,.doc, .docx, .jpg, .png)
                                  </div>
                                <?php
                            }
                            
                            
    
                           
                            
                            }// end if
                        }// end if
                    ?>
                     
                    <div class="form-input py-2" action="#" >
                        <div class="form-group">
                     
                            <input type="text" class="form-control"
                                   placeholder="Họ và tên" name="name" required> 
                        </div>   
                        <div class="form-group">
                        
                            <input type="number" class="form-control"
                                   placeholder="Số điện thoại" name="sodienthoai" required>
                        </div>     
                        <div class="form-group">
                        
                            <input type="text" class="form-control"
                                   placeholder="Email" name="email" required>
                        </div>
                        <div class="form-group">
                        
                        <Textarea class="content" name="content" cols=60 row=15 value="Nhập nội dung"></Textarea>
                           
                        </div>                                    
                        <div class="form-group">
                          
                            <input type="file" name="pdf_file"
                                   class="form-control" accept=" .png, .jpg, .jpeg" multiple required />
                        </div>
                        <div class="form-group" style="text-align: center">
                            <input type="submit"
                                  class="btnRegister" name="submit" value="Gửi">
                        </div>
                    </div>
                </form>
            </div>           
             
            
        </div>
    </div>
   
</body>
</html>