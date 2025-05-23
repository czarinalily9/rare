import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rare_disease_connect/screens/profile_screen.dart';
import 'package:rare_disease_connect/screens/learn_screen.dart';
import 'package:rare_disease_connect/screens/track_screen.dart';
import 'package:rare_disease_connect/screens/community_screen.dart';
import 'package:rare_disease_connect/screens/appointments_screen.dart';
import 'package:rare_disease_connect/screens/lab_reports_screen.dart';
import 'package:rare_disease_connect/screens/radiology_screen.dart';
import 'package:rare_disease_connect/screens/prescriptions_screen.dart';
import 'package:rare_disease_connect/screens/medications_screen.dart';
import 'package:rare_disease_connect/screens/doctors_screen.dart';
import 'package:rare_disease_connect/screens/medicine_history_screen.dart';
import 'package:rare_disease_connect/screens/test_results_screen.dart';
import 'package:rare_disease_connect/screens/medical_notes_screen.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    ShellRoute(
      builder: (context, state, child) {
        return ScaffoldWithBottomNav(child: child);
      },
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const ProfileScreen(),
          routes: [
            GoRoute(
              path: 'appointments',
              builder: (context, state) => const AppointmentsScreen(),
            ),
            GoRoute(
              path: 'lab-reports',
              builder: (context, state) => const LabReportsScreen(),
            ),
            GoRoute(
              path: 'radiology',
              builder: (context, state) => const RadiologyScreen(),
            ),
            GoRoute(
              path: 'prescriptions',
              builder: (context, state) => const PrescriptionsScreen(),
            ),
            GoRoute(
              path: 'medications',
              builder: (context, state) => const MedicationsScreen(),
            ),
            GoRoute(
              path: 'doctors',
              builder: (context, state) => const DoctorsScreen(),
            ),
            GoRoute(
              path: 'medicine-history',
              builder: (context, state) => const MedicineHistoryScreen(),
            ),
            GoRoute(
              path: 'test-results',
              builder: (context, state) => const TestResultsScreen(),
            ),
            GoRoute(
              path: 'medical-notes',
              builder: (context, state) => const MedicalNotesScreen(),
            ),
          ],
        ),
        GoRoute(
          path: '/learn',
          builder: (context, state) => const LearnScreen(),
        ),
        GoRoute(
          path: '/track',
          builder: (context, state) => const TrackScreen(),
        ),
        GoRoute(
          path: '/community',
          builder: (context, state) => const CommunityScreen(),
        ),
      ],
    ),
  ],
);

class ScaffoldWithBottomNav extends StatelessWidget {
  final Widget child;

  const ScaffoldWithBottomNav({super.key, required this.child});

  void _showChatbot(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => Container(
        height: MediaQuery.of(context).size.height * 0.9,
        decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.smart_toy, color: Colors.white),
                  SizedBox(width: 8),
                  Text(
                    'AI Health Assistant',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Center(
                child: Text(
                  'Chatbot Coming Soon',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.person_outline),
            selectedIcon: Icon(Icons.person),
            label: 'Profile',
          ),
          NavigationDestination(
            icon: Icon(Icons.menu_book_outlined),
            selectedIcon: Icon(Icons.menu_book),
            label: 'Learn',
          ),
          NavigationDestination(
            icon: Icon(Icons.track_changes_outlined),
            selectedIcon: Icon(Icons.track_changes),
            label: 'Track',
          ),
          NavigationDestination(
            icon: Icon(Icons.people_outline),
            selectedIcon: Icon(Icons.people),
            label: 'Community',
          ),
          NavigationDestination(
            icon: Icon(Icons.smart_toy_outlined),
            selectedIcon: Icon(Icons.smart_toy),
            label: 'Chatbot',
          ),
        ],
        onDestinationSelected: (index) {
          if (index == 4) {
            _showChatbot(context);
          } else {
            switch (index) {
              case 0:
                context.go('/');
                break;
              case 1:
                context.go('/learn');
                break;
              case 2:
                context.go('/track');
                break;
              case 3:
                context.go('/community');
                break;
            }
          }
        },
        selectedIndex: _calculateSelectedIndex(GoRouterState.of(context)),
      ),
    );
  }

  int _calculateSelectedIndex(GoRouterState state) {
    final String path = state.uri.path;
    if (path.startsWith('/learn')) return 1;
    if (path.startsWith('/track')) return 2;
    if (path.startsWith('/community')) return 3;
    return 0;
  }
} 