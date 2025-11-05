import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../widgets/page_layout.dart'; 

class FoodPage extends StatelessWidget {
  const FoodPage({super.key});

  // Function to open the Callsign Brewing kitchen page via URL
  void _launchKitchenPage() async {
    final Uri url = Uri.parse('https://www.callsignbrewing.com/kitchen/');
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return PageLayout(
      title: 'FOOD', // Displays in app bar or header
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Top text section
              const Text(
                'Two of KC’s top food trucks have joined forces to create a brand-new kitchen experience you won’t want to miss.\n\n'
                'Think Hawaiian-style meets Mexican-style cuisine, the perfect match for your favorite Callsign beers.',
                textAlign: TextAlign.center, // Configure text alignment
                style: TextStyle(
                  color: Colors.white, // Configure text color
                  fontSize: 18, // Configure font size
                  height: 1.5,
                ),
              ),

              const SizedBox(height: 30),

              // Clickable menu image
              GestureDetector(
                onTap: _launchKitchenPage,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    'assets/images/menu.png', // Picture of the menu located on the site
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              const SizedBox(height: 20),

              const Text(
                'Tap the menu to learn more!',
                style: TextStyle(color: Colors.white70, fontSize: 14),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

