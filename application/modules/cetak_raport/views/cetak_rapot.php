<!DOCTYPE html>
<html>
<head>
	<title>Cetak Raport</title>
	<style type="text/css">
		body {font-family: arial; font-size: 11pt; width: 8.5in}
		.table {border-collapse: collapse; border: solid 1px #999; width:100%}
		.table tr td, .table tr th {border:  solid 1px #000; padding: 3px;}
		.table tr th {font-weight: bold; text-align: center}
		.rgt {text-align: right;}
		.ctr {text-align: center;}
		.tbl {font-weight: bold}

		table tr td {vertical-align: top}
		.font_kecil {font-size: 12px}
	</style>
    <script type="text/javascript">
        function PrintWindow() {                    
           window.print();            
           CheckWindowState();
        }
    
        function CheckWindowState()    {           
            if(document.readyState=="complete") {
                window.close(); 
            } else {           
                setTimeout("CheckWindowState()", 1000)
            }
        }
        //PrintWindow();
    </script> 
</head>
<body>
	<table>
		<thead><!-- biar bisa ganti lembar otomatis --></thead>

		<tbody>
		<tr>
			<td colspan="6" style="text-align: center; font-weight: bold"><p><h3>RAPOR DAN PROFIL PESERTA DIDIK</h3></p></td>
		</tr>
		<tr>
			<td width="20%">Nama Sekolah</td><td width="1%">:</td><td width="39%" class="tbl"><?php echo $this->config->item('nama_sekolah'); ?></td>
			<td width="20%">Kelas</td><td width="1%">:</td><td width="19%" class="tbl"><?php echo strtoupper($wali_kelas['nmkelas']); ?></td>
		</tr>
		<tr>
			<td>Alamat Sekolah</td><td>:</td><td class="tbl"><?php echo $this->config->item('alamat_sekolah'); ?></td>
			<td>Semester</td><td>:</td><td class="tbl"><?php echo $semester; ?></td>
		</tr>
		<tr>
			<td>Nama Siswa</td><td>:</td><td class="tbl"><?php echo $det_siswa['nama']; ?></td>
			<td>Tahun Pelajaran</td><td>:</td><td class="tbl"><?php echo $ta; ?></td>
		</tr>
		<tr>
			<td>NIS / NISN</td><td>:</td><td class="tbl"><?php echo $det_siswa['nis']." / ".$det_siswa['nisn']; ?></td>
			<td colspan="3"></td>
		</tr>
		<tr><td colspan="6"><br><br></td></tr>
		<tr><td colspan="6"><b>A. Sikap</b></td></tr>
		<tr><td colspan="6">
			<table style="margin-left: 15px">
			<tr><td colspan="6">
			<table class="table">
				<thead>
				<tr>
					<th colspan="2"width="30%"></th>
					<th colspan="5">Deskripsi</th>
				</tr>
				<tr><td>1</td><td style="border: solid 1px #000; padding: 10px">Sikap Spiritual<td> <?php echo $nilai_sikap_spiritual; ?></td></tr>
				<tr><td>2</td><td style="border: solid 1px #000; padding: 10px">Sikap Sosial<td><?php echo $nilai_sikap_sosial; ?></td></tr>
				
			</table>
		</td></tr>
		
		<tr><td colspan="6"><b></br>B. Pengetahuan dan Keterampilan</b></td></tr>
		<tr><td colspan="6">
			<table class="table">
				<thead>
				<tr>
					<th colspan="2" rowspan="2" width="30%">Muatan Pelajaran</th>
					<th colspan="3">Pengetahuan</th>
					<th colspan="3">Keterampilan</th>
				</tr>
				<tr>
					<th width="5%">Angka</th>
					<th width="5%">Predikat</th>
					<th width="25%">Deskripsi</th>
					<th width="5%">Angka</th>
					<th width="5%">Predikat</th>
					<th width="25%">Deskripsi</th>
				</tr>
				
				</thead>
				<tbody>
				<?php echo $nilai_utama; ?>
				</tbody>
			</table>
		</td></tr>
		<tr><td colspan="6"><br><b>C. Ekstrakurikuler</b></td></tr>
		<tr><td colspan="6">
			<table class="table">
				<thead>
					<tr>
						<th width="5%">No</th>
						<th width="30%">Nama Kegiatan</th>
						<th width="10%">Nilai</th>
						<th width="55%">Keterangan</th>
					</tr>
				</thead>
				<tbody>
					<?php 
					if (!empty($nilai_ekstra)) {
						$no = 1;
						foreach ($nilai_ekstra as $ne) {
							$desk = "";
							if ($ne['nilai'] == "A") {
								$desk = "Memuaskan, aktif mengikuti kegiatan ".$ne['nama']." mingguan";
							} else if ($ne['nilai'] == "B") {
								$desk = "Cukup Memuaskan, aktif mengikuti kegiatan ".$ne['nama']." mingguan";
							} else if ($ne['nilai'] == "C") {
								$desk = "Kurang Memuaskan, pasif mengikuti kegiatan ".$ne['nama']." mingguan";
							} else {
								$desk = "-";
							}
					?>
						<tr>
							<td class="ctr"><?php echo $no; ?></td>
							<td><?php echo $ne['nama']; ?></td>
							<td class="ctr"><?php echo $ne['nilai']; ?></td>
							<td><?php echo $desk; ?></td>
						</tr>
					<?php 
							$no++;
						}
					} else {
						echo '<tr><td colspan="4">-</td></tr>';
					}
					?>
				</tbody>
			</table>
		</td></tr>
		<tr><td colspan="6"><br><b>D. Saran-saran</b></td></tr>
		<tr>
			<td colspan="6">
				<table width="100%">
				    <tr>
									<div style="border: solid 1px #000; padding: 20px 10px; ">
									    <?php echo $catatan['catatan_wali']; ?>

                                    </div>	
					</tr>

				</table>
			</td>
		</tr>
		
		<tr><td colspan="6"><br><b>E. Perkembangan Fisik</b></td></tr>
		<tr><td colspan="6">
			<table class="table">
				<thead>
					<tr>
						<th width="5%">No</th>
						<th width="30%">Aspek yang dinilai</th>
						<th width="32%">Semester 1</th>
						<th width="33%">Semester 2</th>
					</tr>
				</thead>
				<tbody>
					<?php 
					if (!empty($nilai_tumbuh)) {
                        $json1 = json_encode($nilai_tumbuh_mod);
					    $json8 = json_decode($json1, true); 
					    //var_dump($json8);
						$no = 1;
						$j = 0;
						$desk = '';
						foreach ($nilai_tumbuh as $ne) {
							$desk = $ne['desk'];
							if($ne['nama'] == 'Tinggi Badan') {
					?>
						<tr>
							<td class="ctr"><?php echo $no; ?></td>
							<td><?php echo $ne['nama']; ?></td>
						    <td class="ctr"><?php if(isset($json8[$j]['desk']) && $semester==2){
						    echo $json8[$j]['desk'] . ' cm';
						    }else if($semester==1)
						    { echo $desk . ' cm'; }
						    else
						    { echo '-'; } ?> </td>
						    <td class="ctr"><?php if(!empty($desk) && $semester==2){
						    echo $desk . ' cm';
						    }else
						    { echo '-'; } ?> </td>
						</tr>
					<?php  
							$no++;
							$j++;
							}elseif($ne['nama'] == 'Berat Badan'){
					    ?>
                        <tr>
							<td class="ctr"><?php echo $no; ?></td>
							<td><?php echo $ne['nama']; ?></td>
						    <td class="ctr"><?php if(isset($json8[$j]['desk']) && $semester==2){
						    echo $json8[$j]['desk'] . ' kg';
						    }else if($semester==1){
						    echo $desk . ' kg';
						    }else
						    { echo '-'; } ?> </td>
						    <td class="ctr"><?php if(!empty($desk) && $semester==2){
						    echo $desk . ' kg';
						    }else
						    { echo '-'; } ?> </td>
						</tr>
					<?php 
							$no++;
							$j++;
							}
    					}
					} else {
						echo '<tr><td colspan="4">-</td></tr>';
					}
					?>
				</tbody>
			</table>
		</td></tr>
		
		<tr><td colspan="6"><br><b>F. Kondisi Kesehatan</b></td></tr>
		<tr><td colspan="6">
			<table class="table">
				<thead>
					<tr>
						<th width="5%">No</th>
						<th width="30%">Aspek Fisik</th>
						<th width="65%">Keterangan</th>
					</tr>
				</thead>
				<tbody>
					<?php 
					if (!empty($nilai_tumbuh)) {
						$no = 1;
						foreach ($nilai_tumbuh as $ne) {
                        if($ne['nama'] == 'Pendengaran' || $ne['nama'] == 'Penglihatan' || $ne['nama'] == 'Gigi'){
					?>
						<tr>
							<td class="ctr"><?php echo $no; ?></td>
							<td><?php echo $ne['nama']; ?></td>
							<td class="ctr"><?php echo $ne['desk']; ?></td>
						</tr>
					<?php 
							$no++;
						}
					}
					} else {
						echo '<tr><td colspan="4">-</td></tr>';
					}
					?>
				</tbody>
			</table>
		</td></tr>

		<tr><td colspan="6"><br><b>G. Prestasi</b></td></tr>
		<tr><td colspan="6">
			<table class="table">
				<thead>
					<tr>
						<th width="5%">No</th>
						<th width="30%">Jenis Prestasi</th>
						<th width="65%">Keterangan</th>
					</tr>
				</thead>
				<tbody>
					<?php
            		if (!empty($prestasi)) {
            			$no = 1;
            			foreach ($prestasi as $p) {
            		?>
            			<tr>
            				<td><?php echo $no; ?></td>
            				<td><?php echo $p['jenis']; ?></td>
            				<td><?php echo $p['keterangan']; ?></td>
            			</tr>
            		<?php 
            				$no++;
            			}
            		} else {
            			echo '<tr><td colspan="3">-</td></tr>';
            		}
            		?>
				</tbody>
			</table>
		</td></tr>
		
		
		
		<tr><td colspan="6"><br><b>H. Ketidakhadiran</b></td></tr>
		<tr>
			<td colspan="6">
				<table width="100%">
					<tr>
						<td width="40%">
							<table class="table" width="100%">
								<tr><td width="60%">Sakit</td><td width="40%" class="ctr"><?php echo $nilai_absensi['s']; ?> &nbsp; hari</td></tr>
								<tr><td>Izin</td><td class="ctr"><?php echo $nilai_absensi['i']; ?> &nbsp; hari</td></tr>
								<tr><td>Tanpa Keterangan</td><td class="ctr"><?php echo $nilai_absensi['a']; ?> &nbsp; hari</td></tr>
							</table>
						</td>
						<td width="60%">
						</td>
					</tr>
				</table>
			</td>
		</tr>
		
		
		
		<?php 
		if ($semester == 2) {
		?>
		<tr>
		    <td colspan="6">
		        <?php 
		        $naik_kelas = $det_siswa['tingkat']+1;
		        $kelas_now = $det_siswa['tingkat'];
		        
			    if ($kelas_now != 6) {
		        ?>
		        
		        <div style="border: solid 1px; padding: 10px; margin-top: 20px">
            		<b>Keputusan : </b>
            	    <p>Berdasarkan pencapaian kompetensi pada semester ke-1 dan ke-2, <?php echo $det_siswa['nama']; ?> ditetapkan *) :<br>
            	    <div style="display: block">
                	    <div style="diplay: inline; float: left; width: 200px">naik ke kelas </div>
                	    <div style="diplay: inline; float: left; font-weight: bold"><?php echo $naik_kelas." (".terbilang($naik_kelas).")"; ?></div>
            	    </div><br>
            	    <div style="display: block">
                	    <div style="diplay: inline; float: left; width: 200px"><strike>tinggal di kelas</strike> </div>
                	    <div style="diplay: inline; float: left; font-weight: bold"><strike><?php echo $kelas_now." (".terbilang($kelas_now).")"; ?></strike></div>
                    </div> 
                    <br><br>
            	    *) Coret yang tidak perlu
        	    </div>
        	    
        	    <?php } else { ?>
        	    <div style="border: solid 1px; padding: 10px; margin-top: 40px">
            		<b>Keputusan : </b>
            	    <p>Berdasarkan pencapaian kompetensi pada kelas 1, 2, 3, 4, 5 dan 6, maka, <?php echo $det_siswa['nama']; ?> dinyatakan *) :<br>
            	    <div style="display: block; font-weight: bold">
                	    LULUS / <strike>TIDAK LULUS</strike>
            	    </div><br><br>
            	    *) Coret yang tidak perlu
        	    </div>
        	    
        	    <?php } ?>
		    </td>
		</tr>
		<?php } ?>
		<tr>
			<td colspan="6">
				<br><br>
				<table width="100%">
					<tr>
						<td width="8%"></td>
						<td width="20%">
							Mengetahui : <br>
							Orang Tua/Wali, <br>
							<br><br><br><br>
							<u>..........................</u>
						</td>
						<td width="8%"></td>
						<td width="25%">
							<br>
							Wali Kelas <br>
							<br><br><br><br>
							<u><b><?php echo $wali_kelas['nmguru']; ?></b></u><br>
							NIP. <?php echo $wali_kelas['nip']; ?>
						</td>
						<td width="6%"></td>
						<td width="31%">
						    <?php 
						    if ($wali_kelas['tingkat'] != 9) {
						    ?>
							<?php echo $this->config->item('kota_sekolah'); ?>, <?php echo tjs($det_raport['tgl_raport'],"l"); ?><br>
							<?php } else { ?>
							<?php echo $this->config->item('kota_sekolah'); ?>, <?php echo tjs($det_raport['tgl_raport_kelas3'],"l"); ?><br>
							<?php } ?>
							Kepala <?php echo $this->config->item('nama_sekolah'); ?> <br>
							<br><br><br><br>
							<u><b><?php echo $det_raport['nama_kepsek']; ?></b></u><br>
							NIP. <?php echo $det_raport['nip_kepsek']; ?>
						</td>
					</tr>
				</table>

			</td>
		</tr>

		</tbody>
	</table>
</body>
</html>