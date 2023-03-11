import 'package:flutter/material.dart';

import '../../../Const/Colors.dart';

class DescriptionContainer extends StatelessWidget {
  const DescriptionContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: ShopBackground1,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Description",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Shoptext),
                ),
                Text(
                  "Read more",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: ShopButton),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Sole Features: Height increasing non marking EVA TPR sole made with light weight compound and orthopedic memory foam shoes which provides extra comfort to your feet with a perfect grip. Features Max Cushion technology for added vacuum based air cushion under your heels.",
              maxLines: 5,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  fontSize: 12, color: ShopCardBackground1, height: 1.5),
            ),
          ),
        ],
      ),
    );
  }
}
