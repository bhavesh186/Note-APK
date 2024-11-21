import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CostomTabBar extends StatelessWidget {
   CostomTabBar({super.key});

  @override
  RxInt currentTabIndex = 1.obs;
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      
        body:  DefaultTabController(
          length: 6,
          child: Scaffold(
            appBar: AppBar(
             // toolbarHeight: 0,
              bottom: TabBar(
               labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),

                isScrollable: true,
                tabs: [
                  Tab(text: "data",),
                  Tab(text: "data1",),
                  Tab(text: "data2",),
                  Tab(text: "data3",),
                  Tab(text: "data4",),
                  Tab(text: "data5",),
                ],
                onTap: (index) {

                  currentTabIndex = index.obs;
                },
              ),
            ),
            body: TabBarView(
              children: [
                 currentTabIndex == 0 ? Text("index 0") : Container(color: Colors.red,),
                currentTabIndex == 1 ? Text("index 1") : Container(color: Colors.blue,),
                currentTabIndex == 2 ? Text("index 2") : Container(color: Colors.yellow,),
                currentTabIndex == 3 ? Text("index 3") : Container(color: Colors.grey,),
                currentTabIndex == 4 ? Text("index 4") : Container(color: Colors.green,),
                currentTabIndex == 5 ? Text("index 5") : Container(color: Colors.black,),
              ],
            ),
          ),
        ),
      ),
    );
  }
  }

