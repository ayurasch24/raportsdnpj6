<div class="row">
    <div class="col-md-12">
        <p>
            <a href="<?php echo base_url(); ?>view_mapel" class="btn btn-info"><i class="fa fa-arrow-left"></i> Kembali</a>
            <a href="<?php echo base_url(); ?>n_sikap_sp/cetak/<?php echo $this->uri->segment(3); ?>" class="btn btn-warning" target="_blank"><i class="fa fa-print"></i> Cetak</a>
        </p>
    </div>
    <div class="col-md-12">
        <div class="card">
            <div class="header">
                <h4 class="title">Nilai Sikap Spiritual </h4>
                <p class="title" style="text-align:right;">SB:Sangat Baik, PB:Perlu Bimbingan<p4>
            </div>
            <div class="content">  
                <table class="table table-condensed table-bordered table-hover">
                    <thead>
                        <tr>
                            <th width="5%" rowspan="2">No</th>
                            <th width="25%" rowspan="2">Nama</th>
<!--                             <th width="50%" colspan="2">Sangat Baik</th> -->
                            <?php 
                            if (!empty($list_kd)) {
                                foreach ($list_kd as $k) {
                                    echo '<th width="7%" colspan="2">'.$k['nama_kd'].'</th>';
                                }
                            }
                            ?>
                            <!-- <th width="20%">Perlu Bimbingan</th> -->
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
                            // $opsyen = array();
                            // foreach ($list_kd as $l) {
                            //     $idx = $l['id'];
                            //     $val = $l['nama_kd'];
                            //     $opsyen[$idx] = $val;
                            // }
                            
                            foreach ($siswa_kelas as $sk) {
                                $pc_sangat_baik = explode(",", $sk['sangat_baik']);
                                $pc_perlu_bimbingan = explode(",", $sk['perlu_bimbingan']);
                                // $pb = $sk['perlu_bimbingan'];

                        ?>
                            <tr>
                                <td><?php echo $no; ?></td>
                                <td><?php echo $sk['nama']; ?></td>
                                <input type="hidden" name="id_siswa_<?php echo $no; ?>" value="<?php echo $sk['id_siswa']; ?>">
         <!--                        <td>

                                    <?php echo form_dropdown('ssp1_'.$no,$opsyen,$pc_sangat_baik[0],'class="form-control" required id="ssp1_'.$no.'"'); ?>
                                </td>
                                <td>
                                    <?php echo form_dropdown('ssp2_'.$no,$opsyen,$pc_sangat_baik[1],'class="form-control" required id="ssp2_'.$no.'"'); ?>
                                </td>
                                <td>
                                    <?php echo form_dropdown('ssp3_'.$no,$opsyen,$pb,'class="form-control" required id="ssp3_'.$no.'"'); ?>
                                </td> -->
                                <?php 
                                $jumlah_nilai_spiritual = 0;
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
                                        $jumlah_nilai_spiritual++;
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
                <input type="hidden" name="jumlah_nilai_spiritual" value="<?php echo $jumlah_nilai_spiritual; ?>">
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
            var jml_data = <?php echo $no; ?>;
            var teks_error = "";
            
            // for (var i = 1; i < jml_data; i++) {
            //     var ssp1 = $("#ssp1_"+i).val();
            //     var ssp2 = $("#ssp2_"+i).val();
            //     var ssp3 = $("#ssp3_"+i).val();
            //     if ((ssp1 == ssp2) || (ssp1 == ssp3) || (ssp2 == ssp3)) {
            //         teks_error += 'Baris '+i+' ada isian sama<br>';
            //     }
            // }
            if (teks_error != "") {
                noti("danger", teks_error);
            } else {
                $.ajax({
                    type: "POST",
                    data: data,
                    url: base_url+"<?php echo $url; ?>/simpan_nilai",
                    beforeSend: function(){
                        $("#tbsimpan").attr("disabled", true);
                    },
                    success: function(r) {
                        console.log(r.status);
                        $("#tbsimpan").attr("disabled", false);
                        if (r.status == "ok") {
                            noti("success", r.data);
                        } else {
                            noti("danger", "Data gagal disimpan...");
                        }
                    }
                });
            }
            return false;
        });
    });
</script>
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