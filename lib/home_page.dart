import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.white),
          onPressed: () {},
        ),
        titleSpacing: 0,
        centerTitle: false,
        title: Row(
          children: [
            const SizedBox(width: 8),
            Expanded(
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                  color: const Color(0xFF232E3C),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Row(
                  children: [
                    const SizedBox(width: 12),
                    const Icon(Icons.search, color: Colors.white54),
                    const SizedBox(width: 8),
                    const Expanded(
                      child: TextField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: 'Search here...',
                          hintStyle: TextStyle(color: Colors.white54),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.public, color: Colors.greenAccent),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.notifications_none, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.only(bottom: 80),
        children: [
          const SizedBox(height: 15),
          TopNavBar(),
          const SizedBox(height: 15),
          PostCard(imagePath: 'assets/images/bluecs1.png'),
          const SizedBox(height: 30),
          PostCard(imagePath: 'assets/images/bluecs2.png'),
          const SizedBox(height: 30),
          VideoCard(),
          const SizedBox(height: 15),
          TextCard(),
          const SizedBox(height: 15),
          PollCard(),
          const SizedBox(height: 30),
          
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF23313F),
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Jobs'),
          BottomNavigationBarItem(icon: Icon(Icons.store), label: 'Stores'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.ellipses_bubble), label: 'Chat'),
          BottomNavigationBarItem(
              icon: Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.white, width: 1),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.asset(
                    'assets/images/profileuser.png',
                    width: 24,
                    height: 24,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              label: 'Profile'),
        ],
      ),
    );
  }
}
