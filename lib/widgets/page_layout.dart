import 'package:flutter/material.dart';

class PageLayout extends StatelessWidget {
  final Widget child; // Content unique to each page
  final String title; // Page title shown in the AppBar

  const PageLayout({super.key, required this.child, required this.title});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background Image 
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/background.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),

        // Foreground Scaffolding
        Scaffold(
          backgroundColor:
              Colors.transparent, // Allows background to show through
          appBar: AppBar(
            title: Text(
              title,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
            backgroundColor: const Color(0xFFD3D3D3), // Light grey frame
            elevation: 0,
            iconTheme: const IconThemeData(color: Colors.black),
          ),
          // Building the hamburger menu
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                const DrawerHeader(
                  decoration: BoxDecoration(color: Color(0xFFD3D3D3)),
                  child: Center(
                    child: Text(
                      'CALLSIGN BREWING',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                // Hamburger menu items
                _drawerItem(context, 'HOME', '/'),
                _drawerItem(context, 'BEER', '/beer'),
                _drawerItem(context, 'FOOD', '/food'),
                _drawerItem(context, 'STAFF', '/staff'),
                _drawerItem(context, 'MERCHANDISE', '/merchandise'),
              ],
            ),
          ),

          body: child,
        ),
      ],
    );
  }

  // Reusable function to build drawer items
  Widget _drawerItem(BuildContext context, String label, String route) {
    return ListTile(
      title: Text(label),
      onTap: () {
        Navigator.pop(context); // Close drawer
        Navigator.pushReplacementNamed(context, route); // Navigate to page
      },
    );
  }
}

