import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey[200],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.grey[300]),
            child: const Center(
              child: Text(
                'CALLSIGN BREWING',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  letterSpacing: 1.2,
                ),
              ),
            ),
          ),
          _drawerItem(context, 'HOME', '/'),
          _drawerItem(context, 'BEER', '/beer'),
          _drawerItem(context, 'FOOD', '/food'),
          _drawerItem(context, 'STAFF', '/staff'),
          _drawerItem(context, 'MERCHANDISE', '/merch'),
          const Spacer(),
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Text(
              '© Callsign Brewing',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 12, color: Colors.black54),
            ),
          ),
        ],
      ),
    );
  }

  Widget _drawerItem(BuildContext context, String title, String route) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: Colors.black,
          letterSpacing: 1.1,
        ),
      ),
      onTap: () {
        // Close the drawer first
        Navigator.pop(context);

        // Only navigate if we’re not already on that page
        if (ModalRoute.of(context)?.settings.name != route) {
          Navigator.pushNamed(context, route);
        }
      },
    );
  }
}
