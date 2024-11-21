import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Controller/controller.dart';
import '../Widgets/button.dart';
import '../Widgets/textformfield.dart';

class NoteDetails extends StatelessWidget {
  NoteDetails({super.key});

  notdetailscontroller controller = Get.put(notdetailscontroller());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
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
                      controller: controller.titel,
                      enablebordercolor: Colors.yellow[100],
                      desablebordercolor: Colors.yellow[100],
                      hinttext: "Enter titel",
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CustomTextformfield(
                      ontap: () {},
                      controller: controller.subtitel,
                      enablebordercolor: Colors.yellow[100],
                      desablebordercolor: Colors.yellow[100],
                      hinttext: "Enter subtitel",
                    ),
                  ],
                ),


              SizedBox(height: 500,),

              CustomButtom(ontap: (){
                controller.postNote();
               // controller.getNote();
                Get.back();
              },backgroundcolor: Colors.yellow[400], btncolor: Colors.black,btntext: "SAVE",),
            ],
          ),
        ),
      ),
    );
  }
}
