<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet"
            integrity="sha384-4Q6Gf2aSP4eDXB8Miphtr37CMZZQ5oXLH2yaXMJ2w8e2ZtHTl7GptT4jmndRuHDT" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-j1CDi7MgGQ12Z7Qab0qlWQ/Qqz24Gc6BM0thvEMVjHnfYGF0rmFCozFSxQBxwHKO" crossorigin="anonymous">
        </script>
        <link rel="stylesheet" href="css/css.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css">
        <!-- <link rel="stylesheet" href="css/style.css"> -->

    </head>

    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">Navbar</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false"
                    aria-label="Toggle navigation">
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

        <div class="wrap-bg">
            <div class="bg-top"></div>
        </div>
        <div class="container">
        <div class="wrap-time">
            <div class="title-countdown">
                <h2><i class="fa-regular fa-calendar"></i> Hạn nhận ảnh: 30-06-2025</h2>
            </div>
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
        <div class="wrap-rule">
            <div class="box-content-rule">
                <div class="title-rule">
                    <h2>Cuộc thi ảnh đẹp "Sài Gòn - Sắc màu mới"</h2>
                </div>
                <div class="text-rule">
                    <p>- Khám phá và tôn vinh vẻ đẹp của TP.HCM qua lăng kính của người dân với trọng tâm là môi trường
                        xanh, sạch, đẹp. </p>
                    <p>- Lan tỏa ý thức bảo vệ môi trường, giữ gìn và phát triển mảng xanh đô thị, góp phần xây dựng
                        TP.HCM
                        đáng sống.</p>
                    <p>- Khuyến khích cộng đồng nhìn nhận và trân trọng hơn những mảng xanh của TP.HCM, đồng thời kêu
                        gọi ý
                        thức bảo vệ môi trường sống, hướng đến lối sống xanh và phát triển bền vững.</p>
                    <p>- Tạo sân chơi sáng tạo để người dân thể hiện tình yêu thành phố thông qua các tác phẩm nghệ
                        thuật…
                    </p>
                </div>
            </div>
        </div>

        <div class="wrap-topic">
            <div class="title-topic">
                <h2>Chủ đề: TP.HCM Thành phố xanh, hiện đại và phát triển</h2>
            </div>
            <div class="box-topic-album">
                <div class="album">
                    <div class="responsive-container-block bg">
                        <div class="responsive-container-block img-cont">
                            <img class="img"
                                src="https://image.plo.vn/w2000/Uploaded/2025/obfuokb/2025_04_30/img-0096-4491-630.jpg.webp">
                            <img class="img"
                                src="https://workik-widget-assets.s3.amazonaws.com/widget-assets/images/PP5.5.svg">
                            <img class="img img-last"
                                src="https://workik-widget-assets.s3.amazonaws.com/widget-assets/images/PP5.6.svg">
                        </div>
                        <div class="responsive-container-block img-cont">
                            <img class="img img-big"
                                src="https://workik-widget-assets.s3.amazonaws.com/widget-assets/images/PP5.11.svg">
                            <img class="img img-big img-last"
                                src="https://workik-widget-assets.s3.amazonaws.com/widget-assets/images/PP5.10.svg">
                        </div>
                        <div class="responsive-container-block img-cont">
                            <img class="img"
                                src="https://workik-widget-assets.s3.amazonaws.com/widget-assets/images/PP5.7.svg">
                            <img class="img"
                                src="https://workik-widget-assets.s3.amazonaws.com/widget-assets/images/PP5.8.svg">
                            <img class="img"
                                src="https://workik-widget-assets.s3.amazonaws.com/widget-assets/images/PP5.9.svg">
                        </div>
                    </div>
                </div>

                <!-- Fullscreen Overlay -->
                <div id="imageOverlay" class="fullscreen-overlay">
                    <img id="overlayImg" src="" alt="Full Image">
                    <button id="closeBtn" class="close-btn">X</button>
                </div>

            </div>
        </div>

        <div class="wrap-prize">
            <div class="title-prize">
                <h2>GIẢI THƯỞNG</h2>
            </div>
            <div class="box-prize">
                <!-- tabs -->
                <div class="pcss3t pcss3t-effect-scale pcss3t-theme-1">
                    <input type="radio" name="pcss3t" checked id="tab1" class="tab-content-first">
                    <label for="tab1"><i class="fa-solid fa-image"></i>Ảnh</label>

                    <input type="radio" name="pcss3t" id="tab2" class="tab-content-2">
                    <label for="tab2"><i class="fa-solid fa-video"></i>Video</label>



                    <ul>
                        <li class="tab-content tab-content-first typography">
                            <h4>Hạng mục ảnh</h4>
                            <p>- 1 giải Nhất: 30.000.000 VNĐ.</p>
                            <p>- 1 giải Nhì: 15.000.000 VNĐ.</p>
                            <p>- 2 giải Ba, mỗi giải 5.000.000 VNĐ.</p>
                            <p>- 2 giải khuyến khích, mỗi giải: 3.000.000 VNĐ.</p>
                            <p>- 3 giải yêu thích, mỗi giải: 3.000.000 VNĐ (dành cho bài thi có lượt tương tác mạng xã
                                hội của cuộc thi cao nhất).</p>
                            <p>- Top 100 bài thi vào vòng chung kết sẽ nhận giải trị giá 500.000 VNĐ.</p>
                        </li>

                        <li class="tab-content tab-content-2 typography">
                            <h4>Hạng mục video</h4>
                            <p>- 1 giải Nhất: 50.000.000 VNĐ</p>
                            <p>- 1 giải Nhì: 20.000.000 VNĐ</p>
                            <p>- 2 giải Ba, mỗi giải 10.000.000 VNĐ</p>
                            <p>- 2 giải khuyến khích, mỗi giải: 5.000.000 VNĐ</p>
                            <p>- 3 giải yêu thích, mỗi giải: 5.000.000 VNĐ (dành cho bài thi có lượt tương tác mạng xã
                                hội của cuộc thi cao nhất).</p>
                            <p>- Top 50 bài thi vào vòng chung kết sẽ nhận giải trị giá 1.000.000 VNĐ</p>
                        </li>


                    </ul>
                </div>
                <!--/ tabs -->
            </div>
        </div>

        <div class="wrap-examiner">
        <div class="team-section">
        <h2>BAN GIÁM KHẢO</h2>
        <div class="team-members">
        <div class="member">
                <div class="photo-hexagon">
                    <img src="https://image.plo.vn/w850/Uploaded/2025/neyxqurkxq/2025_05_11/lenh-ngung-ban-an-do-691-6296.jpg.webp" alt="Aaron Loeb">
                </div>
                <h5>Aaron Loeb</h5>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin interdum purus non tortor porttitor, id volutpat mauris gravida. Vivamus vitae vulputate elit. Phasellus ac libero eget enim vulputate malesuada</p>
            </div>
            <div class="member">
                <div class="photo-hexagon">
                    <img src="https://www.w3schools.com/howto/img_avatar2.png" alt="Adeline Palmerston">
                </div>
                <h5>Adeline Palmerston</h5>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin interdum purus non tortor porttitor, id volutpat mauris gravida. Vivamus vitae vulputate elit. Phasellus ac libero eget enim vulputate malesuada</p>
            </div>
            <div class="member">
                <div class="photo-hexagon">
                    <img src="https://www.w3schools.com/howto/img_avatar.png" alt="Juliana Silva">
                </div>
                <h5>Nhiếp ảnh gia Ngô Trần Hải An</h5>
                <p>còn được biết đến với nghệ danh Quỷ Cốc Tử, là một nhiếp ảnh gia, phóng viên ảnh và blogger du lịch nổi tiếng tại Việt Nam.</p>
            </div>
            <div class="member">
                <div class="photo-hexagon">
                    <img src="https://www.w3schools.com/w3images/avatar2.png" alt="Aaron Loeb">
                </div>
                <h5>Nữ nhiếp ảnh gia Khánh Phan</h5>
                <p>Đạt được nhiều giải thưởng nhiếp ảnh quốc tế danh giá, nổi bật là giải Grand Prize tại cuộc thi SkyPixel Annual Photo & Video Contest lần thứ 8,….</p>
            </div>
            <div class="member">
                <div class="photo-hexagon">
                    <img src="https://www.w3schools.com/howto/img_avatar2.png" alt="Adeline Palmerston">
                </div>
                <h5>Nhiếp ảnh gia Nguyễn Á</h5>
                <p>Là nhiếp ảnh gia với 40 năm kinh nghiệm và là hội viên Hội Nghệ sĩ Nhiếp ảnh Việt Nam. Anh cũng đạt danh hiệu “Nghệ sĩ nhiếp ảnh xuất sắc" (E.VAPA) - Hội Nghệ sĩ Nhiếp ảnh Việt Nam.”</p>
            </div>
        </div>
    </div>
        </div>
        </div>
        


        <script>
        /********album********** */
        const images = document.querySelectorAll('.album .img');
        const overlay = document.getElementById('imageOverlay');
        const overlayImg = document.getElementById('overlayImg');
        const closeBtn = document.getElementById('closeBtn');

        images.forEach(img => {
            img.addEventListener('click', () => {
                overlayImg.src = img.src;
                overlay.style.display = 'flex';
            });
        });

        overlay.addEventListener('click', (e) => {
            if (e.target === overlay) {
                overlay.style.display = 'none';
                overlayImg.src = '';
            }
        });

        closeBtn.addEventListener('click', (e) => {
            e.stopPropagation(); // Ngăn sự kiện lan ra overlay
            overlay.style.display = 'none';
            overlayImg.src = '';
        });
        </script>

        <script>
        const countdownDate = new Date("June 30, 2025 23:59:59").getTime();

        const x = setInterval(function() {
            const now = new Date().getTime();
            const distance = countdownDate - now;

            if (distance < 0) {
                clearInterval(x);
                document.getElementById("countdown").innerHTML = "Hết giờ!";
                return;
            }

            const days = Math.floor(distance / (1000 * 60 * 60 * 24));
            const hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
            const minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
            const seconds = Math.floor((distance % (1000 * 60)) / 1000);

            document.getElementById("days").innerText = days;
            document.getElementById("hours").innerText = hours;
            document.getElementById("minutes").innerText = minutes;
            document.getElementById("seconds").innerText = seconds;
        }, 1000);
        </script>


    </body>

</html>