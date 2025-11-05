import 'package:flutter/material.dart';
import '../../theme/theme.dart';
import 'register_ong_page.dart';
import '../home/home_page.dart';

class RegisterDonorPage extends StatefulWidget {
  const RegisterDonorPage({super.key});

  @override
  State<RegisterDonorPage> createState() => _RegisterDonorPageState();
}

class _RegisterDonorPageState extends State<RegisterDonorPage> {
  final _formKey = GlobalKey<FormState>();
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                const Icon(Icons.person, size: 90, color: kGreen),
                const SizedBox(height: 12),
                const Text('Registrar como Doador', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                const SizedBox(height: 20),
                TextFormField(controller: usernameController, decoration: const InputDecoration(labelText: 'Nome', border: OutlineInputBorder()), validator: (v){ if (v==null||v.isEmpty) return 'Digite seu nome'; return null; }),
                const SizedBox(height: 12),
                TextFormField(controller: emailController, decoration: const InputDecoration(labelText: 'Email', border: OutlineInputBorder()), validator: (v){ if (v==null||v.isEmpty) return 'Digite seu email'; if (!v.contains('@')) return 'Email inválido'; return null; }),
                const SizedBox(height: 12),
                TextFormField(controller: passwordController, decoration: const InputDecoration(labelText: 'Senha', border: OutlineInputBorder()), obscureText: true, validator: (v){ if (v==null||v.isEmpty) return 'Digite sua senha'; if (v.length<6) return 'Senha muito curta'; return null; }),
                const SizedBox(height: 12),
                TextFormField(controller: confirmController, decoration: const InputDecoration(labelText: 'Confirmar Senha', border: OutlineInputBorder()), obscureText: true, validator: (v){ if (v!=passwordController.text) return 'Senhas não coincidem'; return null; }),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: kGreen),
                      onPressed: (){},
                      child: const Text('Doador', style: TextStyle(color: Colors.white)),
                    ),
                    const SizedBox(width: 10),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: kBlue),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_)=> const RegisterOngPage()));
                      },
                      child: const Text('ONG', style: TextStyle(color: Colors.white)),
                    ),
                  ],
                ),
                const SizedBox(height: 18),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: kBlue, minimumSize: const Size(double.infinity,48)),
                  onPressed: () {
                    if (_formKey.currentState?.validate() ?? false) {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const HomePage()));
                    }
                  },
                  child: const Text('Registrar', style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
