import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';
class NeYesemPage extends StatefulWidget{
  NeYesemState createState()=> NeYesemState();
}
class NeYesemState extends State<NeYesemPage>with SingleTickerProviderStateMixin{
  int selected = 0;
  int rotation_count=10;
  List<int>point=[0,0,0,0,0,0,0,0];
  final items = <String>[
    'Kadayıf Dolma',
    'Cheesecake',
    'Browni',
    'Cookie',
    'Islak Kurabiye',
    'Paris Prest',
    'Baklava',
    'Katmer',
  ];
  @override
  void initState() {
    super.initState();
    point=[0,0,0,0,0,0,0,0];
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: ListView(
        children: [
          Text('Senin yerine biz seçelim ister misin?',
            style: TextStyle(
              fontFamily:'Varela',
              fontSize: 42.0,
              fontWeight: FontWeight.bold,
            ),),
          SizedBox(height: 10,),
          GestureDetector(
            onTap: () {
              setState(() {
                selected = Random().nextInt(items.length);
                point[selected]=point[selected]+1;
                print("Selected value1 $selected ${point[selected]}");
              });
            },
            child: Column(
              children: [
                Container(
                  height: 300,
                  child: Column(
                    children: [
                      Expanded(
                        child: FortuneWheel(
                          styleStrategy: AlternatingStyleStrategy( ),
                          rotationCount: rotation_count,
                          onFling: () => {
                            setState(() {
                              selected = Random().nextInt(items.length);
                              point[selected]=point[selected]+1;
                              print("Selected value1 $selected ${point[selected]}");
                            })
                          },
                          selected: selected,
                          items: [
                            for (var it in items) FortuneItem(child: Text(it)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

