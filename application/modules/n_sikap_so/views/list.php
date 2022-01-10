<style type="text/css">
    .ctr {text-align: center}
    .nso {}
</style>
<div class="row">
    <div class="col-md-12">
        <p>
            <a href="<?php echo base_url(); ?>view_mapel" class="btn btn-info"><i class="fa fa-arrow-left"></i> Kembali</a>
            <a href="<?php echo base_url()."/".$url; ?>/cetak/<?php echo $this->uri->segment(3); ?>" class="btn btn-warning" target="_blank"><i class="fa fa-print"></i> Cetak</a>
        </p>
    </div>
    <div class="col-md-12">
        <div class="card">
            <div class="header">
                <h4 class="title">Nilai Sikap Sosial </h4>
                <p class="title" style="text-align:right;">SB:Sangat Baik, PB:Perlu Bimbingan<p4>
            </div>
            <div class="content">  
                <table class="table table-condensed table-bordered table-hover">
                    <thead>
                        <tr>
                            <th width="5%" rowspan="2">No</th>
                            <th width="35%" rowspan="2">Nama</th>
                            <!-- <th width="40%" colspan="<?php echo $jmlh_kd; ?>">Sangat Baik</th> -->
                            <?php 
                            if (!empty($list_kd)) {
                                foreach ($list_kd as $k) {
                                    echo '<th width="7%" colspan="2">'.$k['nama_kd'].'</th>';
                                }
                            }
                            ?>
                        </tr>
                        <tr>
                            <?php
                                for($i=0;$i<$jmlh_kd;$i++){
                                    echo '<th>SB</th>';
                                    echo '<th>PB</th>';
                                }
                            ?>
                             <!-- <th width="40%" colspan="<?php echo $jmlh_kd; ?>">Sangat Baik</th> -->
                        </tr>
                    </thead>
                    <tbody>
                        <form method="post" id="<?php echo $nama_form; ?>">
                        <input type="hidden" name="id_guru_mapel" value="<?php echo $this->uri->segment(3); ?>">
                        <input type="hidden" name="mode_form" value="<?php echo $mode_form; ?>">
                        <?php 
                        $no = 1;
                        if (!empty($siswa_kelas)) {
                            foreach ($siswa_kelas as $sk) {
                                $pc_sangat_baik = explode(",", $sk['sangat_baik']);
                                $pc_perlu_bimbingan = explode(",",$sk['perlu_bimbingan']);
                        ?>
                            <tr>
                                <td><?php echo $no; ?></td>
                                <td><?php echo $sk['nama']; ?></td>
                                <input type="hidden" name="id_siswa_<?php echo $no; ?>" value="<?php echo $sk['id_siswa']; ?>">
                                <?php 
                                $jumlah_nilai_sosial = 0;
                                if (!empty($list_kd)) {
                                    foreach ($list_kd as $k) {
                                        if (in_array($k['id'], $pc_sangat_baik)) {
                                            echo '<td class="text-center"><label class="nso"><input type="radio" name="sangat_baik_'.$no.'_'.$k['id'].'" value=1" checked></label></td>';
                                            echo '<td class="text-center"><label class="nso"><input type="radio" name="sangat_baik_'.$no.'_'.$k['id'].'" value=2" ></label></td>';                                           
                                        }
                                        else if(in_array($k['id'], $pc_perlu_bimbingan)){
                                            echo '<td class="text-center"><label class="nso"><input type="radio" name="sangat_baik_'.$no.'_'.$k['id'].'" value=1" ></label></td>';
                                            echo '<td class="text-center"><label class="nso"><input type="radio" name="sangat_baik_'.$no.'_'.$k['id'].'" value=2" checked></label></td>';   

                                        } else {
                                            echo '<td class="text-center"><label class="nso"><input type="radio" name="sangat_baik_'.$no.'_'.$k['id'].'" value=1" ></label></td>';
                                            echo '<td class="text-center"><label class="nso"><input type="radio" name="sangat_baik_'.$no.'_'.$k['id'].'" value=2" ></label></td>';
                                        }
                                        $jumlah_nilai_sosial++;
                                    }
                                }
                                ?>
                            </tr>
                        <?php 
                                $no++;
                            }
                        } else {
                            echo '<tr><td colspan="5">Belum ada data siswa</td></tr>';
                        }
                        ?>
                        
                        
                    </tbody>
                    
                </table>
                <input type="hidden" name="jumlah" value="<?php echo $no; ?>">
                <input type="hidden" name="jumlah_nilai_sosial" value="<?php echo $jumlah_nilai_sosial?>">
                <button type="submit" class="btn btn-success" id="tbsimpan"><i class="fa fa-check"></i> Simpan</button>
                </form>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    $(document).on("ready", function() {
        
        $("#<?php echo $nama_form; ?>").on("submit", function() {
                
            var data    = $(this).serialize();
            $.ajax({
                type: "POST",
                data: data,
                url: base_url+"<?php echo $url; ?>/simpan_nilai",
                beforeSend: function(){
                    $("#tbsimpan").attr("disabled", true);
                },
                success: function(r) {
                    $("#tbsimpan").attr("disabled", false);
                    if (r.status == "ok") {
                        noti("success", r.data);
                    } else {
                        noti("danger", r.data);
                    }
                }
            });
            return false;
        });
    });
</script>