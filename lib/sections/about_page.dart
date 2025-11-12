import 'package:flutter/material.dart';
import '../widgets/college_logo.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About SVPCET'),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 12),
            child: CollegeLogo(size: 32),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Hero Section with College Logo and Name
            _buildHeroSection(),
            const SizedBox(height: 30),

            // Overview Card
            _buildOverviewCard(),
            const SizedBox(height: 20),

            // Accreditation & Affiliations
            _buildSectionCard(
              icon: Icons.verified,
              title: 'Accreditation & Affiliations',
              content: 'NAAC accredited with \'A\' Grade and CGPA 3.19 (First Cycle). NBA accredited for various branches. Affiliated to RTM Nagpur University, approved by DTE (Mumbai) & AICTE (Govt. of India).',
              color: Colors.blue,
            ),
            const SizedBox(height: 20),

            // Location
            _buildSectionCard(
              icon: Icons.location_on,
              title: 'Location',
              content: 'Gavsi Manapur, Wardha Road, Nagpur, Maharashtra, India (Pin: 441108)',
              color: Colors.green,
            ),
            const SizedBox(height: 20),

            // Vision & Mission
            _buildVisionMissionSection(),
            const SizedBox(height: 20),

            // Core Values
            _buildValuesSection(),
            const SizedBox(height: 20),

            // Highlights & Achievements
            _buildSectionCard(
              icon: Icons.emoji_events,
              title: 'Highlights & Achievements',
              content: '',
              color: Colors.orange,
              children: [
                _buildAchievementItem('670+', 'Students with internships'),
                _buildAchievementItem('100+', 'Companies for internships'),
                _buildAchievementItem('4000+', 'Alumni across 5 continents'),
                _buildAchievementItem('5', 'NBA Accredited Branches'),
              ],
            ),
            const SizedBox(height: 20),

            // Accreditations & Ranking
            _buildSectionCard(
              icon: Icons.stars,
              title: 'Accreditations & Ranking',
              content: '',
              color: Colors.purple,
              children: [
                _buildBulletPoint('NAAC Grade: \'A\' with CGPA 3.19'),
                _buildBulletPoint('NBA Accreditation valid up to 2027'),
                _buildBulletPoint('NIRF Listed'),
                _buildBulletPoint('Includes SSR, AQARs, and IIQA documentation'),
              ],
            ),
            const SizedBox(height: 20),

            // Committee & Leadership
            _buildSectionCard(
              icon: Icons.groups,
              title: 'Committee & Leadership',
              content: '',
              color: Colors.teal,
              children: [
                _buildBulletPoint('Managed by: The Nagpur Pallottine Society (serving in 46 countries)'),
                _buildBulletPoint('Founder: St. Vincent Pallotti, Catholic priest and educator'),
                _buildBulletPoint('Committees: Governing Body, College Development Committee, Core Committee with deans, HoDs, and industry experts'),
              ],
            ),
            const SizedBox(height: 20),

            // Message
            _buildSectionCard(
              icon: Icons.message,
              title: 'Message from Institution',
              content: 'SVPCET aims to actualize the ideals of its founder—fostering holistic, value-centric, and technologically advanced engineering education. With top accreditations, a vibrant alumni network, strong industry ties, and a vision rooted in service and integrity, it is committed to nurturing technocrats who serve both industry and society.',
              color: Colors.indigo,
            ),
            const SizedBox(height: 20),

            // Contact Information
            _buildSectionCard(
              icon: Icons.contact_mail,
              title: 'Contact Information',
              content: '',
              color: Colors.red,
              children: [
                _buildContactItem(Icons.email, 'info@stvincentngp.edu.in'),
                _buildContactItem(Icons.phone, '+91 7743979315'),
                _buildContactItem(Icons.web, 'www.stvincentngp.edu.in'),
              ],
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  Widget _buildHeroSection() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blue.shade700, Colors.blue.shade900],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.blue.withOpacity(0.3),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            const CollegeLogo(size: 120),
            const SizedBox(height: 20),
            const Text(
              'St. Vincent Pallotti College of Engineering & Technology',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Nagpur, Maharashtra',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                color: Colors.white70,
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.2),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Text(
                'Established: 2004 by the Nagpur Pallottine Society',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOverviewCard() {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.blue.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(
                    Icons.info,
                    color: Colors.blue,
                    size: 24,
                  ),
                ),
                const SizedBox(width: 12),
                const Text(
                  'Institution Overview',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Text(
              'SVPCET is a premier engineering institution in Nagpur, committed to providing quality technical education with strong ethical values. As an autonomous institution, we offer undergraduate and postgraduate programs with a focus on innovation, research, and industry collaboration.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
                height: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionCard({
    required IconData icon,
    required String title,
    required String content,
    required Color color,
    List<Widget>? children,
  }) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: color.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(
                    icon,
                    color: color,
                    size: 24,
                  ),
                ),
                const SizedBox(width: 12),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: color,
                  ),
                ),
              ],
            ),
            if (content.isNotEmpty) ...[
              const SizedBox(height: 16),
              Text(
                content,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                  height: 1.5,
                ),
              ),
            ],
            if (children != null && children.isNotEmpty) ...[
              const SizedBox(height: 16),
              ...children,
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildVisionMissionSection() {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.pink.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(
                    Icons.lightbulb,
                    color: Colors.pink,
                    size: 24,
                  ),
                ),
                const SizedBox(width: 12),
                const Text(
                  'Vision & Mission',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Text(
              'Vision',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'To develop a knowledge-based society with clarity of thoughts and charity at hearts to serve humanity with integrity.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
                height: 1.5,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Mission',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'To empower youth to be technocrats of tomorrow with absolute discipline, quest for knowledge and strong ethos to uphold the spirit of professionalism.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
                height: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildValuesSection() {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(
                    Icons.favorite,
                    color: Colors.deepPurple,
                    size: 24,
                  ),
                ),
                const SizedBox(width: 12),
                const Text(
                  'Core Values',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            _buildValueItem(
              'Human Dignity',
              'Guided by love, goodness, and compassion irrespective of caste, creed, gender, or color, inspired by Mother Teresa.',
              Icons.people,
              Colors.blue,
            ),
            const SizedBox(height: 16),
            _buildValueItem(
              'Faith Perspective',
              'Emphasis on \'intellectual charity\' and unity of knowledge, inspired by Pope Francis.',
              Icons.auto_awesome,
              Colors.green,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildValueItem(String title, String description, IconData icon, Color color) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(6),
          decoration: BoxDecoration(
            color: color.withOpacity(0.1),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(
            icon,
            color: color,
            size: 18,
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                description,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                  height: 1.4,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildAchievementItem(String value, String description) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Container(
            width: 80,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.orange.withOpacity(0.1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              value,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.orange,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              description,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.check_circle, size: 16, color: Colors.green),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContactItem(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Row(
        children: [
          Icon(icon, size: 18, color: Colors.red),
          const SizedBox(width: 12),
          Text(
            text,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
