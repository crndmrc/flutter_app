import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/flutterapp/favorilerimpage.dart';

class Add extends StatefulWidget{
  Addpage createState()=> Addpage();
}
class Addpage extends State<Add>{
  String yemekadi='';
  String suresi='';
  String kalorisi='';
  String malzemesi='';
  String maliyeti='';
  String tarifi='';
  void kontrol(){
    var data=[];
    data.add(yemekadi);
    data.add(suresi);
    data.add(kalorisi);
    data.add(malzemesi);
    data.add(maliyeti);
    data.add(tarifi);
    Navigator.push(context,MaterialPageRoute(builder: (context)=>Favorilerimpage(),
    settings: RouteSettings(arguments: data,),
    ));
  }
  @override
  Widget build(BuildContext context){
        void _yemekadiKaydet(String text){
      setState(() {
        yemekadi=text;
      });
    }
        void _suresiKaydet(String text){
      setState(() {
        suresi=text;
      });
    }
        void _kalorisiKaydet(String text){
      setState(() {
        kalorisi=text;
      });
    }
        void _malzemesiKaydet(String text){
      setState(() {
        malzemesi=text;
      });
    }
        void _maliyetiKaydet(String text){
      setState(() {
        maliyeti=text;
      });
    }
            void _tarifiKaydet(String text){
      setState(() {
        tarifi=text;
      });
    }
    return Scaffold(
      body:ListView(
        padding: EdgeInsets.only(left: 20.0, right: 20.0),
      children: <Widget>[
        Padding (
          padding: const EdgeInsets.all(8.0),
          child:TextFormField(
            decoration: const InputDecoration(
              hintText: 'Yemek adı giriniz:',
            ),
                onChanged: (text){
                _yemekadiKaydet(text);
                },
            keyboardType: TextInputType.text,
            inputFormatters: [
              FilteringTextInputFormatter.singleLineFormatter
            ],
          ),
        ),
        Padding (
          padding: const EdgeInsets.all(8.0),
          child:TextFormField(
            decoration: const InputDecoration(
              hintText: 'Yapılış süresi giriniz:',
            ),
                onChanged: (text){
                _suresiKaydet(text);
                },
            keyboardType: TextInputType.number,
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly
            ],
          ),
        ),
        Padding (
          padding: const EdgeInsets.all(8.0),
          child:TextFormField(
            decoration: const InputDecoration(
              hintText: 'Kalorisini giriniz:',
            ),
                onChanged: (text){
                _kalorisiKaydet(text);
                },
            keyboardType: TextInputType.number,
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly
            ],
          ),
        ),
        Padding (
          padding: const EdgeInsets.all(8.0),
          child:TextFormField(
            decoration: const InputDecoration(
              hintText: 'Malzemeleri giriniz:',
            ),
                onChanged: (text){
                _malzemesiKaydet(text);
                },
            keyboardType: TextInputType.text,
            inputFormatters: [
              FilteringTextInputFormatter.singleLineFormatter
            ],
          ),
        ),
        Padding (
          padding: const EdgeInsets.all(8.0),
          child:TextFormField(
            decoration: const InputDecoration(
              hintText: 'Maliyetini giriniz:',
            ),
                onChanged: (text){
                _maliyetiKaydet(text);
                },
            keyboardType: TextInputType.number,
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly
            ],
          ),
        ),
        Card(
          color:Colors.white,
          child:Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
            maxLines: 8,
            decoration: InputDecoration.collapsed(hintText: "Yemek Tarifi giriniz:"),
                onChanged: (text){
                _tarifiKaydet(text);
                },
            ),
          ),
        ),
        ElevatedButton(child:
        Text("Ekle"),
          style: ElevatedButton.styleFrom(
            primary: Color(0xFFEF7532),
          ),
          onPressed: (){
            kontrol();
          }
        ),
      ],
      ),
    );
  }
}