
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

if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'])) {
    echo "<div style='color: green;'>Đang xử lý dữ liệu...</div>";

    // Lấy dữ liệu từ form
    $tieude = $_POST['tieude'];
    $hoten = $_POST['hoten'];
    $email = $_POST['email'];
    $sdt = $_POST['sdt'];
    $tinhthanh = $_POST['tinhthanh'];
    $quanhuyen = $_POST['quanhuyen'];
    $noidung = $_POST['noidung'];
    

    try {
        // Kết nối đến cơ sở dữ liệu
        $conn = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        // Bắt đầu giao dịch
        $conn->beginTransaction();

        // Chèn thông tin liên hệ vào bảng ThongTinLienHe
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

        // Lấy ID của bản ghi vừa chèn
        $lienHeID = $conn->lastInsertId();

        if (!$lienHeID) {
            echo "<div style='color: red;'>Lỗi: Không thể lấy được ID của bản ghi ThongTinLienHe vừa chèn.</div>";
            $conn->rollBack();
            exit();
        }
        
        // Xử lý tải lên tệp tin
        if (isset($_FILES['fileanh']) && is_array($_FILES['fileanh']['tmp_name'])) {
            $uploadDir = '../uploads/'; // Thư mục lưu trữ tệp tải lên
            
            // Đảm bảo thư mục uploads tồn tại và có quyền ghi
            if (!is_dir($uploadDir)) {
                mkdir($uploadDir, 0755, true);
            }
            $allowedTypes = ['image/jpeg', 'image/jpg', 'image/png'];
            $uploadedFiles = [];
            $uploadErrors = false;

            foreach ($_FILES['fileanh']['tmp_name'] as $index => $tmpName) {
                if ($_FILES['fileanh']['error'][$index] === UPLOAD_ERR_OK) {
                    $fileName = basename($_FILES['fileanh']['name'][$index]);
                    $fileType = $_FILES['fileanh']['type'][$index];
                    $fileSize = $_FILES['fileanh']['size'][$index];
                    $targetFile = $uploadDir . $fileName;

                    // Kiểm tra loại tệp
                    if (!in_array($fileType, $allowedTypes)) {
                        echo "<div style='color: orange;'>Tệp $fileName không hợp lệ. Chỉ hỗ trợ JPG, JPEG, PNG.</div>";
                        $uploadErrors = true;
                        continue;
                    }

                    // Kiểm tra kích thước tệp
                    if ($fileSize > 5 * 1024 * 1024) { // 5MB
                        echo "<div style='color: orange;'>Tệp $fileName quá lớn. Vui lòng chọn tệp nhỏ hơn 5MB.</div>";
                        $uploadErrors = true;
                        continue;
                    }

                    // Di chuyển tệp vào thư mục uploads
                    if (move_uploaded_file($tmpName, $targetFile)) {
                        // Lưu thông tin tệp vào bảng FileDinhKem
                        $stmt = $conn->prepare("INSERT INTO FileDinhKem (LienHeID, FilePath) VALUES (:lienHeID, :filePath)");
                        $stmt->execute([
                            ':lienHeID' => $lienHeID,
                            ':filePath' => $targetFile
                        ]);
                        $uploadedFiles[] = $fileName;
                    } else {
                        echo "<div style='color: red;'>Không thể tải lên tệp $fileName. Lỗi hệ thống.</div>";
                        $uploadErrors = true;
                    }
                } elseif ($_FILES['fileanh']['error'][$index] !== UPLOAD_ERR_NO_FILE) {
                    echo "<div style='color: red;'>Lỗi tải lên tệp: " . $_FILES['fileanh']['error'][$index] . "</div>";
                    $uploadErrors = true;
                }
            }

            
        } 

        // Cam kết giao dịch
        $conn->commit();
        echo "<div style='color: blue;'>Gửi thông tin thành công!</div>";

    } catch (PDOException $e) {
        // Nếu có lỗi, hủy giao dịch
        $conn->rollBack();
        echo "<div style='color: red;'>Lỗi: " . $e->getMessage() . "</div>";
    } finally {
        // Đóng kết nối
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
          <form action="" method="POST" enctype="multipart/form-data">
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
        <input type="file" name="fileanh[]" multiple accept="image/jpeg, image/jpg, image/png"  data-max_length="5"
                      />

                    <!-- <input
                      type="file"
                      multiple
                      data-max_length="5"
                      class="upload__inputfile"
                      accept="image/jpeg, image/jpg, image/png"
                      name="fileanh[]"
                    /> -->
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

    <!-- <script>
function showError($element, message) {
    $element.find('.error_mess').text(message).css('color', 'red');
    $element.find('input, textarea').focus();
}

$('form').on('submit', function (e) {
    let isValid = true;

    const emailInput = $('input[name="email"]');
    const phoneInput = $('input[name="sdt"]');
    const files = $('input[name="fileanh[]"]')[0].files;

    const email = emailInput.val().trim();
    const phone = phoneInput.val().trim();
    const title = $('input[name="tieude"]').val().trim();
    const name = $('input[name="hoten"]').val().trim();
    const tinhthanh = $('select[name="tinhthanh"]').val().trim();

    // Kiểm tra nhập đủ các trường
    if (!title) {
        e.preventDefault();
        showError($('input[placeholder="Tiêu đề (*)"]').closest('.input-group'), 'Vui lòng nhập tiêu đề.');
        return false;
    }
    if (!name) {
        e.preventDefault();
        showError($('input[placeholder="Họ tên (*)"]').closest('.input-group'), 'Vui lòng nhập họ tên.');
        return false;
    }
    if (!email) {
        e.preventDefault();
        showError($('input[placeholder="Địa chỉ email (*)"]').closest('.input-group'), 'Vui lòng nhập địa chỉ email.');
        return false;
    }
    // Kiểm tra định dạng email
    const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    if (!emailPattern.test(email)) {
        e.preventDefault();
        showError($('input[placeholder="Địa chỉ email (*)"]').closest('.input-group'), 'Email không hợp lệ.');
        return false;
    }

    if (!phone) {
        e.preventDefault();
        showError($('input[placeholder="Số điện thoại liên hệ (*)"]').closest('.input-group'), 'Vui lòng nhập số điện thoại.');
        return false;
    }
    // Kiểm tra số điện thoại là số
    const phonePattern = /^[0-9]{8,15}$/;
    if (!phonePattern.test(phone)) {
        e.preventDefault();
        showError($('input[placeholder="Số điện thoại liên hệ (*)"]').closest('.input-group'), 'Số điện thoại không hợp lệ.');
        return false;
    }

    if (!tinhthanh) {
        e.preventDefault();
        showError($('#province').closest('.box-province'), 'Vui lòng chọn tỉnh/thành phố.');
        return false;
    }

    // Kiểm tra ảnh
    if (files.length === 0) {
        e.preventDefault();
        alert('Vui lòng chọn ít nhất một ảnh.');
        return false;
    }

    if (files.length > 5) {
        e.preventDefault();
        alert('Bạn chỉ có thể upload tối đa 5 ảnh.');
        return false;
    }

    const allowedTypes = ['image/jpeg', 'image/jpg', 'image/png'];
    for (let i = 0; i < files.length; i++) {
        if (!allowedTypes.includes(files[i].type)) {
            e.preventDefault();
            alert('Ảnh ' + files[i].name + ' không đúng định dạng. Chỉ chấp nhận JPG, JPEG, PNG.');
            return false;
        }
    }

    return true;
});
</script> -->
<script>
$(document).ready(function () {
    // Giới hạn tối đa 5 ảnh khi chọn
    $('input[name="fileanh[]"]').on('change', function () {
        const files = this.files;
        if (files.length > 5) {
            alert('Bạn chỉ có thể upload tối đa 5 ảnh.');
            this.value = ''; // Reset input
            return;
        }

        // Kiểm tra định dạng file ảnh
        const allowedTypes = ['image/jpeg', 'image/jpg', 'image/png'];
        for (let i = 0; i < files.length; i++) {
            if (!allowedTypes.includes(files[i].type)) {
                alert('Chỉ hỗ trợ các định dạng ảnh JPEG, JPG, PNG.');
                this.value = '';
                return;
            }
        }
    });

    // Chỉ cho nhập số ở ô số điện thoại
    $('input[name="sdt"]').on('input', function () {
        this.value = this.value.replace(/\D/g, '');
    });

    // Kiểm tra khi submit
    $('.send_post').on('click', function (e) {
        const tieude = $('input[name="tieude"]').val().trim();
        const hoten = $('input[name="hoten"]').val().trim();
        const email = $('input[name="email"]').val().trim();
        const sdt = $('input[name="sdt"]').val().trim();
        const tinhthanh = $('select[name="tinhthanh"]').val();
        const quanhuyen = $('select[name="quanhuyen"]').val();
        const noidung = $('textarea[name="noidung"]').val().trim();
        const fileanh = $('input[name="fileanh[]"]')[0].files;

        // Regex kiểm tra email
        const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

        if (!tieude) {
            alert('Vui lòng nhập tiêu đề.');
            e.preventDefault();
            return;
        }

        if (!hoten) {
            alert('Vui lòng nhập họ tên.');
            e.preventDefault();
            return;
        }

        if (!email || !emailRegex.test(email)) {
            alert('Vui lòng nhập địa chỉ email hợp lệ.');
            e.preventDefault();
            return;
        }

        if (!sdt) {
            alert('Vui lòng nhập số điện thoại.');
            e.preventDefault();
            return;
        }

        if (!tinhthanh) {
            alert('Vui lòng chọn tỉnh/thành phố.');
            e.preventDefault();
            return;
        }

        if (!quanhuyen) {
            alert('Vui lòng chọn quận/huyện.');
            e.preventDefault();
            return;
        }

        if (!noidung) {
            alert('Vui lòng nhập nội dung.');
            e.preventDefault();
            return;
        }

        if (fileanh.length === 0) {
            alert('Vui lòng chọn ít nhất 1 ảnh.');
            e.preventDefault();
            return;
        }

        if (fileanh.length > 5) {
            alert('Bạn chỉ có thể upload tối đa 5 ảnh.');
            e.preventDefault();
            return;
        }

        for (let i = 0; i < fileanh.length; i++) {
            const type = fileanh[i].type;
            if (!['image/jpeg', 'image/jpg', 'image/png'].includes(type)) {
                alert('Chỉ hỗ trợ các định dạng ảnh JPEG, JPG, PNG.');
                e.preventDefault();
                return;
            }
        }
    });
});
</script>



  </body>
</html>
