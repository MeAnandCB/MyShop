import 'package:flutter/material.dart';

import '../../Const/Colors.dart';
import '../Const/list.dart';
import '../Screens/HomeScreen/detailsGridView.dart';
import '../Screens/HomeScreen/tab.dart';
import '../Screens/HomeScreen/topslideContainer.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool click = true;
  bool click1 = true;
  bool click2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 249, 250, 252),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          child: SingleChildScrollView(
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                        text: 'Welcome',
                        style: TextStyle(
                            color: ShopButton,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                        children: <TextSpan>[
                          TextSpan(
                            text: '  Mr. Anand CB',
                            style: TextStyle(color: Shoptext, fontSize: 18),
                          )
                        ]),
                  ),
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: ShopCardBackground,
                    ),
                    child: Icon(Icons.notifications_none_outlined),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: ShopCardBackground,
                  ),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            enabledBorder: InputBorder.none,
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.all(10),
                            hintText: 'What kind of shoes do you want?',
                            hintStyle:
                                TextStyle(color: Shoptextlight, fontSize: 15),
                            prefixIcon: IconButton(
                              icon: Icon(Icons.search_rounded),
                              onPressed: () {},
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Best this year",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "Show more",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: ShopButtonlight),
                  )
                ],
              ),
              CourselSliderContainer(
                  FirstCourselSliderList: FirstCourselSliderList),
              Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          click = !click;
                        });
                      },
                      child: (click == false)
                          ? Customtab(
                              iconname: Icons.favorite_border,
                              name: "Trending",
                              value: false,
                            )
                          : Customtab(
                              iconname: Icons.favorite_border,
                              name: "Trending",
                              value: true,
                            ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          click1 = !click1;
                        });
                      },
                      child: (click1 == false)
                          ? Customtab(
                              iconname: Icons.sports_soccer_outlined,
                              name: "All new ",
                              value: true,
                            )
                          : Customtab(
                              iconname: Icons.sports_soccer_outlined,
                              name: "All new ",
                              value: false,
                            ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          click2 = !click2;
                        });
                      },
                      child: (click2 == false)
                          ? Customtab(
                              iconname: Icons.note_alt_outlined,
                              name: "Lifestyle",
                              value: true,
                            )
                          : Customtab(
                              iconname: Icons.note_alt_outlined,
                              name: "Lifestyle",
                              value: false,
                            ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Maingridview(
                griddata: griddata,
                details: details,
              ),
              secondCourselSliderContainer(
                  SecondCourselSliderList: SecondCourselSliderList),
              SizedBox(
                height: 20,
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
