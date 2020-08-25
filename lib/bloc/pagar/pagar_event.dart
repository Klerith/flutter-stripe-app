part of 'pagar_bloc.dart';

@immutable
abstract class PagarEvent {}

class OnSeleccionarTarjeta extends PagarEvent {

  final TarjetaCredito tarjeta;
  OnSeleccionarTarjeta(this.tarjeta);
}

class OnDesactivarTarjeta extends PagarEvent {}


