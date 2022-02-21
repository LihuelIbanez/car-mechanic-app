import 'package:carsapp/src/widgets/container.dart';
import 'package:flutter/material.dart';

class Progress extends StatelessWidget {

  const Progress({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustumContainer(
              color: Colors.black,
              
            ),
          ],
        ),),

    );
  }
} 