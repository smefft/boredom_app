import 'package:flutter/material.dart';
import 'package:boredom_app/activities.dart';

class Activity extends StatelessWidget {
  const Activity({
    super.key,
    required this.activityDescription,
    required this.imagePath,
  });

  final String activityDescription;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(0.0),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 120.0),
                child: TextButton(
                  onPressed: () {
                    Navigator.popUntil(context, ModalRoute.withName("/"));
                  },
                  child: Card(
                    color: Colors.black45,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 7.0,
                        horizontal: 17.0,
                      ),
                      child: Text(
                        activityDescription,
                        style: TextStyle(
                          color: Colors.blueGrey[50],
                          fontSize: 30.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 75.0),
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(pickActivity());
                },
                child: Card(
                  color: Colors.black12,
                  child: Container(
                    margin: const EdgeInsets.all(8.0),
                    child: Text(
                      'Still bored',
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
