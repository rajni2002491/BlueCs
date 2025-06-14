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
        padding: const EdgeInsets.only(bottom: 80),
        children: [
          const SizedBox(height: 15),
          // --- Example Post Card ---
          _PostCard(),
          const SizedBox(height: 15),
          // --- Example Video Card ---
          _VideoCard(),
          const SizedBox(height: 15),
          // --- Example Text Card ---
          _TextCard(),
          const SizedBox(height: 15),
          // --- Example Poll Card ---
          _PollCard(),
          const SizedBox(height: 15),
          // --- Example Horizontal Avatars ---
          _HorizontalAvatars(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF23313F),
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_box_outlined), label: 'Add'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_none), label: 'Alerts'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), label: 'Profile'),
        ],
      ),
    );
  }
}

// --- Post Card Widget ---
class _PostCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFF23313F),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
              child: Image.asset(
                'assets/images/bluecs1.png',
                width: double.infinity,
                height: 180,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text('5 days ago',
                          style:
                              TextStyle(color: Colors.white54, fontSize: 12)),
                      const Spacer(),
                      Icon(Icons.remove_red_eye,
                          color: Colors.white54, size: 16),
                      const SizedBox(width: 4),
                      Text('25k',
                          style:
                              TextStyle(color: Colors.white54, fontSize: 12)),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Top 10 AI Tools You Should Know in 2025',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Stay Ahead with These Game-Changing AI Tools',
                    style: TextStyle(color: Colors.white70, fontSize: 12),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/techsavvy.png'),
                        radius: 18,
                      ),
                      const SizedBox(width: 8),
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
                      const Spacer(),
                      Icon(Icons.block, color: Colors.red, size: 20),
                    ],
                  ),
                ],
              ),
            ),
            _ActionBar(),
          ],
        ),
      ),
    );
  }
}

// --- Video Card Widget ---
class _VideoCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFF23313F),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                  child: Image.asset(
                    'assets/images/video_thumb.png',
                    width: double.infinity,
                    height: 180,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned.fill(
                  child: Center(
                    child: Icon(Icons.play_circle_fill,
                        color: Colors.white, size: 48),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text('2 hours ago',
                          style:
                              TextStyle(color: Colors.white54, fontSize: 12)),
                      const Spacer(),
                      Icon(Icons.remove_red_eye,
                          color: Colors.white54, size: 16),
                      const SizedBox(width: 4),
                      Text('12k',
                          style:
                              TextStyle(color: Colors.white54, fontSize: 12)),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Top 10 AI Tools You Should Know in 2025',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Stay Ahead with These Game-Changing AI Tools',
                    style: TextStyle(color: Colors.white70, fontSize: 12),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/techsavvy.png'),
                        radius: 18,
                      ),
                      const SizedBox(width: 8),
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
                      const Spacer(),
                      Icon(Icons.block, color: Colors.red, size: 20),
                    ],
                  ),
                ],
              ),
            ),
            _ActionBar(),
          ],
        ),
      ),
    );
  }
}

// --- Text Card Widget ---
class _TextCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.orange[700],
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Text(
                'Discover the journey and mindset of this inspiring individual',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            _ActionBar(),
          ],
        ),
      ),
    );
  }
}

// --- Poll Card Widget ---
class _PollCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFF23313F),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text('5 min ago',
                          style:
                              TextStyle(color: Colors.white54, fontSize: 12)),
                      const Spacer(),
                      Icon(Icons.remove_red_eye,
                          color: Colors.white54, size: 16),
                      const SizedBox(width: 4),
                      Text('2k',
                          style:
                              TextStyle(color: Colors.white54, fontSize: 12)),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'What is the most important factor when choosing a new job?',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 12),
                  _PollOption(text: 'Salary & Benefits', selected: true),
                  const SizedBox(height: 8),
                  _PollOption(text: 'Work-Life Balance'),
                  const SizedBox(height: 8),
                  _PollOption(text: 'Career Growth Opportunities'),
                  const SizedBox(height: 8),
                  _PollOption(text: 'Company Culture'),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/techsavvy.png'),
                        radius: 18,
                      ),
                      const SizedBox(width: 8),
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
                      const Spacer(),
                      Icon(Icons.block, color: Colors.red, size: 20),
                    ],
                  ),
                ],
              ),
            ),
            _ActionBar(),
          ],
        ),
      ),
    );
  }
}

class _PollOption extends StatelessWidget {
  final String text;
  final bool selected;
  const _PollOption({required this.text, this.selected = false});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
      decoration: BoxDecoration(
        color: selected ? Colors.blue : Colors.transparent,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.white24),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

// --- Horizontal Avatars (for bottom bar demo) ---
class _HorizontalAvatars extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          for (int i = 1; i <= 4; i++)
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/avatar$i.png'),
              radius: 24,
            ),
        ],
      ),
    );
  }
}

// --- Action Bar Widget ---
class _ActionBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFF232E3C),
          borderRadius: BorderRadius.circular(50),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        child: Row(
          children: [
            // Overlapping avatars
            SizedBox(
              width: 48,
              height: 28,
              child: Stack(
                children: [
                  for (int i = 0; i < 3; i++)
                    Positioned(
                      left: i * 16,
                      child: CircleAvatar(
                        radius: 14,
                        backgroundImage:
                            AssetImage('assets/images/avatar${i + 1}.png'),
                      ),
                    ),
                ],
              ),
            ),
            const SizedBox(width: 8),
            Icon(Icons.comment, color: Colors.white54, size: 20),
            const SizedBox(width: 4),
            Text('310', style: TextStyle(color: Colors.white)),
            const SizedBox(width: 16),
            Icon(Icons.thumb_up_alt_rounded, color: Colors.blue, size: 20),
            const SizedBox(width: 4),
            Text('5k+', style: TextStyle(color: Colors.white)),
            const SizedBox(width: 16),
            Icon(Icons.favorite, color: Colors.pinkAccent, size: 20),
            const SizedBox(width: 4),
            Icon(Icons.emoji_emotions, color: Colors.amber, size: 20),
            const SizedBox(width: 16),
            Icon(Icons.thumb_up_alt_outlined, color: Colors.white, size: 20),
            const SizedBox(width: 4),
            Text('50', style: TextStyle(color: Colors.white)),
            const SizedBox(width: 16),
            Icon(Icons.share, color: Colors.white54, size: 20),
          ],
        ),
      ),
    );
  }
}
