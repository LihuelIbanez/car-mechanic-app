import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'package:carsapp/models/services.dart';

part 'services_event.dart';
part 'services_state.dart';

class ServicesBloc extends Bloc<ServicesEvent, ServicesState> {
  ServicesBloc(ServicesState initialState) : super(initialState);
}
