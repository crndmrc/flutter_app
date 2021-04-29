import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
class  Salatalar extends StatefulWidget{
  Salatalar ({Key key, this.title}) : super(key: key);
  final String title;
  @override
  SalatalarPage createState()=>  SalatalarPage();
}
class  SalatalarPage extends State< Salatalar >{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:ListView(
        padding: EdgeInsets.only(left: 20.0,right: 20.0),
        children: <Widget>[
          CarouselSlider(
            items: [
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage("images/salatalar/russiansalad.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage("images/salatalar/chickensalad.gif"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage("images/salatalar/salad.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
            options: CarouselOptions(
              height: 180.0,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              viewportFraction: 0.8,
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 15.0),
            width: MediaQuery.of(context).size.width - 30.0,
            height: MediaQuery.of(context).size.height - 50.0,
            child: GridView.count(crossAxisCount: 2,
              primary: false,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 15.0,
              childAspectRatio: 0.8,
              children: <Widget>[
                Padding(padding: EdgeInsets.only(top:15.0,bottom:5.0,left:5.0,right:5.0),
                  child: InkWell(
                    onTap: (){
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 3.0,
                            blurRadius: 5.0,
                          ),
                        ],
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Padding(padding: EdgeInsets.all(5.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(Icons.favorite,color:Color(0xFFEF7532)),
                              ],
                            ),
                          ),
                          Container(
                            height:75.0,
                            width: 75.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image:  AssetImage('images/salatalar/chickensalad.gif'),
                                  fit:BoxFit.contain,
                                )
                            ),
                          ),
                          SizedBox(height: 7.0),
                          Text(
                            'Akdeniz Salata',
                            style: TextStyle(
                              color: Color(0xFF575E67),
                              fontFamily: 'Varela',
                              fontSize: 14.0,
                            ),),
                          Padding(padding: EdgeInsets.all(8.0),
                            child: Container(
                              color:Color(0xFFEBEBEB),
                              height: 1.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top:15.0,bottom:5.0,left:5.0,right:5.0),
                  child: InkWell(
                    onTap: (){
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 3.0,
                            blurRadius: 5.0,
                          ),
                        ],
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Padding(padding: EdgeInsets.all(5.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(Icons.favorite,color:Color(0xFFEF7532)),
                              ],
                            ),
                          ),
                          Container(
                            height:75.0,
                            width: 75.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image:  AssetImage('images/salatalar/salad.jpg'),
                                  fit:BoxFit.contain,
                                )
                            ),
                          ),
                          SizedBox(height: 7.0),
                          Text(
                            'Tavuklu Salata',
                            style: TextStyle(
                              color: Color(0xFF575E67),
                              fontFamily: 'Varela',
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                            ),),
                          Padding(padding: EdgeInsets.all(8.0),
                            child: Container(
                              color:Color(0xFFEBEBEB),
                              height: 1.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top:15.0,bottom:5.0,left:5.0,right:5.0),
                  child: InkWell(
                    onTap: (){
                    },

                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 3.0,
                            blurRadius: 5.0,
                          ),
                        ],
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Padding(padding: EdgeInsets.all(5.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(Icons.favorite_border,color: Color(0xFFEF7532))
                              ],
                            ),
                          ),
                          Container(
                            height:75.0,
                            width: 75.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image:  AssetImage('images/salatalar/russiansalad.jpg'),
                                  fit:BoxFit.contain,
                                )
                            ),
                          ),
                          SizedBox(height: 7.0),
                          Text(
                            'Rus Salatası',
                            style: TextStyle(
                              color: Color(0xFF575E67),
                              fontFamily: 'Varela',
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                            ),),
                          Padding(padding: EdgeInsets.all(8.0),
                            child: Container(
                              color:Color(0xFFEBEBEB),
                              height: 1.0,
                            ),
                          ),
                        ],
                      ),
                    ),
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