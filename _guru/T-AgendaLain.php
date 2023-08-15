<div class="col-md-12">
	<div class="card">
	<div class="card-header bg-dark">
	<strong class="card-title text-light"> <span class="fa fa-plus"></span> Tambah Agenda Lain </strong>
	</div>

     <form action="" method="post">
			<div class="card">
              <div class="card-header">
                <h3> <span class="fa fa-edit"></span>  Form Agenda </h3> 
              </div>
              <div class="card-body card-block">
              
                  <div class="form-group">
                  	<label for="nf-email" name="" class=" form-control-label">Hari / Tanggal Kegiatan  </label>
                  	<input type="hidden" name="id_guru" value="<?php echo $data['id_guru']; ?>">
                  	<input type="date" id="nf-email" name="tgl" class="form-control">

                  </div>
                   <div class="form-group">
                  	<label for="nf-email" class=" form-control-label"> Nama Kegiatan</label>
                  	<input type="text" id="nf-email" name="kegiatan" class="form-control">
                  	
                  </div>
                     <div class="form-group">
<!--
                  	<label for="nf-email" class=" form-control-label"> Isi Kegiatan / Acara</label>

                  	<textarea class="ckeditor" name="isi" id="ckedtor1"></textarea>
-->
                  <!-- Action Foto start -->
                  <label for="nf-email" class="form-control-label">Isi Kegiatan / Acara</label>
<textarea class="ckeditor" name="isi" id="ckedtor1"></textarea>

<div style="margin-top: 20px;">
    <button id="open-camera-btn">Foto Lansung <i class="fa fa-camera" aria-hidden="true"></i></button>
</div>
<video id="camera-preview" autoplay style="display: none;"></video>

<script>
    const openCameraBtn = document.getElementById('open-camera-btn');
    const cameraPreview = document.getElementById('camera-preview');

    openCameraBtn.addEventListener('click', async function() {
        try {
            const stream = await navigator.mediaDevices.getUserMedia({ video: true });
            cameraPreview.style.display = 'block';
            cameraPreview.srcObject = stream;
        } catch (error) {
            console.error('Tidak dapat mengakses kamera:', error);
        }
    });
</script>
                  <!-- Action Foto start -->
<div style="margin-top: 20px;">
    <div style="display: flex; align-items: center;">
        <div style="background-color: #f1f1f1; padding: 10px; border: 1px solid #ccc; border-radius: 4px;">
            <i class="fa fa-folder-open-o" style="margin-right: 10px;"></i> Pilih Foto / Video Kegiatan
        </div>
        <input type="file" accept="image/*, video/*" capture="camera" id="camera-input" name="camera-input" style="display: none;">
        <button id="choose-file-btn" onclick="document.getElementById('camera-input').click()">Pilih File</button>
    </div>
</div>
<canvas id="camera-preview" style="display: none;"></canvas>

<script>
    const cameraInput = document.getElementById('camera-input');
    const cameraPreview = document.getElementById('camera-preview');

    cameraInput.addEventListener('change', function(event) {
        const file = event.target.files[0];
        if (file) {
            const reader = new FileReader();

            reader.onload = function(e) {
                cameraPreview.style.display = 'block';
                cameraPreview.src = e.target.result;
            }

            reader.readAsDataURL(file);
        }
    });
</script>
<script src="path-to-exif-js/exif.js"></script>
<script>
    const cameraInput = document.getElementById('camera-input');
    const cameraPreview = document.getElementById('camera-preview');
    const locationInfo = document.getElementById('location-info');

    cameraInput.addEventListener('change', async function(event) {
        const file = event.target.files[0];
        if (file) {
            const reader = new FileReader();

            reader.onload = async function(e) {
                const imageData = e.target.result;
                cameraPreview.style.display = 'block';
                cameraPreview.src = imageData;

                // Get location data using EXIF.js
                const exifData = await getExifData(imageData);
                if (exifData && exifData.GPSLatitude && exifData.GPSLongitude) {
                    const locationText = `Lokasi: ${exifData.GPSLatitude}, ${exifData.GPSLongitude}`;
                    locationInfo.textContent = locationText;
                }
            }

            reader.readAsDataURL(file);
        }
    });

    async function getExifData(imageData) {
        return new Promise(resolve => {
            EXIF.getData(imageData, function() {
                resolve(EXIF.getAllTags(this));
            });
        });
    }
</script>

                  <!-- action Foto END -->
                  </div>
                  <div class="form-group">
                  	<label for="nf-password" class=" form-control-label">Keterangan</label>
                  	<textarea class="form-control" name="ket"></textarea>
                  </div>
              
              </div>
              <div class="card-footer">
                <button type="submit" name="save-agenda" class="btn btn-primary">
                  <i class="fa fa-save"></i> Simpan Agenda
                </button>
                <button type="reset" class="btn btn-danger">
                  <i class="fa fa-ban"></i> Reset
                </button>
                <a href="javascript:history.back()" class="btn btn-warning"> <span class="fa fa-chevron-left"></span> Kembali </a>  
              </div>
              
            </div>
              </form>

              <?php 

if (isset($_POST['save-agenda'])) {

$id_guru = $_POST['id_guru'];
$tgl     = $_POST['tgl'];
$judul   = $_POST['kegiatan'];
$isi     = $_POST['isi'];
$ket     = $_POST['ket'];



// simapn ke tb_mapel
mysqli_query($con, " INSERT INTO tb_agendalain (id_lain,id_guru,tgl_kgt,kegiatan,isi,keterangan)
VALUES('','$id_guru','$tgl','$judul','$isi','$ket') ") or die(mysqli_error($con)) ;

// header('window.location=?page=add-agenda&idg='.$id_mapel);


echo " 
<script>
alert('Data Berhasil Disimpan !!');
window.location='?page=aglain';


</script> ";
}
?>
		</div>
	</div>
</div>