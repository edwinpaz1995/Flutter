import 'package:flutter/material.dart';

class Plans extends StatelessWidget {
  const Plans({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(color: Color.fromARGB(169, 153, 191, 223)),
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              child: Image.asset('assets/images/credit.png', width: 280),
            ),
            Text(
              'Formulario tarjeta de crédito',
              style: TextStyle(
                  color: Color.fromARGB(232, 14, 61, 100),
                  fontSize: 20,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 50,
            ),
            buildTitular(),
            SizedBox(height: 20),
            buildTarjeta(),
            SizedBox(height: 20),
            buildFechaExp(),
            SizedBox(height: 20),
            buildCVC(),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: Text('Enviar'),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(232, 14, 61, 100)),
            )
          ],
        ),
      ),
    );
  }
}

Widget buildTitular() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color: Colors.black26, blurRadius: 6, offset: Offset(0, 2))
            ]),
        height: 45,
        child: TextFormField(
          keyboardType: TextInputType.text,
          style:
              TextStyle(color: Color(0xff244e72), fontWeight: FontWeight.bold),
          decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 11),
              prefixIcon: Icon(Icons.person, color: Color(0xff244e72)),
              hintText: 'Nombre del titular',
              hintStyle: TextStyle(
                  color: Color.fromARGB(134, 14, 61, 100),
                  fontWeight: FontWeight.bold)),
        ),
      ),
    ],
  );
}

Widget buildTarjeta() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color: Colors.black26, blurRadius: 6, offset: Offset(0, 2))
            ]),
        height: 45,
        child: TextFormField(
          keyboardType: TextInputType.number,
          style:
              TextStyle(color: Color(0xff244e72), fontWeight: FontWeight.bold),
          decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 11),
              prefixIcon: Icon(Icons.credit_card, color: Color(0xff244e72)),
              hintText: 'Tarjeta de crédito',
              hintStyle: TextStyle(
                  color: Color.fromARGB(134, 14, 61, 100),
                  fontWeight: FontWeight.bold)),
        ),
      ),
    ],
  );
}

Widget buildFechaExp() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color: Colors.black26, blurRadius: 6, offset: Offset(0, 2))
            ]),
        height: 45,
        child: TextFormField(
          keyboardType: TextInputType.number,
          style:
              TextStyle(color: Color(0xff244e72), fontWeight: FontWeight.bold),
          decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 11),
              prefixIcon: Icon(Icons.date_range, color: Color(0xff244e72)),
              hintText: 'Fecha de expiración',
              hintStyle: TextStyle(
                  color: Color.fromARGB(134, 14, 61, 100),
                  fontWeight: FontWeight.bold)),
        ),
      ),
    ],
  );
}

Widget buildCVC() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color: Colors.black26, blurRadius: 6, offset: Offset(0, 2))
            ]),
        height: 45,
        child: TextFormField(
          keyboardType: TextInputType.number,
          style:
              TextStyle(color: Color(0xff244e72), fontWeight: FontWeight.bold),
          decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 11),
              prefixIcon: Icon(Icons.password, color: Color(0xff244e72)),
              hintText: 'CVC',
              hintStyle: TextStyle(
                  color: Color.fromARGB(134, 14, 61, 100),
                  fontWeight: FontWeight.bold)),
        ),
      ),
    ],
  );
}
