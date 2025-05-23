import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rare_disease_connect/screens/home_screen.dart';
import 'package:rare_disease_connect/screens/symptom_tracker_screen.dart';
import 'package:rare_disease_connect/screens/community_screen.dart';
import 'package:rare_disease_connect/screens/education_screen.dart';
import 'package:rare_disease_connect/screens/profile_screen.dart';

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
          builder: (context, state) => const HomeScreen(),
        ),
        GoRoute(
          path: '/symptoms',
          builder: (context, state) => const SymptomTrackerScreen(),
        ),
        GoRoute(
          path: '/community',
          builder: (context, state) => const CommunityScreen(),
        ),
        GoRoute(
          path: '/education',
          builder: (context, state) => const EducationScreen(),
        ),
        GoRoute(
          path: '/profile',
          builder: (context, state) => const ProfileScreen(),
        ),
      ],
    ),
  ],
);

class ScaffoldWithBottomNav extends StatelessWidget {
  final Widget child;

  const ScaffoldWithBottomNav({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.track_changes),
            label: 'Symptoms',
          ),
          NavigationDestination(
            icon: Icon(Icons.people),
            label: 'Community',
          ),
          NavigationDestination(
            icon: Icon(Icons.school),
            label: 'Education',
          ),
          NavigationDestination(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        onDestinationSelected: (index) {
          switch (index) {
            case 0:
              context.go('/');
              break;
            case 1:
              context.go('/symptoms');
              break;
            case 2:
              context.go('/community');
              break;
            case 3:
              context.go('/education');
              break;
            case 4:
              context.go('/profile');
              break;
          }
        },
        selectedIndex: _calculateSelectedIndex(GoRouterState.of(context)),
      ),
    );
  }

  int _calculateSelectedIndex(GoRouterState state) {
    final String path = state.uri.path;
    if (path.startsWith('/symptoms')) return 1;
    if (path.startsWith('/community')) return 2;
    if (path.startsWith('/education')) return 3;
    if (path.startsWith('/profile')) return 4;
    return 0;
  }
} 