<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html lang="en">
<head>
  <?php $this->load->view("_partials/header.php");?>
</head>

<body>
  <div id="app">
    <section class="section">
      <div class="container mt-5">
        <!-- <div class="row"> -->
          <div class="col-12 col-sm-10 offset-sm-1 col-md-8 offset-md-2 col-lg-8 offset-lg-2 col-xl-8 offset-xl-2">
            <div class="login-brand">
              <img src="<?php echo base_url('assets/assets_stisla') ?>/assets/img/avatar/avatar-1.png" alt="logo" width="100" class="shadow-light rounded-circle">
            </div>

            <div class="card card-primary">
              <div class="card-header"><h4>Register</h4></div>
              <span class="m-2"><?php echo $this->session->flashdata('pesan') ?></span>

              <div class="card-body">
                <form method="POST" action="<?php echo base_url('register/register_aksi') ?>">
                  <div class="form-group">
                    <label for="username">Username</label>
                    <input id="username" type="text" class="form-control" name="username">
                    <?php echo form_error('username','<div class = "text-small text-danger">','</div>') ?>
                  </div>

                  <div class="form-group">
                    <label for="alamat">Alamat</label>
                    <input id="alamat" type="text" class="form-control" name="alamat">
                    <?php echo form_error('alamat','<div class = "text-small text-danger">','</div>') ?>
                  </div>

                  <div class="form-group">
                      <label>Kategory User</label>
                      <select name="id_level" class="form-control">
                        <option value="" selected disabled>Pilih Kategory User</option>
                        <?php foreach ($level as $lu) :?>
                          <option value="<?php echo $lu->id_level?>"> <?php echo $lu->nama_level?></option>
                        <?php endforeach; ?>
                      </select>
                      <?php echo form_error('id_level','<div class="text-small text-danger");>','</div>') ?>
                    </div>

                  <div class="form-group">
                    <label for="telepon">Nomor Telepon</label>
                    <input id="telepon" type="number" class="form-control" name="telepon">
                    <?php echo form_error('telepon','<div class = "text-small text-danger">','</div>') ?>
                  </div>

                  <div class="row">
                    <div class="form-group col-6">
                      <label for="email">Email</label>
                      <input id="email" type="email" class="form-control" name="email">
                      <?php echo form_error('email','<div class = "text-small text-danger">','</div>') ?>
                    </div>
                    <div class="form-group col-6">
                      <label for="password" class="d-block">Password</label>
                      <input id="password" type="password" class="form-control" name="password">
                      <?php echo form_error('password','<div class = "text-small text-danger">','</div>') ?>
                    </div>
                  </div>

                  <div class="form-group">
                    <button type="submit" class="btn btn-primary btn-lg btn-block">
                      Register
                    </button>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>
  <?php $this->load->view("_partials/javascript.php") ?>
</body>
</html>
