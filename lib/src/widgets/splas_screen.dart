import 'dart:async';
import 'package:carsapp/src/utils/fonts.dart';
import 'package:carsapp/src/widgets/container.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  SplashScreenState createState() =>SplashScreenState();
}

class SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  var _visible = true;

  late AnimationController animationController;
  late Animation<double> animation;

  startTime() async {
    var _duration =const Duration(seconds: 3);  //SetUp duration here
    return  Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.popAndPushNamed(context, '/');
  }

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
        vsync: this, duration: const Duration(seconds: 2));
    animation =
    CurvedAnimation(parent: animationController, curve: Curves.easeOut);

    animation.addListener(() => setState(() {}));
    animationController.forward();

    setState(() {
      _visible = !_visible;
    });
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
    decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [Colors.black,Colors.black,Colors.black,Colors.black])),
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.min, 
              children: <Widget>[
                Padding(padding: const EdgeInsets.only(bottom: 30.0),child:
            Text('GO', style: styleSubtile1))
              ],),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CustumContainer(
                  radius: 20,
                  color: Colors.yellow,
                  height: animation.value * 250,
                  width: animation.value * 250,
                  child: Center(
                    child: Text('GO',
                    textScaleFactor: animation.value * 3,
                    style: styleTitulo1,),
                  )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}