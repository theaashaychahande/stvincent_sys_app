import 'package:flutter/material.dart';
import '../widgets/college_logo.dart';

class AcademicsPage extends StatelessWidget {
  const AcademicsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('🎓 Academics'),
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AcademicCard(
              title: 'Academic Pattern & System',
              content: [
                'Follows an autonomous evaluation pattern under RTMNU with a modified CBCS system.',
                'Offers academic flexibility, continuous assessment, and elective options.',
                'B.Tech programs: 8 semesters (4 years).',
              ],
            ),
            SizedBox(height: 16),
            AcademicCard(
              title: 'Academic Calendar / Schedule',
              content: [
                'Odd Semester: July–November',
                'Even Semester: January–May',
                'Academic calendar includes exam dates, holidays, and breaks — updated every year for all departments.',
              ],
            ),
            SizedBox(height: 16),
            AcademicCard(
              title: 'Teaching Methodology',
              content: [
                'Project-based learning, flipped classrooms, industrial visits, and expert talks.',
                'Well-equipped labs and e-learning platforms (Moodle/Google Classroom).',
                'Continuous evaluations and innovation-driven activities.',
              ],
            ),
            SizedBox(height: 16),
            AcademicCard(
              title: 'Achievements & Excellence',
              content: [
                '670+ students in internships; 100+ company collaborations.',
                '4000+ alumni across 53 countries.',
                'Multiple faculty research publications and technical competition awards.',
                'NAAC Grade \'A\', NBA Accreditation, and NIRF listed.',
              ],
            ),
            SizedBox(height: 16),
            AcademicResourcesCard(),
            SizedBox(height: 16),
            AcademicCard(
              title: 'Research & Innovation',
              content: [
                'Active R&D Cell, Innovation Cell, and Incubation Center.',
                'Promotes student startups, hackathons, and corporate linkages.',
                'Industry tie-ups with TCS, Bosch, and IITs for training and collaboration.',
              ],
            ),
            SizedBox(height: 16),
            AcademicCard(
              title: 'Special Academic Features',
              content: [
                'Academic Mentorship Program for student guidance.',
                'Bridge Courses and Skill Development Workshops.',
                'Clubs and Cells for holistic development (NSS, ISTE, Holistic Cell, etc.).',
                'Career Development Cell and Tech Fest "Technex" for innovation and exposure.',
              ],
            ),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}

class AcademicCard extends StatelessWidget {
  final String title;
  final List<String> content;

  const AcademicCard({super.key, required this.title, required this.content});

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
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 12),
            ...content.map((text) => Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    text,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

class AcademicResourcesCard extends StatelessWidget {
  const AcademicResourcesCard({super.key});

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
            const Text(
              'Academic Resources',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 12),
            GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: const [
                ResourceButton(icon: '📄', label: 'Syllabus PDFs'),
                ResourceButton(icon: '🗓️', label: 'Academic Calendar'),
                ResourceButton(icon: '⏰', label: 'Time Table'),
                ResourceButton(icon: '🧾', label: 'Exam Schedule'),
                ResourceButton(
                    icon: '🧍‍♂️', label: 'Attendance / Results Portal'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ResourceButton extends StatelessWidget {
  final String icon;
  final String label;

  const ResourceButton({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Placeholder for resource navigation
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Opening $label')),
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue.withOpacity(0.1),
        foregroundColor: Colors.blue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.all(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            icon,
            style: const TextStyle(fontSize: 24),
          ),
          const SizedBox(height: 8),
          Text(
            label,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
