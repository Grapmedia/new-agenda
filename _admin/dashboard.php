<div class="col-lg-12">
    <div class="card">
          <div class="card-header">
                                    <h4>Akan datang</h4>
                                </div>
        <div class="card-body">
            <ul class="nav nav-tabs" id="myTab" role="tablist">
                <li class="nav-item">
                    <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true"> <span class="fa fa-home"></span> Home</a>
                </li>
                                            <li class="nav-item">
                                                <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Agenda Hari Ini</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact" aria-selected="false">Semua Agenda</a>
                                            </li> 
                                            <li class="nav-item">
                                                <a class="nav-link" id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact" aria-selected="false">Semua Pengajar</a>
                                            </li> 
                                            <li class="nav-item">
                                                <a class="nav-link" id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact" aria-selected="false">File Perangkat</a>
                                            </li> 
            </ul>
            <div class="tab-content pl-3 p-1" id="myTabContent">
                <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                    <div class="row">
                        <div class="col-md-6">
                            <ul>
                                <b>Informasi Terkini :</b>
                                <hr>
                                <?php
                                $now = date('y-m-d');
                                $sql = mysqli_query($con, "SELECT * FROM tb_agenda
        INNER JOIN tb_guru ON tb_agenda.id_guru=tb_guru.id_guru
        INNER JOIN tb_mapel ON tb_agenda.id_mapel=tb_mapel.id_mapel

     WHERE tb_agenda.tgl='$now' ");
                                while ($data = mysqli_fetch_array($sql)) { ?>
                                    <div class="sufee-alert alert with-close alert-primary alert-dismissible fade show">
                                        <span class="badge badge-pill badge-primary" style="background-color: #e91e63;"><img src="../images/<?php echo $data['photo']; ?>" class="img-responsive" style=" border:2px dashed silver; border-radius:100%; height: 30px;width: 30px;"> <?php echo $data['nama_guru'] ?></span>

                                        <a href="?page=v_mapelagenda&idg=<?php echo $data['id_mapel'] ?>" style="color:black;"> Telah Mengisi Agenda Hari Ini Tanggal [ <b><?php echo $data['tgl'] ?></b>] Mata Pelajaran <b><?php echo $data['nama_mapel'] ?></b></a>

                                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>


                                <?php } ?>

                        </div>
                        <div class="col-md-6" style="border-left: 1px solid #181c1c;">
                            <!-- koding -->
                            <?php
                            $now = date('y-m-d');
                            $his = mysqli_num_rows(mysqli_query($con, "SELECT * FROM tb_agenda WHERE tgl='$now' "));
                            $all = mysqli_num_rows(mysqli_query($con, "SELECT * FROM tb_agenda"));
                            $gr = mysqli_num_rows(mysqli_query($con, "SELECT * FROM tb_guru"));
                            $file = mysqli_num_rows(mysqli_query($con, "SELECT * FROM download"));
                            ?>
                            <a href="?page=v_agenda">
                                <div class="col-lg-6 col-md-6">
                                    <div class="card" style="background-color: #1be0c6;">
                                        <div class="card-body">
                                            <div class="stat-widget-one">
                                                <div class="stat-icon dib"><i class="ti-calendar text-danger border-danger"></i></div>
                                                <div class="stat-content dib">
                                                    <div class="stat-text" style="color: #fff;">Agenda Hari ini</div>
                                                    <div class="stat-digit" style="color: #fff;"><b><?php echo $his ?></b></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </a>
                            <a href="?page=v_lapid">
                                <div class="col-lg-6 col-md-6">
                                    <div class="card" style="background-color: #e91e63;">
                                        <div class="card-body">
                                            <div class="stat-widget-one">
                                                <div class="stat-icon dib"><i class="ti-layers-alt text-white border-white"></i></div>
                                                <div class="stat-content dib">
                                                    <div class="stat-text" style="color: #fff;">Semua Agenda</div>
                                                    <div class="stat-digit" style="color: #fff;"><b><?php echo $all ?></b></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </a>
                            <a href="?page=v_guru">
                                <div class="col-lg-6 col-md-6">
                                    <div class="card" style="background-color: #e91e63;">
                                        <div class="card-body">
                                            <div class="stat-widget-one">
                                                <div class="stat-icon dib"><i class="ti-layers-alt text-white border-white"></i></div>
                                                <div class="stat-content dib">
                                                    <div class="stat-text" style="color: #fff;">Semua Pengajar</div>
                                                    <div class="stat-digit" style="color: #fff;"><b><?php echo $all ?></b></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </a>
                            <a href="?page=v_file">
                                <div class="col-lg-6 col-md-6">
                                    <div class="card" style="background-color:#1be0c6;">
                                        <div class="card-body">
                                            <div class="stat-widget-one">
                                                <div class="stat-icon dib"><i class="ti-file text-danger border-white"></i></div>
                                                <div class="stat-content dib">
                                                    <div class="stat-text" style="color: #fff;">File Perangkat</div>
                                                    <div class="stat-digit" style="color: #fff;"><b><?php echo $file ?> </b></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </a>




                        </div>

                    </div>









                    <!--  <h3>Home</h3> -->
                    <br>
                                                <br>
                                                <ul>
                                            <b>FITUR - FITUR MELIPUTI :</b> 
                                        </ul>
                                        <ul>
                                            <li>Pengaturan / Pengolahan Data Master Pelajaran</li>
                                            <li>Pengaturan / Pengolahan Master Tahun Ajaran</li>
                                            <li>Pengaturan / Pengolahan Master Kelas & Jurusan</li>
                                        </ul>
                                        <ul>
                                           <li>Pengaturan / Pengolahan Master Data Guru</li>
                                            <li>Melihat History Agenda</li>
                                        </ul>
                                        <ul>
                                            <li>Pengolahan Data File Perangkat Pembelajaran , Modul, Bahan Ajar</li>
                                            <li>Pengolahan Data Agenda Kegiatan Guru / Laporan Kegiatan</li>
                                        </ul>

                </div>


            </div>


        </div>
    </div>
</div>
</div>
<!-- /# column -->



<div class="col-md-4">
    <div class="feed-box text-center">
        <section class="card">
            <div class="card-body">
                <div class="corner-ribon blue-ribon">
                    <i class="fa fa-twitter"></i>
                </div>
                <a href="#">
                    <img class="align-self-center rounded-circle mr-3" style="width:85px; height:85px;" alt="" src="../images/lg.png">
                </a>
                <h2>Admin El-Bayan</h2>
                <p><a href="#"></a> <a href="#">-</a></p>
            </div>
        </section>
    </div>
</div>
<div class="col-md-4">
    <div class="feed-box text-center">
        <section class="card">
            <div class="card-body">
                <div class="corner-ribon black-ribon">
                    <i class="fa fa-twitter"></i>
                </div>
                <a href="#">
                    <img class="align-self-center rounded-circle mr-3" style="width:85px; height:85px;" alt="" src="../images/lg.png">
                </a>
                <h2>Admin El-Bayan</h2>
                <p><a href="#"></a> <a href="#">-</a></p>
            </div>
        </section>
    </div>
</div>

<div class="col-md-4">
    <div class="feed-box text-center">
        <section class="card">
            <div class="card-body">
                <div class="corner-ribon blue-ribon">
                    <i class="fa fa-twitter"></i>
                </div>
                <a href="#">
                    <img class="align-self-center rounded-circle mr-3" style="width:85px; height:85px;" alt="" src="../images/lg.png">
                </a>
                <h2>Admin El-Bayan</h2>
                <p><a href="#"></a> <a href="#">-</a></p>
            </div>
        </section>
    </div>
</div>