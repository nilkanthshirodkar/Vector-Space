<?php
class vector
{
	var $FName=array();
    var $term=array();
    var $docfreq=array();
    var $dbyidfi=array();
    var $idfi=array();
    var $magnitude=array();
    var $token=array();
    var $termfreq=array();
    var $wgt=array();
    var $termcount=0;
    var $wordcount=array();
	public function insert($l,$m,$x)
    {
		$this->FName[$x]=$l;
		$tok = strtok($m, " ");
		$wc=0;
   		while ($tok != false)
  		{  
		$this->token[$x][$wc]=$tok;
		$tmp=$tok;
		$fl=0;
		$p=($this->termcount)*1;
        for($y=0;$y<$p;$y++)
        {
            if($this->term[$y]==$tmp)
            {
                 $fl=1;
             }
			
       }
       if($fl==0)
       {
            $this->term[$this->termcount]=$tmp;
            $this->termcount++;

       }
	   		$wc++;
			$tok = strtok(" ");
	   }
		$this->wordcount[$x]=$wc;
    }
	
	public function termfreq($n)
{
    for($i=0;$i<$this->termcount;$i++)
    {
        for($j=0;$j<$n;$j++)
        {
            $c=0;
			
            for($k=0;$k<$this->wordcount[$j];$k++)
            {
                if($this->term[$i]==$this->token[$j][$k])
                {
                   $c++;
                }
            }
            $this->termfreq[$j][$i]=$c;
        }
    }
}
	public function Caldef($n){
{
    for($i=0;$i<$this->termcount;$i++)
    {
        $c=0;
        for($j=0;$j<$n;$j++)
        {
            for($k=0;$k<$this->wordcount[$j];$k++)
            {
                if($this->term[$i]==$this->token[$j][$k])
                {
                   $c++;
                   $j++;
                   $k=0;
                }
            }
        }
        $this->docfreq[$i]=$c;
        echo"\nWord : ".$this->term[$i]." | Document Frequency : ".$c;
    }
}
}
public function Dbydfi($n)
{
    for($i=0;$i<$this->termcount;$i++)
    {
        $this->dbyidfi[$i]=$n/$this->docfreq[$i];
        echo"<br>Word : ".$this->term[$i]." | dbydfi : ".$this->dbyidfi[$i];
    }
}
public function idfi($n)
{
       mysql_query("TRUNCATE TABLE `idfi`");
    for ($i = 0; $i < $this->termcount;$i++) {
    $this->idfi[$i] = log10($this->dbyidfi[$i]);
    echo"<br>Word : ".$this->term[$i]." | idfi : ".$this->idfi[$i];
	$a=$this->term[$i];
	$id=$this->idfi[$i];
	mysql_query("insert into idfi values('$a','$id')");
                
	}
}
public function weight($n)
{
	mysql_query("TRUNCATE TABLE `wgt`");
            for ($i = 0; $i < $this->termcount; $i++) {
                for ($j = 0; $j < $n; $j++) {
                        $this->wgt[$j][$i] = $this->termfreq[$j][$i] * $this->idfi[$i];
						echo"<br>URL:".$this->FName[$j]." | Word: ".$this->term[$i]." Wgt : ".$this->wgt[$j][$i];
						$f=$this->FName[$j];
	$a=$this->term[$i];
	$id= $this->wgt[$j][$i];
                     
	mysql_query("insert into wgt values('$f','$a','$id')");   
				}
			}                             
}
public function mag($n)
{
            for ($i = 0; $i < $this->termcount; $i++) {
                    $m = 0;
                    for ($j = 0; $j < $n; $j++) {
                        $m = $m + $this->wgt[$j][$i] * $this->wgt[$j][$i];
                    }
                    $this->magnitude[$i] = sqrt($m);
             echo"<br>Word : ".$this->term[$i]." | Mag : ".$this->magnitude[$i];

			}
		}
}
?>