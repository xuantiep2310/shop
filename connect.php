<?php 
$con = mysql_connect("localhost", "root", "") or die('kết nối thất bại');
mysql_select_db("shop",$con);
mysql_query("SET NAMES 'utf8'");
?>