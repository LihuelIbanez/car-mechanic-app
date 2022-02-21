import 'package:bloc/bloc.dart';
import 'package:carsapp/models/cars.dart';
import 'package:meta/meta.dart';

part 'cars_event.dart';
part 'cars_state.dart';

class CarsBloc extends Bloc<CarsEvent, CarsState> {
  CarsBloc(CarsState initialState) : super(initialState);

}
