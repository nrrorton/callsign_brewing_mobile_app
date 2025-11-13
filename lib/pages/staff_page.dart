import 'package:flutter/material.dart';
import '../widgets/page_layout.dart';

class StaffPage extends StatelessWidget {
  const StaffPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Staff data (placeholder paths + labels)
    /* The text and images can be updated once this information is received.
       Ensure all images are placed in the correct directory assets/images when 
       adding pictures of the staff. */
    final List<Map<String, String>> staff = [
      {'name': 'STAFF 1', 'image': 'assets/images/staff1.png'},
      {'name': 'STAFF 2', 'image': 'assets/images/staff2.png'},
      {'name': 'STAFF 3', 'image': 'assets/images/staff3.png'},
      {'name': 'STAFF 4', 'image': 'assets/images/staff4.png'},
    ];

    return PageLayout(
      title: 'STAFF',
      child: SingleChildScrollView(
        // ✅ Allows scrolling to prevent overflow
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(height: 20),
            // Iterate through each staff entry
            for (int i = 0; i < staff.length; i++) ...[
              // Using a loop here to create a cascading effect
              Align(
                alignment: i.isEven
                    ? Alignment.centerLeft
                    : Alignment.centerRight,
                child: Column(
                  children: [
                    // Placeholder box for image
                    Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Colors.grey[300], // Placeholder background
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                          image: AssetImage(staff[i]['image']!),
                          fit: BoxFit.cover,
                          onError: (error, stackTrace) {
                            // Just shows gray if image missing
                          },
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      staff[i]['name']!,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 30),
                  ],
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}

