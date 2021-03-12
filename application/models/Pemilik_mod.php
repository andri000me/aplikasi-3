<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pemilik_mod extends CI_Model
{
  private $table1 = "kosan";
  private $table2 = "kriteria";
  private $table3 = "fasilitas";
  // private $table4 = "fasilitas_t";
  private $table5 = "kondisi";



 function get_kos_list($limit, $start){
        $query = $this->db->get('kosan', $limit, $start);
        return $query;
    }
 
  public function save_fasilitas($id,$post)
  { 

    $data = array();
    foreach ($post AS $key => $val) {
      $data[] = array(
        'id' => '',
        'nama' => $post[$key],
        'id_kriteria' =>$id
      );
    }

    $this->db->insert_batch('fasilitas', $data); 
 
}

 
//   public function save_fasilitas_t($id,$post)
//   { 

//     $data2 = array();
//     foreach ($post AS $key => $val) {
//       $data2[] = array(
//         'id' => '',
//         'nama' => $post[$key],
//         'id_kriteria' =>$id
//       );
//     }

//     $this->db->insert_batch('fasilitas_t', $data2); 
 
// }
 
  public function save_kondisi($id,$post)
  { 

    $data = array();
    foreach ($post AS $key => $val) {
      $data[] = array(
        'id' => '',
        'nama' => $post[$key],
        'id_kriteria' =>$id
      );
    }

    $this->db->insert_batch('kondisi', $data); 
 
}



  public function save_kriteria($id_kos) {
    $id = uniqid();
    $data3 = array(
      "id_kriteria" => $id,
      "id_kos" => $id_kos,
      "harga" => $this->input->post('harga') ,
      "jarak" => $this->input->post('jarak') ,
      "luas" => $this->input->post('luas') 
    );
    $pil = $this->input->post('cekfu');
      // $pil2 = $this->input->post('cekft');
        $pil3 = $this->input->post('cekon');
    $this->save_fasilitas($id,$pil);
    // $this->save_fasilitas_u($id,$pil);
    $this->save_kondisi($id,$pil3);
    
    $this->db->insert('kriteria', $data3); // Untuk mengeksekusi perintah insert data

  }



  public function savekos() {
  
    $data4 = array(
      "nama_kos" => $this->input->post('namakos'),
      "jenis" => $this->input->post('radio1') ,
      "alamat" => $this->input->post('alamat') ,
      "desk" => $this->input->post('desk'),
      "image"=> $this->_uploadImage() 
    );

      $this->db->insert('kosan', $data4); 
     $id =  $id = $this->db->insert_id();
  
    
  // Untuk mengeksekusi perintah insert data

  }
  public function getid(){
   return $this->db->insert_id();
  }


  public function validation($mode) {
    $this->load->library('form_validation'); // Load library form_validation untuk proses validasinya
    // Tambahkan if apakah $mode save atau update
    // Karena ketika update, NIS tidak harus divalidasi
    // Jadi NIS di validasi hanya ketika menambah data siswa saja
    if ($mode == "save") 
      $this->form_validation->set_rules('namakos', 'namakos', 'required');
      $this->form_validation->set_rules('alamat', 'alamat', 'required');
        $this->form_validation->set_rules('radio1', 'radio1', 'required');
    
    if ($this->form_validation->run()) // Jika validasi benar
      return true; // Maka kembalikan hasilnya dengan TRUE
    else
    // Jika ada data yang tidak sesuai validasi
      return false; // Maka kembalikan hasilnya dengan FALSE
    
  }


public function insertGallery($data = array()){
        $insert = $this->db->insert_batch('gambar',$data);
        return $insert?true:false;
    } 


    private function _uploadImage()
  {
      $config['upload_path']          = './assets/images/';
      $config['allowed_types']        = 'gif|jpg|png|bmp|jpeg|GIF|JPG|PNG|BMP|JPEG';
      $config['file_name']            = rand();
      $config['overwrite']      = true;
      $config['max_size']             = 99999; // 10MB
      // $config['max_width']            = 1024;
      // $config['max_height']           = 768;

      $this->load->library('upload', $config);

      if ($this->upload->do_upload('image')) {
          return $this->upload->data("file_name");
      }
      
      return "default.jpg";
  }

  public function lihat($id){
    $this->db->select('*');
    $this->db->from('detail');
    $this->db->where('id', $id);

    return $this->db->get();
  }

// detailllll
  function get_tableid_edit($table_name,$where,$id)
   {
     $this->db->where($where,$id);
     $edit = $this->db->get($table_name);
     return $edit->row();
   }

   function CountTableId($table_name,$where,$id)
   {
     $this->db->where($where,$id);
     $Count = $this->db->get($table_name);
     return $Count->num_rows();
   }


}