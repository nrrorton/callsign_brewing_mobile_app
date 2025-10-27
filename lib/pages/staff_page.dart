import 'package:flutter/material.dart';
import '../widgets/page_layout.dart';

class StaffPage extends StatelessWidget {
  const StaffPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const PageLayout(
      title: 'MEET THE STAFF',
      child: Center(
        child: Text(
          'Staff Page Coming Soon!',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
