
<!-- Main Content -->
<div class="main-content">
  <section class="section">
    <div class="section-header">
      <h1>Data Indekos</h1>
    </div>

    <div>
      <div class="card">
        <div class="card-header">
          <div class="card-header-action">
            <a href="<?php echo site_url('pemilik/dashboard/addpage') ?>" class="btn btn-primary fas fa-plus"  class="" >Tambah Data</a>
            <?php echo $this->session->flashdata('pesan') ?>
          </div>
        </div>
        <div class="card-body p-0">
          <div class="table-responsive">
            <table class="table table-striped mb-0">
              <thead>
                <tr>
                  <th>No. </th>
                  <th>Gambar</th>
                  <th>Nama</th>
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
                    <td>
                      <img width="60px"src="<?php echo base_url().'assets/images/'.$mb->image ?>">
                    </td>
                    <td><?php echo $mb->nama_kos ?></td>
                    <td><?php echo $mb->jenis ?></td>
                    <td><?php echo $mb->alamat ?></td>
                    <td>
                      <a href="<?php echo site_url('pemilik/dashboard/indekosdetail/').$mb->id ?>"  class="btn btn-success btn-action mr-1" data-toggle="tooltip" title="Detail"><i class="fas fa-eye"></i></a>
                      <a href="<?php echo site_url('pemilik/dashboard/editpage/').$mb->id ?>" class="btn btn-primary btn-action mr-1" data-toggle="tooltip" title="Edit"><i class="fas fa-pencil-alt"></i></a>
                      <a class="btn btn-danger btn-action" data-toggle="tooltip" title="Delete" data-confirm="Are You Sure?|Apakah anda yakin ingin menghapus data ini?" data-confirm-yes="alert('Deleted')"><i class="fas fa-trash"></i></a></td>
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