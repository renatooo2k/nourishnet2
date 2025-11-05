import 'package:flutter/material.dart';
import '../../theme/theme.dart';
import 'login_page.dart';
import 'register_donor_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.eco, size: 120, color: kGreen),
                const SizedBox(height: 20),
                const Text(
                  'NourishNet',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: kBlack,
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Seu alimento transforma vidas.\nConecte-se e ajude.',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: kBlack, fontSize: 14),
                ),
                const SizedBox(height: 40),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kOrange,
                    minimumSize: const Size(double.infinity, 48),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const LoginPage()),
                    );
                  },
                  child: const Text('Entrar', style: TextStyle(color: Colors.white)),
                ),
                const SizedBox(height: 12),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kBlue,
                    minimumSize: const Size(double.infinity, 48),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const RegisterDonorPage()),
                    );
                  },
                  child: const Text('Criar Conta', style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
