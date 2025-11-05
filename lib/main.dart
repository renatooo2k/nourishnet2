import 'package:flutter/material.dart';
import 'package:nourishnet_test/pages/login/register_donor_page.dart';
import 'theme/theme.dart';
import 'pages/login/login_page.dart';
import 'pages/home/home_page.dart';
import 'pages/home/add_donation_page.dart';
import 'pages/home/donation_list_page.dart';
import 'pages/profile_page.dart';

void main() {
  runApp(NourishNetApp());
}

class NourishNetApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NourishNet',
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterDonorPage(),
        '/home': (context) => HomePage(),
        '/addDonation': (context) => AddDonationPage(),
        '/donationList': (context) => DonationListPage(),
        '/profile': (context) => ProfilePage(),
      },
    );
  }
}
