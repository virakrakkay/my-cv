import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: CVPage(),
  ));
}

class CVPage extends StatelessWidget {
  const CVPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        children: [
          // LEFT SIDEBAR
          Container(
            width: MediaQuery.of(context).size.width * 0.35,
            color: const Color(0xFF1A365D),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // PROFILE IMAGE SECTION
                Center(
                  child: Container(
                    width: 140,
                    height: 140,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 4),
                      image: const DecorationImage(
                        // THE IMAGE IMPORT HAPPENS HERE
                        image: AssetImage('assets/5Y0A1174.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                _buildSectionTitle('CONTACT', Colors.white),
                _buildSidebarItem(Icons.phone, '012 84 20 43 '),
                _buildSidebarItem(Icons.email, 'chanvirakkay@gmail.com '),
                _buildSidebarItem(
                    Icons.location_on, '7 Makara Phnom Penh Cambodia '),
                const SizedBox(height: 30),
                _buildSectionTitle('LANGUAGE ', Colors.white),
                _buildLanguageItem('Khmer '),
                _buildLanguageItem('English '),
                _buildLanguageItem('French '),
                const SizedBox(height: 30),
                _buildSectionTitle('SKILLS ', Colors.white),
                _buildSkillItem('Time management', 'Expert '),
                _buildSkillItem('Communication', 'Expert '),
                _buildSkillItem('Leadership', 'Expert '),
                _buildSkillItem('Teamwork', 'Expert '),
                _buildSkillItem('Interpersonal', 'Expert '),
                _buildSkillItem('Problem-solving', 'Expert '),
              ],
            ),
          ),

          // RIGHT CONTENT AREA
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('KAY CHANVIRAK ',
                      style: const TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.2)),
                  Text('STUDENT - VOLUNTEER ',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.blueGrey[600],
                          fontWeight: FontWeight.w500)),
                  const SizedBox(height: 20),
                  const Divider(thickness: 1.5),
                  const SizedBox(height: 20),
                  _buildSectionTitle('ABOUT ME ', Colors.black),
                  const Text(
                    'I have been working as a volunteer. I have any experiences working individually and as a team member.  My principle in working is exposure because the core of topic is all about how to increase the exposure of the promoted product. ',
                    style: TextStyle(fontSize: 14, height: 1.5),
                  ),
                  const SizedBox(height: 30),
                  _buildSectionTitle('EDUCATION ', Colors.black),
                  const Text(
                      'Bachelor of Telecommunication and Network Engineering ',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  const Text('ITC | Phnom Penh '),
                  const Text('2023-Present | GPA: 3.0 ',
                      style: TextStyle(color: Colors.grey)),
                  const SizedBox(height: 30),
                  _buildSectionTitle('EXPERIENCE ', Colors.black),
                  _buildExperienceItem(
                      'Volunteer, ACE Graduation Ceremony, ACE ',
                      '8 September 2024-19 January 2025 ',
                      'ITC | Phnom Penh '),
                  _buildExperienceItem(
                      'Volunteer, Cambodia Robotics Olympia, STEAM ',
                      '14 September 2024 ',
                      'AEON MALL Mean Chey | Phnom Penh '),
                  _buildExperienceItem(
                      'Volunteer, Students Association of ITC ',
                      'Present ',
                      'ITC | Phnom Penh '),
                  _buildExperienceItem(
                      'Volunteer, National Career and Productivity Fair 2024, NEA ',
                      '26-27 October 2024 ',
                      'Koh Pich Hall | Phnom Penh '),
                  _buildExperienceItem(
                      'Volunteer, Global Alumni Convention 2024, IDP Education ',
                      '09 November 2024 ',
                      'Sofitel Phnom Penh Phokeethra | Phnom Penh '),
                  _buildExperienceItem('Volunteer, Miss Planet International ',
                      '27 November 2024 ', 'Koh Pich Theater | Phnom Penh '),
                  _buildExperienceItem(
                      'Volunteer, Air & Tech Show ',
                      '13-15 December 2024 ',
                      'Cambodia Air Force | Phnom Penh '),
                  _buildExperienceItem(
                      'Volunteer, Celebrating Cambodia ',
                      '31 December 2024 ',
                      'Front of Royal Palace | Phnom Penh '),
                  _buildExperienceItem('Volunteer, Ed Tech Cambodia ',
                      '13-15 February 2025 ', 'ITC | Phnom Penh'),
                  _buildExperienceItem('Volunteer Angkor Sankranta',
                      '14-16 April 2025', 'Angkor Temple | Siem Reap '),
                  const SizedBox(height: 30),
                  _buildSectionTitle('REFERENCES ', Colors.black),
                  const Text('References available upon request ',
                      style: TextStyle(fontStyle: FontStyle.italic)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Helper widgets (Title, Sidebar Items, Exp Items)
  Widget _buildSectionTitle(String title, Color color) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Text(title,
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: color)),
    );
  }

  Widget _buildSidebarItem(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [
          Icon(icon, color: Colors.white70, size: 18),
          const SizedBox(width: 10),
          Expanded(
              child: Text(text,
                  style: const TextStyle(color: Colors.white, fontSize: 13))),
        ],
      ),
    );
  }

  Widget _buildLanguageItem(String language) {
    return Text(language,
        style: const TextStyle(color: Colors.white, fontSize: 14));
  }

  Widget _buildSkillItem(String skill, String level) {
    return Text('$skill - $level',
        style: const TextStyle(color: Colors.white70, fontSize: 13));
  }

  Widget _buildExperienceItem(String title, String date, String location) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style:
                  const TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
          Text(date, style: const TextStyle(color: Colors.blue, fontSize: 13)),
          Text(location,
              style: const TextStyle(color: Colors.grey, fontSize: 12)),
        ],
      ),
    );
  }
}
