import 'package:flutter/material.dart';
import '../theme/theme.dart';
import '../widgets/bottom_nav_bar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      body: SafeArea(
        child: Column(
          children: [
            // Linha superior com botão Editar
            Padding(
              padding: const EdgeInsets.only(top: 8, right: 16),
              child: Align(
                alignment: Alignment.topRight,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Editar",
                    style: TextStyle(color: Colors.orange, fontSize: 14),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 8),

            // Ícone/avatar
            const CircleAvatar(
              radius: 50,
              backgroundColor: Colors.orange,
              child: Icon(Icons.person, color: Colors.white, size: 60),
            ),

            const SizedBox(height: 16),

            // Nome
            const Text(
              "Renato Milsoni",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),

            const SizedBox(height: 6),

            // Subtexto
            const Text(
              "Doador desde Março 2023",
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 24),

            // Caixa Bio
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Bio",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Proprietário de restaurante comprometido em reduzir o desperdício de alimentos. "
                      "Acredito que podemos fazer a diferença na comunidade compartilhando o excedente com quem precisa.",
                      style: TextStyle(fontSize: 14, color: Colors.black87, height: 1.4),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
