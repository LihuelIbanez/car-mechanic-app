part of 'cars_bloc.dart';

@immutable
abstract class CarsState {
  
  final bool existCar;
  final Cars? car;

  const CarsState({
    this.existCar = false, 
    this.car
  });
}

class CarsInitialState extends CarsState {
  const CarsInitialState(): super( existCar: false, car: null );
}

class CarsSetState extends CarsState {
  final Cars newCar;
  const CarsSetState(this.newCar)
    : super(existCar: true, car: newCar );
}
