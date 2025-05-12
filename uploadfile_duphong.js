jQuery(document).ready(function () {
  var imgArray = [] // Khai báo toàn cục để truy cập được trong validate form

  ImgUpload()

  // Giới hạn nhập số cho trường SĐT
  $('input[placeholder="Số điện thoại liên hệ (*)"]').on('input', function () {
    this.value = this.value.replace(/[^0-9]/g, '')
  })

  // Bắt sự kiện submit
  $('#submit-button').on('click', function (e) {
    e.preventDefault()

    var isValid = true

    // Kiểm tra Tiêu đề
    var tieude = $('input[placeholder="Tiêu đề (*)"]').val().trim()
    if (tieude === '') {
      showError($('input[placeholder="Tiêu đề (*)"]').closest('.input-group'), 'Vui lòng nhập tiêu đề.')
      isValid = false
    } else {
      hideError($('input[placeholder="Tiêu đề (*)"]').closest('.input-group'))
    }

    // Kiểm tra Họ tên
    var hoten = $('input[placeholder="Họ tên (*)"]').val().trim()
    if (hoten === '') {
      showError($('input[placeholder="Họ tên (*)"]').closest('.input-group'), 'Vui lòng nhập họ tên.')
      isValid = false
    } else {
      hideError($('input[placeholder="Họ tên (*)"]').closest('.input-group'))
    }

    // Kiểm tra Email
    var email = $('input[placeholder="Địa chỉ email (*)"]').val().trim()
    if (email === '') {
      showError($('input[placeholder="Địa chỉ email (*)"]').closest('.input-group'), 'Vui lòng nhập địa chỉ email.')
      isValid = false
    } else if (!isValidEmail(email)) {
      showError($('input[placeholder="Địa chỉ email (*)"]').closest('.input-group'), 'Địa chỉ email không hợp lệ.')
      isValid = false
    } else {
      hideError($('input[placeholder="Địa chỉ email (*)"]').closest('.input-group'))
    }

    // Kiểm tra SĐT
    var sdt = $('input[placeholder="Số điện thoại liên hệ (*)"]').val().trim()
    if (sdt === '') {
      showError($('input[placeholder="Số điện thoại liên hệ (*)"]').closest('.input-group'), 'Vui lòng nhập số điện thoại liên hệ.')
      isValid = false
    } else if (!isValidPhoneNumber(sdt)) {
      showError($('input[placeholder="Số điện thoại liên hệ (*)"]').closest('.input-group'), 'Số điện thoại không hợp lệ.')
      isValid = false
    } else {
      hideError($('input[placeholder="Số điện thoại liên hệ (*)"]').closest('.input-group'))
    }

    // Kiểm tra tỉnh thành
    var province = $('#province').val()
    if (province === '') {
      showError($('#province').closest('.input-group-province'), 'Vui lòng chọn Tỉnh/Thành phố.')
      isValid = false
    } else {
      hideError($('#province').closest('.input-group-province'))
    }

    // Kiểm tra ảnh đính kèm
    if (imgArray.length === 0) {
      showError($('.upload__box').closest('.row').find('.title-input'), 'Vui lòng chọn ít nhất một ảnh.')
      isValid = false
    } else {
      hideError($('.upload__box').closest('.row').find('.title-input'))
    }

    if (isValid) {
      console.log('Form hợp lệ, tiến hành submit...')
      // $('form').submit(); // Nếu muốn submit thật
    } else {
      console.log('Vui lòng kiểm tra các trường bắt buộc.')
    }
  })

  // Hàm hiển thị lỗi
  function showError(element, message) {
    var errorDiv = element.prev('.error-message')
    if (errorDiv.length === 0) {
      $('<div class="error-message" style="color: red; font-size: 12px; margin-bottom: 5px; width: 100%;"></div>')
        .insertBefore(element)
        .text(message)
    } else {
      errorDiv.text(message)
    }
  }

  // Hàm ẩn lỗi
  function hideError(element) {
    element.prev('.error-message').remove()
  }

  // Regex kiểm tra email
  function isValidEmail(email) {
    var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/
    return emailRegex.test(email)
  }

  // Regex kiểm tra số điện thoại
  function isValidPhoneNumber(phone) {
    var phoneRegex = /^[0-9]{9,15}$/ // SĐT từ 9 đến 15 chữ số
    return phoneRegex.test(phone)
  }

  // Xử lý upload ảnh
  function ImgUpload() {
    var imgWrap = ''
    const allowedTypes = ['image/jpeg', 'image/jpg', 'image/png']
    const maxFiles = parseInt($('.upload__inputfile').attr('data-max_length')) || 5

    $('.upload__btn-box').on('click', function () {
      $(this).find('.upload__inputfile').trigger('click')
    })

    $('.upload__inputfile').each(function () {
      $(this).on('change', function (e) {
        e.stopPropagation()
        e.preventDefault()

        imgWrap = $(this).closest('.upload__box').find('.upload__img-wrap')
        var files = e.target.files
        var filesArr = Array.prototype.slice.call(files)

        filesArr.forEach(function (f) {
          if (imgArray.length >= maxFiles) {
            alert('Bạn chỉ có thể upload tối đa ' + maxFiles + ' ảnh.')
            return false
          }

          if (allowedTypes.indexOf(f.type) === -1) {
            alert('Chỉ hỗ trợ định dạng ảnh JPEG, JPG, PNG.')
            return false
          }

          imgArray.push(f)

          var reader = new FileReader()
          reader.onload = function (e) {
            var html =
              "<div class='upload__img-box'><div style='background-image: url(" +
              e.target.result +
              ")' data-file='" +
              f.name +
              "' class='img-bg'><div class='upload__img-close'></div></div></div>"
            imgWrap.append(html)
          }
          reader.readAsDataURL(f)
        })

        $(this).val('') // Reset input
      })
    })

    // Xử lý nút xóa ảnh
    $('body').on('click', '.upload__img-close', function () {
      var file = $(this).parent().data('file')
      for (var i = 0; i < imgArray.length; i++) {
        if (imgArray[i].name === file) {
          imgArray.splice(i, 1)
          break
        }
      }
      $(this).parent().parent().remove()
    })
  }
})
