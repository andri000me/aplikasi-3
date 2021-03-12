
<!-- Main Content -->
<div class="main-content">
  <section class="section">
    <div class="section-header">
      <h1>Data Indekos</h1>
    </div>

    <div>
      <div class="card">
        <div class="card-header">
          <h4>Data Indekos</h4>
        </div>
        <div class="card-body p-0">
          <div class="table-responsive">
            <table class="table table-striped mb-0">
              <thead>
                <tr>
                  <th>No. </th>
                  <th>Gambar</th>
                  <th>Nama</th>
                  <!-- <th>Nama Pemilik</th> -->
                  <th>Jenis Indekos</th>
                  <th>Alamat</th>
                  <th>Action</th>
                </tr>
              </thead>
              <tbody>
                <?php 
                    $no= 1;
                    foreach ($kosan as $mb) : ?>
                      <tr>
                      <td><?php echo $no++ ?></td>
                      <td><img width="60px"src="<?php echo base_url().'assets/images/'.$mb->image ?>"></td>
                      <td><?php echo $mb->nama_kos ?></td>
                      <!-- <td><?php echo $mb->id_user ?></td> -->
                      <td><?php echo $mb->jenis ?></td>
                      <td><?php echo $mb->alamat ?></td>
                      <td><a href="<?php echo site_url('admin/data_indekos/detail') ?>" class="btn btn-success btn-action mr-1" data-toggle="tooltip" title="Detail"><i class="fas fa-eye"></i></a></td>
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