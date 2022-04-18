<?php 
function to_upload_csv($fileName = '', $folder = '', $type = 'csv') {
    $CI = & get_instance();
    $CI->load->library('upload');
    $new_name = date("YmdHis");
    $dirPath = $folder;
    $config['upload_path'] = $dirPath;
    $config['allowed_types'] = $type;
    $config['max_size'] = "1000000";
    $config['file_name'] = $new_name;
    
    $CI->upload->initialize($config);
    if (!$CI->upload->do_upload($fileName)) {
        $error = $CI->upload->display_errors();
        return array('error' => $error);
    }
    $fileData = $CI->upload->data();
    if (is_array($fileData)) {
        return $fileData['file_name'];
    }
}
?>