<!DOCTYPE html>
<html>
<head>
	<title>Cetak Nilai Sikap Spiritual</title>
	<style type="text/css">
		body {font-family: arial; font-size: 12pt}
		.table {border-collapse: collapse; border: solid 1px #999; width:100%}
		.table tr td, .table tr th {border:  solid 1px #999; padding: 3px; font-size: 12px}
		.rgt {text-align: right;}
		.ctr {text-align: center;}
	</style>
</head>
<body>
	
	
	<p align="center"><b>REKAP NILAI SIKAP SOSIAL</b>
	<br><?php echo "Kelas : ".$detil_data['nmkelas'].", Nama Wali : ".$detil_data['nmguru']; ?></p>

	<table class="table">
		<thead>
			<tr>
				<th width="3%">No</th>
				<th width="20%">Nama</th>
				<th width="30%">Sangat Baik</th>
				<th width="15%">Perlu Bimbingan</th>
				<th width="32%">Deskripsi</th>
			</tr>
		</thead>

		<tbody>
			<?php 
			$html = "";
			if (!empty($data_nilai)) {
				$no = 0;
				foreach ($data_nilai as $d) {
					$no++;

					$pc_sangat_baik = explode(",", $d['sangat_baik']);
					$perlu_bimbingan = $d['perlu_bimbingan'];
					$pc_perlu_bimbingan = explode(",",$d['perlu_bimbingan']);

					$html .= '<tr><td class="ctr">'.$no.'</td><td>'.$d['nama'].'</td>';

					$teks_sangat_baik = array();
					for($i=0; $i<sizeof($pc_sangat_baik);$i++) {
						$idx = $pc_sangat_baik[$i];
						if(isset($list_kd[$idx])){
							$teks_sangat_baik[] = $list_kd[$idx];
						}
					}

					$teks_perlu_bimbingan = array();
					for($i=0;$i<sizeof($pc_perlu_bimbingan);$i++){
						$idy = $pc_perlu_bimbingan[$i];
						if(isset($list_kd[$idy])){
							$teks_perlu_bimbingan[] = $list_kd[$idy];
						}
					}

					$text_sangat_baik = implode(", ", $teks_sangat_baik);
					$text_perlu_bimbingan = implode(", ",$teks_perlu_bimbingan);

					if($text_sangat_baik=="" && $text_perlu_bimbingan!=""){
						$html .= '<td>'.$text_sangat_baik.'</td><td>'.$text_perlu_bimbingan.'</td><td> perlu bimbingan dalam '.$text_perlu_bimbingan.'.</td></tr>';
					}
					else if($text_perlu_bimbingan=="" && $text_sangat_baik!=""){
						$html .= '<td>'.$text_sangat_baik.'</td><td>'.$text_perlu_bimbingan.'</td><td>sangat baik dalam '.$text_sangat_baik.'</td></tr>';
					}
					else{
						$html .= '<td>'.$text_sangat_baik.'</td><td>'.$text_perlu_bimbingan.'</td><td>sangat baik dalam '.$text_sangat_baik.';  perlu bimbingan dalam '.$text_perlu_bimbingan.'.</td></tr>';
					}

				}
			} else {
				$html .= '<tr><td colspan="5">Belum ada data</td></tr>';
			}
			echo $html;
			?>
		</tbody>



	</table>

</body>
</html>