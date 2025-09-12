import 'package:flutter/material.dart';
import 'package:boredom_app/activities.dart';

// TODO: change font
// TODO: add the back functionality or accept?

void main() {
  // Boredom buster activities and paths to image

  Map<String, WidgetBuilder> routes = {
    '/': (context) => BoredomApp(activities: activityRoutes),
  };
  routes.addAll(activityRoutes);

  runApp(MaterialApp(routes: routes));
}

class BoredomApp extends StatefulWidget {
  const BoredomApp({super.key, required this.activities});
  final Map<String, WidgetBuilder> activities;

  @override
  State<BoredomApp> createState() => _BoredomAppState();
}

class _BoredomAppState extends State<BoredomApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, pickActivity());
              },
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                backgroundColor: Colors.red,
                foregroundColor: Colors.black,
                fixedSize: Size(300.0, 300.0),
                elevation: 100.0,
                shadowColor: Colors.red[900],
              ),
              child: Text(
                "I'M\nBORED",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey[900],
                  fontSize: 40.0,
                  letterSpacing: 3.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
