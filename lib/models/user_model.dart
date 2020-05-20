import 'package:flutter/material.dart';

class User {
  final int id;
  final String name;
  final String imageUrl;
  final String profession;
  final String status;

  User({
    this.id,
    this.name,
    this.imageUrl,
    this.profession,
    this.status
  });

  Color getTheGoodStatusMedecins() {
    if(status == "disponible"){
      return Colors.green;
    }else if(status == "absent"){
      return Colors.orange;
    }else if( status == "indisponible"){
      return Colors.red;
    }else{
      return Colors.purple[900];
    }
  }

}