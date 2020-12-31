<?php

$date = date('dMYHis');
$videodata=$_POST['cat'];

if (!empty($_POST['cat'])) {
error_log("Received" . "\r\n", 3, "Log.log");

}

$filteredData=substr($videodata, strpos($videodata, ",")+1);
$unencodedData=base64_decode($filteredData);
$fp = fopen( './video/cam'.$date.'.mp4', 'wb' );
fwrite( $fp, $unencodedData);
fclose( $fp );

exit();
?>
