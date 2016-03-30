/**
* Novo Framework
*
* @package        Novo
* @copyright      2015-present, Kayako Ltd. (http://www.kayako.com/)
* @license        https://github.com/kayako/novo/blob/master/license.txt
*/


public function ConvertIntoJson()
{
//		$file = '/Users/LP-ENG-GGN-061/Documents/Data/US_StatesList.txt';
//
//		echo $file;
//		echo '<br>';
//		$connection = fopen($file, 'r') or die("Unable to open file!");
//
////		var_dump($connection);
//		while (!feof($connection))
//		{
//			$line = fgets($connection);
//			echo $line;
//			echo '<br>';
//		}
//
//
//		fclose($connection);





$states = "AB Alberta
BC	British-Columbia
MB	Manitoba
NB	New-Brunswick
NL	Newfoundland-and-Labrador
NS	Nova-Scotia
NT	Northwest-Territories
NU	Nunavut
ON	Ontario
PE	Prince-Edward-Island
QC	Quebec
SK	Saskatchewan
YT	Yukon";

$keywords = preg_split("/[\n]+/", $states);
echo '<pre>';
//		print_r($keywords);

		$a = [];
		foreach ($keywords as $values) {
		    $kk = preg_split("/[\s]+/", $values);
//			print_r($kk);
//			echo '<br>';
			$a[$kk[0]] = str_replace('-', ' ', $kk[1]);
		}

		print_r($a);

		$j = json_encode($a);

		echo $j;


	}
