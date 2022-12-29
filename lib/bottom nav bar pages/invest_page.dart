import 'package:flutter/material.dart';
import 'package:kuda_bank_ui/constants.dart';

import '../screens/borrow_layout.dart';
import '../screens/save_layout.dart';
import '../screens/spend_layout.dart';

class InvestPage extends StatefulWidget {
  const InvestPage({super.key});

  @override
  State<InvestPage> createState() => _InvestPageState();
}

late PageController pageController;

class _InvestPageState extends State<InvestPage> {
  int number = 0;
  List<String> tabs = ['Home', ' US Stock'];
  Color unhighlightedtabcolor = Colors.grey;
  Color highlightedtabcolor = Colors.white;
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
            right: 20,
          ),
          decoration: BoxDecoration(
            color: ksoftcolor,
            borderRadius: BorderRadius.circular(
              8,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 18,
            ),
            child: Text(
              tabs[i],
              style: TextStyle(
                color:
                    number == i ? highlightedtabcolor : unhighlightedtabcolor,
                fontSize: 14,
              ),
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
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        title: const Center(
            child: Text(
          'Invest',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        )),
        backgroundColor: ksoftbackgroundcolor,
      ),
      body: Column(
        children: [
          const Divider(
            height: 3,
            color: Color.fromARGB(
              255,
              82,
              81,
              81,
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(
                top: 30,
                left: 20,
                right: 20,
              ),
              color: ksoftbackgroundcolor,
              child: Column(
                children: [
                  getTabs(),
                  SizedBox(
                    width: double.infinity,
                    height: 500,
                    child: PageView(
                      onPageChanged: (value) => setState(() {
                        number = value;
                      }),
                      controller: pageController,
                      physics: const BouncingScrollPhysics(),
                      children: [
                        Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(
                                top: 35,
                              ),
                              child: ClipRect(
                                child: SizedBox(
                                  width: 80,
                                  height: 60,
                                  child: Image.asset(
                                    "lib/icons/trending.png",
                                  ),
                                ),
                              ),
                            ),
                            const Text(
                              'Invest With Kuda',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                              ),
                            ),
                            const Text(
                              'Choose an option below to grow your money. Please, remember that investments fluctuate and Kuda dosen\'t give investment advice',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                top: 20,
                                bottom: 10,
                              ),
                              width: double.infinity,
                              padding: const EdgeInsets.symmetric(
                                vertical: 8,
                                horizontal: 14,
                              ),
                              decoration: BoxDecoration(
                                color: ksoftcolor,
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 8,
                                  horizontal: 8,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'US Stocks',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 19,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.only(
                                            top: 8.0,
                                          ),
                                          child: const Text(
                                            'Trade thousands of US stocks with as\nlittle as \$10. ',
                                            maxLines: 2,
                                            overflow: TextOverflow.clip,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12),
                                          ),
                                        )
                                      ],
                                    ),
                                    ClipRect(
                                      child: SizedBox(
                                        width: 50,
                                        height: 50,
                                        child: Image.asset(
                                          "lib/icons/hot_air_balloon.png",
                                          color: const Color.fromARGB(
                                            255,
                                            74,
                                            182,
                                            133,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                bottom: 10,
                                top: 20,
                              ),
                              width: double.infinity,
                              padding: const EdgeInsets.symmetric(
                                vertical: 8,
                                horizontal: 14,
                              ),
                              decoration: BoxDecoration(
                                color: ksoftcolor,
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 10,
                                  horizontal: 8,
                                ),
                                child: Row(
                                  textBaseline: TextBaseline.ideographic,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.only(
                                            bottom: 10,
                                          ),
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 3,
                                            horizontal: 7,
                                          ),
                                          decoration: BoxDecoration(
                                            color: const Color.fromARGB(
                                                255, 242, 189, 31),
                                            borderRadius:
                                                BorderRadius.circular(6),
                                          ),
                                          child: const Center(
                                            child: Text(
                                              'Coming Soon',
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ),
                                        ),
                                        const Text(
                                          'Managed Funds',
                                          style: TextStyle(
                                            color: Colors.white54,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const Text(
                                          'Invest in professionally managed products.',
                                          overflow: TextOverflow.clip,
                                          style: TextStyle(
                                              color: Colors.white54,
                                              fontSize: 12),
                                        )
                                      ],
                                    ),
                                    ClipRect(
                                      child: SizedBox(
                                        width: 50,
                                        height: 50,
                                        child: Image.asset(
                                          "lib/icons/money.png",
                                          color: const Color.fromARGB(
                                            255,
                                            82,
                                            167,
                                            237,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Text(
                          "US stock",
                        ),
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
