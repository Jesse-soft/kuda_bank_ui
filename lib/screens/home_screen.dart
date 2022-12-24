import 'package:flutter/material.dart';
import 'package:kuda_bank_ui/constants.dart';
import 'package:kuda_bank_ui/screens/spend_layout.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

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
        newColor = const Color.fromARGB(255, 97, 230, 101);
      });
    } else if (i == 2) {
      setState(() {
        newColor = const Color.fromARGB(255, 82, 167, 237);
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
        bottomNavigationBar: BottomNavigationBar(
            selectedLabelStyle: const TextStyle(
              fontSize: 12,
            ),
            backgroundColor: ksoftcolor,
            currentIndex: 0,
            // onTap: ,
            selectedItemColor: Colors.white,
            unselectedItemColor: const Color.fromARGB(255, 110, 109, 109),
            items: const [
              BottomNavigationBarItem(
                backgroundColor: ksoftcolor,
                label: "Home",
                icon: Icon(Icons.home),
              ),
              BottomNavigationBarItem(
                label: "Pay",
                icon: Icon(Icons.send),
              ),
              BottomNavigationBarItem(
                label: "Invest",
                icon: Icon(Icons.trending_up),
              ),
              BottomNavigationBarItem(
                label: "Cards",
                icon: Icon(Icons.credit_card),
              ),
              BottomNavigationBarItem(
                label: "More",
                icon: Icon(Icons.more),
              ),
            ]),
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
                  spendLayout(),
                  spendLayout(),
                  spendLayout(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
