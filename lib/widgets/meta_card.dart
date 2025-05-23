import 'package:flutter/material.dart';

class MetaCard extends StatelessWidget {
  final String name;
  final String age;
  final String gender;
  final String id;

  const MetaCard({
    super.key,
    required this.name,
    required this.age,
    required this.gender,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Container(
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: isDarkMode 
          ? const Color(0xFF4F46E5) // indigo-600
          : const Color(0xFFE0E7FF), // indigo-200
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Welcome back,',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: isDarkMode ? Colors.white70 : Colors.black54,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: isDarkMode ? Colors.white : Colors.black87,
                  ),
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    _buildMetaItem(
                      context,
                      '$age years',
                      Icons.cake_outlined,
                      isDarkMode,
                    ),
                    const SizedBox(width: 16),
                    _buildMetaItem(
                      context,
                      gender,
                      Icons.person_outline,
                      isDarkMode,
                    ),
                    const SizedBox(width: 16),
                    _buildMetaItem(
                      context,
                      'ID: $id',
                      Icons.badge_outlined,
                      isDarkMode,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            top: 20,
            right: 20,
            child: Container(
              decoration: BoxDecoration(
                color: isDarkMode 
                  ? Colors.white.withOpacity(0.1)
                  : Colors.black.withOpacity(0.05),
                borderRadius: BorderRadius.circular(12),
              ),
              child: IconButton(
                icon: const Icon(Icons.notifications_outlined),
                onPressed: () {},
                color: isDarkMode ? Colors.white70 : Colors.black54,
                tooltip: 'Notifications',
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMetaItem(BuildContext context, String text, IconData icon, bool isDarkMode) {
    return Row(
      children: [
        Icon(
          icon,
          size: 16,
          color: isDarkMode ? Colors.white70 : Colors.black54,
        ),
        const SizedBox(width: 4),
        Text(
          text,
          style: TextStyle(
            fontSize: 14,
            color: isDarkMode ? Colors.white70 : Colors.black54,
          ),
        ),
      ],
    );
  }
} 