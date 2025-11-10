import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../widgets/page_layout.dart'; // Reuses the background/frame structure

class BeerPage extends StatelessWidget {
  const BeerPage({super.key});

  // Helper function to open the beer URL in browser
  void _launchBeerPage(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    /* Beer data list — name, abv, and URL
       Any new addition/changes to the beer lineup will be made through
       this "beers" variable and pictures can be added/removed from the
       assets/images directory as needed. */
    final beers = [
      {
        'name': 'FREEDOM LAGER',
        'abv': 'ABV: 4.7%',
        'url': 'https://www.callsignbrewing.com/beer/freedom-lager/',
        'image': 'assets/images/freedom_lager.png', // Placeholder path. Use this to add different images
      },
      {
        'name': 'BOMBER BROWN ALE',
        'abv': 'ABV: 5.2%',
        'url': 'https://www.callsignbrewing.com/beer/bomber-brown-ale/',
        'image': 'assets/images/bomber_brown.png',
      },
      {
        'name': 'JOLLY HAZY IPA',
        'abv': 'ABV: 5.7%',
        'url': 'https://www.callsignbrewing.com/beer/jolly-hazy-ipa/',
        'image': 'assets/images/jolly_hazy_ipa.png',
      },
      {
        'name': 'SCREAMING EAGLE CREAM ALE',
        'abv': 'ABV: 4.7%',
        'url':
            'https://www.callsignbrewing.com/beer/screaming-eagle-cream-ale/',
        'image': 'assets/images/screaming_eagle.png',
      },
      {
        'name': 'FIGHTER PALE ALE',
        'abv': 'ABV: 5.0%',
        'url': 'https://www.callsignbrewing.com/beer/fighter-pale-ale/',
        'image': 'assets/images/fighter_pale_ale.png',
      },
      {
        'name': 'MAYDAY MAIBOK',
        'abv': 'ABV: 5.6%',
        'url': 'https://www.callsignbrewing.com/beer/mayday-maibok/',
        'image': 'assets/images/mayday_maibok.png',
      },
      {
        'name': 'PHANTOM CHOCOLATE PORTER',
        'abv': 'ABV: 6.0%',
        'url': 'https://www.callsignbrewing.com/beer/phantom-chocolate-porter/',
        'image': 'assets/images/phantom_porter.png',
      },
    ];

    return PageLayout(
      title: 'BEER',
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          itemCount: beers.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Two columns
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            childAspectRatio: 0.85, // Adjusts vertical spacing
          ),
          itemBuilder: (context, index) {
            final beer = beers[index];
            return GestureDetector(
              onTap: () => _launchBeerPage(beer['url']!),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: AspectRatio(
                      aspectRatio: 1, // Keeps it square
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                            image: AssetImage(beer['image']!),
                            fit: BoxFit.cover,
                            onError: (error, stackTrace) {
                              // Optional fallback placeholder color if image missing
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    beer['name']!,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    beer['abv']!,
                    style: const TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

