<?php
// 1. Latihan pertama start php
echo "<h1>Hello world coding PHP pertama</h1><br>";

//2. Latihan Variabel
$bilangan1 = 10;
$bilangan2 = 20;
$keterangan = "Bilangan";

echo $keterangan . " 1 = " . $bilangan1 . " dan ".$keterangan." 2 = " . $bilangan2 . "<br>";

//3. Latihan Operator
$hasil = $bilangan1 + $bilangan2;
echo "Hasil ".$bilangan1." + ".$bilangan2." = ".$hasil."<br>";

//4. Latihan control flow
$nilai = 90;
$nilai_huruf = "";
if ($nilai >= 90) {
    $nilai_huruf = "A";
} elseif ($nilai >= 80) {
    $nilai_huruf = "B";
} elseif ($nilai >= 70) {
    $nilai_huruf = "C";
} elseif ($nilai >= 60) {
    $nilai_huruf = "D";
} else {
    $nilai_huruf = "E";
}

echo "Nilai anda adalah " . $nilai_huruf . "<br>";

//5. Latihan Variabel Array
$mobil = array("Honda", "BMW", "Toyota");
print_r($mobil);
echo "<br>";
echo "Mobil Sultan".$mobil[0]."<br>";

//6. Latihan Perulangan
for ($i = 0; $i < count($mobil); $i++) {
    echo "Data Mobil ke-".($i + 1)." adalah = " . $mobil[$i] . "<br>";
}

//7. Latihan Fungsi
function tambah($bil1, $bil2)
{
    return $bil1 + $bil2;
}
echo "Hasil penjumlahan 10 + 20 = " . tambah(10, 20) . "<br>";

//8. Latihan Rekursif
function faktorial($angka)
{
    if ($angka < 2) {
        return 1;
    } else {
        return ($angka * faktorial($angka - 1));
    }
}
echo "Faktorial 5 = " . faktorial(5) . "<br>";

//9. Latihan Manipulasi Array
$buah = array("Apel", "Jeruk", "Mangga", "Pisang");
array_push($buah, "Melon");
print_r($buah);
echo "<br>";