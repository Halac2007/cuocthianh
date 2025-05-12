jQuery(document).ready(function () {
  ImgUpload()

  $('#submit-button').on('click', function (e) {
    e.preventDefault() // Ngăn chặn submit form mặc định

    var isValid = true

    // Kiểm tra trường Tiêu đề
    var tieude = $('input[placeholder="Tiêu đề (*)"]').val().trim()
    if (tieude === '') {
      showError($('input[placeholder="Tiêu đề (*)"]').closest('.input-group'), 'Vui lòng nhập tiêu đề.')
      isValid = false
    } else {
      hideError($('input[placeholder="Tiêu đề (*)"]').closest('.input-group'))
    }

    // Kiểm tra trường Họ tên
    var hoten = $('input[placeholder="Họ tên (*)"]').val().trim()
    if (hoten === '') {
      showError($('input[placeholder="Họ tên (*)"]').closest('.input-group'), 'Vui lòng nhập họ tên.')
      isValid = false
    } else {
      hideError($('input[placeholder="Họ tên (*)"]').closest('.input-group'))
    }

    // Kiểm tra trường Địa chỉ email
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

    // Kiểm tra trường Số điện thoại liên hệ
    var sdt = $('input[placeholder="Số điện thoại liên hệ (*)"]').val().trim()
    if (sdt === '') {
      showError($('input[placeholder="Số điện thoại liên hệ (*)"]').closest('.input-group'), 'Vui lòng nhập số điện thoại liên hệ.')
      isValid = false
    } else {
      hideError($('input[placeholder="Số điện thoại liên hệ (*)"]').closest('.input-group'))
    }

    // Kiểm tra Tỉnh/Thành phố
    var province = $('#province').val()
    if (province === '') {
      showError($('#province').closest('.input-group-province'), 'Vui lòng chọn Tỉnh/Thành phố.')
      isValid = false
    } else {
      hideError($('#province').closest('.input-group-province'))
    }

    // Kiểm tra File đính kèm (bắt buộc)
    if (imgArray.length === 0) {
      showError($('.upload__box').closest('.row').find('.title-input'), 'Vui lòng chọn ít nhất một ảnh.')
      isValid = false
    } else {
      hideError($('.upload__box').closest('.row').find('.title-input'))
    }

    // Nếu tất cả các trường bắt buộc đều hợp lệ, bạn có thể submit form
    if (isValid) {
      // Thực hiện submit form ở đây (ví dụ: dùng ajax)
      console.log('Form hợp lệ, tiến hành submit...')
      // $('form').submit(); // Nếu bạn muốn submit form theo cách thông thường
    } else {
      console.log('Vui lòng kiểm tra các trường bắt buộc.')
    }
  })

  function showError(element, message) {
    var errorDiv = element.prev('.error-message') // Tìm div.error-message ở phía TRƯỚC element
    if (errorDiv.length === 0) {
      $('<div class="error-message" style="color: red; font-size: 12px; margin-bottom: 5px; width: 100%;"></div>')
        .insertBefore(element)
        .text(message)
    } else {
      errorDiv.text(message)
    }
  }

  function hideError(element) {
    element.prev('.error-message').remove() // Xóa div.error-message ở phía TRƯỚC element
  }

  function isValidEmail(email) {
    var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/
    return emailRegex.test(email)
  }
})

function ImgUpload() {
  var imgWrap = ''
  var imgArray = []
  const allowedTypes = ['image/jpeg', 'image/jpg', 'image/png']
  const maxFiles = parseInt($('.upload__inputfile').attr('data-max_length')) || 5

  $('.upload__btn-box').on('click', function () {
    $(this).find('.upload__inputfile').trigger('click')
  })

  $('.upload__inputfile').each(function () {
    $(this).on('change', function (e) {
      imgWrap = $(this).closest('.upload__box').find('.upload__img-wrap')

      var files = e.target.files
      var filesArr = Array.prototype.slice.call(files)

      filesArr.forEach(function (f) {
        if (imgArray.length >= maxFiles) {
          alert('Bạn chỉ có thể upload tối đa ' + maxFiles + ' ảnh.')
          return false
        }

        if (allowedTypes.indexOf(f.type) === -1) {
          alert('Chỉ hỗ trợ các định dạng ảnh JPEG, JPG, PNG.')
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
      $(this).val('') // Reset input sau khi chọn file
    })
  })

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
