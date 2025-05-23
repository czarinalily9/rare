import 'package:flutter/material.dart';

class NewsTab extends StatelessWidget {
  const NewsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        _buildNewsCard(
          context,
          title: 'Breakthrough in Rare Disease Treatment',
          date: 'March 15, 2024',
          summary: 'Scientists have discovered a new treatment approach for rare genetic disorders using gene therapy, showing promising results in clinical trials.',
          imageUrl: 'assets/images/research.jpg',
        ),
        const SizedBox(height: 16),
        _buildNewsCard(
          context,
          title: 'New Support Program Launched',
          date: 'March 10, 2024',
          summary: 'A new nationwide support program has been launched to help families affected by rare diseases, providing resources and financial assistance.',
          imageUrl: 'assets/images/support.jpg',
        ),
      ],
    );
  }

  Widget _buildNewsCard(
    BuildContext context, {
    required String title,
    required String date,
    required String summary,
    required String imageUrl,
  }) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Container(
              color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
              child: Center(
                child: Icon(
                  Icons.newspaper,
                  size: 48,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ),
          ),
          Padding(
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
                  date,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  summary,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(height: 16),
                TextButton(
                  onPressed: () {
                    // TODO: Implement read more functionality
                  },
                  child: const Text('Read More'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
} 