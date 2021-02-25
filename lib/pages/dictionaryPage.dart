import 'package:flutter/material.dart';
import 'package:ebee_test/navigationDrawer/navigationDrawer.dart';
import 'package:ebee_test/model/dictionary.dart';
import 'package:ebee_test/service/dictionaryService.dart';
import 'package:flutter/rendering.dart';

class dictionaryPage extends StatefulWidget{
  static const String routeName = '/dictionaryPage';
  
  @override
  // _dictionaryScreenState createState() => _dictionaryScreenState();
    dictionaryScreen createState() => dictionaryScreen();
}

// class _dictionaryScreenState extends State<dictionaryScreen>{
class dictionaryScreen extends State<dictionaryPage>{
  // static const String routeName = '/dictionaryPage';

  var _dictionaryWordController = TextEditingController();
  var _dictionary = Dictionary(); /*new instance*/
  var _dictionaryService = DictionaryService();

  List<Dictionary> _dictionaryList = List<Dictionary>();

  @override
  void initState(){
    super.initState();
    getAllDictionary();
  }

  getAllDictionary() async {
    _dictionaryList = List<Dictionary>();
    var dictionaryWords = await _dictionaryService.readDictionary();
    dictionaryWords.forEach((dictionary){  //double check this
      setState(() {
        var dictionaryModel = Dictionary();
         
        dictionaryModel.word = dictionary['word'];
        dictionaryModel.id = dictionary['id'];
        _dictionaryList.add(dictionaryModel);
      });
    });
  }

  _showForm(BuildContext context){
    return showDialog(context: context, barrierDismissible: true, builder: (param){
      return AlertDialog(
        actions: <Widget>[
          /*Add buton*/
          FlatButton(
            color:Colors.blue,  //button color
            onPressed: () async{
              _dictionary.word = _dictionaryWordController.text;
              var result = await  _dictionaryService.saveDictionary(_dictionary); 
              print(result);
            }, 
            child: Text('Add'),
            ),

          /*Cancel button*/ 
          FlatButton(
            color: Colors.red, //button color
            onPressed: () => Navigator.pop(context), 
            child: Text('Cancel'),
           ),
        ],
        title: Text('Add a Word'),
        content: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              TextField(
                controller: _dictionaryWordController,
                decoration: InputDecoration(
                  hintText:'Add a word to your dictionary',
                  labelText: 'Input Word' 
                  ),
              )
            ],
          ),
          ),
      );
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
       title: Text("Dictionary"),
        ),
        drawer: navigationDrawer(),
        body: ListView.builder(
          itemCount: _dictionaryList.length,
          itemBuilder: (context,index){
            return Card(
              child: ListTile(
                leading: IconButton(
                  icon: Icon(Icons.edit), 
                  onPressed: (){}),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(_dictionaryList[index].word),
                      IconButton(icon: Icon(Icons.delete),onPressed: (){})
                    ],
                    ),
                )
            );
          }),
        floatingActionButton: FloatingActionButton(
          onPressed:(){
            _showForm(context); /*when button is pressed, display form to add word*/
          },
          child: Icon(Icons.add),
          ),
          
    );
  }
}

