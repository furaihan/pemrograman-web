//1. Buat fungsi untuk materi event
function eventSatu(){
    alert("Hello World!");
}
function gantiGambar(img){
     img.src = "img/gambar1.png";
}
function gantiGambar2(img){
    img.src = "img/gambar2.png";
}
function cekLogin(){
    var username = document.getElementById("username").value;
    var password = document.getElementById("password").value;
    if(username == "admin" && password == "admin"){
        alert("Login Berhasil");
    }else{
        alert("Login Gagal");
    }
}
function cekNilai(param){
    let nilai = param.value;
    let info = document.getElementById("info");
    if(nilai > 60){
        info.innerHTML = "Lulus";
        info.style.fontSize = '24px';
        info.style.color = 'green';
    }else{
        info.innerHTML = "Tidak Lulus";
        info.style.fontSize = '24px';
        info.style.color = 'red';
    }
}
let day = new Date().getDay();
let namahari = "";
switch (day) {
    case 1:
        namahari = "Senin";
        break;
    case 2:
        namahari = "Selasa";
        break;
    case 3:
        namahari = "Rabu";
        break;
    case 4:
        namahari = "Kamis";
        break;
    case 5:
        namahari = "Jumat";
        break;
    case 6:
        namahari = "Sabtu";
        break;
    case 0:
        namahari = "Minggu";
        break;
    default:
        namahari = "Tidak ada";
        break;
}
document.getElementById("namaHari").innerHTML = namahari;

//4. Perulangan
let namaOrang = ["Arteria Dahlan", "Mahfud MD", "Puan Maharani", "Aburizal Bakrie", "Ridwan Kamil", "Ganjar Pranowo", "Wayan Koster", "Erik Thohir", "Erik Ten Hag"];
let teks = '';
for(let i = 0; i < namaOrang.length; i++){
    teks += "- " + namaOrang[i] + "<br>";
}
document.getElementById("namaOrang").innerHTML = teks;