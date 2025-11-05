import 'package:flutter/material.dart';
import '../../theme/theme.dart';
import '../../widgets/donation_card.dart';

class DonationListPage extends StatelessWidget {
  const DonationListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final dummy = List.generate(6, (i) => {
      'title': 'Saco de Feijão ${i+1}',
      'sub': 'Leguminosas • ${5+i} kg'
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Doações', style: TextStyle(color: kBlack)),
        backgroundColor: kWhite,
        iconTheme: const IconThemeData(color: kBlack),
        elevation: 0,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: dummy.length,
        itemBuilder: (context, index) {
          final item = dummy[index];
          return DonationCard(title: item['title']!, subtitle: item['sub']!);
        },
      ),
    );
  }
}
