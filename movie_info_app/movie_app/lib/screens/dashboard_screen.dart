import 'package:flutter/material.dart';
import '../widget/horizontal_list.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Movie App"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Padding(padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 7),
          child: Row(
            
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Recommended", 
                style: TextStyle(
                  fontSize: 18, 
                  fontWeight: FontWeight.bold
                )
              ),
              FlatButton(
                onPressed: () {}, 
                child: Text("View All"),
              )
            ],
          ),
          ),
          
          Container(
            
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                HorizontalList(),
                HorizontalList(),
                HorizontalList(),                                  
              ],
            ),
          ),
        ],
      ),
    );
  }
}