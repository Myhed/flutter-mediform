import 'package:flutter/material.dart';
import 'package:mediform/models/message.model.dart';
import 'package:mediform/widgets/category_selector.dart';
import 'package:mediform/widgets/medecin_favoris.dart';
import 'package:mediform/widgets/bullet_status_circle_medecin.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextStyle styleStatusText = TextStyle(
      color: Colors.blueGrey,
      fontSize: 16.0,
      letterSpacing: 1.2
  );
  
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          iconSize: 30.0,
          color: Colors.white,
          onPressed: (){},
        ),
        title: Text('Mediform', 
        style: TextStyle(
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
          )
        ),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            iconSize: 30.0,
            color: Colors.white,
            onPressed: (){},
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          CategorySelector(),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).accentColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0)
                )
              ),
              child: Column(
                children: <Widget>[
                  MedecinFavoris(),
                  Expanded(
                    child: Container(
                      height: 300.0,
                      decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0)
                      )
                     ),
                     child: ListView.builder(
                       itemCount: appointements.length,
                       itemBuilder: (BuildContext context, int index){
                         return Text(appointements[index].adresse);
                       },
                     ),
                    ),
                  ),
                ],
              )
            )
          )
        ],
      ),
    );
  }
}


//  Column(
//                        crossAxisAlignment: CrossAxisAlignment.stretch,
//                        children: <Widget>[
//                          Padding(
//                            padding: EdgeInsets.only(right: 20.0, top: 6.0, bottom: 20.0),
//                            child: Row(
//                              mainAxisAlignment: MainAxisAlignment.end,
//                              children: <Widget>[
//                                StatusCircleMedecin( colorCircle: Colors.orange ),
//                                Text('Absent',style: styleStatusText),
//                                StatusCircleMedecin( colorCircle: Colors.red ),
//                                Text('Indisponible', style: styleStatusText,),
//                                StatusCircleMedecin( colorCircle: Colors.green ),
//                                Text('Disponible', style: styleStatusText,),
//                              ],
//                            ),
//                          ),
//                          ListView.builder(
//                            itemCount: appointements.length,
//                            itemBuilder: (BuildContext context, int index) {
//                              return Text(appointements[index].adresse);
//                            },
//                          )
//                        ],
//                      ),