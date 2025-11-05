import 'package:flutter/material.dart';
import '../../theme/theme.dart';
import 'donation_list_page.dart';
import '../../widgets/bottom_nav_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('Olá, Renato', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: kBlack)),
                    Icon(Icons.notifications, color: kBlack)
                  ],
                ),
                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 4, offset: Offset(0,2))],
                  ),
                  child: Row(
                    children: const [
                      Icon(Icons.emoji_events, color: kGreen, size: 40),
                      SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Nível 100!', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: kBlack)),
                          Text('Parabéns', style: TextStyle(color: kBlack)),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(child: _statCard('100 KG', 'Doado', kGreen)),
                    const SizedBox(width: 12),
                    Expanded(child: _statCard('20', 'ONGs Ajudadas', kOrange)),
                  ],
                ),
                const SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    color: kWhite,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 4, offset: Offset(0,2))],
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 120,
                        decoration: BoxDecoration(
                          color: kGreen.withOpacity(0.1),
                          borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
                        ),
                        child: const Center(child: Icon(Icons.emoji_food_beverage, size: 60, color: kGreen)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Último alimento doado', style: TextStyle(fontWeight: FontWeight.bold, color: kBlack)),
                            const SizedBox(height: 6),
                            const Text('Saco de feijão - 10kg', style: TextStyle(color: kBlack)),
                            const SizedBox(height: 8),
                            Align(
                              alignment: Alignment.centerRight,
                              child: TextButton(
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (_) => const DonationListPage()));
                                },
                                child: const Text('Ver mais', style: TextStyle(color: kBlue)),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavBar(), // barra compartilhada
    );
  }

  Widget _statCard(String value, String label, Color color) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 4, offset: Offset(0,2))],
      ),
      child: Column(
        children: [
          Icon(Icons.local_dining, color: color),
          const SizedBox(height: 8),
          Text(value, style: const TextStyle(fontWeight: FontWeight.bold, color: kBlack)),
          Text(label, style: const TextStyle(color: kBlack)),
        ],
      ),
    );
    
  }
}
