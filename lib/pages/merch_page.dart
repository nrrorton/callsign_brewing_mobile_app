import 'package:flutter/material.dart';
import '../widgets/page_layout.dart';

class MerchPage extends StatelessWidget {
  const MerchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const PageLayout(
      title: 'MERCHANDISE',
      child: Center(
        child: Text(
          'Merch Page Coming Soon!',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}

