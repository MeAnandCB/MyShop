import 'package:flutter/material.dart';

import '../../../Const/Colors.dart';

class SizeContainer extends StatefulWidget {
  final String size;

  SizeContainer({super.key, required this.size});

  @override
  State<SizeContainer> createState() => _SizeContainerState();
}

class _SizeContainerState extends State<SizeContainer> {
  @override
  Widget build(BuildContext context) {
    return (widget.size == "31")
        ? Container(
            height: 35,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: ShopButton,
            ),
            child: Center(
                child: Text(
              widget.size,
              style:
                  TextStyle(color: ShopBackground, fontWeight: FontWeight.w500),
            )),
          )
        : Container(
            height: 35,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: ShopCardBackground,
            ),
            child: Center(
                child: Text(
              widget.size,
              style: TextStyle(color: ShopButton, fontWeight: FontWeight.w500),
            )),
          );
  }
}

class ContaSize extends StatelessWidget {
  const ContaSize({super.key});

  @override
  Widget build(BuildContext context) {
    var currentindex = 0;
    return Row(
      children: [
        SizeContainer(
          size: "28",
        ),
        SizedBox(
          width: 10,
        ),
        SizeContainer(
          size: "29",
        ),
        SizedBox(
          width: 10,
        ),
        SizeContainer(
          size: "30",
        ),
        SizedBox(
          width: 10,
        ),
        SizeContainer(
          size: "31",
        ),
        SizedBox(
          width: 10,
        ),
        SizeContainer(
          size: "32",
        ),
      ],
    );
  }
}
