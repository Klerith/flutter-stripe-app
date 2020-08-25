import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stripe_app/bloc/pagar/pagar_bloc.dart';

import 'package:stripe_app/pages/home_page.dart';
import 'package:stripe_app/pages/pago_completo_page.dart';

import 'package:stripe_app/services/stripe_service.dart';

 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    // Inicializamos StripeService
    new StripeService()
      ..init();
    


    return MultiBlocProvider(
      providers: [
        BlocProvider(create: ( _ ) => PagarBloc() )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'StripeApp',
        initialRoute: 'home',
        routes: {
          'home': ( _ ) => HomePage(),
          'pago_completo': ( _ ) => PagoCompletoPage(),
        },
        theme: ThemeData.light().copyWith(
          primaryColor: Color(0xff284879),
          scaffoldBackgroundColor: Color(0xff21232A)
        ),
      ),
    );
  }
}