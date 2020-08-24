import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_widget.dart';

import 'package:stripe_app/models/tarjeta_credito.dart';
import 'package:stripe_app/widgets/total_pay_button.dart';


class TarjetaPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final tarjeta = TarjetaCredito(
      cardNumberHidden: '4242',
      cardNumber: '4242424242424242',
      brand: 'visa',
      cvv: '213',
      expiracyDate: '01/25',
      cardHolderName: 'Fernando Herrera'
    );


    return Scaffold(
      appBar: AppBar(
        title: Text('Pagar'),
      ),
      body: Stack(
        children: [

          Container(),

          Hero(
            tag: tarjeta.cardNumber,
            child: CreditCardWidget(
              cardNumber: tarjeta.cardNumberHidden,
              expiryDate: tarjeta.expiracyDate,
              cardHolderName: tarjeta.cardHolderName,
              cvvCode: tarjeta.cvv,
              showBackView: false,
            ),
          ),


          Positioned(
            bottom: 0,
            child: TotalPayButton()
          )
        ],
      )
   );
  }
}