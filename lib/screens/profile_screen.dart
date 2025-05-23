import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rare_disease_connect/components/meta_card.dart';
import 'package:rare_disease_connect/components/feature_card.dart';
import 'package:rare_disease_connect/config/theme.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const MetaCard(
            name: 'Dani Martinez',
            dateOfBirth: '06/18/2005',
            gender: 'Female',
            age: 19,
            patientId: '436B2PA',
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).scaffoldBackgroundColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(32),
                  topRight: Radius.circular(32),
                ),
              ),
              child: GridView.count(
                padding: const EdgeInsets.all(24),
                crossAxisCount: 3,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                children: [
                  FeatureCard(
                    title: 'My Appointments',
                    backgroundColor: AppTheme.cardPink,
                    icon: Icons.calendar_today,
                    onTap: () => context.push('/appointments'),
                  ),
                  FeatureCard(
                    title: 'Lab Reports',
                    backgroundColor: AppTheme.cardPink,
                    icon: Icons.science,
                    onTap: () => context.push('/lab-reports'),
                  ),
                  FeatureCard(
                    title: 'Radiology',
                    backgroundColor: AppTheme.cardPink,
                    icon: Icons.image_search,
                    onTap: () => context.push('/radiology'),
                  ),
                  FeatureCard(
                    title: 'Medicine Prescription',
                    backgroundColor: AppTheme.cardOrange,
                    icon: Icons.receipt_long,
                    onTap: () => context.push('/prescriptions'),
                  ),
                  FeatureCard(
                    title: 'Active Medications',
                    backgroundColor: AppTheme.cardOrange,
                    icon: Icons.medication,
                    onTap: () => context.push('/medications'),
                  ),
                  FeatureCard(
                    title: 'My Doctor List',
                    backgroundColor: AppTheme.cardOrange,
                    icon: Icons.people,
                    onTap: () => context.push('/doctors'),
                  ),
                  FeatureCard(
                    title: 'Medicine History',
                    backgroundColor: AppTheme.cardYellow,
                    icon: Icons.history,
                    onTap: () => context.push('/medicine-history'),
                  ),
                  FeatureCard(
                    title: 'Test Results',
                    backgroundColor: AppTheme.cardYellow,
                    icon: Icons.analytics,
                    onTap: () => context.push('/test-results'),
                  ),
                  FeatureCard(
                    title: 'Medical Notes',
                    backgroundColor: AppTheme.cardYellow,
                    icon: Icons.note_alt,
                    onTap: () => context.push('/medical-notes'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
} 