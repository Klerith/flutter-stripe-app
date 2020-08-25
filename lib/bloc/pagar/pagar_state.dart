part of 'pagar_bloc.dart';

@immutable
class PagarState{

  final double montoPagar;
  final String moneda;
  final bool tarjetaActiva;
  final TarjetaCredito tarjeta;

  String get montoPagarString => '${ (this.montoPagar * 100).floor() }'; // 250.555 = 25055

  PagarState({
    this.montoPagar = 375.55,
    this.moneda = 'USD',
    this.tarjetaActiva = false,
    this.tarjeta
  });

  PagarState copyWith({
    double montoPagar,
    String moneda,
    bool tarjetaActiva,
    TarjetaCredito tarjeta,
  }) => PagarState(
    montoPagar: montoPagar ?? this.montoPagar,
    moneda    : moneda ?? this.moneda,
    tarjeta   : tarjeta ?? this.tarjeta,
    tarjetaActiva: tarjetaActiva ?? this.tarjetaActiva,
  );


}
