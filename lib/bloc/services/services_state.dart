part of 'services_bloc.dart';

@immutable
abstract class ServicesState {
  
  final bool existServices;
  final Services? services;

  const ServicesState({
    this.existServices = false, 
    this.services
  });
}

class ServicesInitialState extends ServicesState {
  const ServicesInitialState(): super( existServices: false, services: null );
}

class ServicesSetState extends ServicesState {
  final Services newServices;
  const ServicesSetState(this.newServices)
    : super(existServices: true, services: newServices );
}