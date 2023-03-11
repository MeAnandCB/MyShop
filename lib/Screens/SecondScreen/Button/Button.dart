import 'package:flutter/material.dart';
import 'package:myshop/Const/Colors.dart';

import '../../MycartPage/homecart/MycartHome.dart';

class ButtonContainer extends StatelessWidget {
  const ButtonContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: ShopButton,
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.transparent, // Background color
        ),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const MycartHome()));
        },
        child: Text("Click to BUY"),
      ),
    );
  }
}
