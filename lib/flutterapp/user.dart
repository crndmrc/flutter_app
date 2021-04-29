import 'package:flutter/material.dart';
import 'package:flutter_app/homepages/drawer/account.dart';
class User extends StatefulWidget{
  @override
  Userpage createState()=> Userpage();
}
class Userpage extends State<User>{
  String ad='';
  String soyad='';
  String telefon='';
  String email='';
  String sifre='';
  var snackBar = SnackBar(
    content: Text("Oturum kapatıldı"),
    action: SnackBarAction(
      label: 'Kapat',
      onPressed: (){
        print("Kapatıldı");
      },
    ),
  );
  @override
  Widget build(BuildContext context){
    var data=[];
    data=ModalRoute.of(context).settings.arguments;
    ad=data[0];
    soyad=data[1];
    telefon=data[2];
    email=data[3];
    sifre=data[4];
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.white,
        elevation:0.0,
        centerTitle: true,
        title:Text("BulmamLazım.COM",
          style:TextStyle(fontFamily: 'Varela',fontSize: 20.0,color:Color(0xFF545068)),
        ),
        leading: IconButton(
          icon:Icon(Icons.arrow_back,color:Color(0xFF545D68)),
          onPressed: (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context)=>Account()));
          },
        ),
        iconTheme: IconThemeData(color: Color(0xFF545068)),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.edit),color:Color(0xFF545068), onPressed:(){})
        ],
      ),
      body:ListView(
        padding: EdgeInsets.only(left: 20.0),
      children: <Widget>[
        Text('Kullanıcı Bilgileri',
          style: TextStyle(
            fontFamily:'Varela',
            fontSize: 42.0,
            fontWeight: FontWeight.bold,
          ),),
        Text("Ad:"+ad,
          style: TextStyle(
            fontFamily:'Varela',
            fontSize: 21.0),),
        Text("Soyad:"+soyad,
          style: TextStyle(
            fontFamily:'Varela',
            fontSize: 21.0,),),
        Text("Email:"+email,
          style: TextStyle(
            fontFamily:'Varela',
            fontSize: 21.0,
        ),),
        Text("Telefon:"+telefon,
          style: TextStyle(
            fontFamily:'Varela',
            fontSize: 21.0,
        ),),
        Text("Şifre:"+sifre,
          style: TextStyle(
            fontFamily:'Varela',
            fontSize: 21.0,
          ),),
      ],
      ),
    );
  }
}