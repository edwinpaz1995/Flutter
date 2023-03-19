import 'package:flutter/material.dart';
import 'package:p2/json/recieps.dart';

class Recipes extends StatelessWidget {
  const Recipes({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(color: Color.fromARGB(169, 153, 191, 223)),
        child: ListView(
          children: <Widget>[
            SizedBox(height: 50),
            Center(
              child: Text(
                'Listado de productos',
                style: TextStyle(
                    color: Color.fromARGB(232, 14, 61, 100),
                    fontSize: 28,
                    fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            getRecipes()
          ],
        ));
  }

  Widget getRecipes() {
    return Column(
      children: List.generate(recieps.length, (index) {
        return Padding(
          padding: const EdgeInsets.only(left: 35, right: 35, top: 15),
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
                            image: NetworkImage(recieps[index]['img']),
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
                          recieps[index]['name'],
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
                          recieps[index]['category'],
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromARGB(255, 34, 34, 34),
                              fontSize: 10),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          recieps[index]['precio'],
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromARGB(255, 201, 48, 9),
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
    );
  }
}
