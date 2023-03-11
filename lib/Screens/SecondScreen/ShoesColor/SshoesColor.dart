import 'package:flutter/material.dart';

import '../../../Const/Colors.dart';

class colorShoes extends StatelessWidget {
  const colorShoes({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: Color.fromARGB(255, 250, 159, 34),
          radius: 12,
        ),
        SizedBox(
          width: 10,
        ),
        CircleAvatar(
          backgroundColor: Color.fromARGB(255, 249, 83, 82),
          radius: 12,
        ),
        SizedBox(
          width: 10,
        ),
        CircleAvatar(
          backgroundColor: Color.fromARGB(255, 83, 81, 141),
          radius: 12,
        ),
        SizedBox(
          width: 10,
        ),
        CircleAvatar(
          backgroundColor: Color.fromARGB(255, 17, 116, 237),
          radius: 12,
        ),
        SizedBox(
          width: 10,
        ),
        CircleAvatar(
          backgroundColor: Color.fromARGB(255, 255, 192, 202),
          radius: 12,
        ),
        SizedBox(
          width: 10,
        ),
        CircleAvatar(
          backgroundColor: Color.fromARGB(255, 177, 148, 255),
          radius: 12,
        ),
      ],
    );
  }
}
