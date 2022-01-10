<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<div class="header bg-gradient-primary py-7 py-lg-8">
      <div class="container" style="max-width: 540px;">
        <div class="header-body text-center mb-7">
          <div class="center justify-content-center">
          
          </div>
        </div>              
<div class="center" style="max-width: 540px;">
    <div class="col-md-24">
        <div class="card" style="max-width: 540px;">
            <div class="header">
                <div align="center">
                    <h4 class="title">Login</h4>
                    <img src = "tutwurihandayani.png">
                </div>
            </div>
            
            <div class="content">
                <div class="alert alert-info">
                    <div align="center">
                        <b>Selamat datang di Sistem Informasi Penilaian Hasil Belajar Siswa SDN Pekayon Jaya VI Bekasi</b>
                        <br>Silakan login dengan username dan password yang telah diberikan oleh Admin Sekolah. Jika belum mendapatkan, silakan hubungi Admin Sekolah.
                    </div>
                </div>
                <form id="<?php echo $nama_form; ?>" method="post">
                    <div class="row">
                        <div class="col-md-14">
                            <div class="form-group">
                                <div align="left">
                                    <label>Username</label>
                                    <input type="text" name="username" id="username" required class="form-control" autofocus="true">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-14">
                            <div class="form-group">
                                <div align="left">
                                    <label>Password</label>
                                    <input type="password" name="password" id="password" required class="form-control">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div align="center">
                    <button type="submit" id="tbLogin" class="btn btn-info btn-fill pull-left"><i class="fa fa-check-circle"></i> Login</button>
                    <div class="clearfix"></div></div>
                    
                    <div>       
                
<body>

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
                url: base_url+"login/do_login",
                beforeSend: function() {
                    $("#username, #password, #tbLogin").attr('disabled', true);
                    $("#tbLogin").html('<i class="fa fa-spinner fa-spin"></i> Ditunggu Sebentar');
                },
                success: function(r) {
                    $("#username, #password, #tbLogin").attr('disabled', false);
                    if (r.status == "gagal") {
                        alert(r.data);

                        $("#tbLogin").html('<i class="fa fa-check-circle"></i> Login');
                        $("#password").val('');
                        $("#password").focus();
                    } else {
                        alert(r.data);
                        window.location.assign(base_url+"home");
                    }
                }
            });
            return false;
        });
    });
    
   </script>

