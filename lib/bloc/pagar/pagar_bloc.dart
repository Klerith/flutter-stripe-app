import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'package:stripe_app/models/tarjeta_credito.dart';

part 'pagar_event.dart';
part 'pagar_state.dart';

class PagarBloc extends Bloc<PagarEvent, PagarState> {
  PagarBloc() : super(PagarState());

  @override
  Stream<PagarState> mapEventToState( PagarEvent event ) async* {
    
    if ( event is OnSeleccionarTarjeta ) {
      yield state.copyWith( tarjetaActiva: true, tarjeta: event.tarjeta );
    } else if ( event is OnDesactivarTarjeta ) {
      yield state.copyWith( tarjetaActiva: false );
    }


  }
}
