import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:note_apk_experiance/View/Controller/controller.dart';
import 'package:note_apk_experiance/View/Pages/notedetails.dart';
import 'package:note_apk_experiance/View/Pages/update_delete_note.dart';
import '../Widgets/notewidget.dart';

class NoteHomePage extends StatelessWidget {
  NoteHomePage({super.key});

  notdetailscontroller controller = Get.put(notdetailscontroller());
  // TextEditingController titel = TextEditingController();
  // TextEditingController subtitel = TextEditingController();


  @override


  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Get.to(NoteDetails());
          controller.titel.clear();
          controller.subtitel.clear();
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) =>  NoteDetails()),
          );
        },
        child: Icon(
          Icons.add,
          size: 25,
        ),
        backgroundColor: Colors.yellow[300],
      ),
      // backgroundColor: Colors.yellow[200],
      appBar: AppBar(

        elevation: 0,
        backgroundColor: Colors.yellow[100],
        // toolbarHeight: 25,
        title: Text("N O T E"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Obx(() => GridView.count(
              // primary: false,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              children: controller.noteList
                  .map((e) => NoteWidget(
                                  note: e,
                                ))
                  .toList(),
            ),),
          )
        ],
      ),
    );
  }
}
