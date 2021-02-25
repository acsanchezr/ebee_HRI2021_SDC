import 'package:flutter/material.dart';

class Dictionary {
  int id;
  String word;

  /*method for mapping data*/
  dictionaryMap(){
    var mapping = Map<String,dynamic>();
    mapping['id'] = id;
    mapping['word'] = word;

    return mapping;
  }
}