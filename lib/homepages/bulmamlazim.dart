import 'package:flutter/material.dart';
import 'package:flutter_app/homepages/home_page.dart';

import 'bottomnavigatorbar/NeYesem.dart';
import 'bottomnavigatorbar/add.dart';
import 'bottomnavigatorbar/anasayfa.dart';
import 'bottomnavigatorbar/kategoripage.dart';
import 'bottomnavigatorbar/tumtarifler.dart';
import 'drawer/info.dart';
class BulmamLazim extends StatefulWidget{
Bulmamlazimpage createState()=> Bulmamlazimpage();
}
class Bulmamlazimpage extends State<BulmamLazim>{
int currentTab = 0;
Widget currentScreens = Anasayfa();
final PageStorageBucket bucket = PageStorageBucket();
bool isSwitched = true;
ThemeData _lightTheme = ThemeData(
    accentColor: Colors.pink,
    brightness: Brightness.light,
    primaryColor: Colors.orange
);
ThemeData _darkTheme =ThemeData(
    accentColor: Colors.red,
    brightness: Brightness.dark,
    primaryColor: Colors.amber
);
@override
Widget build(BuildContext context){
  return MaterialApp(
      theme: isSwitched ? _lightTheme : _darkTheme,
      home:Scaffold(
      appBar:AppBar(
      backgroundColor: Colors.white,
      elevation:0.0,
      centerTitle: true,
      title:Text("BulmamLazım.COM",
        style:TextStyle(fontFamily: 'Varela',fontSize: 20.0,color:Color(0xFF545068)),
      ),
      iconTheme: IconThemeData(color: Color(0xFF545068)),
      actions: <Widget>[
        Switch(
          value: isSwitched,
          onChanged: (state) {
            setState(() {
              isSwitched = state;
              print(isSwitched);
            });
          },
          activeTrackColor: Colors.deepOrangeAccent,
          activeColor: Colors.orangeAccent,
        ),
      ],
    ),
      body:PageStorage(
      child: currentScreens,
        bucket:bucket,
    ),
      drawer:Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child:Image.asset("images/bulmamlazim.jpg"),
            decoration: BoxDecoration(
              color: Colors.white,
            ),
          ),
          ListTile(
            leading: IconButton(
              icon:Icon(Icons.info,color:Color(0xFF545D68)),
              onPressed: (){
              },
            ),
            title: Text('Hakkımızda'),
            onTap: () {
              Navigator.push(context,
                MaterialPageRoute(builder: (context)=>Info()),);
            },
          ),
          ListTile(
            leading: IconButton(
              icon:Icon(Icons.home,color:Color(0xFF545D68)),
              onPressed: (){

              },
            ),
            title: Text('Oturumu Kapat'),
            onTap: () {
              Navigator.push(context,
                MaterialPageRoute(builder: (context)=>HomePage()),);
            },
          ),
        ],
      ),
    ),
    bottomNavigationBar: BottomAppBar(
      shape:CircularNotchedRectangle(),
      child:Container(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                MaterialButton(
                  minWidth: 40,
                  onPressed: (){
                    setState(() {
                      currentScreens=Anasayfa();
                      currentTab=0;
                    },);
                  },
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.home,color:currentTab==0?Colors.black: Colors.grey),
                      Text('Anasayfa',style: TextStyle(color:currentTab==0?Colors.black: Colors.grey),),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                MaterialButton(
                  minWidth: 40,
                  onPressed: (){
                    setState(() {
                      currentScreens=TariflerPage();
                      currentTab=1;
                    },);
                  },
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.receipt,color:currentTab==1?Colors.black: Colors.grey),
                      Text('Tarifler',style: TextStyle(color:currentTab==1?Colors.black: Colors.grey),),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                MaterialButton(
                  minWidth: 40,
                  onPressed: (){
                    setState(() {
                      currentScreens=KategoriPage();
                      currentTab=2;
                    },);
                  },
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.fastfood,color:currentTab==2?Colors.black: Colors.grey),
                      Text('Kategori',style: TextStyle(color:currentTab==2?Colors.black: Colors.grey),),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                MaterialButton(
                  minWidth: 40,
                  onPressed: (){
                    setState(() {
                      currentScreens=Add();
                      currentTab=3;
                    },);
                  },
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.add,color:currentTab==3?Colors.black: Colors.grey),
                      Text('Ekle',style: TextStyle(color:currentTab==3?Colors.black: Colors.grey),),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                MaterialButton(
                  minWidth: 40,
                  onPressed: (){
                    setState(() {
                      currentScreens=NeYesemPage();
                      currentTab=4;
                    },);
                  },
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.help,color:currentTab==4?Colors.black: Colors.grey),
                      Text('NeYesem',style: TextStyle(color:currentTab==4?Colors.black: Colors.grey),),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  ),);
}
}