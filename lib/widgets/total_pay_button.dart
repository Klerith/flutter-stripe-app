import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TotalPayButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final width = MediaQuery.of(context).size.width;

    return Container(
      width: width,
      height: 100,
      padding: EdgeInsets.symmetric( horizontal: 15 ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Total', style: TextStyle( fontSize: 20, fontWeight: FontWeight.bold ) ),
              Text('250.55 USD', style: TextStyle( fontSize: 20 ))
            ],
          ),

          _BtnPay()


        ],
      ),
    );
  }
}



class _BtnPay extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return true 
    ? buildBotonTarjeta(context)
    : buildAppleAndGooglePay( context );
  }


  Widget buildBotonTarjeta(BuildContext context) {
    return MaterialButton(
      height: 45,
      minWidth: 170,
      shape: StadiumBorder(),
      elevation: 0,
      color: Colors.black,
      child: Row(
        children: [
          Icon(  FontAwesomeIcons.solidCreditCard, color: Colors.white ),
          Text('  Pagar', style: TextStyle( color: Colors.white, fontSize: 22 ) ),
        ],
      ),
      onPressed: (){}
    );
  }

  
  Widget buildAppleAndGooglePay(BuildContext context) {
    return MaterialButton(
      height: 45,
      minWidth: 150,
      shape: StadiumBorder(),
      elevation: 0,
      color: Colors.black,
      child: Row(
        children: [
          Icon( 
            Platform.isAndroid
            ? FontAwesomeIcons.google
            : FontAwesomeIcons.apple, 
            color: Colors.white 
          ),
          Text(' Pay', style: TextStyle( color: Colors.white, fontSize: 22 ) ),
        ],
      ),
      onPressed: (){}
    );
  }
}