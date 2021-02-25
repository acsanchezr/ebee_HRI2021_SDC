import 'package:flutter/material.dart';
import 'package:ebee_test/model/dictionary.dart';
import 'package:ebee_test/repositories/repository.dart';

class DictionaryService {
  Repository _repository;

  DictionaryService(){
    _repository = Repository();
  }

  /*add word to dictionary*/
  saveDictionary(Dictionary dictionary) async{
    return await _repository.Insert('dictionary', dictionary.dictionaryMap());
  }

  /*read words in dictionary*/
  readDictionary() async{
   return await _repository.Read('dictionary');
  }
}