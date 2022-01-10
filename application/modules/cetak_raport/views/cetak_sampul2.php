<!DOCTYPE html>
<html>
<head>
	<title>Cetak Raport</title>
	<style type="text/css">
		body {font-family: arial; font-size: 12pt}
		.table {border-collapse: collapse; border: solid 1px #999; width:100%}
		.table tr td, .table tr th {border:  solid 1px #999; padding: 3px; font-size: 12px}
		.rgt {text-align: right;}
		.ctr {text-align: center;}
		table tr td {vertical-align: top}
	</style>
</head>
<body>
	<center>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<b>LAPORAN</b><br><br>
		HASIL PENCAPAIAN KOMPETENSI PESERTA DIDIK<br>
		<?php echo strtoupper($this->config->item('nama_sekolah')); ?>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<table style="margin-left:10%; width: 70%">
			<tr>
				<td width="20%">Nama Sekolah</td>
				<td width="2%">:</td>
				<td width="50%"><?php echo strtoupper($this->config->item('nama_sekolah')); ?></td>
			</tr>
			<tr>
				<td>NIS/NPSN</td>
				<td>:</td>
				<td><?php echo ($this->config->item('nis')); ?> / <?php echo strtoupper($this->config->item('npsn')); ?></td>
			</tr>
			<tr>
				<td>Alamat</td>
				<td>:</td>
				<td><?php echo ($this->config->item('alamat_sekolah')); ?>, <br>Telepon : <?php echo strtoupper($this->config->item('telepon_sekolah')); ?></td>
			</tr>
			<tr>
				<td>Desa</td>
				<td>:</td>
				<td><?php echo ($this->config->item('desa_sekolah')); ?></td>
			</tr>
			<tr>
				<td>Kecamatan</td>
				<td>:</td>
				<td><?php echo ($this->config->item('kec_sekolah')); ?></td>
			</tr>
			<tr>
				<td>Kabupaten/Kota</td>
				<td>:</td>
				<td><?php echo ($this->config->item('kota_sekolah')); ?></td>
			</tr>
			<tr>
				<td>Propinsi</td>
				<td>:</td>
				<td><?php echo ($this->config->item('provinsi_sekolah')); ?></td>
			</tr>
			<tr>
				<td>Website</td>
				<td>:</td>
				<td><?php echo ($this->config->item('web_sekolah')); ?></td>
			</tr>
			<tr>
				<td>Email</td>
				<td>:</td>
				<td><?php echo ($this->config->item('email_sekolah')); ?></td>
			</tr>
		</table>



	</center>
	
</body>
</html>