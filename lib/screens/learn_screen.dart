import 'package:flutter/material.dart';
import '../widgets/overview_tab.dart';
import '../widgets/diseases_tab.dart';
import '../widgets/news_tab.dart';

class LearnScreen extends StatelessWidget {
  const LearnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Learn'),
          bottom: TabBar(
            tabs: const [
              Tab(text: 'Overview'),
              Tab(text: 'Diseases'),
              Tab(text: 'News'),
            ],
            labelColor: Theme.of(context).colorScheme.primary,
            unselectedLabelColor: Colors.grey,
            indicatorColor: Theme.of(context).colorScheme.primary,
          ),
        ),
        body: const TabBarView(
          children: [
            OverviewTab(),
            DiseasesTab(),
            NewsTab(),
          ],
        ),
      ),
    );
  }
} 