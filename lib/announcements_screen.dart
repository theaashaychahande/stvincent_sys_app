import 'package:flutter/material.dart';
import 'widgets/college_logo.dart';

class AnnouncementsScreen extends StatefulWidget {
  const AnnouncementsScreen({super.key});

  @override
  State<AnnouncementsScreen> createState() => _AnnouncementsScreenState();
}

class _AnnouncementsScreenState extends State<AnnouncementsScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  // News & Events data
  final List<Map<String, String>> newsEvents = [
    {
      'image': 'event1',
      'title': 'AICTE–ATAL Academy Sponsored FDP on "Electric Vehicle"',
      'date': '24 Nov 2025',
      'details':
          'A one-week Faculty Development Program focused on Electric Vehicle technology.',
    },
    {
      'image': 'event2',
      'title':
          'One-Week International FDP on "Gen-AI & LLM (Large Language Models)"',
      'date': '9 Nov 2025',
      'details':
          'Organized in collaboration with iBase Electrosoft LLP, Pune; sessions focused on Gen-AI and LLM advancements.',
    },
    {
      'image': 'event3',
      'title': 'Regional Level Hands-on System Programming Workshop',
      'date': '1 Nov 2025',
      'details':
          'Technical workshop report by CSE/IT departments, focused on practical system programming skills.',
    },
    {
      'image': 'event4',
      'title': 'Vande Mataram – 150 Years Celebration',
      'date': '16 Oct 2025',
      'details':
          'A commemorative event celebrating 150 years of the patriotic song "Vande Mataram."',
    },
    {
      'image': 'event5',
      'title': 'Lighting Lives – NSS Diwali Diya Exhibition and Sale',
      'date': '16 Oct 2025',
      'details':
          'NSS cell organized a Diya exhibition and charity sale to support social causes.',
    },
    {
      'image': 'event6',
      'title':
          'Alumni Interaction and Felicitation – Inspiring Journeys, Lifelong Bonds',
      'date': '13 Oct 2025',
      'details':
          'Guest: Mr. Nilay Akre; an interactive alumni session celebrating success stories and mentorship.',
    },
    {
      'image': 'event7',
      'title':
          'AatmaNirbhar Bharat 2.0 – Innovation and Sustainability Summit 2025',
      'date': '11 Oct 2025',
      'details':
          'A national-level summit emphasizing innovation and sustainable technologies for India’s growth.',
    },
    {
      'image': 'event8',
      'title': 'Mechmerise 2K25',
      'date': '10 Oct 2025',
      'details':
          'Annual Mechanical Engineering Department fest featuring competitions, innovation showcases, and technical sessions.',
    },
    {
      'image': 'event9',
      'title': 'Data Drive 4.0',
      'date': '10 Oct 2025',
      'details':
          'Placement and data-driven career event featuring workshops and company interactions.',
    },
    {
      'image': 'event10',
      'title': 'Infinity – Technical Conclave',
      'date': '10 Oct 2025',
      'details':
          'Technical event bringing together innovative projects and research presentations.',
    },
  ];

  // Announcements data
  final List<Map<String, String>> announcements = [
    {
      'title': 'Recruitment Notice',
      'details': 'Latest recruitment notifications for faculty/staff.',
    },
    {
      'title': 'Final Degree Collection Notice',
      'details':
          'Guidelines for degree certificate collection for recent graduates.',
    },
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News, Events & Announcements'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 12),
            child: CollegeLogo(size: 32),
          ),
        ],
      ),
      body: Column(
        children: [
          // Tab bar
          TabBar(
            controller: _tabController,
            indicatorColor: Colors.blue,
            labelColor: Colors.blue,
            unselectedLabelColor: Colors.grey,
            tabs: const [
              Tab(text: 'News & Events'),
              Tab(text: 'Announcements'),
            ],
          ),
          // Tab bar view
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                // News & Events tab
                _buildNewsEventsTab(),
                // Announcements tab
                _buildAnnouncementsTab(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNewsEventsTab() {
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemCount: newsEvents.length,
      itemBuilder: (context, index) {
        return _buildEventCard(newsEvents[index]);
      },
    );
  }

  Widget _buildAnnouncementsTab() {
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemCount: announcements.length,
      itemBuilder: (context, index) {
        return _buildAnnouncementCard(announcements[index]);
      },
    );
  }

  Widget _buildEventCard(Map<String, String> event) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      elevation: 4.0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Event image placeholder
            Container(
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Colors.blue.withOpacity(0.1),
              ),
              child: Center(
                child: Icon(
                  Icons.image,
                  size: 50,
                  color: Colors.blue.withOpacity(0.5),
                ),
              ),
            ),
            const SizedBox(height: 12),
            // Event title
            Text(
              event['title']!,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 8),
            // Event date
            Row(
              children: [
                const Icon(
                  Icons.calendar_today,
                  size: 16,
                  color: Colors.grey,
                ),
                const SizedBox(width: 8),
                Text(
                  event['date']!,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            // Event details
            Text(
              event['details']!,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 16),
            // See Details button
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Opening details for ${event['title']}'),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: const Text('See Details'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAnnouncementCard(Map<String, String> announcement) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      elevation: 4.0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Announcement title
            Row(
              children: [
                const Icon(
                  Icons.campaign,
                  size: 20,
                  color: Colors.blue,
                ),
                const SizedBox(width: 8),
                Text(
                  announcement['title']!,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            // Announcement details
            Text(
              announcement['details']!,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 16),
            // See Details button
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content:
                          Text('Opening details for ${announcement['title']}'),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: const Text('See Details'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
