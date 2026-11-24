import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:diomampo_labact1a/constants.dart';
import 'package:diomampo_labact1a/screens/newsfeed_screen.dart';
import 'package:diomampo_labact1a/screens/notification_screen.dart';
import 'package:diomampo_labact1a/widgets/custom_text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController();

  static const List<String> _titles = <String>[
    'Facebook',
    'Notifications',
    'Profile',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: fbTextColorWhite,
        elevation: 2,
        title: CustomText(
          text: _titles[_selectedIndex],
          fontSize: ScreenUtil().setSp(25),
          color: _selectedIndex == 0 ? fbPrimary : Colors.black,
          fontFamily: 'Klavika',
          fontWeight: FontWeight(700),
        ),
      ),
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: const <Widget>[
          NewsfeedScreen(),
          NotificationScreen(),
          _ProfileScreen(),
        ],
        onPageChanged: (page) {
          setState(() {
            _selectedIndex = page;
          });
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        showSelectedLabels: false,
        onTap: _onTappedBar,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        selectedItemColor: fbPrimary,
        currentIndex: _selectedIndex,
      ),
    );
  }

  void _onTappedBar(int value) {
    setState(() {
      _selectedIndex = value;
    });
    _pageController.jumpToPage(value);
  }
}

class _ProfileScreen extends StatelessWidget {
  const _ProfileScreen();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(radius: 40, child: Icon(Icons.person, size: 40)),
          SizedBox(height: 12),
          CustomText(
            text: 'Dea Ayel Diomampo',
            fontSize: 18,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ],
      ),
    );
  }
}