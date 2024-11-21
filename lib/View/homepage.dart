import 'package:flutter/material.dart';
import 'package:note_apk_experiance/View/Widgets/button.dart';
import 'Widgets/tabbar.dart';
import 'Widgets/textformfield.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomButtom(btncolor: Colors.white, btntext: "SignIN", ontap: (){}, backgroundcolor: Colors.green,),
            SizedBox(height: 20,),
            CustomTextformfield(ontap: (){},
              prefixicon: Icon(Icons.account_circle_sharp),
              desablebordercolor: Colors.black54,
              enablebordercolor: Colors.yellow,
               hinttext: "eneter your email",
               labletext: Text("Email"),
            ),
        
            CostomTabBar(),
          ],
        ),
      ),
    );
  }
}
