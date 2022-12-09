import 'dart:js';

import 'package:flutter/material.dart';
import 'package:kuda_bank_ui/constants.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int number = 0;
  late PageController pageController;
  Color highlightedtabcolor(int i) {
    late Color newColor = Colors.white;

    if (i == 1) {
      setState(() {
        newColor = Color.fromARGB(255, 97, 230, 101);
      });
    } else if (i == 2) {
      setState(() {
        newColor = Color.fromARGB(255, 82, 167, 237);
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
  getTransaction() {
    List<Column> transactionlist = [];
    for (int i = 0; i < detailsoftransaction.length; i++) {
      var newItem = Column(
        children: [
          Container(
            width: double.infinity,
            color: ksoftbackgroundcolor,
            padding: const EdgeInsets.only(left: 5, top: 5),
            child: ListTile(
              leading: const CircleAvatar(
                backgroundImage: AssetImage('images/avatar.png'),
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    detailsoftransaction[i],
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    timeoftransaction[i],
                    style: const TextStyle(
                        color: Colors.white70,
                        fontSize: 10,
                        fontWeight: FontWeight.normal),
                  )
                ],
              ),
              trailing: Text(
                amountoftransaction[i],
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const Divider(
            height: 3,
            color: ksoftcolor,
          )
        ],
      );
      transactionlist.add(newItem);
    }
    return Column(
      children: transactionlist,
    );
  }

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
          margin: const EdgeInsets.only(right: 10),
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 14),
          decoration: BoxDecoration(
              color: ksoftcolor, borderRadius: BorderRadius.circular(8)),
          child: Text(
            tabs[i],
            style: TextStyle(
              color:
                  number == i ? highlightedtabcolor(i) : unhighlightedtabcolor,
              fontSize: 14,
            ),
          ),
        ),
      );
      tabslist.add(newItem);
    }
    return Row(
      children: tabslist,
    );
  }

  @override
  void initState() {
    pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Container(
              color: ksoftbackgroundcolor,
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 20,
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
                      const Icon(
                        Icons.pie_chart,
                        size: 25,
                        color: Colors.white,
                      )
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      top: 25,
                    ),
                    child: getTabs(),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 500,
              child: PageView(
                controller: pageController,
                physics: const BouncingScrollPhysics(),
                children: [
                  Column(
                    children: [
                      Container(
                        width: double.infinity,
                        color: ksoftbackgroundcolor,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(
                                bottom: 15,
                              ),
                              child: Text(
                                ' Account balance',
                                style: TextStyle(
                                    color: Colors.white54, fontSize: 12),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(
                                bottom: 20,
                              ),
                              child: Text(
                                '₦389.14',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                bottom: 10,
                              ),
                              width: 170,
                              padding: const EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 14),
                              decoration: BoxDecoration(
                                  color: ksoftcolor,
                                  borderRadius: BorderRadius.circular(6)),
                              child: Row(
                                children: const [
                                  Icon(
                                    Icons.add_circle_rounded,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    'Add Money',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: ListView(
                          children: [
                            Container(
                              width: double.infinity,
                              color: ksoftbackgroundcolor,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 10,
                              ),
                              child: const Text(
                                'Recent Transaction',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              padding: const EdgeInsets.only(
                                top: 5,
                                left: 20,
                                bottom: 5,
                              ),
                              child: const Text(
                                '07 Nov 2022',
                                style: TextStyle(
                                  color: Colors.white54,
                                  fontSize: 9,
                                ),
                              ),
                            ),
                            getTransaction(),
                          ],
                        ),
                      )
                    ],
                  ),
                  const Text(
                    'save',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'borrow',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
//