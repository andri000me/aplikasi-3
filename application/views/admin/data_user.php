
<!-- Main Content -->
<div class="main-content">
  <section class="section">
    <div class="section-header">
      <h1>Data User</h1>
    </div>

    <div>
      <div class="card">
        <div class="card-header">
          <h4>Data User</h4>
        </div>
        <div class="card-body p-0">
          <div class="table-responsive">
            <table class="table table-striped mb-0">
              <thead>
                <tr>
                  <th>No</th>
                  <th>Foto Profil</th>
                  <th>Nama User</th>
                  <th>Alamat User</th>
                  <th>Nomor Telepon</th>
                  <th>Email</th>
                  <th>Type User</th>
                  <th>Aksi</th>
                </tr>
              </thead>
              <tbody>
                <?php 
                    $no= 1;
                    foreach ($user as $mb) : ?>
                      <tr><td><?php echo $no++ ?></td>
                      <td></td>
                      <td><?php echo $mb->username ?></td>
                      <td><?php echo $mb->alamat ?></td>
                      <td><?php echo $mb->telepon ?></td>
                      <td><?php echo $mb->email?></td>
                      <td><?php echo $mb->id_level ?></td>
                      <td></td>
                      </tr>
                <?php  
                    endforeach

                ?>
              </tbody>
            
            </table>
          </div>
        </div>
      </div>
      <nav aria-label="Page navigation example">
        <ul class="pagination justify-content-end">
          <li class="page-item disabled">
            <a class="page-link" href="#" tabindex="-1" aria-disabled="true">Previous</a>
          </li>
          <li class="page-item"><a class="page-link" href="#">1</a></li>
          <li class="page-item"><a class="page-link" href="#">2</a></li>
          <li class="page-item"><a class="page-link" href="#">3</a></li>
          <li class="page-item">
            <a class="page-link" href="#">Next</a>
          </li>
        </ul>
      </nav>
    </div>


  </div>
</section>
</div>