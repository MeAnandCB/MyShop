import 'package:flutter/material.dart';

import '../../Const/Colors.dart';

class Customtab extends StatelessWidget {
  final IconData iconname;
  final String name;
  final bool value;
  Customtab(
      {super.key,
      required this.iconname,
      required this.name,
      required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: (value == true) ? ShopButton : ShopBackground1,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            iconname,
            color: (value == true) ? ShopBackground : ShopButton,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            name,
            style: TextStyle(
              color: (value == true) ? ShopBackground : ShopButton,
            ),
          )
        ],
      ),
    );
  }
}
