import 'package:flutter/material.dart';
import '../widgets/college_logo.dart';

class BasicInfoPage extends StatelessWidget {
  const BasicInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Basic Information'),
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
            // Hero Section
            _buildHeroSection(),
            const SizedBox(height: 30),

            // Institutional Details
            _buildSectionCard(
              icon: Icons.account_balance,
              title: 'Institutional Details',
              color: Colors.blue,
              children: [
                _buildInfoItem('Full College Name', 'St. Vincent Pallotti College of Engineering & Technology (SVPCET)'),
                _buildInfoItem('Year of Establishment', '2004'),
                _buildInfoItem('Type', 'Private | Autonomous | Self-Financed'),
                _buildInfoItem('Affiliation', 'Rashtrasant Tukadoji Maharaj Nagpur University (RTMNU)'),
                _buildInfoItem('Approved By', 'AICTE, DTE Mumbai'),
                _buildInfoItem('NAAC Accreditation', 'Grade \'A\' (CGPA 3.19)'),
                _buildInfoItem('NBA Accreditation', 'Electrical, ETC, Mechanical, IT, CSE'),
                _buildInfoItem('Campus Area', 'Approximately 10 acres'),
              ],
            ),
            const SizedBox(height: 20),

            // Academic Overview
            _buildSectionCard(
              icon: Icons.school,
              title: 'Academic Overview',
              color: Colors.green,
              children: [
                _buildStatsItem('Students', '2200+'),
                _buildStatsItem('Faculty', '150+'),
                _buildInfoItem('Departments', '10 B.Tech, 6 M.Tech, Ph.D. Center'),
                _buildInfoItem('Programs', 'Vocational & Management programs'),
                _buildInfoItem('Ranking', 'NIRF Listed'),
                _buildInfoItem('Recognition', 'NAAC and NBA accreditations'),
              ],
            ),
            const SizedBox(height: 20),

            // Management & Leadership
            _buildSectionCard(
              icon: Icons.people,
              title: 'Management & Leadership',
              color: Colors.purple,
              children: [
                _buildLeadershipItem('Chairman & President', 'Dr. Fr. Joy Palachuvattil SAC'),
                _buildLeadershipItem('Vice President', 'Dr. Fr. Varghese Pullan SAC'),
                _buildLeadershipItem('Secretary', 'Fr. James Thomas SAC'),
                _buildLeadershipItem('Principal', 'Dr. Vijay M. Wadhai'),
                _buildLeadershipItem('Director', 'Dr. Fr. Paul Chandrankunnel SAC'),
                _buildLeadershipItem('Dean – Academics', 'Dr. Pramod B. Lanjewar'),
                _buildLeadershipItem('IQAC Dean', 'Dr. Nitin K. Dhote'),
              ],
            ),
            const SizedBox(height: 20),

            // Location & Access
            _buildSectionCard(
              icon: Icons.location_on,
              title: 'Location & Access',
              color: Colors.orange,
              children: [
                _buildInfoItem('Address', 'Gavsi Manapur, Wardha Road, Nagpur, Maharashtra, India – Pin: 441108'),
                _buildInfoItem('Nearest Landmark', 'Near Raheja Layout, Wardha Road'),
                _buildInfoItem('Railway Station', 'Nagpur Railway Station (~10 km)'),
                _buildInfoItem('Airport', 'Dr. Babasaheb Ambedkar International Airport (~6.5 km)'),
              ],
            ),
            const SizedBox(height: 20),

            // Contact Information
            _buildSectionCard(
              icon: Icons.contact_mail,
              title: 'Contact Information',
              color: Colors.red,
              children: [
                _buildContactItem(Icons.email, 'info@stvincentngp.edu.in'),
                _buildContactItem(Icons.phone, '+91 7743979315, +91 9423683433'),
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
            const CollegeLogo(size: 100),
            const SizedBox(height: 20),
            const Text(
              'Basic Information',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Essential details about our institution',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white70,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionCard({
    required IconData icon,
    required String title,
    required Color color,
    required List<Widget> children,
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
            const SizedBox(height: 16),
            ...children,
          ],
        ),
      ),
    );
  }

  Widget _buildInfoItem(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 150,
            child: Text(
              label,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.black87,
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              value,
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

  Widget _buildStatsItem(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Container(
            width: 100,
            child: Text(
              label,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.black87,
              ),
            ),
          ),
          const SizedBox(width: 10),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: Colors.green.withOpacity(0.1),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              value,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLeadershipItem(String position, String name) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 150,
            child: Text(
              position,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.black87,
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              name,
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
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(icon, size: 18, color: Colors.red),
          const SizedBox(width: 12),
          Text(
            text,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
