import 'package:flutter/material.dart';
import '../widgets/page_layout.dart';
import 'package:url_launcher/url_launcher.dart';

class MerchPage extends StatelessWidget {
  const MerchPage({super.key});

  // Helper function to open URLs
  void _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return PageLayout(
      title: 'MERCH',
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),

            // Top Container
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: [
                  const Text(
                    'MERCHANDISE',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Creating a grid of 4 merch items
                  GridView.count(
                    shrinkWrap: true,
                    crossAxisCount: 2,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                    childAspectRatio: 1.2,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      _merchItem(
                        title: 'LOGO PINT',
                        price: '\$7.00',
                        url:
                            'https://order.toasttab.com/online/callsign-brewing/item-logo-pint_451b03fe-f70e-48aa-ba2c-135822c8f666',
                        context: context,
                      ),
                      _merchItem(
                        title: 'ACRYLLIC LOGO',
                        price: '\$10.00',
                        url:
                            'https://order.toasttab.com/online/callsign-brewing/item-acryllic-logo_bedbcb8f-c97c-46ee-94a2-f6c7f5651889',
                        context: context,
                      ),
                      _merchItem(
                        title: 'LOGO MUG',
                        price: '\$10.00',
                        url:
                            'https://order.toasttab.com/online/callsign-brewing/item-logo-mug_e6dbeaa0-ff89-4e69-99e8-fbbcc688fe8b',
                        context: context,
                      ),
                      _merchItem(
                        title: 'GROWLER GLASS',
                        price: '\$10.00',
                        url:
                            'https://order.toasttab.com/online/callsign-brewing/item-growler-glass_7f1ed680-9ffd-49f8-984e-8f8c38ff642b',
                        context: context,
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 40),

            // Second container dividing the page
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // SIX PACK
                  Row(
                    children: [
                      // Placeholder for the images
                      // This is the location for updating images in the bottom 
                      // section of the page.
                      Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.circular(12),
                          image: const DecorationImage(
                            image: AssetImage('assets/images/six_pack.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      const Text(
                        'SIX PACK',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 24),

                  // 32 OZ CROWLER
                  Row(
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.circular(12),
                          image: const DecorationImage(
                            image: AssetImage('assets/images/crowler.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      const Text(
                        '32 OZ. CROWLER',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Widget builder for each merch box
  Widget _merchItem({
    required String title,
    required String price,
    required String url,
    required BuildContext context,
  }) {
    return GestureDetector(
      onTap: () => _launchURL(url),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 4,
              offset: Offset(2, 2),
            ),
          ],
        ),
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(price, style: const TextStyle(color: Colors.black87)),
          ],
        ),
      ),
    );
  }
}


