import 'package:flutter/material.dart';
import '../../theme/theme.dart';
import '../../widgets/bottom_nav_bar.dart';

class AddDonationPage extends StatefulWidget {
  const AddDonationPage({super.key});

  @override
  State<AddDonationPage> createState() => _AddDonationPageState();
}

class _AddDonationPageState extends State<AddDonationPage> {
  final _formKey = GlobalKey<FormState>();
  final _name = TextEditingController();
  final _quantity = TextEditingController();
  final _date = TextEditingController();
  String? _category;
  String? _unit;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Adicionar Doação', style: TextStyle(color: kBlack)),
        backgroundColor: kWhite,
        iconTheme: const IconThemeData(color: kBlack),
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Form(
            key: _formKey,
            child: ListView(
              children: [
                TextFormField(controller: _name, decoration: const InputDecoration(labelText: 'Nome do alimento')),
                const SizedBox(height: 12),
                DropdownButtonFormField<String>(
                  decoration: const InputDecoration(labelText: 'Categoria'),
                  items: ['Leguminosas','Frutas','Verduras', 'Carne'].map((e)=>DropdownMenuItem(value: e, child: Text(e))).toList(),
                  onChanged: (v)=> setState(()=> _category = v),
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Expanded(child: TextFormField(controller: _quantity, decoration: const InputDecoration(labelText: 'Quantidade'))),
                    const SizedBox(width: 12),
                    Expanded(child: DropdownButtonFormField<String>(
                      decoration: const InputDecoration(labelText: 'Unidade'),
                      items: ['Kg','Gramas'].map((e)=>DropdownMenuItem(value: e, child: Text(e))).toList(),
                      onChanged: (v)=> setState(()=> _unit = v),
                    )),
                  ],
                ),
                const SizedBox(height: 12),
                TextFormField(
                  controller: _date,
                  readOnly: true,
                  decoration: const InputDecoration(labelText: 'Data de validade', suffixIcon: Icon(Icons.calendar_today)),
                  onTap: () async {
                    final picked = await showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime.now(), lastDate: DateTime(2100));
                    if (picked!=null) _date.text = '${picked.day.toString().padLeft(2,'0')}/${picked.month.toString().padLeft(2,'0')}/${picked.year}';
                  },
                ),
                const SizedBox(height: 16),
                Container(
                  height: 120,
                  decoration: BoxDecoration(color: kOrange.withOpacity(0.1), borderRadius: BorderRadius.circular(12)),
                  child: const Center(child: Icon(Icons.image, size: 50)),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: kOrange, minimumSize: const Size(double.infinity,48)),
                  onPressed: (){
                    if (_formKey.currentState?.validate() ?? true) {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Doação adicionada (apenas frontend)')));
                      Navigator.pop(context);
                    }
                  },
                  child: const Text('Enviar Doação'),
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
