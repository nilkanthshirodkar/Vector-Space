<?php
include("vector.php");
mysql_connect("localhost","root");
mysql_select_db("spidy");
$qry=mysql_query("select * from conten");
$i=0;
$v=new vector();
while($r=mysql_fetch_array($qry))
{
	$c=$r[1];
	$u=$r[0];
	$v->insert($u,$c,$i);  

  $i++; 
} 
$v->termfreq($i);
$v->Caldef($i);
$v->Dbydfi($i);
$v->idfi($i);
$v->weight($i);
$v->mag($i);
?>