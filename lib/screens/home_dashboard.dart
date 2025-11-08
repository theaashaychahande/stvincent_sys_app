import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../widgets/college_logo.dart';
import '../sections/about_page.dart';
import '../sections/basic_info_page.dart';
import '../sections/programs_offered_page.dart';
import '../sections/branches_page.dart';
import '../sections/academics_page.dart';

class HomeDashboard extends StatefulWidget {
  const HomeDashboard({super.key});

  @override
  State<HomeDashboard> createState() => _HomeDashboardState();
}

class _HomeDashboardState extends State<HomeDashboard> {
  final List<String> carouselCaptions = [
    'Innovating the Future of Engineering',
    'Where Technology Meets Excellence',
    'Proudly NBA & NAAC Accredited',
    'Empowering Global Engineers',
    'Cutting-edge Research and Innovation',
    'Dedicated to Student Success',
    'Building Future-Ready Technologists',
  ];

  final List<Map<String, String>> branches = [
    {'name': 'CSE', 'icon': '💻'},
    {'name': 'IT', 'icon': '🧠'},
    {'name': 'ME', 'icon': '⚙️'},
    {'name': 'CE', 'icon': '🏗️'},
    {'name': 'ETC', 'icon': '📡'},
    {'name': 'EE', 'icon': '🔌'},
    {'name': 'Civil', 'icon': '🚧'},
    {'name': 'CSBS', 'icon': '🧬'},
    {'name': 'AI', 'icon': '🤖'},
    {'name': 'Robotics & AI', 'icon': '🦾'},
    {'name': 'Industrial IoT', 'icon': '🌐'},
    {'name': 'B.Voc', 'icon': '🛠️'},
    {'name': 'Data Science', 'icon': '📊'},
    {'name': 'Cyber Security', 'icon': '🔒'},
    {'name': 'First Year', 'icon': '📘'},
  ];

  final List<Map<String, String>> quickLinks = [
    {'name': 'Academic Calendar', 'icon': '📅'},
    {'name': 'Admissions', 'icon': '📝'},
    {'name': 'Departments', 'icon': '🏫'},
    {'name': 'Notices & Circulars', 'icon': '📢'},
    {'name': 'Student Portal', 'icon': '👨‍🎓'},
    {'name': 'Placements', 'icon': '💼'},
    {'name': 'Contact Us', 'icon': '📞'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SVPCET'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: CollegeLogo(size: 32),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
              child: Row(
                children: [
                  CollegeLogo(size: 50),
                  const SizedBox(width: 10),
                  const Text(
                    'SVPCET',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.info_outline),
              title: const Text('About College'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AboutPage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.school),
              title: const Text('Basic Information'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const BasicInfoPage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.menu_book),
              title: const Text('Programs Offered'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProgramsOfferedPage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.account_tree),
              title: const Text('Branches / Departments'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const BranchesPage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.book),
              title: const Text('Academics'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AcademicsPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Carousel Slider
            CarouselSlider(
              options: CarouselOptions(
                height: 200.0,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 5),
                enlargeCenterPage: true,
                scrollDirection: Axis.horizontal,
              ),
              items: List.generate(7, (index) {
                return _buildCarouselItem(index);
              }),
            ),
            const SizedBox(height: 20),
            
            // College Info
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  Text(
                    'St. Vincent Pallotti College of Engineering & Technology, Nagpur',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '(An Autonomous Institution, Accredited by NBA & NAAC)',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Where Innovation Meets Excellence in Engineering.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            
            // Branches Grid
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Our Departments',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: LayoutBuilder(
                builder: (context, constraints) {
                  return GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    childAspectRatio: 2.0,
                    children: [
                      _buildBranchCard({'name': 'Computer Science & Engineering', 'icon': '💻'}),
                      _buildBranchCard({'name': 'Information Technology', 'icon': '🧠'}),
                      _buildBranchCard({'name': 'Mechanical Engineering', 'icon': '⚙️'}),
                      _buildBranchCard({'name': 'Civil Engineering', 'icon': '🏗️'}),
                      _buildBranchCard({'name': 'Electronics & Telecommunication', 'icon': '📡'}),
                      _buildBranchCard({'name': 'Electrical Engineering', 'icon': '🔌'}),
                      _buildBranchCard({'name': 'Computer Science & Business Systems', 'icon': '🧬'}),
                      _buildBranchCard({'name': 'Artificial Intelligence', 'icon': '🤖'}),
                      _buildBranchCard({'name': 'Robotics & Artificial Intelligence', 'icon': '🦾'}),
                      _buildBranchCard({'name': 'Industrial Internet of Things', 'icon': '🌐'}),
                      _buildBranchCard({'name': 'Bachelor of Vocation', 'icon': '🛠️'}),
                      _buildBranchCard({'name': 'Data Science', 'icon': '📊'}),
                      _buildBranchCard({'name': 'Cyber Security', 'icon': '🔒'}),
                      _buildBranchCard({'name': 'First Year', 'icon': '📘'}),
                    ],
                  );
                },
              ),
            ),
            const SizedBox(height: 30),
            
            // Achievements & Accreditations
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Accreditations & Achievements',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: LayoutBuilder(
                builder: (context, constraints) {
                  return GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    childAspectRatio: 1.5,
                    children: [
                      _buildAchievementCard('NAAC', 'A Grade'),
                      _buildAchievementCard('NBA', 'Accredited'),
                      _buildAchievementCard('Autonomous', 'Status'),
                      _buildAchievementCard('AICTE', 'Approved'),
                    ],
                  );
                },
              ),
            ),
            const SizedBox(height: 30),
            
            // Vision & Mission
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Vision & Mission',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Expanded(
                    child: _buildVisionMissionCard(
                      'Vision',
                      'To develop a knowledge-based society with clarity of thoughts and charity at hearts to serve humanity with integrity.',
                      true,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: _buildVisionMissionCard(
                      'Mission',
                      '• Empower youth to be technocrats\n• Foster discipline and knowledge\n• Uphold professional spirit',
                      false,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            
            // Quick Links
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Quick Links',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: LayoutBuilder(
                builder: (context, constraints) {
                  return GridView.count(
                    crossAxisCount: 3,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    childAspectRatio: 1.5,
                    children: quickLinks.map((link) => _buildQuickLinkCard(link)).toList(),
                  );
                },
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  Widget _buildCarouselItem(int index) {
    // Use the actual home images
    final String imagePath = 'assets/home${index + 1}.jpg';
    
    return Container(
      margin: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.transparent,
              Colors.black.withOpacity(0.7),
            ],
          ),
        ),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              carouselCaptions[index],
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildBranchCard(Map<String, String> branch) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              branch['name']!,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Navigate to branch details
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Opening ${branch['name']} details')),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                textStyle: const TextStyle(fontSize: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text('Explore'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAchievementCard(String title, String subtitle) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Placeholder for logo
            Container(
              width: 25,
              height: 25,
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.1),
                borderRadius: BorderRadius.circular(6),
              ),
              child: const Icon(
                Icons.school,
                color: Colors.blue,
                size: 15,
              ),
            ),
            const SizedBox(height: 3),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 1),
            Text(
              subtitle,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 8,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildVisionMissionCard(String title, String content, bool isVision) {
    return Card(
      elevation: 4,
      color: isVision ? Colors.blue.withOpacity(0.1) : Colors.green.withOpacity(0.1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  isVision ? Icons.lightbulb_outline : Icons.adjust,
                  color: isVision ? Colors.blue : Colors.green,
                ),
                const SizedBox(width: 8),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: isVision ? Colors.blue : Colors.green,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Text(
              content,
              style: const TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildQuickLinkCard(Map<String, String> link) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              link['icon']!,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 3),
            Text(
              link['name']!,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 8,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
