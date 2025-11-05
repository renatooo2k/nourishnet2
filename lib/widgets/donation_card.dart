import 'package:flutter/material.dart';
import '../theme/theme.dart';

class DonationCard extends StatelessWidget {
  final String title;
  final String subtitle;
  const DonationCard({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: kGreen.withOpacity(0.6)),
      ),
      child: ListTile(
        leading: const Icon(Icons.image, size: 44),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(subtitle),
        trailing: const Icon(Icons.chevron_right),
      ),
    );
  }
}
