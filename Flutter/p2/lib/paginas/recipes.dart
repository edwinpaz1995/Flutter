import 'package:flutter/material.dart';
import 'package:p2/json/recieps.dart';

class Recipes extends StatelessWidget {
  const Recipes({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: getRecipes(),
    );
  }

  Widget getRecipes() {
    return Column(
      children: List.generate(recieps.length, (index) {
        return Padding(
          padding: const EdgeInsets.only(left: 25, right: 25, top: 15),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(148, 233, 233, 227)),
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
                              color: Color.fromARGB(255, 34, 34, 34),
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
