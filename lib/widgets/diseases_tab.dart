import 'package:flutter/material.dart';

class DiseasesTab extends StatelessWidget {
  const DiseasesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        _buildDiseaseCard(
          context,
          title: 'Pompe Disease',
          description: 'A rare genetic condition that affects the body\'s ability to break down complex sugars.',
          symptoms: ['Muscle weakness', 'Breathing problems', 'Heart issues'],
        ),
        const SizedBox(height: 16),
        _buildDiseaseCard(
          context,
          title: 'Gaucher Disease',
          description: 'A genetic disorder that affects various organs and tissues in the body.',
          symptoms: ['Enlarged liver and spleen', 'Bone problems', 'Low blood counts'],
        ),
        const SizedBox(height: 16),
        _buildDiseaseCard(
          context,
          title: 'Fabry Disease',
          description: 'An inherited disorder that results in the buildup of a particular type of fat.',
          symptoms: ['Pain in hands and feet', 'Skin rash', 'Kidney problems'],
        ),
        const SizedBox(height: 16),
        _buildDiseaseCard(
          context,
          title: 'Hunter Syndrome',
          description: 'A rare genetic disorder affecting multiple organs and tissues.',
          symptoms: ['Distinctive facial features', 'Joint stiffness', 'Breathing problems'],
        ),
        const SizedBox(height: 16),
        _buildDiseaseCard(
          context,
          title: 'Niemann-Pick Disease',
          description: 'A group of inherited disorders that affect the body\'s ability to metabolize fats.',
          symptoms: ['Enlarged liver', 'Learning difficulties', 'Movement problems'],
        ),
      ],
    );
  }

  Widget _buildDiseaseCard(
    BuildContext context, {
    required String title,
    required String description,
    required List<String> symptoms,
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
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              description,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 12),
            Text(
              'Common Symptoms:',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 8),
            ...symptoms.map((symptom) => Padding(
              padding: const EdgeInsets.only(left: 16, bottom: 4),
              child: Row(
                children: [
                  Icon(
                    Icons.circle,
                    size: 8,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    symptom,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
} 