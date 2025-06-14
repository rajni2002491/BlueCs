import 'package:flutter/material.dart';

// Helper for fallback avatar

class PostCard extends StatelessWidget {
  final String imagePath;
  const PostCard({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Center(
        child: Container(
          width: 375,
          height: 480,
          decoration: BoxDecoration(
            color: const Color(0xFF1C252D),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.black, width: 1),
          ),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Column(
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
                          imagePath,
                          width: double.infinity,
                          height: 246,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        bottom: 16,
                        right: 16,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: SizedBox(
                            width: 44,
                            height: 34,
                            child: Image.asset(
                              'assets/images/language.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Positioned.fill(
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 16),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CircleAvatar(
                                    radius: 4, backgroundColor: Colors.white),
                                SizedBox(width: 6),
                                CircleAvatar(
                                    radius: 4, backgroundColor: Colors.white54),
                                SizedBox(width: 6),
                                CircleAvatar(
                                    radius: 4, backgroundColor: Colors.white54),
                              ],
                            ),
                          ),
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
                            Text('5 days ago',
                                style: TextStyle(
                                    color: Colors.white54, fontSize: 12)),
                            const Spacer(),
                            Icon(Icons.remove_red_eye,
                                color: Colors.white54, size: 16),
                            const SizedBox(width: 4),
                            Text('25k',
                                style: TextStyle(
                                    color: Colors.white54, fontSize: 12)),
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
                              radius: 18,
                              backgroundImage:
                                  AssetImage('assets/images/techsavvy.png'),
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
                ],
              ),
              Positioned(
                left: (358 - 322) / 2,
                right: (358 - 322) / 2,
                bottom: -24,
                child: SizedBox(
                  width: 322,
                  child: ActionBar(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class VideoCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Center(
        child: Container(
          width: 375,
          height: 480,
          decoration: BoxDecoration(
            color: const Color(0xFF1C252D),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.black, width: 1),
          ),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Column(
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
                          'assets/images/video.png',
                          width: double.infinity,
                          height: 246,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned.fill(
                        child: Center(
                          child: Image.asset(
                            'assets/images/play_button.png',
                            width: 48,
                            height: 48,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 16,
                        right: 16,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: SizedBox(
                            width: 44,
                            height: 34,
                            child: Image.asset(
                              'assets/images/language.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Positioned.fill(
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 16),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CircleAvatar(
                                    radius: 4, backgroundColor: Colors.white),
                                SizedBox(width: 6),
                                CircleAvatar(
                                    radius: 4, backgroundColor: Colors.white54),
                                SizedBox(width: 6),
                                CircleAvatar(
                                    radius: 4, backgroundColor: Colors.white54),
                              ],
                            ),
                          ),
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
                                style: TextStyle(
                                    color: Colors.white54, fontSize: 12)),
                            const Spacer(),
                            Icon(Icons.remove_red_eye,
                                color: Colors.white54, size: 16),
                            const SizedBox(width: 4),
                            Text('12k',
                                style: TextStyle(
                                    color: Colors.white54, fontSize: 12)),
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
                              radius: 18,
                              backgroundImage:
                                  AssetImage('assets/images/techsavvy.png'),
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
                ],
              ),
              Positioned(
                left: (358 - 322) / 2,
                right: (358 - 322) / 2,
                bottom: -24,
                child: SizedBox(
                  width: 322,
                  child: ActionBar(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TextCard extends StatelessWidget {
  const TextCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 16),
      child: Center(
        child: Container(
          width: 375,
          height: 480,
          decoration: BoxDecoration(
            color: const Color(0xFF1C252D),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Column(
                children: [
                  // Orange Top Section
                  Container(
                    height: 240,
                    decoration: const BoxDecoration(
                      color: Color(0xFFE38200),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16),
                      ),
                    ),
                    child: Stack(
                      children: [
                        Center(
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 24.0),
                            child: Text(
                              'Discover the journey and mindset of this inspiring individual',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 32,
                              ),
                            ),
                          ),
                        ),
                        // Language icon
                        Positioned(
                          bottom: 16,
                          right: 16,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: SizedBox(
                              width: 44,
                              height: 34,
                              child: Image.asset(
                                'assets/images/language.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        // Page indicator
                        const Positioned.fill(
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                              padding: EdgeInsets.only(bottom: 16),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  CircleAvatar(
                                      radius: 4, backgroundColor: Colors.white),
                                  SizedBox(width: 6),
                                  CircleAvatar(
                                      radius: 4,
                                      backgroundColor: Colors.white54),
                                  SizedBox(width: 6),
                                  CircleAvatar(
                                      radius: 4,
                                      backgroundColor: Colors.white54),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Post Info Section
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Date and views
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text("5 days ago",
                                style: TextStyle(
                                    color: Colors.white54, fontSize: 12)),
                            Row(
                              children: [
                                Icon(Icons.visibility_outlined,
                                    size: 16, color: Colors.white54),
                                SizedBox(width: 4),
                                Text("25k",
                                    style: TextStyle(
                                        color: Colors.white54, fontSize: 12)),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(height: 6),
                        const Text(
                          "Top 10 AI Tools You Should Know in 2025",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          "Stay Ahead with These Game-Changing AI Tools",
                          style: TextStyle(color: Colors.white70, fontSize: 13),
                        ),
                        const SizedBox(height: 12),
                        Row(
                          children: [
                            const CircleAvatar(
                              radius: 18,
                              backgroundColor: Colors.white,
                              backgroundImage: AssetImage(
                                  'assets/images/techsavvy.png'), // use your asset
                            ),
                            const SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text("TechSavvy",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20)),
                                Text("Content Creator",
                                    style: TextStyle(
                                        color: Colors.white54, fontSize: 12)),
                              ],
                            ),
                            const Spacer(),
                            const Icon(Icons.block, color: Colors.redAccent),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Positioned(
                left: (358 - 322) / 2,
                right: (358 - 322) / 2,
                bottom: -24,
                child: SizedBox(
                  width: 322,
                  child: ActionBar(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PollCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Center(
        child: Container(
          width: 375,
          height: 480,
          decoration: BoxDecoration(
            color: const Color(0xFF1C252D),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.black, width: 1),
          ),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('5 days ago',
                                style: TextStyle(
                                    color: Colors.white54, fontSize: 12)),
                            Row(
                              children: [
                                Icon(Icons.remove_red_eye,
                                    color: Colors.white54, size: 16),
                                const SizedBox(width: 4),
                                Text('25k',
                                    style: TextStyle(
                                        color: Colors.white54, fontSize: 12)),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        Center(
                          child: Text(
                            'What is the most important factor when choosing a new job?',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        const SizedBox(height: 18),
                        // Poll options with labels
                        PollOption(
                            text: 'Salary & Benefits',
                            selected: true,
                            label: 'A.'),
                        const SizedBox(height: 10),
                        PollOption(text: 'Work-Life Balance', label: 'B.'),
                        const SizedBox(height: 10),
                        PollOption(
                            text: 'Career Growth Opportunities', label: 'C.'),
                        const SizedBox(height: 10),
                        PollOption(text: 'Company Culture', label: 'D.'),
                        const SizedBox(height: 18),
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 18,
                              backgroundImage:
                                  AssetImage('assets/images/techsavvy.png'),
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
                ],
              ),
              Positioned(
                left: (358 - 322) / 2,
                right: (358 - 322) / 2,
                bottom: -24,
                child: SizedBox(
                  width: 322,
                  child: ActionBar(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PollOption extends StatelessWidget {
  final String text;
  final bool selected;
  final String? label;
  const PollOption({required this.text, this.selected = false, this.label});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        if (label != null)
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Text(
              label!,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
        Container(
          width: 287,
          height: 40,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: selected ? Colors.lightBlueAccent : Colors.transparent,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.white24),
          ),
          child: Center(
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: selected ? Colors.white : Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class ActionBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 340,
        height: 56,
        decoration: BoxDecoration(
          color: const Color(0xFF232E3C),
          borderRadius: BorderRadius.circular(50),
          border: Border.all(color: Colors.white24, width: 0.5),
        ),
        padding: const EdgeInsets.fromLTRB(15, 3, 15, 3),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 56,
              height: 24,
              child: Stack(
                children: [
                  for (int i = 0; i < 4; i++)
                    Positioned(
                      left: i * 12,
                      child: CircleAvatar(
                        radius: 12,
                        backgroundImage:
                            AssetImage('assets/images/avatar${i + 1}.png'),
                      ),
                    ),
                ],
              ),
            ),
            const SizedBox(width: 5),
            Text('310', style: TextStyle(color: Colors.white, fontSize: 14)),
            const SizedBox(width: 5),
            Icon(Icons.comment, color: Colors.white54, size: 20),
            const SizedBox(width: 8),
            Text("|", style: TextStyle(color: Colors.white, fontSize: 18)),
            const SizedBox(width: 8),
            Row(
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      left: 36,
                      child: CircleAvatar(
                        radius: 12,
                        backgroundColor: Colors.amber,
                        child: const Icon(Icons.emoji_emotions,
                            color: Colors.white, size: 16),
                      ),
                    ),
                    Positioned(
                      left: 18,
                      child: CircleAvatar(
                        radius: 12,
                        backgroundColor: Colors.pinkAccent,
                        child: const Icon(Icons.favorite,
                            color: Colors.white, size: 16),
                      ),
                    ),
                    const CircleAvatar(
                      radius: 12,
                      backgroundColor: Colors.blue,
                      child: Icon(Icons.thumb_up_alt_rounded,
                          color: Colors.white, size: 16),
                    ),
                  ],
                ),
                const SizedBox(width: 36),
                Text('5k+',
                    style: TextStyle(color: Colors.white, fontSize: 14)),
                const SizedBox(width: 5),
                Icon(Icons.thumb_up_alt_outlined,
                    color: Colors.white, size: 20),
                const SizedBox(width: 8),
              ],
            ),
            Text("|", style: TextStyle(color: Colors.white, fontSize: 18)),
            const SizedBox(width: 8),
            Text('50', style: TextStyle(color: Colors.white, fontSize: 14)),
            const SizedBox(width: 5),
            Icon(Icons.share, color: Colors.white54, size: 20),
          ],
        ),
      ),
    );
  }
}

class TopNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          const SizedBox(width: 8),
          // All Posts (selected)
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
            margin: const EdgeInsets.only(right: 8),
            decoration: BoxDecoration(
              color: const Color(0xFF1C4955),
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
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
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
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
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
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
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
    );
  }
}
