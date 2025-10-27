import 'package:flutter/material.dart';
import '../widgets/page_layout.dart';
import 'package:url_launcher/url_launcher.dart'; // For opening website links

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // Helper function to open URL in browser
  void _launchBeerMenu() async {
    final Uri url = Uri.parse('https://www.callsignbrewing.com/our-beers/');
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return PageLayout(
      title: 'HOME', // Title of Home Page
      child: SingleChildScrollView(
        child: Center( //Centering the column horizontally 
          child: Column (
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center, 
            children: [
            const SizedBox(height: 60),

            // Main Title
            const Text(
              'CALLSIGN\nBREWING',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),

            const SizedBox(height: 20),

            // Logo placement
            Image.asset(
              'assets/images/Callsign-logox200.webp',
              width: 200,
              height: 200,
            ),

            const SizedBox(height: 20),

            const Text(
              'BREWERY & TAPROOM',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),

            const SizedBox(height: 30),

            // Beer Menu Button
            ElevatedButton(
              onPressed: _launchBeerMenu,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFD3D3D3),
                foregroundColor: Colors.black,
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 12,
                ),
              ),
              child: const Text('VIEW CRAFT BEER MENU'),
            ),

            const SizedBox(height: 80),

            // Footer showing address and contact information
            const Text(
              'LOCATION\n1340 BURLINGTON ST\nN. KANSAS CITY, MO\nCONTACT@CALLSIGNBREWING.COM',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, height: 1.5, fontSize: 14),
            ),

            const SizedBox(height: 40),
          ],
          ),
        ),
      ),
    );
  }
}
