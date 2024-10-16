import 'package:flutter/material.dart';

import '../../../../../../constants.dart';

class BuildInfoCard extends StatelessWidget {
  const BuildInfoCard({
    super.key, required this.title,
    required this.icon, required this.children
  });

  final String title;
  final IconData icon;
  final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(icon, color: kBlueDark),
                const SizedBox(width: 8),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const Divider(height: 20, thickness: 1.5),
            ...children,
          ],
        ),
      ),
    );
  }
}
