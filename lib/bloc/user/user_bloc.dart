import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'package:carsapp/models/user.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc(UserState initialState) : super(initialState);
  
}
