import 'package:flutter/material.dart';
import 'package:rare_disease_connect/config/theme.dart';
import 'package:rare_disease_connect/widgets/feature_card.dart';
import 'package:rare_disease_connect/widgets/chatbot_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            _buildHeader(context),
            Expanded(
              child: _buildFeatureGrid(context),
            ),
          ],
        ),
      ),
      floatingActionButton: const ChatbotButton(),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome back,',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Patient Name',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ],
              ),
              IconButton(
                icon: const Icon(Icons.notifications_outlined),
                onPressed: () {},
                tooltip: 'Notifications',
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            'ID: 436B2PA',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Colors.grey[600],
                ),
          ),
        ],
      ),
    );
  }

  Widget _buildFeatureGrid(BuildContext context) {
    return GridView.count(
      padding: const EdgeInsets.all(20),
      crossAxisCount: 2,
      mainAxisSpacing: 20,
      crossAxisSpacing: 20,
      children: [
        FeatureCard(
          title: 'My Appointments',
          icon: Icons.calendar_today,
          color: AppTheme.primaryColor.withOpacity(0.2),
          onTap: () {},
        ),
        FeatureCard(
          title: 'Lab Reports',
          icon: Icons.science,
          color: AppTheme.secondaryColor.withOpacity(0.2),
          onTap: () {},
        ),
        FeatureCard(
          title: 'Radiology',
          icon: Icons.image_search,
          color: Colors.blue.withOpacity(0.2),
          onTap: () {},
        ),
        FeatureCard(
          title: 'Medicine Prescription',
          icon: Icons.medical_services,
          color: Colors.orange.withOpacity(0.2),
          onTap: () {},
        ),
        FeatureCard(
          title: 'Active Medications',
          icon: Icons.medication,
          color: Colors.green.withOpacity(0.2),
          onTap: () {},
        ),
        FeatureCard(
          title: 'My Doctor List',
          icon: Icons.people,
          color: Colors.purple.withOpacity(0.2),
          onTap: () {},
        ),
      ],
    );
  }
} 