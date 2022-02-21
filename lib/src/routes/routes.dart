
import 'package:flutter/material.dart';

import 'package:carsapp/pages/pages.dart';
import 'package:carsapp/src/widgets/widgets.dart';



Map<String, WidgetBuilder> getApplicationRoutes(){
return <String, WidgetBuilder>{
  
    '/': (BuildContext context) => const Homepage(),
    'SplashScreen': (BuildContext context) => const SplashScreen(),
    
    'cars'        : (BuildContext context) => const Cars(),
    'clients'     : (BuildContext context) => const Clients(),
    'clients list': (BuildContext context) => const ClientsList(),
    'clients new' : (BuildContext context) => const ClientNew(),
    'progress'    : (BuildContext context) => const Progress(),
    'payments'    : (BuildContext context) => const Payments(),
    'services'    : (BuildContext context) => const Services(),
};
}