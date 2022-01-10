<div class="card">
    <div class="header">
        <h4 class="title"><b>Selamat datang di Sistem Informasi Penilaian Hasil Belajar Siswa SDN Pekayon Jaya VI BEKASI</b></h4>
<!-- Main Content -->


<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@500;700;900&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Poppins:500,600,700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
<link rel="stylesheet" href="http://localhost/rapot/aset/stisla-assets/css/style.css">
<link rel="stylesheet" href="http://localhost/rapot/aset/stisla-assets/css/components.css">
<link rel="stylesheet" href="http://localhost/rapot/aset/css/light-bootstrap-dashboard.css">
                   
    <?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>


    <div class="content">
        
        <?php 
        $wali_kelas = $this->session->userdata('app_rapot_walikelas');
        $is_wali = $wali_kelas['is_wali'];
        ?>
        <div style="display: inline; float: left"><i class="fa fa-user fa-5x"></i></div> 
        <div style="display: inline; float: left; margin-left: 50px; margin-top: 5px">
            Nama <b>: <?php echo $this->session->userdata('app_rapot_nama'); ?></b><br>
            NIP <b>: <?php echo $this->session->userdata('app_rapot_nip'); ?></b><br>
            Wali Kelas <b>: <?php echo $wali = $is_wali == true ? "Ya, kelas : ".$wali_kelas['nama_walikelas'] : "Tidak"; ?></b><br>
        </div>
    </div>
  </div>
</div>
</div>

 <div class="card shadow">
 <div class="col-lg-3 col-md-12 col-sm-6 col-12">
 <div class="card card-statistic-1">
<div class="card-icon bg-primary">
<i class="far fa-user"></i>
</div>
<div class="card-wrap">
<div class="card-header">
<h4>Siswa</h4>
 </div>
 <div class="card-body">32</div>
 </div>
</div>
</div>
<div class="col-lg-3 col-md-6 col-sm-6 col-12">
<div class="card card-statistic-1">
<div class="card-icon bg-danger">
 <i class="fas fa-chalkboard-teacher"></i>
</div>
<div class="card-wrap">
<div class="card-header">
<h4>Guru</h4>
</div> <div class="card-body">24 </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                            <div class="card card-statistic-1">
                                <div class="card-icon bg-warning">
                                    <i class="fas fa-book"></i>
                                </div>
                                <div class="card-wrap">
                                    <div class="card-header">
                                        <h4>Materi</h4>
                                    </div>
                                    <div class="card-body">
                                        9                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6 col-sm-6 col-8">
                            <div class="card card-statistic-1">
                                <div class="card-icon bg-success">
                                    <i class="fas fa-users"></i>
                                </div>
                                <div class="card-wrap">
                                    <div class="card-header">
                                        <h4>Kelas</h4>
                                    </div>
                                    <div class="card-body">
                                        23
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
          <div class="card shadow">
            <div class="card-header border-0">
              <h3 class="mb-0"><b>Identitas Sekolah</b></h3>
            </div>
            
            
            <div class="table-responsive">
              <table class="table align-items-center table-flush">
                <thead class="thead-light">
                  <tr>
                    <td>NPSN</td><td><?php echo $this->config->item('npsn'); ?></td>
                    </tr>
                    <td>Nama Sekolah</td><td><?php echo $this->config->item('nama_sekolah'); ?></td>
                    </tr>
                    <td>Alamat</td><td><?php echo $this->config->item('alamat_sekolah'); ?></td>
                    </tr>
                    <td>Kepala Sekolah</td><td><?php echo $this->config->item('kepala_sekolah'); ?></td>
                    </tr>
                    <td>Tahun Pelajaran</td><td><?php echo $this->config->item('tahun_pelajaran');?></td>
                    </tr>
                    <td>Kelurahan</td><td><?php echo $this->config->item('kelurahan_sekolah');?></td>
                    </tr>
                    <td>Kota</td><td><?php echo $this->config->item('kota_sekolah');?></td>
                    </tr>
                    <td>Provinsi</td><td><?php echo $this->config->item('provinsi_sekolah');?></td>
                    </tr>
                  </tr>

                </thead>

                </table>
            </div>
          </div>
        </div>

        <div class="col-md-9">
          <div class="card shadow">
            <div class="card-header border-0">
              <h3 class="mb-0"><b>Progress Pekerjaan</b></h3>
            </div>
          
            <div class="container">
<table class="table align-items-center table-flush">
<thead class="thead-light">
            
</div>
</div>
<td>LEMBAGA</td><td><div class="row"> 
<div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 70%">
100% 
</div>
</div>
</td>
</tr>
<td>SISWA</td><td><div class="row"> 
<div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width:70%">
100% 
</div>
</div>
</td>
</tr>
<td>KKM</td><td><div class="row"> 
<div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width:70%">
100% 
</div>
</div>
</td>
</tr>
<td>KURIKULUM</td><td><div class="row"> 
<div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width:70%">
100% 
</div>
</div>
</td>
</tr>
<td>NILAI SIKAP</td><td><div class="row"> 
<div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width:70%">
100% 
</div>
</div>
</td>
</tr>
<td>NILAI PENGETAHUAN</td><td><div class="row"> 
<div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width:70%">
100% 
</div>
</div>
</td>
</tr>
<td>NILAI KETERAMPILAN</td><td><div class="row"> 
<div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width:70%">
100% 
</div>
</div>
</td>
</tr>


</thead>

</table>
</div>
</div>
</div>
                    

       
                    


<!--
<div class="card col-md-6">
    <div class="header">
        <h4 class="title">Sudah Input Nilai Ketrampilan</h4>
    </div>
    <div class="content">
        <table class="table table-bordered table-stripped table-condensed">
        	<thead>
        		<tr>
        			<th>Nama Guru</th>
        			<th>Mapel</th>
        		</tr>
        	</thead>

        	<?php 
        	$arr_nk = array();
        	if (!empty($guru_input_nk)) {
        		foreach ($guru_input_nk as $k) {
        			echo '<tr><td>'.$k['nmguru']."</td><td>".$k['nmmapel']."-".$k['nmkelas']."</td></tr>";
        			$arr_nk[] = $k['id_guru'];
        		}
        		echo '<tr><td colspan="2"><b>Lainnya Belum :D</b></td></tr>';
        	} else {
        		echo '<tr><td colspan="2">Belum semua</td></tr>';
        	}
        	?>
        </table>
    </div>
</div>

<div class="col-md-1"></div>

<div class="card col-md-5">

    <div class="header">
        <h4 class="title">Sudah Input Nilai Pengetahuan</h4>
    </div>
    <div class="content">
        <table class="table table-bordered table-stripped table-condensed">
        	<thead>
        		<tr>
        			<th>Nama Guru</th>
        			<th>Mapel</th>
        		</tr>
        	</thead>

        	<?php 
            $arr_np = array();
        	if (!empty($guru_input_np)) {
        		foreach ($guru_input_np as $k) {
        			echo '<tr><td>'.$k['nmguru']."</td><td>".$k['nmmapel']."-".$k['nmkelas']."</td></tr>";
        			$arr_np[] = $k['id_guru'];
        		}
        		echo '<tr><td colspan="2"><b>Lainnya Belum :D</b></td></tr>';
        	} else {
        		echo '<tr><td colspan="2">Belum semua</td></tr>';
        	}
        	?>
        </table>
    </div>
</div>
-->
<script type="text/javascript">

    /*
	<?php 
    
    $nilai = 0;
    $ket = "";
    if (!in_array($this->session->userdata('app_rapot_konid'), $arr_nk)) {
        $ket .= "<span style=\'color: red\'><i class=\'fa fa-thumbs-down\'></i> Nilai Ketrampilan belum diisi..!<br></span>";
    } else {
        $ket .= "<span style=\'color: green\'><i class=\'fa fa-thumbs-up\'></i> Nilai Ketrampilan sudah diisi..!<br></span>";
        $nilai++;
    }
	if (!in_array($this->session->userdata('app_rapot_konid'), $arr_np)) {
        $ket .= "<span style=\'color: red\'><i class=\'fa fa-thumbs-down\'></i> Nilai Pengetahuan belum diisi..!<br></span>";
	} else {
        $ket .= "<span style=\'color: green\'><i class=\'fa fa-thumbs-up\'></i> Nilai Pengetahuan sudah diisi..!<br></span>";
        $nilai++;
    }

    if ($nilai < 2) {
        echo "swal(
          'Waduuhhh..',
          '<img src=\\'http://4.bp.blogspot.com/-hZpp9lVapgw/VJZ6grV3NBI/AAAAAAAAAbw/tltdqsQnaFQ/s1600/angerywoman.jpg\\' style=\\'width: 160px; height: 180px\\'><br><br>Pak Guru/Bu Guru ngisi nilainya belum lengkap..!!<br>".$ket."',
          'error'
        );";
    } else {
        echo "swal(
          'Baguss..',
          '<img src=\\'https://gozzip.id/system/App/BlogBody/photos/000/118/272/original/4a8a08f09d37b73795649038408b5f33.jpg\\' style=\\'width: 390px; height: 260px\\'><br><br>Pak Guru/Bu Guru sudah ngisi nilai..!!<br>".$ket."',
          'success'
        );";
    }
	?>
    */
    <script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous">
    </script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous">
    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.nicescroll/3.7.6/jquery.nicescroll.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>
    <script src="http://localhost/rapot/aset/stisla-assets/js/stisla.js"></script>
   

    
   
</script>
