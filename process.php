<?php
if($_REQUEST['qry'])
{
	$m=$_REQUEST['qry'];
	$tok = strtok($m, " ");
		$wc=0;
		$i=0;
   		while ($tok != false)
  		{  
			$w[$i]=$tok;
			$tok = strtok(" ");
			$i++;
		}
		$k=0;
		echo"<b>Vector Space Result</b><br>";
		for($j=0;$j<$i;$j++){
		$q=mysql_query("SELECT *  FROM `wgt` WHERE `term` LIKE CONVERT(_utf8 '$w[$j]' USING latin1) COLLATE latin1_general_ci AND `value` > 0");
		while($r=mysql_fetch_array($q))
		{
			$url[$k]=$r[0];
			
			$wg[$k]=$r[2];
			echo"$url[$k] -$$wg[$k]";
		}
		
		
		
	}
}
?>