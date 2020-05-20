import 'package:flutter/material.dart';
import 'package:mediform/models/message.model.dart';
import 'package:mediform/widgets/bullet_status_circle_medecin.dart';

class MedecinFavoris extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Vos Medecins',
                      style: TextStyle(
                          color: Colors.purple[300],
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.0)),
                  IconButton(
                    icon: Icon(Icons.more_horiz),
                    iconSize: 30.0,
                    color: Colors.purple[300],
                    onPressed: () {},
                  )
                ]),
          ),
          Container(
            height: 154.0,
            child: ListView.builder(
              padding: EdgeInsets.only(left: 10.0),
              scrollDirection: Axis.horizontal,
              itemCount: favoriteMedecins.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(bottom: 10.0),
                        child: Center(child: Text(favoriteMedecins[index].profession, style: TextStyle(color: Colors.purple[900], fontSize: 16.0, fontWeight: FontWeight.w600))),
                      ),
                      Stack(children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                          StatusCircleMedecin(colorCircle: favoriteMedecins[index].getTheGoodStatusMedecins()),
                          CircleAvatar(
                            radius: 35.0,
                            backgroundImage: AssetImage(favoriteMedecins[index].imageUrl),
                          ),

                        ],)
                      ]),
                      SizedBox(height: 6.0),
                      Text(favoriteMedecins[index].name, style: TextStyle(color: Colors.purple[300], fontSize: 16.0, fontWeight: FontWeight.w600),)
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
