import 'package:flutter/material.dart';

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
            Container(
              width: 238,
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
        children: [
          SizedBox(height: 15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                const SizedBox(width: 8),
                // All Posts (selected)
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
                  margin: const EdgeInsets.only(right: 8),
                  decoration: BoxDecoration(
                    color: const Color(0xFF23313F),
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color: Color(0xFF00B2FF), width: 2),
                  ),
                  child: const Text(
                    'All Posts',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
                // Videos
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
                  margin: const EdgeInsets.only(right: 8),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color: Colors.white, width: 1),
                  ),
                  child: const Text(
                    'Videos',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
                // Short Videos
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
                  margin: const EdgeInsets.only(right: 8),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color: Colors.white, width: 1),
                  ),
                  child: const Text(
                    'Short Videos',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
                // Nearby
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
                  margin: const EdgeInsets.only(right: 8),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color: Colors.white, width: 1),
                  ),
                  child: const Text(
                    'Nearby',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Center(
              child: Container(
                width: 385,
                constraints: BoxConstraints(maxWidth: 430),
                decoration: BoxDecoration(
                  color: const Color(0xFF23313F),
                  borderRadius: BorderRadius.circular(10),
                  border: Border(
                    left: BorderSide(color: Colors.black, width: 1),
                    right: BorderSide(color: Colors.black, width: 1),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                      child: Image.asset(
                        'assets/images/bluecs1.png',
                        width: double.infinity,
                        height: 243,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text('5 days ago',
                                  style: TextStyle(
                                      color: Colors.white54, fontSize: 12)),
                              Spacer(),
                              Icon(Icons.remove_red_eye,
                                  color: Colors.white54, size: 16),
                              SizedBox(width: 4),
                              Text('25k',
                                  style: TextStyle(
                                      color: Colors.white54, fontSize: 12)),
                            ],
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Top 10 AI Tools You Should Know in 2025',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Stay Ahead with These Game-Changing AI Tools',
                            style:
                                TextStyle(color: Colors.white70, fontSize: 12),
                          ),
                          SizedBox(height: 12),
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/images/techsavvy.png'),
                                radius: 18,
                              ),
                              SizedBox(width: 8),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('TechSavvy',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20)),
                                  Text('Content Creator',
                                      style: TextStyle(
                                          color: Colors.white54, fontSize: 12)),
                                ],
                              ),
                              Spacer(),
                              Icon(Icons.block, color: Colors.red, size: 20),
                            ],
                          ),
                          SizedBox(height: 32),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
