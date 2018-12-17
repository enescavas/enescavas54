<?php 

$kadi = $_SESSION["uye_kadi"];

$bul = $db->prepare("select * from uyeler where uye_kadi=?");

$cek= $bul->execute(array(
	$kadi
	));
$cekk = $cek->fetch();

echo $cekk["eposta"];

?>