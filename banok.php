
<!DOCTYPE html>
<html lang="vi">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Gửi Ảnh Tham Gia</title>
    
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-4Q6Gf2aSP4eDXB8Miphtr37CMZZQ5oXLH2yaXMJ2w8e2ZtHTl7GptT4jmndRuHDT"
      crossorigin="anonymous"
    />
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-j1CDi7MgGQ12Z7Qab0qlWQ/Qqz24Gc6BM0thvEMVjHnfYGF0rmFCozFSxQBxwHKO"
      crossorigin="anonymous"
    ></script>
    <link rel="stylesheet" href="css/css.css" />
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css" />
  </head>
   
  <body>

 <?php
include 'dbcon.php';
ini_set('display_errors', 1);
error_reporting(E_ALL);

if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['submit'])) {
    echo "<div style='color: green;'>Đang xử lý dữ liệu...</div>";
    
    if (!empty($_FILES['fileanh']['name'][0])) {
        echo '<pre>';
        print_r($_FILES['fileanh']);
        echo '</pre>';
    } else {
        echo "<div style='color: red;'>Không có file nào được chọn hoặc input không gửi lên đúng.</div>";
    }

    // Collect form data
    $tieude     = $_POST['tieude'];
    $hoten      = $_POST['hoten'];
    $email      = $_POST['email'];
    $sdt        = $_POST['sdt'];
    $tinhthanh  = $_POST['tinhthanh'];
    $quanhuyen  = $_POST['quanhuyen'];
    $noidung    = $_POST['noidung'];

    try {
        // Set up the database connection
        $conn = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $conn->beginTransaction();

        // Insert into ThongTinLienHe
        $stmt = $conn->prepare("INSERT INTO ThongTinLienHe (TieuDe, HoTen, Email, SDT, TinhThanh, QuanHuyen, NoiDung) 
                                VALUES (:tieude, :hoten, :email, :sdt, :tinhthanh, :quanhuyen, :noidung)");
        $stmt->execute([
            ':tieude' => $tieude,
            ':hoten' => $hoten,
            ':email' => $email,
            ':sdt' => $sdt,
            ':tinhthanh' => $tinhthanh,
            ':quanhuyen' => $quanhuyen,
            ':noidung' => $noidung
        ]);

        $lienHeID = $conn->lastInsertId();
        if (!$lienHeID) {
            throw new Exception("Không thể lấy ID mới.");
        }

        // Upload files
        if (!empty($_FILES['fileanh']['name'][0])) {
            $uploadDir = './uploads/';

            if (!is_dir($uploadDir)) {
                mkdir($uploadDir, 0755, true);
            }

            $allowedTypes = ['image/jpeg', 'image/jpg', 'image/png'];
            $uploadedFiles = [];

            foreach ($_FILES['fileanh']['tmp_name'] as $index => $tmpName) {
                $error = $_FILES['fileanh']['error'][$index];
                if ($error !== UPLOAD_ERR_OK) {
                    echo "<div style='color: red;'>Lỗi upload file: $error</div>";
                    continue;
                }

                $fileName = basename($_FILES['fileanh']['name'][$index]);
                $fileType = $_FILES['fileanh']['type'][$index];
                $fileSize = $_FILES['fileanh']['size'][$index];

                if (!in_array($fileType, $allowedTypes)) {
                    echo "<div style='color: orange;'>Tệp $fileName không hợp lệ.</div>";
                    continue;
                }

                if ($fileSize > 5 * 1024 * 1024) {
                    echo "<div style='color: orange;'>Tệp $fileName quá lớn.</div>";
                    continue;
                }

                // Rename file to avoid conflict
                $newFileName = uniqid() . '_' . $fileName;
                $targetPath = $uploadDir . $newFileName;

                if (move_uploaded_file($tmpName, $targetPath)) {
                    // Insert file path into FileDinhKem table
                    $stmt = $conn->prepare("INSERT INTO FileDinhKem (LienHeID, FilePath) VALUES (:lienHeID, :filePath)");
                    $success = $stmt->execute([
                        ':lienHeID' => $lienHeID,
                        ':filePath' => $newFileName // Save only the relative file path
                    ]);

                    if (!$success) {
                        $errorInfo = $stmt->errorInfo();
                        throw new Exception("Lỗi khi chèn vào FileDinhKem: " . $errorInfo[2]);
                    }

                    $uploadedFiles[] = $fileName;
                } else {
                    echo "<div style='color: red;'>Không thể lưu tệp $fileName.</div>";
                }
            }

            if ($uploadedFiles) {
                echo "<div style='color: green;'>Đã tải lên: " . implode(', ', $uploadedFiles) . "</div>";
            }
        } else {
            echo "<div style='color: gray;'>Không có tệp ảnh nào được chọn.</div>";
        }

        // Commit the transaction
        $conn->commit();
        echo "<div style='color: blue;'>Gửi thông tin thành công!</div>";
    } catch (Exception $e) {
        $conn->rollBack();
        echo "<div style='color: red;'>Lỗi: " . $e->getMessage() . "</div>";
    } finally {
        $conn = null;
    }
}
?>






    
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
      <div class="container-fluid">
        <a class="navbar-brand" href="#">Navbar</a>
        <button
          class="navbar-toggler"
          type="button"
          data-bs-toggle="collapse"
          data-bs-target="#navbarNavDropdown"
          aria-controls="navbarNavDropdown"
          aria-expanded="false"
          aria-label="Toggle navigation"
        >
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavDropdown">
          <ul class="navbar-nav">
            <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="#">TRANG CHỦ</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">THỂ LỆ</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">GỬI ẢNH THAM GIA</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">TÁC GIẢ</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
    <div class="container"></div>

    <div class="wrap-table-gubaiduthi">
      <h2>Thời gian kết thúc sau:</h2>
      <div class="wrap-time">
        <div id="countdown">
          <div class="time-box">
            <span id="days">0</span>
            <small>Ngày</small>
          </div>
          <div class="time-box">
            <span id="hours">0</span>
            <small>Giờ</small>
          </div>
          <div class="time-box">
            <span id="minutes">0</span>
            <small>Phút</small>
          </div>
          <div class="time-box">
            <span id="seconds">0</span>
            <small>Giây</small>
          </div>
        </div>
      </div>
      <div class="box-form">
        <div class="box-form-rules">dsgsdg</div>
        <div class="form-item">
          <form action="guibaiduthi.php" method="POST" enctype="multipart/form-data">
            <div class="row">
              <h4>Account</h4>
              <div class="input-group input-group-icon">
                <input type="text" placeholder="Tiêu đề (*)" name="tieude" />
                <div class="input-icon"><i class="fas fa-heading"></i></div>
              </div>
              <div class="input-group input-group-icon">
                <input type="text" placeholder="Họ tên (*)" name="hoten"/>
                <div class="input-icon"><i class="fa fa-user"></i></div>
              </div>
              <div class="input-group input-group-icon">
                <input type="email" placeholder="Địa chỉ email (*)" name="email" />
                <div class="input-icon"><i class="fa fa-envelope"></i></div>
              </div>
              <div class="input-group input-group-icon">
                <input type="tel" placeholder="Số điện thoại liên hệ (*)" name="sdt" />
                <div class="input-icon"><i class="fas fa-phone"></i></div>
              </div>
              <div class="input-group-province">
                <div class="box-province">
                  <label for="province" >Tỉnh/Thành phố (*):</label>
                  <select id="province" onchange="loadDistricts()" name="tinhthanh">
                    <option value="">-- Chọn tỉnh/thành phố --</option>
                  </select>
                </div>
                <div class="district">
                  <label for="district">Quận/Huyện:</label>
                  <select id="district" name="quanhuyen">
                    <option value="">-- Chọn quận/huyện --</option>
                  </select>
                </div>
              </div>
            </div>
            <div class="row">
              <label for="" class="input-form">
                <span class="title-input">Nội dung <span class="s_text">(không quá 3000 ký tự)</span></span>
                <div class="width_common area-content-form">
                  <textarea name="noidung" id="content" cols="30" rows="10"></textarea>
                </div>
                <div class="width_common error_mess" id="errorContent"></div>
                <span class="width_common s_text" style="text-align: right; font-size: 14px" id="countContent"></span>
              </label>
            </div>
            <div class="row">
              <label class="input-form">
                <span class="title-input">File đính kèm <span class="s_text">(bắt buộc)</span></span>
                <br />
                <span class="s_text s_text_full">Hỗ trợ: jpeg, jpg, png.</span>
              </label>
              <div class="upload__box">
                <div class="upload__btn-box">
                  <label class="upload__btn">
                    <svg xmlns="http://www.w3.org/2000/svg" class="upload-icon" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                      <path
                        stroke-linecap="round"
                        stroke-linejoin="round"
                        stroke-width="2"
                        d="M4 16v1a3 3 0 003 3h10a3 3 0 003-3v-1m-4-8l-4-4m0 0l-4 4m4-4v12"
                      />
                    </svg>
                    <div class="upload-text">Chọn ảnh từ máy tính</div>
                    <div class="upload-hint">Hỗ trợ: jpeg, jpg, png (tối đa 5 ảnh)</div>
                    <input type="file" name="fileanh[]" multiple accept="image/jpeg, image/jpg, image/png" />

                  </label>
                </div>
                <div class="upload__img-wrap"></div>
              </div>
            </div>

            <div class="row">
              <label class="input-form">
                <span class="title-input">File video <span> (Nhập link Google Drive)</span></span>
                <div class="width_common">
                  <input
                    type="url"
                    class="form-control"
                    placeholder="Ví dụ: https://drive.google.com/file/d/your_file_id/view?usp=sharing"
                    id="driveLink"
                    name="filevideo"
                  />
                </div>
                <div class="width_common error_mess" id="errorDriveLink"></div>
              </label>
            </div>

            <div class="row">
              <h4>Terms and Conditions</h4>
              <div class="input-group">
                <input id="terms" type="checkbox" />
                <label for="terms"
                  >I accept the terms and conditions for signing up to this service, and hereby confirm I have read the privacy
                  policy.</label
                >
              </div>
            </div>
            <button type="submit" name="submit" class="btn-vm txt_16 full btn_send_wg send_post">Gửi bài</button>

          </form>
        </div>
      </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="js/data-province.js"></script>
    <script src="js/uploadfile.js"></script>
  </body>
</html>
