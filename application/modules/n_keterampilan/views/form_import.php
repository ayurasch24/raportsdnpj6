<div class="row">
    <div class="col-md-12">
        <div class="card">
            <div class="header">
                <h4 class="title">Upload KD Keterampilan <?php echo $bawa['nmmapel'].", Tingkat: ".$id_kelas . ", Semester: ". $semester ?></h4>

            </div>
            <div class="content">
                <?php echo $this->session->flashdata('k'); ?>
                <form method="post" id="<?php echo $nama_form; ?>" name="<?php echo $nama_form; ?>" action="<?php echo base_url().$url; ?>/import_kd/<?php echo $bawa['id_guru']. "-" . $bawa['id_mapel'] . "-" . $id_kelas . "-" . $bawa['id'];?>" enctype="multipart/form-data">

                <div class="row">
                    <div class="col-md-4">
                        <label>Pilih File</label>
                        <input type="file" class="form-control" name="import_excel" required="true">
                    </div>
                </div>
                
                <p>
                <button type="submit" class="btn btn-primary">Simpan</button>
                <a href="<?php echo base_url().$url; ?>/index/<?php echo $bawa['id'];?>" class="btn btn-default">Kembali</a>
                <div class="clearfix"></div>
                </p>

                </form>
            </div>
        </div>
    </div>
</div>