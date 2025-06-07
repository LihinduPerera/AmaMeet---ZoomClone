import 'package:ama_meet/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

class PageSelection extends StatefulWidget {
  const PageSelection({super.key});

  @override
  State<PageSelection> createState() => _PageSelectionState();
}

class _PageSelectionState extends State<PageSelection> {
  int _page = 0;

  final List<Widget> pages = [
    Center(child: Text("Home"),),
    Center(child:Text("Notes")),
    Center(child:Text("Account"))
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFeeedf2),
      appBar: AppBar(
        backgroundColor: const Color(0xFFeeedf2),
        elevation: 0,
        title: const Text('Meet and Chat'),
        centerTitle: true,
      ),
      body: pages[_page],
      bottomNavigationBar: StylishBottomBar(
        option: BubbleBarOptions(
          barStyle: BubbleBarStyle.horizontal,
          bubbleFillStyle: BubbleFillStyle.fill,
          opacity: 0.3,
        ),
        currentIndex: _page,
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
        // iconSpace: 12.0,
        items: [
          BottomBarItem(
            icon: const Icon(Icons.comment_bank),
            selectedIcon: const Icon(Icons.comment_bank_outlined),
            title: const Text('Meeting'),
            backgroundColor: buttonColor,

            // selectedColor: Colors.pink,
            // badge: const Text('1+'),
            // badgeColor: Colors.red,
            // showBadge: true,
          ),
          BottomBarItem(
            icon: const Icon(Icons.history),
            selectedIcon: const Icon(Icons.notes),
            title: const Text('Notes'),
            backgroundColor: buttonColor,
          ),
          BottomBarItem(
            icon: const Icon(Icons.history),
            selectedIcon: const Icon(Icons.person_2),
            title: const Text('Account'),
            backgroundColor: buttonColor,
          ),
        ],
      ),
    );
  }
}