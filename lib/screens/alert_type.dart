import 'package:flutter/material.dart';

class types extends StatelessWidget {
  const types({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> alerts = ["Driver Login", "Fuel Drop", "Geofence In", "Geofence Out", "Idling", "Ignition Off", "Ignition On", "Immobilizer", "Overspeed", "PTO", " "];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF144B7B),
        automaticallyImplyLeading: false,
        title: Center(
          child: Text("Select Alert Type"),
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
                    title: Text(alerts[index])
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