let provinceData = []; // Lưu dữ liệu tỉnh/thành để tra cứu

// Tải danh sách tỉnh/thành
async function loadProvinces() {
  const res = await fetch("https://provinces.open-api.vn/api/?depth=2");
  const provinces = await res.json();
  provinceData = provinces;

  const provinceSelect = document.getElementById("province");
  provinces.forEach((p) => {
    const option = document.createElement("option");
    option.value = p.code;
    option.textContent = p.name;
    provinceSelect.appendChild(option);
  });
}

// Tải danh sách quận/huyện khi người dùng chọn tỉnh
function loadDistricts() {
  const selectedCode = document.getElementById("province").value;
  const districtSelect = document.getElementById("district");
  districtSelect.innerHTML = '<option value="">-- Chọn quận/huyện --</option>';

  if (!selectedCode) return;

  const selectedProvince = provinceData.find((p) => p.code == selectedCode);
  if (selectedProvince && selectedProvince.districts) {
    selectedProvince.districts.forEach((d) => {
      const option = document.createElement("option");
      option.value = d.code;
      option.textContent = d.name;
      districtSelect.appendChild(option);
    });
  }
}

window.onload = loadProvinces;
