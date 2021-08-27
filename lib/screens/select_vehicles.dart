import 'package:flutter/material.dart';

class vehicles extends StatelessWidget {
  const vehicles({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> vehicles = ["MDF3919", "BNT4314", "KDQ8268", "BJF7655", "MDE3919", "NCU5228", "NDL5919", "SS3919X", "NDP3919", "Malaysia6728", " "];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF144B7B),
        automaticallyImplyLeading: false,
        title: Center(
          child: Text("Select Vehicle"),
        ),
        actions: [
          Icon(Icons.close_rounded),
        ],
      ),
      body: Stack(
        children: [
          ListView.builder(
            itemCount: 11,
            itemBuilder: (BuildContext context, int index){
                return Card(   
                  child: ListTile(
                    title: Text(vehicles[index])
                  ),
                );
            },
          ),
          Positioned(
            bottom: 0,
            child: ElevatedButton(            
              onPressed: (){},
              child: Text("CONFIRM", style: TextStyle(fontSize: 18.0),),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(MediaQuery.of(context).size.width, 45.0),
                  primary: Color(0xFF144B7B),
                  
                ),
              ),
          ),
        ],
      )      
    );
  }
}