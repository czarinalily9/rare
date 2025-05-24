import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CommunityScreen extends StatelessWidget {
  const CommunityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Community'),
          bottom: TabBar(
            tabs: const [
              Tab(text: 'People'),
              Tab(text: 'Doctors'),
              Tab(text: 'Community'),
            ],
            labelColor: Theme.of(context).colorScheme.primary,
            unselectedLabelColor: Colors.grey,
            indicatorColor: Theme.of(context).colorScheme.primary,
          ),
        ),
        body: TabBarView(
          children: [
            _buildPeopleSection(context),
            _buildDoctorsSection(context),
            _buildCommunitySection(context),
          ],
        ),
      ),
    );
  }

  Widget _buildPeopleSection(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    child: Text('JD'),
                  ),
                  const SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Juan Dela Cruz',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Text(
                        '23h',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Text(
                'Hi everyone,\nJust wanted to share a bit of my story. I was diagnosed with a rare condition called Hidradenitis Suppurativa (HS) in 2024. It started with painful tracts forming under my arms, which made simple things like moving, dressing, or even just resting really uncomfortable. Eventually, I had to undergo a wide excision surgery in my armpit area to remove the tracts.\n\nIt was one of the most unexpected and difficult things I\'ve been through, and honestly, I hope I never have to go through that again. When I started reading up on it, I found out just how rare it is — there\'s not a lot of data out there, and treatment options are still pretty limited.\n\nI\'m thankful mine was diagnosed correctly, especially considering how rare it is. It\'s been a year since the surgery, and I\'ve been doing much better since then. I\'m currently in physical therapy to regain full shoulder movement, and I\'m still being monitored because HS has a high chance of coming back.\n\nIt\'s been a rough road, but I\'m taking it one step at a time. If anyone else is dealing with this, I see you — you\'re not alone.',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const Divider(height: 32),
              _buildComment(
                context,
                name: 'Anne Curtis',
                comment: 'Sending you love and strength <3 Thank ü for spreading awareness. HS needs more voices like yours.',
                avatar: 'AnneCurtis1people',
              ),
              const SizedBox(height: 16),
              _buildComment(
                context,
                name: 'Darna',
                comment: 'you\'re so brave for sharing this. I\'ve been dealing with flare-ups and considering surgery too. Posts like yours help a lot :)',
                avatar: 'Darna2people',
              ),
              const SizedBox(height: 16),
              _buildComment(
                context,
                name: 'Dr. Khalid',
                comment: 'I\'m a dermatologist and I just want to say you\'re incredibly brave for undergoing wide excision. That\'s not an easy path. Keep up with your therapy and follow-ups! You\'re doing all the right things.',
                avatar: 'khalid3people',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDoctorsSection(BuildContext context) {
    final doctors = [
      {
        'name': 'Cherylle Gavino, MD',
        'avatar': 'CG',
        'number': '1',
      },
      {
        'name': 'Carmencita Padilla, MD, MAHPS',
        'avatar': 'CP',
        'number': '2',
      },
      {
        'name': 'Miguel Dorotan, MD, MSc',
        'avatar': 'MD',
        'number': '3',
      },
      {
        'name': 'Eva Cutiongco-Dela Paz, MD, FPPS',
        'avatar': 'EP',
        'number': '4',
      },
    ];

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: doctors.length,
      itemBuilder: (context, index) {
        final doctor = doctors[index];
        return Card(
          margin: const EdgeInsets.only(bottom: 16),
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Theme.of(context).colorScheme.primary,
              child: Text(
                doctor['number']!,
                style: const TextStyle(color: Colors.white),
              ),
            ),
            title: Text(doctor['name']!),
            trailing: CircleAvatar(
              child: Text(doctor['avatar']!),
            ),
          ),
        );
      },
    );
  }

  Widget _buildCommunitySection(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        _buildCommunityCard(
          context,
          title: 'Rare Disease Technical Working Group (RDTWG)',
          isClickable: true,
          content: 'RDTWG is a pool of experts responsible for identifying and classifying rare diseases designated by the Department of Health (DOH).\n\nEstablished in 2016 under Republic Act No. 10747 (Rare Diseases Act of the Philippines).',
          expandedContent: 'The Rare Diseases Technical Working Group (RDTWG) is a pool of experts designated by the Department of Health (DOH) of the Philippines, established under Republic Act No. 10747, or the Rare Diseases Act of the Philippines. The RDTWG is responsible for identifying and classifying rare diseases, orphan drugs, and orphan products. It formulates policies regulating the approval and certification of these drugs and products and ensures the continuous update of information, diagnosis, and treatment practices. Composed of professionals including experts from the National Institutes of Health (NIH), the RDTWG plays a critical role in implementing a comprehensive and sustainable healthcare system for persons with rare diseases in the country.\n\nLead Agency: Department of Health (DOH)\nKey Partner Institution: National Institutes of Health (NIH)\nWeb Address: https://ncda.gov.ph/disability-laws/republic-acts/ra-10747',
        ),
        const SizedBox(height: 16),
        _buildCommunityCard(
          context,
          title: 'National Organization for Rare Disorders (NORD)',
          isClickable: false,
          content: 'The National Organization for Rare Disorders (NORD) is a nonprofit voluntary health agency that serves as a clearinghouse for information on rare disorders. NORD is committed to the identification, treatment, and cure of rare diseases through education, advocacy, research, policy, and community. NORD administers patients and caregiver assistance programs and supports research grants and collaborations.\n\nCEO: Pamela Gavin\nSenior Advisor: Peter L. Saltonstall\n\nAddress:\n1900 Crown Colony Drive, Suite 310\nQuincy, MA 02169\n\nVoice: (617) 249-7300\nToll-Free Voice: (800) 999-6673\nFax: (203) 263-9938\nWeb Address: https://rarediseases.org',
        ),
      ],
    );
  }

  Widget _buildComment(
    BuildContext context, {
    required String name,
    required String comment,
    required String avatar,
  }) {
    // Determine file extension based on the avatar name
    String extension = avatar.contains('khalid') ? 'png' : 'jpg';
    
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 20,
          backgroundImage: AssetImage('assets/images/$avatar.$extension'),
          backgroundColor: Theme.of(context).colorScheme.primary.withOpacity(0.1),
          onBackgroundImageError: (exception, stackTrace) {
            debugPrint('Error loading image: $avatar');
          },
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: Theme.of(context).textTheme.titleSmall,
              ),
              const SizedBox(height: 4),
              Text(
                comment,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildCommunityCard(
    BuildContext context, {
    required String title,
    required String content,
    required bool isClickable,
    String? expandedContent,
  }) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: isClickable ? Theme.of(context).colorScheme.primary : null,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              content,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            if (isClickable && expandedContent != null) ...[
              const SizedBox(height: 16),
              TextButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text(title),
                      content: SingleChildScrollView(
                        child: Text(expandedContent),
                      ),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text('Close'),
                        ),
                      ],
                    ),
                  );
                },
                child: const Text('See more...'),
              ),
            ],
          ],
        ),
      ),
    );
  }
} 