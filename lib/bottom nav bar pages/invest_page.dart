import 'package:flutter/material.dart';
import 'package:kuda_bank_ui/constants.dart';
import 'package:kuda_bank_ui/screens/invest_home_screen.dart';

class InvestPage extends StatefulWidget {
  const InvestPage({super.key});

  @override
  State<InvestPage> createState() => _InvestPageState();
}

late PageController pageController;

class _InvestPageState extends State<InvestPage> {
  int number = 0;
  List<String> tabs = [
    'Home',
    'US Stock',
  ];
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
  Widget build(
    BuildContext context,
  ) {
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
                        getHomeInvestScreen(),
                        const Text(
                          "US stock",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
