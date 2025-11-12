import 'package:flutter/material.dart';
import '../widgets/college_logo.dart';

class ProgramsOfferedPage extends StatelessWidget {
  const ProgramsOfferedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Programs Offered'),
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

            // Undergraduate Programs
            _buildProgramSection(
              icon: Icons.school,
              title: 'Undergraduate (B.Tech) Programs',
              color: Colors.blue,
              programs: [
                'Computer Science & Engineering (CSE)',
                'Information Technology (IT)',
                'Electronics & Telecommunication Engineering (ETC)',
                'Electrical Engineering (EE)',
                'Mechanical Engineering (ME)',
                'Civil Engineering',
                'Artificial Intelligence & Machine Learning (AI & ML)',
                'Robotics & Artificial Intelligence (RAI)',
                'Industrial Internet of Things (IIoT)',
                'Computer Science & Business Systems (CSBS)',
                'Cyber Security (CSE-CS)',
                'Data Science (CSE-DS)',
              ],
            ),
            const SizedBox(height: 20),

            // Postgraduate Programs
            _buildProgramSection(
              icon: Icons.emoji_events,
              title: 'Postgraduate (M.Tech) Programs',
              color: Colors.green,
              programs: [
                'Computer Science & Engineering',
                'VLSI Design',
                'Electrical Power Systems',
                'Thermal Engineering',
                'Structural Engineering',
                'Industrial Engineering',
              ],
            ),
            const SizedBox(height: 20),

            // Vocational / Management Programs
            _buildProgramSection(
              icon: Icons.business,
              title: 'Vocational / Management Programs',
              color: Colors.orange,
              programs: [
                'B.Voc in Software Development',
                'B.Voc in Automotive Technology',
                'MBA (Master of Business Administration)',
              ],
            ),
            const SizedBox(height: 20),

            // Ph.D. & Research Programs
            _buildProgramSection(
              icon: Icons.science,
              title: 'Ph.D. & Research Programs',
              color: Colors.purple,
              programs: [
                'Approved Research Center under RTMNU',
                'Research in Engineering and Applied Sciences disciplines',
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
              'Programs Offered',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Explore our comprehensive academic offerings',
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

  Widget _buildProgramSection({
    required IconData icon,
    required String title,
    required Color color,
    required List<String> programs,
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
                Expanded(
                  child: Text(
                    title,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: color,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            ...programs.map((program) => _buildProgramItem(program, color)).toList(),
          ],
        ),
      ),
    );
  }

  Widget _buildProgramItem(String program, Color color) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.check_circle, size: 18, color: color),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              program,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.grey,
                height: 1.4,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
