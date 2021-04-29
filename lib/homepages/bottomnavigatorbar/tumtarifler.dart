import 'package:flutter/material.dart';
class TariflerPage extends StatefulWidget{
  TariflerState createState()=> TariflerState();
}
class TariflerState extends State<TariflerPage>with SingleTickerProviderStateMixin{
  TextEditingController editingController = TextEditingController();
  final duplicateItems=["Fondan Kek","Haşhaşlı Revani","Cannoli","Baklava","Cookie","Islak Kurabiye","Katmer","Cheesecake","Browni"];
  var items = List<String>();
  @override
  void initState(){
    items.addAll(duplicateItems);
    super.initState();
  }
  void filterSearchResults(String query) {
    List<String> dummySearchList = List<String>();
    dummySearchList.addAll(duplicateItems);
    if(query.isNotEmpty) {
      List<String> dummyListData = List<String>();
      dummySearchList.forEach((item) {
        if(item.contains(query)) {
          dummyListData.add(item);
        }
      });
      setState(() {
        items.clear();
        items.addAll(dummyListData);
      });
      return;
    } else {
      setState(() {
        items.clear();
        items.addAll(duplicateItems);
      });
    }
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: ListView(
        children: [
          Text('Tüm Tarifler',
            style: TextStyle(
              fontFamily:'Varela',
              fontSize: 42.0,
              fontWeight: FontWeight.bold,
            ),),
          SizedBox(height: 15.0),
          TextField(
            onChanged: (value) {
              filterSearchResults(value);
            },
            controller: editingController,
            decoration: InputDecoration(
                labelText: "Tarif ara",
                hintText: "Tarifi yaz",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)))),
          ),
          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: items.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('${items[index]}'),
                );
              },
            ),
          ),

        ],
      ),
    );
  }
}

