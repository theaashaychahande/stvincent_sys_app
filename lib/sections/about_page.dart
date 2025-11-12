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
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // College Logo and Name
            Center(
              child: CollegeLogo(size: 100),
            ),
            SizedBox(height: 20),
            Center(
              child: Text(
                'St. Vincent Pallotti College of Engineering & Technology, Nagpur',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: Text(
                'Established: 2004 by the Nagpur Pallottine Society',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
            ),
            SizedBox(height: 30),

            // Accreditation & Affiliations
            SectionTitle('Accreditation & Affiliations'),
            SectionText(
                'NAAC accredited with \'A\' Grade and CGPA 3.19 (First Cycle). NBA accredited for various branches. Affiliated to RTM Nagpur University, approved by DTE (Mumbai) & AICTE (Govt. of India).'),
            SizedBox(height: 20),

            // Location
            SectionTitle('Location'),
            SectionText(
                'Gavsi Manapur, Wardha Road, Nagpur, Maharashtra, India (Pin: 441108)'),
            SizedBox(height: 30),

            // Vision
            SectionTitle('Vision'),
            SectionText(
                'To develop a knowledge-based society with clarity of thoughts and charity at hearts to serve humanity with integrity.'),
            SizedBox(height: 20),

            // Mission
            SectionTitle('Mission'),
            SectionText(
                'To empower youth to be technocrats of tomorrow with absolute discipline, quest for knowledge and strong ethos to uphold the spirit of professionalism.'),
            SizedBox(height: 30),

            // Core Values
            SectionTitle('Core Values'),
            BulletPoint(
                'Human Dignity: Guided by love, goodness, and compassion irrespective of caste, creed, gender, or color, inspired by Mother Teresa.'),
            BulletPoint(
                'Faith Perspective: Emphasis on \'intellectual charity\' and unity of knowledge, inspired by Pope Francis.'),
            SizedBox(height: 30),

            // Highlights & Achievements
            SectionTitle('Highlights & Achievements'),
            BulletPoint('670+ students have opted for internships.'),
            BulletPoint('Collaboration with 100+ companies for internships.'),
            BulletPoint('4000+ alumni across 5 continents and 53 nations.'),
            BulletPoint(
                'NBA Accredited Branches: Electrical, E&TC, Mechanical, IT, and CSE.'),
            BulletPoint(
                'Strong governing body with experts from Bosch, TCS, IIT, VNIT, and Govt. sectors.'),
            SizedBox(height: 30),

            // Accreditations & Ranking
            SectionTitle('Accreditations & Ranking'),
            BulletPoint('NAAC Grade: \'A\' with CGPA 3.19'),
            BulletPoint('NBA Accreditation valid up to 2027 (stream-wise)'),
            BulletPoint('NIRF Listed'),
            BulletPoint('Includes SSR, AQARs, and IIQA documentation'),
            SizedBox(height: 30),

            // Committee & Leadership
            SectionTitle('Committee & Leadership'),
            BulletPoint(
                'Managed by: The Nagpur Pallottine Society (serving in 46 countries).'),
            BulletPoint(
                'Founder: St. Vincent Pallotti, Catholic priest and educator.'),
            BulletPoint(
                'Committees: Governing Body, College Development Committee, Core Committee with deans, HoDs, and industry experts.'),
            SizedBox(height: 30),

            // Message
            SectionTitle('Message'),
            SectionText(
                'SVPCET aims to actualize the ideals of its founder—fostering holistic, value-centric, and technologically advanced engineering education. With top accreditations, a vibrant alumni network, strong industry ties, and a vision rooted in service and integrity, it is committed to nurturing technocrats who serve both industry and society.'),
            SizedBox(height: 30),

            // Contact Information
            SectionTitle('Contact Information'),
            BulletPoint('📧 Email: info@stvincentngp.edu.in'),
            BulletPoint('📞 Admission Phone: +91 7743979315'),
            BulletPoint('🌐 Website: www.stvincentngp.edu.in'),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Colors.black87,
      ),
    );
  }
}

class SectionText extends StatelessWidget {
  final String text;

  const SectionText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 16,
        color: Colors.grey,
      ),
    );
  }
}

class BulletPoint extends StatelessWidget {
  final String text;

  const BulletPoint(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.circle, size: 8, color: Colors.grey),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
