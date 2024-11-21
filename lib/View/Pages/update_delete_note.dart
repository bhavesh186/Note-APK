import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_apk_experiance/View/Modal/note_modal.dart';

import '../Controller/controller.dart';
import '../Widgets/button.dart';
import '../Widgets/textformfield.dart';

class UpadateDeleteNote extends StatelessWidget {
  final NoteModal note;
   UpadateDeleteNote({super.key, required this.note});

  @override
  Widget build(BuildContext context) {

    notdetailscontroller controller = Get.put(notdetailscontroller());
    controller.titeldetail.text = note.tital.toString();
    controller.desdetail.text = note.description.toString();

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(onPressed: (){
              controller.deleteNote(note.id!);
              print(note.id);
            }, icon: Icon(Icons.delete),),
            SizedBox(width: 15,),
          ],
          backgroundColor: Colors.yellow[200],
          title: Text("ADD NEW NOTE"),
        ),
        // backgroundColor: Colors.yellow[100],
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomTextformfield(
                    ontap: () {},
                    controller: controller.titeldetail,
                    enablebordercolor: Colors.yellow[100],
                    desablebordercolor: Colors.yellow[100],
                    hinttext: "Enter titel",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomTextformfield(
                    ontap: () {},
                    controller: controller.desdetail,
                    enablebordercolor: Colors.yellow[100],
                    desablebordercolor: Colors.yellow[100],
                    hinttext: "Enter subtitel",
                  ),
                ],
              ),


              SizedBox(height: 500,),

              CustomButtom(ontap: (){
                controller.updateNote(note.id!);
                print(note.id);
                Get.back();
              },backgroundcolor: Colors.yellow[400], btncolor: Colors.black,btntext: "UPDATE",),
            ],
          ),
        ),
      ),
    );
  }
}
