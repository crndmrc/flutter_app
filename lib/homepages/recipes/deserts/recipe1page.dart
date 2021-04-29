import 'package:flutter/material.dart';
class Recipe1page extends StatefulWidget{
  Recipe1State createState()=> Recipe1State();
}
class Recipe1State extends State<Recipe1page>{
  int currentTab = 0;
  Widget currentScreens = Recipe1page();
  var recipe1=[
    {
      'Adi':'Fondan Kek',
      'Malzemeler':['200 Gram Doğranmış Tereyağı,220 Gram Doğranmış Bitter Çikolata, 1,5 Su Bardağı Toz Şeker, 5 Adet Oda Sıcaklığında Yumurta,2 Çorba Kaşığı Un'],
      'Yapilisi':'Tereyağını benmari düzeneğine alın. çikolataları ekleyin. tamamen erimelerini sağlayın.Ocaktan alıp şekeri ekleyin ve erimesini sağlayın. Yumurtaların her birini teker teker ekleyin. Unu ekleyip sadece karışana kadar karıştırın.Pişirme kağıdı serili 22 cm\'lik kelepçeli kek kalıbına harcı sıyırın. Önceden ısıtılmış 200 derecelik fırında 25 dakika kadar pişirin. Kürdan batırdığınızda bir miktar nemli olmalı. 15 dakika dinlendikten sonra dilimleyerek servis edebilirsiniz.'
    }
  ];
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.white,
        elevation:0.0,
        centerTitle: true,
        leading: IconButton(
          icon:Icon(Icons.arrow_back,color:Color(0xFF545D68)),
          onPressed: (){
            Navigator.of(context).pop();
          },
        ),
        title:Text("BulmamLazım.COM",
          style:TextStyle(fontFamily: 'Varela',fontSize: 20.0,color:Color(0xFF545068)),
        ),
      ),
      body:ListView(
        children: <Widget>[
          SizedBox(height: 15.0),
          Expanded(child:InkWell(
            child: Image.asset("images/tatlilar/recipe1.png"),
          ),),
          Text(recipe1.toString(),textAlign: TextAlign.center,style: TextStyle(fontSize: 16, ),),
        ],
      ),
    );
  }
}