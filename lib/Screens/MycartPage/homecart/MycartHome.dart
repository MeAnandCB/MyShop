import 'package:flutter/material.dart';

import '../../../Const/Colors.dart';
import '../../SecondScreen/Button/Button.dart';
import '../../SecondScreen/DescriptionContainer/DescriptionContainer.dart';
import '../Amount/amount.dart';
import '../SpecificationContainer/SpecificationContainer.dart';

class MycartHome extends StatefulWidget {
  const MycartHome({super.key});

  @override
  State<MycartHome> createState() => _MycartHomeState();
}

class _MycartHomeState extends State<MycartHome> {
  int _counter = 1;
  var counter;

  void _incrementCounter() {
    setState(() {
      _counter++;
      counter = _counter;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
      counter = _counter;
    });
  }

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
              text: 'My',
              style: TextStyle(
                  color: ShopButton, fontSize: 18, fontWeight: FontWeight.bold),
              children: <TextSpan>[
                TextSpan(
                  text: 'Cart',
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
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: ShopBackground1,
                ),
                height: MediaQuery.of(context).size.height,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: ShopBackground,
                        ),
                        child: Center(child: Image.asset('images/4.png')),
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
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                                Icon(Icons.more_horiz)
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "4.9",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
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
                            SpecificationContainer(),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: ShopBackground,
                              ),
                              height: 50,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "₹999.00",
                                      style: TextStyle(
                                          color: ShopButton,
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Row(
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            if (_counter <= 1) {
                                              _counter = 1;
                                            } else
                                              _decrementCounter();
                                          },
                                          child: Container(
                                            height: 30,
                                            width: 30,
                                            color: Color.fromARGB(
                                                255, 234, 233, 231),
                                            child: Center(
                                              child: Text(
                                                "-",
                                                style: TextStyle(fontSize: 20),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Container(
                                          height: 30,
                                          width: 30,
                                          color: Color.fromARGB(
                                              255, 234, 233, 231),
                                          child: Center(
                                            child: Text(
                                              '$_counter',
                                              style: TextStyle(fontSize: 20),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        InkWell(
                                          onTap: () {
                                            _incrementCounter();
                                          },
                                          child: Container(
                                            height: 30,
                                            width: 30,
                                            color: Color.fromARGB(
                                                255, 234, 233, 231),
                                            child: Center(
                                              child: Text(
                                                "+",
                                                style: TextStyle(fontSize: 20),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Container(
                                          height: 30,
                                          width: 30,
                                          child: Icon(
                                            Icons.delete_outline_rounded,
                                            color: Colors.red,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Divider(
                              thickness: 5,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            AmountContainer(
                                price: "999",
                                shipping: "120",
                                tax: "2",
                                count: counter.toString()),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
