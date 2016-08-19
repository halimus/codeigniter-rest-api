<?php

function remove_unknown_fields($raw_data, $expected_fields){
    
    $new_data = array();
    
    //print_r($expected_fields);
    //exit;

    foreach ($raw_data as $field_name => $field_value) {
        if(($field_value !='') && in_array($field_name, array_values($expected_fields))){
            $new_data[$field_name] = $field_value;
        }
    }
    
    
    return $new_data;
    
}

