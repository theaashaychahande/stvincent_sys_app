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
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Institutional Details
            SectionCard(
              icon: '🏫',
              title: 'Institutional Details',
              content: [
                'Full College Name: St. Vincent Pallotti College of Engineering & Technology (SVPCET)',
                'Year of Establishment: 2004',
                'Type: Private | Autonomous | Self-Financed',
                'Affiliation: Rashtrasant Tukadoji Maharaj Nagpur University (RTMNU)',
                'Approved By: AICTE (All India Council for Technical Education), DTE Mumbai (Directorate of Technical Education, Maharashtra)',
                'Accreditation:',
                '  - NAAC Grade \'A\' (CGPA 3.19)',
                '  - NBA Accredited Branches: Electrical, Electronics & Telecommunication, Mechanical, Information Technology, Computer Science & Engineering',
                'Campus Area: Approximately 10 acres',
              ],
            ),
            SizedBox(height: 20),

            // Academic Overview
            SectionCard(
              icon: '🎓',
              title: 'Academic Overview',
              content: [
                'Total Students: Approx. 2200+',
                'Total Faculty: Approx. 150+',
                'Departments: 10 B.Tech, 6 M.Tech, Ph.D. Center, Vocational & Management programs',
                'Ranking: NIRF Listed',
                'Recognition: NAAC and NBA accreditations',
              ],
            ),
            SizedBox(height: 20),

            // Management & Leadership
            SectionCard(
              icon: '🧭',
              title: 'Management & Leadership',
              content: [
                'Chairman & President: Dr. Fr. Joy Palachuvattil SAC',
                'Vice President: Dr. Fr. Varghese Pullan SAC',
                'Secretary: Fr. James Thomas SAC',
                'Treasurer: Fr. Johnson Puthur SAC',
                'Members: Fr. Mathew Panakal SAC, Fr. Thomas Manjaly SAC, Fr. Johnson Maniyamkott SAC',
                '',
                'Principal: Dr. Vijay M. Wadhai',
                'Director: Dr. Fr. Paul Chandrankunnel SAC',
                'Financial Administrator: Fr. Siju Jose SAC',
                'Institute Mentor: Prof. Rajendra B. Gowardhan',
                'Dean – Academics: Dr. Pramod B. Lanjewar',
                'IQAC Dean: Dr. Nitin K. Dhote',
                'Controller of Examination: Dr. Manish M. Jachak',
                '',
                'HODs / Key Coordinators:',
                '  - IT: Dr. Mrs. Shabana S. Pathan',
                '  - CE & III Cell: Dr. Manoj V. Bramhe',
                '  - ME: Dr. Sushant S. Satputaley',
                '  - ETC: Dr. Harish V. Rajurkar',
                '  - EE: Dr. Mrs. Jyoti P. Rothe',
                '  - Civil: Dr. Abhay G. Hirekhan',
                '  - CSE (Data Science): Mr. Abhinav Mule',
                '  - CSE (Cyber Security): Mrs. Bhakti Thakre',
                '  - CSBS: Dr. Pravin H. Sen',
                '  - Industrial IoT: Dr. Shriraghavan R. Madhubushi',
                '  - B.Voc: Dr. Suresh B. Rangankar',
                '  - First Year: Dr. Smita C. Tolani',
                '  - Artificial Intelligence: Prof. Vikas G. Bhowate',
                '  - Robotics & AI: Dr. Amit R. Bhende',
              ],
            ),
            SizedBox(height: 20),

            // Location & Access
            SectionCard(
              icon: '🗺️',
              title: 'Location & Access',
              content: [
                'Address: St. Vincent Pallotti College of Engineering & Technology, Gavsi Manapur, Wardha Road, Nagpur, Maharashtra, India – Pin: 441108',
                'Nearest Landmark: Near Raheja Layout, Wardha Road',
                'Nearest Railway Station: Nagpur Railway Station (~10 km)',
                'Nearest Airport: Dr. Babasaheb Ambedkar International Airport (~6.5 km)',
              ],
            ),
            SizedBox(height: 20),

            // Contact Information
            SectionCard(
              icon: '📞',
              title: 'Contact Information',
              content: [
                'Email: info@stvincentngp.edu.in',
                'Phone: +91 7743979315, +91 9423683433',
                'B.Voc Admissions: +91 9699833757',
                'Website: www.stvincentngp.edu.in',
              ],
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class SectionCard extends StatelessWidget {
  final String icon;
  final String title;
  final List<String> content;

  const SectionCard(
      {super.key,
      required this.icon,
      required this.title,
      required this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFF8F9FA),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
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
    );
  }
}
