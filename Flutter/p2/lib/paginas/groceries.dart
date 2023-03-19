import 'package:flutter/material.dart';

import '../json/groceries_all.dart';

class Groceries extends StatelessWidget {
  const Groceries({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [getCategories()],
      ),
    );
  }

  Widget getCategories() {
    return Column(
      children: List.generate(categories.length, (index) {
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
                    height: 60,
                    child: Icon(categories[index]['icon']),
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
                          categories[index]['name'],
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromARGB(255, 3, 7, 68),
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        )
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
