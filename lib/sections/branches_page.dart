import 'package:flutter/material.dart';
import '../widgets/college_logo.dart';

class BranchesPage extends StatelessWidget {
  const BranchesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Branches'),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 12),
            child: CollegeLogo(size: 32),
          ),
        ],
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            BranchCard(
              icon: '💻',
              branchName: 'Computer Science & Engineering (CSE)',
              hod: 'Dr. Manoj V. Bramhe',
              focus:
                  'Core computer systems, software development, and algorithms.',
              highlight:
                  'NBA Accredited; offers electives in AI, ML, and Cloud Computing.',
            ),
            SizedBox(height: 16),
            BranchCard(
              icon: '🧠',
              branchName: 'Information Technology (IT)',
              hod: 'Dr. Mrs. Shabana S. Pathan',
              focus:
                  'Software systems, databases, and application technologies.',
              highlight:
                  'Strong industry linkages with IT firms for internships.',
            ),
            SizedBox(height: 16),
            BranchCard(
              icon: '⚙️',
              branchName: 'Mechanical Engineering (ME)',
              hod: 'Dr. Sushant S. Satputaley',
              focus: 'Manufacturing, design, thermodynamics, and automation.',
              highlight:
                  'NBA Accredited; well-equipped labs and industrial collaborations.',
            ),
            SizedBox(height: 16),
            BranchCard(
              icon: '📡',
              branchName: 'Electronics & Telecommunication Engineering (ETC)',
              hod: 'Dr. Harish V. Rajurkar',
              focus:
                  'Embedded systems, communication networks, and signal processing.',
              highlight: 'NBA Accredited; specialized IoT and VLSI training.',
            ),
            SizedBox(height: 16),
            BranchCard(
              icon: '🔌',
              branchName: 'Electrical Engineering (EE)',
              hod: 'Dr. Mrs. Jyoti P. Rothe',
              focus:
                  'Electrical machines, power systems, and renewable energy.',
              highlight: 'NBA Accredited; emphasis on sustainable technology.',
            ),
            SizedBox(height: 16),
            BranchCard(
              icon: '🏗️',
              branchName: 'Civil Engineering',
              hod: 'Dr. Abhay G. Hirekhan',
              focus: 'Structural, environmental, and geotechnical engineering.',
              highlight:
                  'Industry collaboration for real-world construction projects.',
            ),
            SizedBox(height: 16),
            BranchCard(
              icon: '🧩',
              branchName: 'CSE – Data Science',
              hod: 'Mr. Abhinav Mule',
              focus:
                  'Data analytics, visualization, and AI-based decision systems.',
              highlight: 'Modern labs with Python, TensorFlow, and R tools.',
            ),
            SizedBox(height: 16),
            BranchCard(
              icon: '🔐',
              branchName: 'CSE – Cyber Security',
              hod: 'Mrs. Bhakti Thakre',
              focus: 'Network security, cryptography, and ethical hacking.',
              highlight: 'Includes hands-on security simulation workshops.',
            ),
            SizedBox(height: 16),
            BranchCard(
              icon: '🧬',
              branchName: 'CSBS (Computer Science & Business Systems)',
              hod: 'Dr. Pravin H. Sen',
              focus: 'Integration of computing, data, and business processes.',
              highlight: 'Industry partnership with TCS for curriculum design.',
            ),
            SizedBox(height: 16),
            BranchCard(
              icon: '🌐',
              branchName: 'Industrial IoT',
              hod: 'Dr. Shriraghavan R. Madhubushi',
              focus:
                  'Smart devices, automation, and connectivity technologies.',
              highlight: 'Practical IoT applications with industrial tools.',
            ),
            SizedBox(height: 16),
            BranchCard(
              icon: '🛠️',
              branchName: 'B.Voc (Vocational Studies)',
              hod: 'Dr. Suresh B. Rangankar',
              focus:
                  'Skill-based training and employability-oriented programs.',
              highlight: 'Includes internships and job-linked modules.',
            ),
            SizedBox(height: 16),
            BranchCard(
              icon: '📘',
              branchName: 'First Year Department',
              hod: 'Dr. Smita C. Tolani',
              focus:
                  'Foundation courses in physics, mathematics, and programming.',
              highlight:
                  'Dedicated mentorship for smooth transition into engineering.',
            ),
            SizedBox(height: 16),
            BranchCard(
              icon: '🤖',
              branchName: 'Artificial Intelligence',
              hod: 'Prof. Vikas G. Bhowate',
              focus:
                  'AI, ML, neural networks, and natural language processing.',
              highlight: 'Research-driven learning with project exposure.',
            ),
            SizedBox(height: 16),
            BranchCard(
              icon: '🔭',
              branchName: 'Robotics & AI',
              hod: 'Dr. Amit R. Bhende',
              focus:
                  'Intelligent robotics, automation, and AI-based control systems.',
              highlight: 'Emerging interdisciplinary program.',
            ),
          ],
        ),
      ),
    );
  }
}

class BranchCard extends StatelessWidget {
  final String icon;
  final String branchName;
  final String hod;
  final String focus;
  final String highlight;

  const BranchCard({
    super.key,
    required this.icon,
    required this.branchName,
    required this.hod,
    required this.focus,
    required this.highlight,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
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
                Text(
                  icon,
                  style: const TextStyle(fontSize: 24),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    branchName,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            _buildInfoRow('HOD', hod),
            const SizedBox(height: 8),
            _buildInfoRow('Focus', focus),
            const SizedBox(height: 8),
            _buildInfoRow('Highlight', highlight),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$label: ',
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.blue,
          ),
        ),
        Expanded(
          child: Text(
            value,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
        ),
      ],
    );
  }
}
