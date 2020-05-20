import 'package:flutter/material.dart';

class StatusCircleMedecin extends StatelessWidget {
  final Color colorCircle;
  StatusCircleMedecin({
    Key key,
    @required this.colorCircle
  }) : super( key: key );
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 6.0,right: 6.0),
      child: Container(
        height: 10.0,
        width: 10.0,
        decoration: BoxDecoration(
          color: colorCircle, 
          borderRadius: BorderRadius.circular(100.0)
        ),
      ),
    );
  }
}
