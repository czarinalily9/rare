import 'package:flutter/material.dart';
import 'package:rare_disease_connect/config/theme.dart';
import 'package:rare_disease_connect/widgets/feature_card.dart';
import 'package:rare_disease_connect/widgets/meta_card.dart';
import '../widgets/chatbot_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void _showChatbot(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => Container(
        height: MediaQuery.of(context).size.height * 0.85,
        decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
        ),
        child: const ChatbotWidget(isPopup: true),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const MetaCard(
              name: 'Dani Martinez',
              age: '19',
              gender: 'Female',
              id: '436B2PA',
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(30),
                  ),
                ),
                child: _buildFeatureGrid(context),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showChatbot(context),
        child: const Icon(Icons.chat),
      ),
    );
  }

  Widget _buildFeatureGrid(BuildContext context) {
    return GridView.count(
      padding: const EdgeInsets.all(20),
      crossAxisCount: 3,
      mainAxisSpacing: 15,
      crossAxisSpacing: 15,
      children: [
        FeatureCard(
          title: 'My\nAppointments',
          color: AppTheme.cardPink,
          onTap: () {},
        ),
        FeatureCard(
          title: 'Lab\nReports',
          color: AppTheme.cardPink,
          onTap: () {},
        ),
        FeatureCard(
          title: 'Radiology',
          color: AppTheme.cardPink,
          onTap: () {},
        ),
        FeatureCard(
          title: 'Medicine\nPrescription',
          color: AppTheme.cardOrange,
          onTap: () {},
        ),
        FeatureCard(
          title: 'Active\nMedications',
          color: AppTheme.cardOrange,
          onTap: () {},
        ),
        FeatureCard(
          title: 'My Doctor\nList',
          color: AppTheme.cardOrange,
          onTap: () {},
        ),
        FeatureCard(
          title: 'Medicine\nPrescription',
          color: AppTheme.cardYellow,
          onTap: () {},
        ),
        FeatureCard(
          title: 'Active\nMedications',
          color: AppTheme.cardYellow,
          onTap: () {},
        ),
        FeatureCard(
          title: 'My Doctor\nList',
          color: AppTheme.cardYellow,
          onTap: () {},
        ),
      ],
    );
  }
} 