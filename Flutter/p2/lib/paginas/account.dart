import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color.fromARGB(169, 153, 191, 223)
      ),
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: 25,
          vertical: 30
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>
          [
            SizedBox(
              child: Image.asset
              (
                'assets/images/integrantes.png',
                width: 300
              ),
            ),
            Text(
              'Integrantes', 
              style: TextStyle
              (
                color: Color.fromARGB(232, 14, 61, 100),
                fontSize: 20,
                fontWeight: FontWeight.w700
              ),
            ),
            SizedBox
            (
              height: 50,
            ),
            Text(
              'Edwin Laureano Paz Juarez', 
              style: TextStyle
              (
                color: Color.fromARGB(232, 14, 61, 100),
                fontSize: 20,
                fontWeight: FontWeight.w700
              ),
            ),
            SizedBox
            (
              height: 10,
            ),
            Text(
              'Carnet: 25-1163-2016', 
              style: TextStyle
              (
                color: Color.fromARGB(232, 14, 61, 100),
                fontSize: 20,
                fontWeight: FontWeight.w700
              ),
            ),
            SizedBox
            (
              height: 50,
            ),
            Text(
              'Esmeralda Elizabeth Rivas Majano', 
              style: TextStyle
              (
                color: Color.fromARGB(232, 14, 61, 100),
                fontSize: 20,
                fontWeight: FontWeight.w700
              ),
            ),
            SizedBox
            (
              height: 10,
            ),
            Text(
              'Carnet: 25-4820-2018', 
              style: TextStyle
              (
                color: Color.fromARGB(232, 14, 61, 100),
                fontSize: 20,
                fontWeight: FontWeight.w700
              ),
            )
          ],
        ),
      ),
    );
  }
}
