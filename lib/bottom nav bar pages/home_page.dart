import 'package:flutter/material.dart';

import '../constants.dart';
import '../screens/borrow_layout.dart';
import '../screens/save_layout.dart';
import '../screens/spend_layout.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

late PageController pageController;

class _HomePageState extends State<HomePage> {
  int number = 0;

  late Color greenColor = const Color.fromARGB(
    255,
    74,
    182,
    133,
  );
  late Color blueColor = const Color.fromARGB(
    255,
    82,
    167,
    237,
  );

  Color highlightedtabcolor(int i) {
    late Color newColor = Colors.white;

    if (i == 1) {
      setState(() {
        newColor = greenColor;
      });
    } else if (i == 2) {
      setState(() {
        newColor = blueColor;
      });
    }
    return newColor;
  }

  Color unhighlightedtabcolor = Colors.grey;

  List<String> tabs = [
    'Spend',
    'Save',
    'Borrow',
  ];
  getTabs() {
    List<GestureDetector> tabslist = [];
    for (int i = 0; i < tabs.length; i++) {
      var newItem = GestureDetector(
        onTap: () {
          setState(() {
            number = i;
          });
          pageController.animateToPage(
            i,
            duration: const Duration(
              milliseconds: 200,
            ),
            curve: Curves.fastOutSlowIn,
          );
        },
        child: Container(
          margin: const EdgeInsets.only(
            right: 10,
          ),
          padding: const EdgeInsets.symmetric(
            vertical: 8,
            horizontal: 14,
          ),
          decoration: BoxDecoration(
            color: ksoftcolor,
            borderRadius: BorderRadius.circular(
              8,
            ),
          ),
          child: Text(
            tabs[i],
            style: TextStyle(
              color: number == i
                  ? highlightedtabcolor(
                      i,
                    )
                  : unhighlightedtabcolor,
              fontSize: 14,
            ),
          ),
        ),
      );
      tabslist.add(
        newItem,
      );
    }
    return Row(
      children: tabslist,
    );
  }

  @override
  void initState() {
    pageController = PageController(
      initialPage: 0,
    );
    super.initState();
  }

  @override
  Widget build(
    BuildContext context,
  ) {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          Expanded(
            child: Container(
              color: ksoftbackgroundcolor,
              padding: const EdgeInsets.only(
                top: 20,
                left: 20,
                right: 20,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: const [
                          CircleAvatar(
                            radius: 18,
                            backgroundImage: AssetImage(
                              'images/avatar.png',
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 15,
                            ),
                            child: Text(
                              'Hi, Jesse',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      ClipRect(
                        child: SizedBox(
                          width: 20,
                          height: 20,
                          child: Image.asset(
                            "lib/icons/pie_chart.png",
                          ),
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      top: 25,
                    ),
                    child: getTabs(),
                  ),
                  Expanded(
                    child: PageView(
                      onPageChanged: (value) => setState(() {
                        number = value;
                      }),
                      controller: pageController,
                      physics: const BouncingScrollPhysics(),
                      children: [
                        spendLayout(() {
                          setState(() {
                            blurImage = 5;
                          });
                        }, () {
                          setState(() {
                            blurImage = 0.1;
                          });
                        }),
                        saveLayout(greenColor, () {
                          setState(() {
                            blurImage = 5;
                          });
                        }, () {
                          setState(() {
                            blurImage = 0.1;
                          });
                        }),
                        borrowLayout(blueColor, () {
                          setState(() {
                            blurImage = 5;
                          });
                        }, () {
                          setState(() {
                            blurImage = 0.1;
                          });
                        })
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
