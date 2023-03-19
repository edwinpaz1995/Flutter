import 'package:flutter/material.dart';

import '../json/enlatados.dart';
import '../json/groceries_all.dart';
import '../json/pastas.dart';
import '../json/recieps.dart';
import '../json/vegetal.dart';

class Groceries extends StatelessWidget {
  const Groceries({super.key});

  @override
  Widget build(BuildContext context) {
    String Categories = "";
    return Container(
      height: double.infinity,
      decoration: BoxDecoration(color: Color.fromARGB(176, 253, 200, 93)),
      child: ListView(
        children: [getVegetales(), getEnlatados(), getPastas()],
      ),
    );
  }

  Widget getVegetales() {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color.fromARGB(244, 253, 253, 253)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: 70,
                      height: 40,
                      child: Icon(Icons.apple),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      width: 100,
                      alignment: Alignment.topLeft,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Vegetales",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Color.fromARGB(255, 2, 4, 29),
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5, right: 5, left: 5),
                  child: Divider(
                      color: Color.fromARGB(255, 26, 25, 25).withOpacity(0.3)),
                ),
                Column(
                  children: List.generate(recieps_vegetales.length, (index) {
                    return Padding(
                      padding:
                          const EdgeInsets.only(left: 5, right: 5, top: 10),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color.fromARGB(244, 253, 253, 253)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Container(
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            recieps_vegetales[index]['img']),
                                        fit: BoxFit.cover)),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Container(
                                width: 150,
                                alignment: Alignment.topLeft,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      recieps_vegetales[index]['name'],
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Color.fromARGB(255, 3, 7, 68),
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      recieps_vegetales[index]['category'],
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 34, 34, 34),
                                          fontSize: 10),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      recieps_vegetales[index]['precio'],
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 201, 48, 9),
                                          fontSize: 10),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
                )
              ],
            ),
          ),
        ),
      )
    ]);
  }

  Widget getEnlatados() {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color.fromARGB(244, 253, 253, 253)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: 70,
                      height: 40,
                      child: Icon(Icons.liquor),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      width: 100,
                      alignment: Alignment.topLeft,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Enlatados",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Color.fromARGB(255, 2, 4, 29),
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5, right: 5, left: 5),
                  child: Divider(
                      color: Color.fromARGB(255, 26, 25, 25).withOpacity(0.3)),
                ),
                Column(
                  children: List.generate(recieps_enlatados.length, (index) {
                    return Padding(
                      padding:
                          const EdgeInsets.only(left: 5, right: 5, top: 10),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color.fromARGB(244, 253, 253, 253)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Container(
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            recieps_enlatados[index]['img']),
                                        fit: BoxFit.cover)),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Container(
                                width: 150,
                                alignment: Alignment.topLeft,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      recieps_enlatados[index]['name'],
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Color.fromARGB(255, 3, 7, 68),
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      recieps_enlatados[index]['category'],
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 34, 34, 34),
                                          fontSize: 10),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      recieps_enlatados[index]['precio'],
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 201, 48, 9),
                                          fontSize: 10),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
                )
              ],
            ),
          ),
        ),
      )
    ]);
  }

  Widget getPastas() {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color.fromARGB(244, 253, 253, 253)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: 70,
                      height: 40,
                      child: Icon(Icons.liquor),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      width: 100,
                      alignment: Alignment.topLeft,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Pastas",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Color.fromARGB(255, 2, 4, 29),
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5, right: 5, left: 5),
                  child: Divider(
                      color: Color.fromARGB(255, 26, 25, 25).withOpacity(0.3)),
                ),
                Column(
                  children: List.generate(recieps_pastas.length, (index) {
                    return Padding(
                      padding:
                          const EdgeInsets.only(left: 5, right: 5, top: 10),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color.fromARGB(244, 253, 253, 253)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Container(
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            recieps_pastas[index]['img']),
                                        fit: BoxFit.cover)),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Container(
                                width: 150,
                                alignment: Alignment.topLeft,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      recieps_pastas[index]['name'],
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Color.fromARGB(255, 3, 7, 68),
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      recieps_pastas[index]['category'],
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 34, 34, 34),
                                          fontSize: 10),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      recieps_pastas[index]['precio'],
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 201, 48, 9),
                                          fontSize: 10),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
                )
              ],
            ),
          ),
        ),
      )
    ]);
  }
}
