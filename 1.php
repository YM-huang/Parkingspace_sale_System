<?php
	$file_path = $_GET['file'];
	file_exists($file_path) or die("The specified file does not exist!");

	$file_name = basename($file_path);
	$file_size = filesize($file_path);

	readfile($file_path);

	header("Content-Type:application/octet-stream");
	header("Accept-Ranges:bytes");
	header("Accept-Length:".$file_size);

	header("Content-Disposition:attachment;filename=".$file_name);
?>