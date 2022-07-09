import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/ifnocard/Card.dart';
import 'package:flutter_application_1/ifnocard/iconcard.dart';
import 'package:flutter_application_1/ifnocard/list.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final _controller = PageController();
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.monetization_on_outlined,
          size: 30,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
            indicatorColor: Colors.blue.shade100,
            labelTextStyle: MaterialStateProperty.all(
                const TextStyle(fontWeight: FontWeight.bold, fontSize: 12))),
        child: NavigationBar(
          backgroundColor: const Color.fromARGB(255, 238, 235, 240),
          labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          animationDuration: const Duration(seconds: 1),
          selectedIndex: index,
          onDestinationSelected: (index) => setState(() {
            this.index = index;
          }),
          // NavigatorBar Style
          height: 80,
          destinations: const [
            // Home
            NavigationDestination(
                selectedIcon: Icon(Icons.home,
                    size: 40, color: Color.fromARGB(255, 255, 26, 114)),
                icon: Icon(
                  Icons.home,
                  size: 30,
                ),
                label: 'Home'),
            // profile
            NavigationDestination(
                selectedIcon: Icon(
                  CupertinoIcons.person_crop_circle_badge_checkmark,
                  color: Color.fromARGB(255, 148, 41, 249),
                  size: 40,
                ),
                icon: Icon(
                  CupertinoIcons.profile_circled,
                  size: 30,
                ),
                label: 'profile'),
            // Walllet
            NavigationDestination(
                selectedIcon: Icon(
                  Icons.wallet_rounded,
                  color: Color.fromARGB(255, 255, 214, 89),
                  size: 40,
                ),
                icon: Icon(
                  Icons.wallet,
                  size: 30,
                ),
                label: 'wallet'),
            NavigationDestination(
                selectedIcon: Icon(
                  Icons.settings,
                  color: Color.fromARGB(255, 112, 255, 150),
                  size: 40,
                ),
                icon: Icon(
                  Icons.settings,
                  size: 30,
                ),
                label: 'Settings'),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Text mycard
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Row(
                      children: const [
                        Text(
                          'My',
                          style: TextStyle(
                              fontSize: 3,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue),
                        ),
                        Text(
                          'Card',
                          style: TextStyle(fontSize: 30),
                        ),
                      ],
                    ),
                  ),
                  // Icon add
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Container(
                      padding: const EdgeInsets.all(7),
                      decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.circular(25)),
                      child: const Icon(Icons.add),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 27,
            ),
            // Pageview builder
            SizedBox(
              height: 245,
              width: 400,
              child: PageView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: aboutlist.length,
                  controller: _controller,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 200,
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: aboutlist[index].Color,
                        ),
                        child: SizedBox(
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 30,top: 30,right: 23,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      aboutlist[index].name,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 26,
                                          color: Colors.white),
                                    ),
                                    Image.asset(aboutlist[index].Image),
                                  ],
                                ),
                                const SizedBox(height: 20),
                                Text(
                                  aboutlist[index].balance,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30,
                                      color: Colors.white),
                                ),
                                SizedBox(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 53, left: 0, right: 22),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          aboutlist[index].monthyear,
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                              color: Colors.white),
                                        ),
                                        Text(
                                          aboutlist[index].numbercard,
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            const SizedBox(
              height: 25,
            ),
            // Smooth
            SmoothPageIndicator(
              controller: _controller,
              count: aboutlist.length,
              effect: const ExpandingDotsEffect(),
            ),
            const SizedBox(
              height: 40,
            ),
            // Send + pay
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Iconcard(
                  iconimage: 'assets/images/send.png',
                  texticon: 'Send',
                ),
                Iconcard(
                  iconimage: 'assets/images/wallet1.png',
                  texticon: 'Wallet',
                ),
                Iconcard(
                  iconimage: 'assets/images/bill.png',
                  texticon: 'Bill',
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Column(
              children: const [
                List(
                    image: 'assets/images/istatistics.png',
                    text1: 'Statistics',
                    Text2: 'payment and Icome'),
                List(
                    image: 'assets/images/trans.png',
                    text1: 'transaction',
                    Text2: 'transaction History'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
