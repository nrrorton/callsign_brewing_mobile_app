import 'package:flutter/material.dart';
import '../widgets/page_layout.dart';

class BeerPage extends StatelessWidget {
  const BeerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const PageLayout(
      title: 'BEER',
      child: Center(
        child: Text(
          'Beer Page Coming Soon!',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
