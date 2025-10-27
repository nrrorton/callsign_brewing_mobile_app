import 'package:flutter/material.dart';
import '../widgets/page_layout.dart';

class FoodPage extends StatelessWidget {
  const FoodPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const PageLayout(
      title: 'FOOD',
      child: Center(
        child: Text(
          'Food Page Coming Soon!',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
