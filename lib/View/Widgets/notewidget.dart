import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_apk_experiance/View/Modal/note_modal.dart';

import '../Pages/update_delete_note.dart';

class NoteWidget extends StatelessWidget {

  final NoteModal note;
   NoteWidget({super.key, required this.note});
  @override
  Widget build(BuildContext context) {


    return InkWell(

      onTap: (){
        Get.to(UpadateDeleteNote(note: note,));
      },

      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: Colors.yellow[100],
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 10,
              ),
            ]
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(child: Text(note.tital.toString(), style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)),
            Flexible(child: Text(note.description.toString(), style: const TextStyle(fontSize: 16,),)),
          ],
        ),
      ),
    );
  }
}
