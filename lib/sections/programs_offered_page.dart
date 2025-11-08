import 'package:flutter/material.dart';
import '../widgets/college_logo.dart';

class ProgramsOfferedPage extends StatelessWidget {
  const ProgramsOfferedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Programs Offered'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: CollegeLogo(size: 32),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Undergraduate Programs
            const ProgramSection(
              icon: '🎓',
              title: 'Undergraduate (B.Tech) Programs',
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
            const ProgramSection(
              icon: '🎯',
              title: 'Postgraduate (M.Tech) Programs',
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
            const ProgramSection(
              icon: '💼',
              title: 'Vocational / Management Programs',
              programs: [
                'B.Voc in Software Development',
                'B.Voc in Automotive Technology',
                'MBA (Master of Business Administration)',
              ],
            ),
            const SizedBox(height: 20),
            
            // Ph.D. & Research Programs
            const ProgramSection(
              icon: '🔬',
              title: 'Ph.D. & Research Programs',
              programs: [
                'Approved Research Center under RTMNU',
                'Research in Engineering and Applied Sciences disciplines',
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class ProgramSection extends StatelessWidget {
  final String icon;
  final String title;
  final List<String> programs;

  const ProgramSection({super.key, required this.icon, required this.title, required this.programs});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              icon,
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(width: 10),
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: programs.map((program) => Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        '• ',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.blue,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          program,
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                )).toList(),
          ),
        ),
      ],
    );
  }
}
