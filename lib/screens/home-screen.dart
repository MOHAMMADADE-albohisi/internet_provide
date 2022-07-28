import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:internet_provide/widgets/cardwidget.dart';
import 'package:internet_provide/widgets/seeallwidget.dart';

class homescreen extends StatefulWidget {
  const homescreen({Key? key}) : super(key: key);

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  late PageController _mohammad;
  int _selectedPageIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _mohammad = PageController(viewportFraction: 0.7, initialPage: 0);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _mohammad.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0A0D14),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          Container(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              children: [
                Image.asset(
                  'images/image_12.png',
                  width: 20,
                ),
                Text('Proquota',
                    style: GoogleFonts.outfit(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    )),
              ],
            ),
          )),
          const Spacer(flex: 196),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.headphones_outlined),
          ),
          const Spacer(
            flex: 22,
          ),
          IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/setting_screen');
            },
            icon: const Icon(Icons.notifications_outlined),
          ),
          const Spacer(
            flex: 35,
          ),
        ],
      ),
      body: ListView(
        children: [
          Column(
            children: [
              const SizedBox(height: 20),
              Container(
                width: 371,
                height: 220,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xFF3D5BF6),
                ),
                child: Column(
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 16),
                        child: Row(
                          children: [
                            const CircleAvatar(
                              radius: 36,
                              backgroundImage: NetworkImage(
                                'https://ichef.bbci.co.uk/news/976/cpsprodpb/1532F/production/_122913868_dulcie.jpg',
                              ),
                            ),
                            const Spacer(flex: 16),
                            Column(
                              children: [
                                const SizedBox(height: 16.5),
                                Text(
                                  'Esmeralda',
                                  style: GoogleFonts.outfit(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: const Color(0xFFFFFFFF),
                                  ),
                                ),
                                const SizedBox(height: 3.5),
                                Text(
                                  '10.040 points',
                                  style: GoogleFonts.outfit(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xFF707070),
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(flex: 68),
                            Text(
                              '+62123445678912',
                              style: GoogleFonts.outfit(
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                color: const Color(0xFFFFFFFF),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 16),
                        child: Row(
                          children: [
                            Text(
                              'Rp. 100.000 ,-',
                              style: GoogleFonts.outfit(
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xFFFFFFFF),
                              ),
                            ),
                            const Spacer(),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                primary: const Color(0xFFFFFFFF),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(17.5),
                                ),
                                minimumSize: const Size(
                                  88,
                                  35,
                                ),
                              ),
                              child: Text(
                                '+ Top Up',
                                style: GoogleFonts.outfit(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: const Color(0xFF161B1D),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Text(
                      '05/05/2029',
                      textAlign: TextAlign.start,
                      style: GoogleFonts.outfit(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: const Color(0xFFFFFFFF)),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          const seeallwidget(title: 'Active Package'),
          ConstrainedBox(
            constraints: const BoxConstraints(maxHeight: 290),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxHeight: 79),
              child: PageView.builder(
                  controller: _mohammad,
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (int pageIndex) {},
                  itemBuilder: (context, index) {
                    return Card(
                      margin:
                          EdgeInsetsDirectional.only(end: index != 2 ? 10 : 0),
                      color: index % 2 == 0
                          ? const Color(0xFF28364E)
                          : const Color(0xFF28364E),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          children: [
                            Image.asset(
                              'images/image_13.png',
                              width: 40,
                              height: 40,
                            ),
                            const Spacer(flex: 16),
                            Column(
                              children: [
                                const SizedBox(height: 16.5),
                                Text(
                                  'Internet',
                                  style: GoogleFonts.outfit(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xFFCBCCCD),
                                  ),
                                ),
                              ],
                            ),
                            Image.asset(
                              'images/image_14.png',
                              width: 100,
                            ),
                            const Spacer(flex: 68),
                            Text(
                              '4 Days',
                              style: GoogleFonts.outfit(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: const Color(0xFFCBCCCD),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ),
          const SizedBox(height: 32),
          const seeallwidget(title: 'Features'),
          const SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 27.5),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    cardwidget(
                        onPressed2: () {
                          Navigator.pushReplacementNamed(
                              context, '/credit_screen');
                        },
                        onPressed1: () {
                          Navigator.pushReplacementNamed(
                              context, '/credit_screen');
                        },
                        name: 'Credit',
                        image: 'image_15'),
                    cardwidget(
                        onPressed2: () {},
                        onPressed1: () {},
                        name: 'Buy Internet',
                        image: 'image_16'),
                    cardwidget(
                        onPressed2: () {},
                        onPressed1: () {},
                        name: 'Add Ons',
                        image: 'image_17'),
                    cardwidget(
                        onPressed2: () {},
                        onPressed1: () {},
                        name: 'Trade Points',
                        image: 'image_18'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    cardwidget(
                        onPressed2: () {},
                        onPressed1: () {},
                        name: 'Disocunts',
                        image: 'image_19'),
                    cardwidget(
                        onPressed2: () {},
                        onPressed1: () {},
                        name: 'Entertaint',
                        image: 'image_20'),
                    cardwidget(
                        onPressed2: () {},
                        onPressed1: () {},
                        name: 'Games',
                        image: 'image_21'),
                    cardwidget(
                        onPressed2: () {},
                        onPressed1: () {},
                        name: 'Other',
                        image: 'image_22'),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 21),
          BottomNavigationBar(
            backgroundColor: const Color(0xFF0A0D14),
            onTap: (int selectedPageIndex) {
              setState(() => _selectedPageIndex = selectedPageIndex);
            },
            currentIndex: _selectedPageIndex,
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                activeIcon: Icon(Icons.home),
                icon: Icon(
                  Icons.home_outlined,
                  color: Color(0xFFFFFFFF),
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                  activeIcon: Icon(Icons.graphic_eq),
                  icon: Icon(
                    Icons.graphic_eq,
                    color: Color(0xFFFFFFFF),
                  ),
                  label: 'Statistic'),
              BottomNavigationBarItem(
                  activeIcon: Icon(Icons.star_border),
                  icon: Icon(
                    Icons.star_border,
                    color: Color(0xFFFFFFFF),
                  ),
                  label: 'Points'),
              BottomNavigationBarItem(
                  activeIcon: Icon(Icons.person_outline_rounded),
                  icon: Icon(
                    Icons.person_outline_rounded,
                    color: Color(0xFFFFFFFF),
                  ),
                  label: 'Profile'),
            ],
          ),
        ],
      ),
    );
  }
}
