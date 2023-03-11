import 'package:flutter/material.dart';
import 'package:myshop/Screens/SecondScreen/size/shoessize.dart';

import '../../../Const/Colors.dart';
import '../Button/Button.dart';
import '../DescriptionContainer/DescriptionContainer.dart';
import '../ShoesColor/SshoesColor.dart';

class DetailsShoes extends StatelessWidget {
  const DetailsShoes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ShopBackground,
        centerTitle: true,
        elevation: 0,
        leading: Icon(
          Icons.arrow_back,
          color: Shoptext,
        ),
        title: RichText(
          text: TextSpan(
              text: 'Detail',
              style: TextStyle(
                  color: ShopButton, fontSize: 18, fontWeight: FontWeight.bold),
              children: <TextSpan>[
                TextSpan(
                  text: 'Shoes',
                  style: TextStyle(color: Shoptext, fontSize: 20),
                ),
              ]),
        ),
        actions: [
          Icon(
            Icons.notification_add,
            color: Shoptext,
          ),
          SizedBox(
            width: 30,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: ShopBackground1,
                ),
                height: 250,
                width: double.infinity,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            alignment: Alignment.bottomCenter,
                            child: Image.asset('images/ring.png'),
                          ),
                        ],
                      ),
                    ),
                    Center(child: Image.asset('images/4.png')),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Crysta Running Shoes",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "₹999.00",
                          style: TextStyle(
                              color: ShopButton,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "4.9",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(width: 2),
                        for (int i = 0; i < 5; i++)
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 15,
                          )
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Size",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        Row(
                          children: [
                            Text(
                              "UK EU",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: ShopCardBackground),
                            ),
                            Text(
                              "  ID",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: ShopButton),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        ContaSize(),
                      ],
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Color",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        colorShoes(),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    DescriptionContainer(),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              ButtonContainer(),
            ],
          ),
        ),
      ),
    );
  }
}
