<?php
defined('BASEPATH') OR exit('No direct script access allowed');


class Cetak_raport extends CI_Controller {
    function __construct() {
        parent::__construct();
        $this->sespre = $this->config->item('session_name_prefix');

        $this->d['admlevel'] = $this->session->userdata($this->sespre.'level');
        $this->d['admkonid'] = $this->session->userdata($this->sespre.'konid');
        $this->d['url'] = "cetak_raport";

        $get_tasm = $this->db->query("SELECT tahun, semester, nama_kepsek, nip_kepsek, tgl_raport FROM tahun WHERE aktif = 'Y'")->row_array();
        $this->d['tasm'] = $get_tasm['tahun'];
        $this->d['ta'] = substr($get_tasm['tahun'],0,4);

        $this->d['wk'] = $this->session->userdata('app_rapot_walikelas');   
    }

    public function sampul1($id_siswa) {
        $d['ds'] = $this->db->query("SELECT nama, nis, nisn FROM m_siswa WHERE id = '$id_siswa'")->row_array();
		
		
		
		
    	                $prefix = $this->config->item('session_name_prefix');
if ($this->session->userdata($prefix."valid") == true) {
        $this->load->view('cetak_sampul1', $d);
}


    }

    public function sampul2($id_siswa) {
        $d = null;

    	                $prefix = $this->config->item('session_name_prefix');
if ($this->session->userdata($prefix."valid") == true) {
        $this->load->view('cetak_sampul2', $d);
}

    }

    public function sampul4($id_siswa) {
        $d['ds'] = $this->db->query("SELECT * FROM m_siswa WHERE id = '$id_siswa'")->row_array();
$d['tasm'] = $this->db->query("SELECT tahun, semester, nama_kepsek, nip_kepsek, tgl_raport FROM tahun WHERE aktif = 'Y'")->row_array();
    	                $prefix = $this->config->item('session_name_prefix');
if ($this->session->userdata($prefix."valid") == true) {
        $this->load->view('cetak_sampul4', $d);
}


    }

    public function prestasi_catatan($id_siswa,$tasm) {
        //$tasm = substr($tasm, 0, 4);
        $q_prestasi = $this->db->query("SELECT 
                                    a.*
                                    FROM t_prestasi a 
                                    LEFT JOIN m_siswa c ON a.id_siswa = c.id
                                    WHERE a.id_siswa = $id_siswa AND a.ta = '$tasm'")->result_array();
                                    
        //echo $this->db->last_query();
        //exit;


        $q_catatan = $this->db->query("SELECT 
                                    a.*
                                    FROM t_naikkelas a 
                                    WHERE a.id_siswa = $id_siswa AND a.ta = '$tasm'")->row_array();
                                    
                                    // echo $this->db->last_query();
                                    // exit;
                                    
        $d['prestasi'] = $q_prestasi;
        $d['catatan'] = $q_catatan;
        
        
            	                $prefix = $this->config->item('session_name_prefix');
if ($this->session->userdata($prefix."valid") == true) {
        $this->load->view('cetak_prestasi', $d);
}


    }

    public function cetak($id_siswa,$tasm) {
        $d = array();
        
        
        $d['semester'] = substr($tasm, 4, 1);
        $d['ta'] = (substr($tasm, 0, 4))."/".(substr($tasm, 0, 4)+1);

        
        // ini kan d join table
        $siswa = $this->db->query("SELECT 
                                    a.nama, a.nis, a.nisn, c.tingkat, c.id idkelas
                                    FROM m_siswa a
                                    LEFT JOIN t_kelas_siswa b ON a.id = b.id_siswa
                                    LEFT JOIN m_kelas c ON b.id_kelas = c.id
                                    WHERE a.id = $id_siswa AND b.ta = '".$d['ta']."'")->row_array();
        
        // trus d tangkap lah semua datanya ini
        $d['det_siswa'] = $siswa;

        // disni kita tentukan lagi variable n nya untuk menentukan 1 baris nama yg mau d ambil 
        $n = explode(' ', trim($siswa['nama']));
        
        $d['wali_kelas'] = $this->db->query("SELECT 
                                a.*, b.nama nmguru, b.nip, 
                                c.tingkat, c.nama nmkelas
                                FROM t_walikelas a 
                                INNER JOIN m_guru b ON a.id_guru = b.id 
                                INNER JOIN m_kelas c ON a.id_kelas = c.id
                                WHERE a.id_kelas = '".$d['det_siswa']['idkelas']."' AND a.tasm = '".$this->d['ta']."'")->row_array();
        $wali_kelas = $d['wali_kelas'];
        // Start NILAI PENGETAHUAN //
        $ambil_np = $this->db->query("SELECT 
                                    c.id idmapel, a.tasm, c.kd_singkat, a.jenis, if(a.jenis='h',CONCAT(a.nilai,'//',d.nama_kd),a.nilai) nilai
                                    FROM t_nilai a
                                    INNER JOIN t_guru_mapel b ON a.id_guru_mapel = b.id
                                    INNER JOIN m_mapel c ON b.id_mapel = c.id
                                    INNER JOIN t_mapel_kd d ON a.id_mapel_kd = d.id
                                    WHERE a.id_siswa = $id_siswa
                                    AND a.tasm = '".$tasm."'")->result_array();

        $ambil_np_submp = $this->db->query("SELECT 
                                    b.id_mapel, c.kd_singkat
                                    FROM t_nilai a
                                    INNER JOIN t_guru_mapel b ON a.id_guru_mapel = b.id
                                    INNER JOIN m_mapel c ON b.id_mapel = c.id
                                    WHERE a.id_siswa = $id_siswa AND a.tasm = '".$tasm."'
                                    GROUP BY b.id_mapel")->result_array();

        $array1 = array();

        foreach ($ambil_np_submp as $a1) {
            $array1[$a1['id_mapel']] = array();   
        }

        foreach ($ambil_np as $a2) {
            $idx = $a2['idmapel'];

            //$pc_nilai = explode("//", $a2['nilai']);

            if ($a2['jenis'] == "h") {
                $array1[$idx]['h'][] = $a2['nilai'];
            } else if ($a2['jenis'] == "t") {
                $array1[$idx]['t'] = $a2['nilai'];
            } else if ($a2['jenis'] == "a") {
                $array1[$idx]['a'] = $a2['nilai'];
            }
        }

        //echo var_dump($array1);

        $bobot_h = $this->config->item('pnp_h');
        $bobot_t = $this->config->item('pnp_t');
        $bobot_a = $this->config->item('pnp_a');

        $jml_bobot = $bobot_h+$bobot_t+$bobot_a;

        //MULAI HITUNG..
        $nilai_pengetahuan = array();
        foreach ($array1 as $k => $v) {
            
            $jumlah_h = !empty($array1[$k]['h']) ? sizeof($array1[$k]['h']) : 0;
            $jumlah_n_h = 0;

            $desk = array();

            if (!empty($array1[$k]['h'])) {
                foreach ($array1[$k]['h'] as $j) {
                    $pc_nilai_h = explode("//", $j);
                    $jumlah_n_h += $pc_nilai_h[0];

                    $_desk = nilai_pre($pc_nilai_h[0]);
                    $desk[$_desk][] = $pc_nilai_h[1];
                }
            } else {
                //biar ndak division by zero
                $jumlah_n_h = 1;
                $jumlah_h = 1;
            }

            $txt_desk = array();
            foreach ($desk as $r => $s) {
                $txt_desk[] = $r." pada: ".implode(", ", $s);
            }

            $__tengah = empty($array1[$k]['t']) ? 0 : $array1[$k]['t'];
            $__akhir = empty($array1[$k]['a']) ? 0 : $array1[$k]['a'];

            $_np = round(((($bobot_h/$jml_bobot)*($jumlah_n_h/$jumlah_h)) + 
                                (($bobot_t/$jml_bobot) * $__tengah) + 
                                (($bobot_a/$jml_bobot) * $__akhir)),0);
            

            $nilai_pengetahuan[$k]['nilai'] = number_format($_np); 
            $nilai_pengetahuan[$k]['predikat'] = nilai_huruf($_np); 
            $nilai_pengetahuan[$k]['desk'] = implode("; ", $txt_desk); 
        }

        //echo j($nilai_pengetahuan);
        $d['nilai_pengetahuan'] = $nilai_pengetahuan;
        // END Nilai PENGETAHUAN

        // Start NILAI KETRAMPILAN //
        //ambil nilai untuk siswa ybs
        $ambil_nk = $this->db->query("SELECT 
                                    c.id idmapel, a.tasm, c.kd_singkat, CONCAT(a.nilai,'//',d.nama_kd) nilai
                                    FROM t_nilai_ket a
                                    INNER JOIN t_guru_mapel b ON a.id_guru_mapel = b.id
                                    INNER JOIN m_mapel c ON b.id_mapel = c.id
                                    INNER JOIN t_mapel_kd d ON a.id_mapel_kd = d.id
                                    WHERE a.id_siswa = $id_siswa
                                    AND a.tasm = '".$tasm."'")->result_array();

        //echo var_dump($ambil_nk);
        //ambil id mapel, kode singkat
        $ambil_nk_submk = $this->db->query("SELECT 
                                    b.id_mapel, c.kd_singkat
                                    FROM t_nilai_ket a
                                    INNER JOIN t_guru_mapel b ON a.id_guru_mapel = b.id
                                    INNER JOIN m_mapel c ON b.id_mapel = c.id
                                    WHERE a.id_siswa = $id_siswa AND a.tasm = '".$tasm."'
                                    GROUP BY b.id_mapel")->result_array();
        //echo j($ambil_nk_submk);

        $array2 = array();

        foreach ($ambil_nk_submk as $a11) {
            $array2[$a11['id_mapel']] = array();   
        }

        //echo j($ambil_nk);

        foreach ($ambil_nk as $a22) {
            $idx = $a22['idmapel'];

            //$pc_nilai = explode("//", $a2['nilai']);

            $array2[$idx][] = $a22['nilai'];
        }

        //echo j($array2);

        //MULAI HITUNG..

        $nilai_keterampilan = array();
        foreach ($array2 as $k => $v) {
            
            $jumlah_array_nilai = sizeof($array2[$k]);
            $jumlah_nilai = 0;

            $desk = array();

            foreach ($array2[$k] as $j) {
                $pc_nilai = explode("//", $j);
                $jumlah_nilai += $pc_nilai[0];

                $_desk = nilai_pre($pc_nilai[0]);
                $desk[$_desk][] = $pc_nilai[1];
            }

            $txt_desk = array();
            foreach ($desk as $r => $s) {
                $txt_desk[] = $r." pada: ".implode(", ", $s);
            }

            $_nilai_keterampilan = round(($jumlah_nilai / $jumlah_array_nilai),0);
            

            $nilai_keterampilan[$k]['nilai'] = number_format($_nilai_keterampilan); 
            $nilai_keterampilan[$k]['predikat'] = nilai_huruf($_nilai_keterampilan); 
            $nilai_keterampilan[$k]['desk'] = implode("; ", $txt_desk); 
        }

        //echo j($nilai_keterampilan);
        $d['nilai_keterampilan'] = $nilai_keterampilan;

        //j($nilai_keterampilan);
        //exit;
        // END Nilai PENGETAHUAN

        //===========================================================================
        //       START NIlai Sikap SPIRITUAL
        //===========================================================================

        $q_nilai_sikap_sp = $this->db->query("SELECT sangat_baik, perlu_bimbingan FROM t_nilai_sikap_sp WHERE tasm = '".$tasm."' AND id_siswa = '".$id_siswa."'")->row_array();

        $q_kd_nilai_sikap_sp = $this->db->query("SELECT id, nama_kd FROM t_mapel_kd WHERE jenis = 'SSp'")->result_array();

        $list_kd_sp = array();
        foreach ($q_kd_nilai_sikap_sp as $k) {
            $list_kd_sp[$k['id']] = $k['nama_kd'];
        }

        //jika belum ada nilai sikap sp yang diinputkan
        if (!empty($q_nilai_sikap_sp['sangat_baik'])||!empty($q_nilai_sikap_sp['perlu_bimbingan'])) {
            $pc_sangat_baik = explode(",", $q_nilai_sikap_sp['sangat_baik']);
            $pc_perlu_bimbingan = explode(",", $q_nilai_sikap_sp['perlu_bimbingan']);
            // $sb_1 = $pc_sangat_baik[0];
            // $sb_2 = $pc_sangat_baik[1];
            // $pb = $q_nilai_sikap_sp['perlu_bimbingan'];

            // $sangatbaik1        = $list_kd_sp[$sb_1];
            // $sangatbaik2        = $list_kd_sp[$sb_2];
            // $perlu_bimbingan= $list_kd_sp[$pb];
            $teks_sangat_baik = array();
                    for($i=0; $i<sizeof($pc_sangat_baik);$i++) {
                        $idx = $pc_sangat_baik[$i];
                        if(isset($list_kd_sp[$idx])){
                            $teks_sangat_baik[] = $list_kd_sp[$idx];
                        }
                    }

                    $teks_perlu_bimbingan = array();
                    for($i=0;$i<sizeof($pc_perlu_bimbingan);$i++){
                        $idy = $pc_perlu_bimbingan[$i];
                        if(isset($list_kd_sp[$idy])){
                            $teks_perlu_bimbingan[] = $list_kd_sp[$idy];
                        }
                    }

                    $text_sangat_baik = implode(", ", $teks_sangat_baik);
                    $text_perlu_bimbingan = implode(", ",$teks_perlu_bimbingan);

                    // ini kita tentukan dulu variablenya 
                    // $siswa['nama'] ini sudah di deklarisikan di atas baris 94
                    // ini kan udh dapat datanya , trus kita tangkap atau ambil 
                    $n = explode(' ', trim($siswa['nama'])); 

                    // itu yg saya blok d ganti jangan $siswa['nama'] lagi                    
                   
                   
            // $nilai_sikap_spiritual = $siswa['nama'].' Sangat Baik dalam melakukan sikap : '.$text_sangat_baik.'; Perlu bimbingan pada sikap : '.$text_perlu_bimbingan;

            if($text_sangat_baik=="" && $text_perlu_bimbingan!=""){
                
                        $nilai_sikap_spiritual = 'Ananda '.$n[0].' perlu bimbingan dalam '.$text_perlu_bimbingan;
                    }
                    else if($text_perlu_bimbingan=="" && $text_sangat_baik!=""){
                        $nilai_sikap_spiritual = 'Ananda '.$n[0].' sangat baik dalam '.$text_sangat_baik;
                    }
                    else{
                        $nilai_sikap_spiritual = 'Ananda '.$n[0].' sangat baik dalam '.$text_sangat_baik.'; perlu bimbingan dalam '.$text_perlu_bimbingan;
                    }
        } else {
            $sangatbaik1        = '';
            $sangatbaik2        = '';
            $perlu_bimbingan= '';

            $nilai_sikap_spiritual = 'Belum diinput';
        }


        $d['nilai_sikap_spiritual'] = $nilai_sikap_spiritual;
        //END NIlai Sikap SPIRITUAL
        
        //===========================================================================
        //              START NIlai Sikap SOSIAL
        //===========================================================================
        
        $q_nilai_sikap_so = $this->db->query("SELECT sangat_baik, perlu_bimbingan FROM t_nilai_sikap_so WHERE tasm = '".$tasm."' AND id_siswa = '".$id_siswa."'")->row_array();
        //echo $this->db->last_query();
        //exit;
        
        $q_kd_nilai_sikap_so = $this->db->query("SELECT id, nama_kd FROM t_mapel_kd WHERE jenis = 'SSo'")->result_array();

        $so_sangat_baik = "";
        $so_perlu_bimbingan = "";

        $list_kd_so = array();
        foreach ($q_kd_nilai_sikap_so as $k) {
            $list_kd_so[$k['id']] = $k['nama_kd'];
        }

        $so_pc_sangat_baik = explode(",", $q_nilai_sikap_so['sangat_baik']);
        $so_perlu_bimbingan = explode(",", $q_nilai_sikap_so['perlu_bimbingan']);
        // $so_perlu_bimbingan = $q_nilai_sikap_so['perlu_bimbingan'];

        if (sizeof($so_pc_sangat_baik) > 0 || sizeof($so_perlu_bimbingan > 0)) {
            $so_teks_sangat_baik = array();
            
            //echo var_dump($q_nilai_sikap_so);

            // for($i=0; $i<sizeof($so_pc_sangat_baik);$i++) {
            //     $idx = $so_pc_sangat_baik[$i];
            //     $so_teks_sangat_baik[] = $list_kd_so[$idx];
            // }

            // $so_text_sangat_baik= implode(", ", $so_teks_sangat_baik);

            // $so_perlu_bimbingan = $list_kd_so[$so_perlu_bimbingan];
            
            $teks_sangat_baik = array();
                    for($i=0; $i<sizeof($so_pc_sangat_baik);$i++) {
                        $idx = $so_pc_sangat_baik[$i];
                        if(isset($list_kd_so[$idx])){
                            $teks_sangat_baik[] = $list_kd_so[$idx];
                        }
                    }

                    $teks_perlu_bimbingan = array();
                    for($i=0;$i<sizeof($so_perlu_bimbingan);$i++){
                        $idy = $so_perlu_bimbingan[$i];
                        if(isset($list_kd_so[$idy])){
                            $teks_perlu_bimbingan[] = $list_kd_so[$idy];
                        }
                    }

                    $text_sangat_baik = implode(", ", $teks_sangat_baik);
                    $text_perlu_bimbingan = implode(", ",$teks_perlu_bimbingan);

            // $nilai_sikap_sosial = 'sangat baik dalam '.$text_sangat_baik.'; perlu bimbingan dalam '.$text_perlu_bimbingan;

            if($text_sangat_baik=="" && $text_perlu_bimbingan!=""){

                        $nilai_sikap_sosial = 'Ananda '.$n[0].' perlu bimbingan dalam '.$text_perlu_bimbingan;
                    }
                    else if($text_perlu_bimbingan=="" && $text_sangat_baik!=""){
                        $nilai_sikap_sosial = 'Ananda '.$n[0].' sangat baik dalam '.$text_sangat_baik;
                    }
                    else{
                        $nilai_sikap_sosial = 'Ananda '.$n[0].' sangat baik dalam '.$text_sangat_baik.'; perlu bimbingan dalam '.$text_perlu_bimbingan;
                    }
        } else {
            $nilai_sikap_sosial = 'Belum diinput';
        }


        $d['nilai_sikap_sosial'] = $nilai_sikap_sosial;

        //END NIlai Sikap SPIRITUAL
        
        //===========================================================================
        //              START NIlai Ekstrakurikuler
        //===========================================================================
        $q_nilai_ekstra = $this->db->query("SELECT 
                                            b.nama, a.nilai, a.desk
                                            FROM t_nilai_ekstra a
                                            INNER JOIN m_ekstra b ON a.id_ekstra = b.id
                                            WHERE a.id_siswa = $id_siswa AND a.nilai != '0' AND a.tasm = '".$tasm."'")->result_array();
        //echo $this->db->last_query();

        $d['nilai_ekstra'] = $q_nilai_ekstra;
        
        
        //===========================================================================
        //              START NIlai Tumbuh Semester 2
        //===========================================================================
        $q_nilai_tumbuh = $this->db->query("SELECT 
                                            b.nama, a.nilai, a.desk
                                            FROM t_nilai_tumbuh a
                                            INNER JOIN m_tumbuh b ON a.id_ekstra = b.id
                                            WHERE a.id_siswa = $id_siswa AND a.nilai != '0' AND a.tasm = '".$tasm."'")->result_array();
        //echo $this->db->last_query();

        $d['nilai_tumbuh'] = $q_nilai_tumbuh;

        //===========================================================================
        //              START NIlai Tumbuh Semester 1
        //===========================================================================
        $tasmmod = $tasm - 1;
        $q_nilai_tumbuh_mod = $this->db->query("SELECT 
                                            b.nama, a.nilai, a.desk
                                            FROM t_nilai_tumbuh a
                                            INNER JOIN m_tumbuh b ON a.id_ekstra = b.id
                                            WHERE a.id_siswa = $id_siswa AND a.nilai != '0' AND a.tasm = '".$tasmmod."'")->result_array();
        //echo $this->db->last_query();

        $d['nilai_tumbuh_mod'] = $q_nilai_tumbuh_mod;



        //===========================================================================
        //              START NIlai Absensi
        //===========================================================================
        $q_nilai_absensi = $this->db->query("SELECT 
                                            s, i, a
                                            FROM t_nilai_absensi
                                            WHERE id_siswa = $id_siswa AND tasm = '".$tasm."'")->row_array();

        $d['nilai_absensi'] = $q_nilai_absensi;

        $d['nilai_utama'] = '';

        

        $kelompok = array("A", "B");

        //foreach ($kelompok as $k) {
            //$q_mapel = $this->db->query("SELECT * FROM m_mapel WHERE kelompok = '$k'")->result_array();
        

            $arr_huruf = array("a","b","c","d","e");

            //$d['nilai_utama'] .= '<tr><td colspan="8"><b>KELOMPOK A</b></td></tr>';
            $no = 0;


            //foreach ($q_mapel as $m) {
            //PAI kelompok A
            if ($this->config->item('is_kemenag') == TRUE) {    
                $d['nilai_utama'] .= '<tr><td class="ctr">'.$no.'</td><td colspan="8">Pendidikan Agama Islam</td></tr>';
                $q_mapel = $this->db->query("SELECT * FROM m_mapel WHERE kelompok = 'A' AND tambahan_sub = 'PAI'")->result_array();

                foreach ($q_mapel as $i=>$m) {
                    $idx = $m['id'];
                    $npa = empty($nilai_pengetahuan[$idx]['nilai']) ? "-" : $nilai_pengetahuan[$idx]['nilai'];
                    $npp = empty($nilai_pengetahuan[$idx]['predikat']) ? "-" : $nilai_pengetahuan[$idx]['predikat'];
                    $npd = empty($nilai_pengetahuan[$idx]['desk']) ? "-" : "Capaian kompetensi sudah tuntas dengan predikat ".nilai_pre($npa).". ".$nilai_pengetahuan[$idx]['desk'];
                    $nka = empty($nilai_keterampilan[$idx]['nilai']) ? "-" : $nilai_keterampilan[$idx]['nilai'];
                    $nkp = empty($nilai_keterampilan[$idx]['predikat']) ? "-" : $nilai_keterampilan[$idx]['predikat'];
                    $nkd = empty($nilai_keterampilan[$idx]['desk']) ? "-" : ""."".$n[0]." ".$nilai_keterampilan[$idx]['desk'];

                    $d['nilai_utama'] .= '
                                        <tr>
                                            <td class="ctr"></td>
                                            <td>'.$arr_huruf[$i].'. '.$m['nama'].'</td>
                                            <td class="ctr">'.$npa.'</td>
                                            <td class="ctr">'.$npp.'</td>
                                            <td class="font_kecil">'.$npd.'</td>
                                            <td class="ctr">'.$nka.'</td>
                                            <td class="ctr">'.$nkp.'</td>
                                            <td class="font_kecil">'.$nkd.'</td>
                                        </tr>';
                }
            }

            $no++;

            //no pai kelompok A
            $q_mapel = $this->db->query("SELECT * FROM m_mapel WHERE kelompok = 'A' AND tambahan_sub = 'NO'")->result_array();

            foreach ($q_mapel as $i=>$m) {
                $idx = $m['id'];
                $npa = empty($nilai_pengetahuan[$idx]['nilai']) ? "-" : $nilai_pengetahuan[$idx]['nilai'];
                $npp = empty($nilai_pengetahuan[$idx]['predikat']) ? "-" : $nilai_pengetahuan[$idx]['predikat'];
                $npd = empty($nilai_pengetahuan[$idx]['desk']) ? "-" : "".$n[0]." ".$nilai_pengetahuan[$idx]['desk'];
                $nka = empty($nilai_keterampilan[$idx]['nilai']) ? "-" : $nilai_keterampilan[$idx]['nilai'];
                $nkp = empty($nilai_keterampilan[$idx]['predikat']) ? "-" : $nilai_keterampilan[$idx]['predikat'];
                $nkd = empty($nilai_keterampilan[$idx]['desk']) ? "-" : ""."".$n[0]." ".$nilai_keterampilan[$idx]['desk'];

                if($wali_kelas['nmkelas'] == 'Kelas 2' || $wali_kelas['nmkelas'] == 'Kelas 3' || $wali_kelas['nmkelas'] == 'Kelas 1'){
                    if($m['nama'] == 'Ilmu Pengetahuan Alam' || $m['nama'] == 'Ilmu Pengetahuan Sosial'){
                        
                    }else{
                        $d['nilai_utama'] .= '
                                    <tr>
                                        <td class="ctr">'.$no++.'</td>
                                        <td>'.$m['nama'].'</td>
                                        <td class="ctr">'.$npa.'</td>
                                        <td class="ctr">'.$npp.'</td>
                                        <td class="font_kecil">'.$npd.'</td>
                                        <td class="ctr">'.$nka.'</td>
                                        <td class="ctr">'.$nkp.'</td>
                                        <td class="font_kecil">'.$nkd.'</td>
                                    </tr>';
                    }
                }else{
                    $d['nilai_utama'] .= '
                                    <tr>
                                        <td class="ctr">'.$no++.'</td>
                                        <td>'.$m['nama'].'</td>
                                        <td class="ctr">'.$npa.'</td>
                                        <td class="ctr">'.$npp.'</td>
                                        <td class="font_kecil">'.$npd.'</td>
                                        <td class="ctr">'.$nka.'</td>
                                        <td class="ctr">'.$nkp.'</td>
                                        <td class="font_kecil">'.$nkd.'</td>
                                    </tr>';
                }
                
            }

            //no pai kelompok B
            //$d['nilai_utama'] .= '<tr><td colspan="8"><b>KELOMPOK B</b></td></tr>';
            $q_mapel = $this->db->query("SELECT * FROM m_mapel WHERE kelompok = 'B' AND tambahan_sub = 'NO'")->result_array();

            foreach ($q_mapel as $i=>$m) {
                $idx = $m['id'];
                $npa = empty($nilai_pengetahuan[$idx]['nilai']) ? "-" : $nilai_pengetahuan[$idx]['nilai'];

                $npp = empty($nilai_pengetahuan[$idx]['predikat']) ? "-" : $nilai_pengetahuan[$idx]['predikat'];
                $npd = empty($nilai_pengetahuan[$idx]['desk']) ? "-"  : "".$n[0]." ".$nilai_pengetahuan[$idx]['desk'];
                $nka = empty($nilai_keterampilan[$idx]['nilai']) ? "-" : $nilai_keterampilan[$idx]['nilai'];
                $nkp = empty($nilai_keterampilan[$idx]['predikat']) ? "-" : $nilai_keterampilan[$idx]['predikat'];
                $nkd = empty($nilai_keterampilan[$idx]['desk']) ? "-" : ""."".$n[0]." ".$nilai_keterampilan[$idx]['desk'];

                $d['nilai_utama'] .= '
                                    <tr>
                                        <td class="ctr">'.$no++.'</td>
                                        <td>'.$m['nama'].'</td>
                                        <td class="ctr">'.$npa.'</td>
                                        <td class="ctr">'.$npp.'</td>
                                        <td class="font_kecil">'.$npd.'</td>
                                        <td class="ctr">'.$nka.'</td>
                                        <td class="ctr">'.$nkp.'</td>
                                        <td class="font_kecil">'.$nkd.'</td>
                                    </tr>';
            }

            $d['nilai_utama'] .= '<tr><td class="ctr">'.$no.'</td><td colspan="8">Muatan Lokal</td></tr>';
                $q_mapel = $this->db->query("SELECT * FROM m_mapel WHERE kelompok = 'B' AND tambahan_sub = 'MULOK'")->result_array();

            foreach ($q_mapel as $i=>$m) {
                $idx = $m['id'];
                $npa = empty($nilai_pengetahuan[$idx]['nilai']) ? "-" : $nilai_pengetahuan[$idx]['nilai'];

                $npp = empty($nilai_pengetahuan[$idx]['predikat']) ? "-" : $nilai_pengetahuan[$idx]['predikat'];
                $npd = empty($nilai_pengetahuan[$idx]['desk']) ? "-"  : "".$n[0]." ".$nilai_pengetahuan[$idx]['desk'];
                $nka = empty($nilai_keterampilan[$idx]['nilai']) ? "-" : $nilai_keterampilan[$idx]['nilai'];
                $nkp = empty($nilai_keterampilan[$idx]['predikat']) ? "-" : $nilai_keterampilan[$idx]['predikat'];
                $nkd = empty($nilai_keterampilan[$idx]['desk']) ? "-" : ""."".$n[0]." ".$nilai_keterampilan[$idx]['desk'];

                $d['nilai_utama'] .= '
                                    <tr>
                                        <td class="ctr"></td>
                                        <td>'.$arr_huruf[$i].'. '.$m['nama'].'</td>
                                        <td class="ctr">'.$npa.'</td>
                                        <td class="ctr">'.$npp.'</td>
                                        <td class="font_kecil">'.$npd.'</td>
                                        <td class="ctr">'.$nka.'</td>
                                        <td class="ctr">'.$nkp.'</td>
                                        <td class="font_kecil">'.$nkd.'</td>
                                    </tr>';
            }

            //}
        //}
        $d['det_raport'] = $get_tasm = $this->db->query("SELECT tahun,semester, nama_kepsek, nip_kepsek, tgl_raport, tgl_raport_kelas3 FROM tahun WHERE tahun = '$tasm'")->row_array();
        
        //ini tambahan nya ae
        $q_prestasi = $this->db->query("SELECT 
                                    a.*
                                    FROM t_prestasi a 
                                    LEFT JOIN m_siswa c ON a.id_siswa = c.id
                                    WHERE a.id_siswa = $id_siswa AND a.ta = '$tasm'")->result_array();
                                    
        //echo $this->db->last_query();
        //exit;


        $q_catatan = $this->db->query("SELECT 
                                    a.*
                                    FROM t_naikkelas a 
                                    WHERE a.id_siswa = $id_siswa AND a.ta = '$tasm'")->row_array();
                                    
                                    // echo $this->db->last_query();
                                    // exit;
                                    
        $d['prestasi'] = $q_prestasi;
        $d['catatan'] = $q_catatan;
        
        $prefix = $this->config->item('session_name_prefix');
if ($this->session->userdata($prefix."valid") == true) {
    $this->load->view('cetak_rapot', $d);
}
        
        

    }


    public function index() {

        $wali = $this->session->userdata($this->sespre."walikelas");

        $this->d['siswa_kelas'] = $this->db->query("SELECT 
                                                a.id_siswa, b.nama
                                                FROM t_kelas_siswa a
                                                INNER JOIN m_siswa b ON a.id_siswa = b.id
                                                WHERE a.id_kelas = '".$wali['id_walikelas']."' AND a.ta = '".$this->d['ta']."'")->result_array();

    	$this->d['p'] = "list";
    	
    	                $prefix = $this->config->item('session_name_prefix');
if ($this->session->userdata($prefix."valid") == true) {

}
        $this->load->view("template_utama", $this->d);
    }

}