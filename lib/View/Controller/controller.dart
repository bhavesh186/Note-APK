import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../Modal/note_modal.dart';

class notdetailscontroller extends GetxController{

@override
void onInit(){
  super.onInit();
  getNote();
}

  // void onInit() {
  //   getNote();
  //   super.onInit();
  // }

  RxList<NoteModal> noteList = RxList<NoteModal>();

  TextEditingController titel = TextEditingController();
  TextEditingController subtitel = TextEditingController();
  TextEditingController titeldetail = TextEditingController();
  TextEditingController desdetail = TextEditingController();

  Future<void> getNote() async {
    var response = await http.get(Uri.parse("https://66e158a7c831c8811b54995e.mockapi.io/Notes"));
    if(response.statusCode == 200){
      print(response.body);
      var notes = jsonDecode(response.body);

      noteList.clear();

      for(var note in notes){
        noteList.add(NoteModal.fromJson(note));
      }

      print("Note get");
    }
  }


  Future<void> postNote() async{
    var newNote = NoteModal(
      tital: titel.text,
      description: subtitel.text,
    );

    if(titel.text != "" || subtitel.text != ""){
      var response = await http.post(Uri.parse("https://66e158a7c831c8811b54995e.mockapi.io/Notes"),
          body: jsonEncode(newNote.toJson()),
          headers: {'content-type' : 'application/json'}
      );
      if(response.statusCode == 201){
        titel.clear();
        subtitel.clear();
        getNote();
        print("Note added");

      }else{
        print("plese enter");
        // SnackBar(
        //   content: const Text('Please Enter Titel OR Description!'),
        //   action: SnackBarAction(
        //     label: 'OK',
        //     onPressed: () {
        //       // Code to execute.
        //     },
        //   ),
        // );
      }
    }
  }


  Future<void> deleteNote(String id) async {

    final response = await http.delete(Uri.parse("https://66e158a7c831c8811b54995e.mockapi.io/Notes/$id"));
    if(response.statusCode == 200){
      Get.back();
      getNote();
      print("note Deleted");
    }

  }


Future<void> updateNote(String id) async {

    var updatedNote = NoteModal(
      tital: titeldetail.text,
      description: desdetail.text,
    );

  final response = await http.put(Uri.parse("https://66e158a7c831c8811b54995e.mockapi.io/Notes/$id"),
    body: jsonEncode(updatedNote.toJson()),
    headers: {'content-type':'application/json'}
  );
  if(response.statusCode == 200){
    print("Note Updated");
    getNote();
  }


}
}