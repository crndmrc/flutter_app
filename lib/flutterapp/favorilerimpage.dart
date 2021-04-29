import 'package:flutter/material.dart';
import 'package:flutter_app/homepages/bulmamlazim.dart';
class Favorilerimpage extends StatefulWidget{
  String txtYemekAdi;
  String txtSuresi;
  String txtKalorisi;
  String txtTarifi;
  Favorilerimpage({this.txtYemekAdi, this.txtSuresi,this.txtKalorisi,this.txtTarifi});
  @override
  FavorilerimState createState()=> FavorilerimState();
}
class FavorilerimState extends State<Favorilerimpage>{
  String yemekadi='';
  String suresi='';
  String kalorisi='';
  String malzemesi='';
  String maliyeti='';
  String tarifi='';
  @override
  Widget build(BuildContext context){
    var data=[];
    data=ModalRoute.of(context).settings.arguments;
    yemekadi=data[0];
    suresi=data[1];
    kalorisi=data[2];
    malzemesi=data[3];
    maliyeti=data[4];
    tarifi=data[5];
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
                MaterialPageRoute(builder: (context)=>BulmamLazim()));
          },
        ),
        iconTheme: IconThemeData(color: Color(0xFF545068)),
      ),
        body:ListView(
          padding: EdgeInsets.only(left: 20.0,right: 20.0),
        children: <Widget>[
          Text('Tariflerim',
            style: TextStyle(
              fontFamily:'Varela',
              fontSize: 42.0,
              fontWeight: FontWeight.bold,
            ),),
          SizedBox(height: 15.0),
          Text(""+yemekadi,
            style: TextStyle(
                fontFamily:'Varela',
                fontSize: 21.0),),
          Text("Yapılış Süresi:"+suresi,
            style: TextStyle(
              fontFamily:'Varela',
              fontSize: 21.0,),),
          Text("Kalorisi:"+kalorisi,
            style: TextStyle(
              fontFamily:'Varela',
              fontSize: 21.0,
            ),),
            Text("TMalzemeler:"+malzemesi,
            style: TextStyle(
              fontFamily:'Varela',
              fontSize: 21.0,
            ),),
            Text("Malzemesi:"+malzemesi,
            style: TextStyle(
              fontFamily:'Varela',
              fontSize: 21.0,
            ),),
            Text("Tarifi:"+tarifi,
            style: TextStyle(
              fontFamily:'Varela',
              fontSize: 21.0,
            ),),
          SizedBox(height:24),
        ],
        ),
    );
  }
}