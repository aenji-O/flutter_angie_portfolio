import 'package:flutter/material.dart';

void main() {
  runApp(const MyPortfolioApp());
}

class MyPortfolioApp extends StatelessWidget {
  const MyPortfolioApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Angie\'s Portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'serif',
        scaffoldBackgroundColor: const Color(0xFFE7D8C9),
      ),
      home: const PortfolioScreen(),
    );
  }
}

class PortfolioScreen extends StatelessWidget {
  const PortfolioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE7D8C9),
      body: SafeArea(
        top: false,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  height: 310, 
                  width: double.infinity,
                  color: const Color(0xFF2B2520),
                  child: Image.asset(
                    'assets/images/CoverPhoto.png',
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        color: const Color(0xFF332924),
                        child: const Icon(Icons.panorama, size: 90, color: Color(0xFFE7D8C9)),
                      );
                    },
                  ),
                ),

                Positioned(
                  bottom: -80,
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: const Color(0xFFE7D8C9), width: 6),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.32),
                          blurRadius: 14,
                          offset: const Offset(0, 5),
                        ),
                      ],
                    ),
                    child: ClipOval(
                      child: SizedBox(
                        width: 160,
                        height: 160,
                        child: Image.asset(
                          'assets/images/ProfilePicture.jpg',
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return Container(
                              color: const Color(0xFF754F36),
                              child: const Icon(Icons.person, size: 85, color: Colors.white),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 95),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 20),
                decoration: BoxDecoration(
                  color: const Color(0xFFF0E5D8),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Column(
                  children: [
                    const Text(
                      'Angie Odvina',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF553926),
                        letterSpacing: 0.5,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Aspiring Frontend and game developer',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14.5,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF7A583F),
                      ),
                    ),
                    const SizedBox(height: 8),

                    const Text(
                      'A 3rd-year IT student happiest at the intersection of visual design and web development',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 13,
                        height: 1.35,
                        fontStyle: FontStyle.italic,
                        color: Color(0xFF7A583F),
                      ),
                    ),
                    const SizedBox(height: 20),

                    GestureDetector(
                      onTap: () {
                        print('September 6 2026');
                      },
                      onDoubleTap: () {
                        print('Albert Q. Alforja');
                      },
                      onLongPress: () {
                        print('Angie Tapal Odvina');
                      },
                      child: ElevatedButton(
                        onPressed: () {
                          print('September 6 2026');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF754F36),
                          foregroundColor: Colors.white,
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24),
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 46,
                            vertical: 12,
                          ),
                        ),
                        child: const Text(
                          'Click me',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 16),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Divider(color: Color(0xFFD4C2AF), thickness: 1.2),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Skills',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF553926),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildSkillItem('JAVA', Icons.local_cafe, const Color(0xFF754F36)),
                      _buildSkillItem('HTML', Icons.code, const Color(0xFF8F6346)),
                      _buildSkillItem('CSS', Icons.css, const Color(0xFFA67B5B)),
                      _buildSkillItem('JAVASCRIPT', Icons.javascript, const Color(0xFFC89F7C)),
                      _buildSkillItem('FLUTTER', Icons.smartphone, const Color(0xFFD8B99D)),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 12),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Interests',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF553926),
                    ),
                  ),
                  const SizedBox(height: 14),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildInterestItem('assets/images/coffee.jpg', 'Coffee'),
                      const SizedBox(width: 10),
                      _buildInterestItem('assets/images/cats.jpg', 'Cats'),
                      const SizedBox(width: 10),
                      _buildInterestItem('assets/images/coding.jpg', 'Coding'),
                    ],
                  ),
                  const SizedBox(height: 14),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildInterestItem('assets/images/reading.jpg', 'Reading'),
                      const SizedBox(width: 10),
                      _buildInterestItem('assets/images/watching.jpg', 'Watching'),
                      const SizedBox(width: 10),
                      _buildInterestItem('assets/images/playing.jpg', 'Playing'),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 12),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'More information',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF553926),
                    ),
                  ),
                  const SizedBox(height: 12),
                  Card(
                    elevation: 2,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                    clipBehavior: Clip.antiAlias,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            children: [
                              ClipOval(
                                child: SizedBox(
                                  width: 38,
                                  height: 38,
                                  child: Image.asset(
                                    'assets/images/ProfilePicture.jpg',
                                    fit: BoxFit.cover,
                                    errorBuilder: (context, error, stackTrace) => Container(
                                      color: const Color(0xFF754F36),
                                      child: const Icon(Icons.person, size: 22, color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10),
                              const Text(
                                'Angie Odvina',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF553926),
                                ),
                              ),
                            ],
                          ),
                        ),

                        Container(
                          width: double.infinity,
                          height: 330,
                          color: const Color(0xFFF5EFEB),
                          child: Image.asset(
                            'assets/images/PostPhoto.png',
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) {
                              return Container(
                                color: const Color(0xFFEDE0D4),
                                child: const Center(
                                  child: Icon(Icons.image, size: 65, color: Color(0xFF754F36)),
                                ),
                              );
                            },
                          ),
                        ),

                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 14.0, vertical: 10.0),
                          child: Row(
                            children: [
                              Icon(Icons.favorite_border, color: Color(0xFF423225), size: 24),
                              SizedBox(width: 16),
                              Icon(Icons.chat_bubble_outline, color: Color(0xFF423225), size: 23),
                              SizedBox(width: 16),
                              Icon(Icons.send_outlined, color: Color(0xFF423225), size: 23),
                            ],
                          ),
                        ),

                        const Padding(
                          padding: EdgeInsets.only(left: 14.0, right: 14.0, bottom: 18.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Full Name: Angie Tapal Odvina',
                                style: TextStyle(fontSize: 13, color: Color(0xFF4A382A)),
                              ),
                              SizedBox(height: 3),
                              Text(
                                'Nickname: Ange',
                                style: TextStyle(fontSize: 13, color: Color(0xFF4A382A)),
                              ),
                              SizedBox(height: 3),
                              Text(
                                'Age: 20 years old',
                                style: TextStyle(fontSize: 13, color: Color(0xFF4A382A)),
                              ),
                              SizedBox(height: 3),
                              Text(
                                'Course: BSIT',
                                style: TextStyle(fontSize: 13, color: Color(0xFF4A382A)),
                              ),
                              SizedBox(height: 3),
                              Text(
                                'School: Pamantasan ng Cabuyao',
                                style: TextStyle(fontSize: 13, color: Color(0xFF4A382A)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 28),
          ],
        ),
      ),
    );
  }

  Widget _buildSkillItem(String name, IconData iconData, Color bgColor) {
    return SizedBox(
      width: 62,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 58,
            height: 58,
            decoration: BoxDecoration(
              color: bgColor,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.14),
                  blurRadius: 5,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Icon(iconData, color: Colors.white, size: 28),
          ),
          const SizedBox(height: 6),
          Text(
            name,
            textAlign: TextAlign.center,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
              color: Color(0xFF754F36),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInterestItem(String assetPath, String caption) {
    return Expanded(
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 1.0,
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xFF754F36),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.12),
                    blurRadius: 4,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  assetPath,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      color: const Color(0xFF754F36),
                      child: Center(
                        child: Text(
                          caption,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
          const SizedBox(height: 6),
          Text(
            caption,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Color(0xFF553926),
            ),
          ),
        ],
      ),
    );
  }
}