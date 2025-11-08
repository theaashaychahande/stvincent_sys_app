import 'package:flutter/material.dart';

class CalendarSection extends StatefulWidget {
  const CalendarSection({super.key});

  @override
  State<CalendarSection> createState() => _CalendarSectionState();
}

class _CalendarSectionState extends State<CalendarSection>
    with SingleTickerProviderStateMixin {
  bool _isOddSemester = true;
  late AnimationController _animationController;
  late Animation<double> _fadeInAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
    _fadeInAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeIn),
    );
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _toggleSemester(bool isOdd) {
    if (_isOddSemester != isOdd) {
      _animationController.reset();
      setState(() {
        _isOddSemester = isOdd;
      });
      _animationController.forward();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('📅 Academic Calendar'),
        backgroundColor: const Color(0xFF004aad),
        foregroundColor: Colors.white,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Subtitle
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'View semester-wise academic and event schedules',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
          ),
          // Toggle buttons
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () => _toggleSemester(true),
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          _isOddSemester ? const Color(0xFF004aad) : Colors.white,
                      foregroundColor:
                          _isOddSemester ? Colors.white : const Color(0xFF004aad),
                      side: BorderSide(
                        color: const Color(0xFF004aad),
                        width: 2.0,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 12.0),
                    ),
                    child: const Text(
                      'Odd Semester\n(July – November)',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () => _toggleSemester(false),
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          !_isOddSemester ? const Color(0xFFF4B400) : Colors.white,
                      foregroundColor:
                          !_isOddSemester ? Colors.white : const Color(0xFFF4B400),
                      side: BorderSide(
                        color: const Color(0xFFF4B400),
                        width: 2.0,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 12.0),
                    ),
                    child: const Text(
                      'Even Semester\n(January – May)',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          // Calendar image
          Expanded(
            child: FadeTransition(
              opacity: _fadeInAnimation,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Image.asset(
                      _isOddSemester
                          ? 'assets/images/calenderodd.jpg'
                          : 'assets/images/calendereven.jpg',
                      width: double.infinity,
                      fit: BoxFit.contain,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          height: 300,
                          color: Colors.grey[300],
                          child: const Center(
                            child: Text(
                              'Calendar image not available',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 20),
                    // Grid cards
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
                              _buildCalendarCard(
                                Icons.menu_book,
                                'Academic Calendar PDF',
                                true,
                              ),
                              _buildCalendarCard(
                                Icons.assignment,
                                'Exam Timetable',
                                false,
                              ),
                              _buildCalendarCard(
                                Icons.beach_access,
                                'Holiday List',
                                false,
                              ),
                              _buildCalendarCard(
                                Icons.assessment,
                                'Result Dates',
                                false,
                              ),
                              _buildCalendarCard(
                                Icons.event,
                                'Event Schedule',
                                false,
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCalendarCard(IconData icon, String label, bool showDownload) {
    return Card(
      elevation: 4,
      shadowColor: const Color(0xFF004aad).withOpacity(0.3),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          gradient: const LinearGradient(
            colors: [Colors.white, Colors.white],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Text(
            label,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Color(0xFF004aad),
            ),
          ),
        ),
      ),
    );
  }
}
