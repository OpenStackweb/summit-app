import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  void _launchUrl() async {
    final url = Uri.parse('https://openinfra.dev/summit-onsite/');
    await launchUrl(url);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(),
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/background.jpg"),
            fit: BoxFit.cover),
      ),
      child: Column(
        children: [
          const Spacer(),
          ElevatedButton(
            child: const Text('Visit Summit Site',
                style: TextStyle(fontSize: 26.0)),
            style: ElevatedButton.styleFrom(
              shape: const StadiumBorder(),
              fixedSize: const Size(270.0, 75.0),
            ),
            onPressed: _launchUrl,
          ),
          const SizedBox(
            height: 70.0,
          )
        ],
      ),
      // Foreground widget
    );
  }
}
