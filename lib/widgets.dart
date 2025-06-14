import 'package:flutter/material.dart';

// Helper for fallback avatar
class FallbackAvatar extends StatelessWidget {
  final String assetPath;
  final String networkUrl;
  final double radius;
  const FallbackAvatar({
    required this.assetPath,
    required this.networkUrl,
    required this.radius,
  });
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundImage: AssetImage(assetPath),
      onBackgroundImageError: (_, __) {},
      child: Image.asset(
        assetPath,
        errorBuilder: (context, error, stackTrace) {
          return CircleAvatar(
            radius: radius,
            backgroundImage: NetworkImage(networkUrl),
          );
        },
        width: 0,
        height: 0,
      ),
    );
  }
}

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
          decoration: BoxDecoration(
            color: const Color(0xFF23313F),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.black, width: 1),
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
                  imagePath,
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
                        FallbackAvatar(
                          assetPath: 'assets/images/techsavvy.png',
                          networkUrl:
                              'https://randomuser.me/api/portraits/men/32.jpg',
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
              ActionBar(),
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
          decoration: BoxDecoration(
            color: const Color(0xFF23313F),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.black, width: 1),
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
                      'assets/images/video.png',
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
                        FallbackAvatar(
                          assetPath: 'assets/images/techsavvy.png',
                          networkUrl:
                              'https://randomuser.me/api/portraits/men/32.jpg',
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
              ActionBar(),
            ],
          ),
        ),
      ),
    );
  }
}

class TextCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Center(
        child: Container(
          width: 375,
          decoration: BoxDecoration(
            color: Colors.orange[700],
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.black, width: 1),
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
              ActionBar(),
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
          decoration: BoxDecoration(
            color: const Color(0xFF23313F),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.black, width: 1),
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
                    PollOption(text: 'Salary & Benefits', selected: true),
                    const SizedBox(height: 8),
                    PollOption(text: 'Work-Life Balance'),
                    const SizedBox(height: 8),
                    PollOption(text: 'Career Growth Opportunities'),
                    const SizedBox(height: 8),
                    PollOption(text: 'Company Culture'),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        FallbackAvatar(
                          assetPath: 'assets/images/techsavvy.png',
                          networkUrl:
                              'https://randomuser.me/api/portraits/men/32.jpg',
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
              ActionBar(),
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
  const PollOption({required this.text, this.selected = false});
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

class ActionBar extends StatelessWidget {
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
                      child: FallbackAvatar(
                        assetPath: 'assets/images/avatar${i + 1}.png',
                        networkUrl:
                            'https://randomuser.me/api/portraits/men/${30 + i}.jpg',
                        radius: 14,
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
