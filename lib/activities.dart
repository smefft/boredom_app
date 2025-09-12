/* This file is for adding activities and 
turning the activity into routes that can be used.
It also includes some custom helper functions for strings
*/
import 'package:flutter/material.dart';
import 'package:boredom_app/pages/activity.dart';

/*
In the following map, make the key the activity name the way you want it 
to appear on the card and make the value the ASSET image path you want to 
use for the activity. 
*/
Map<String, dynamic> activities = {
  'Read a Book': 'assets/images/bookcase.jpg',
  'Go For a Walk in the Woods': 'assets/images/woods.jpg',
  'Try a New Recipe': 'assets/images/cooking.jpg',
  'Bake Something': 'assets/images/baking.jpg',
  'Pet Your Cat': 'assets/images/cat.jpg',
  'Listen to Music': 'assets/images/music.jpg',
  'Be Bored and Deal With It': 'assets/images/black.jpg',
  'Jump Rope': 'assets/images/jumprope.jpg',
  'Exercise': 'assets/images/exercise.jpg',
};

/*
DO NOT EDIT BELOW THIS LINE IF ONLY ADDING A NEW ACTIVITY 
*/

MapEntry<String, WidgetBuilder> activityRoute(
  String activity,
  String imagePath,
) {
  String routeName = "/${activity.toCamelCase()}";
  return MapEntry(
    routeName,
    (context) => Activity(activityDescription: activity, imagePath: imagePath),
  );
}

Map<String, WidgetBuilder> activityRoutes = activities.map(
  (activity, imagePath) => activityRoute(activity, imagePath),
);

String pickActivity() {
  List<String> activityRoutes = activities.keys.toList();
  activityRoutes.shuffle();
  return "/${activityRoutes[0].toCamelCase()}";
}

extension StringExtention on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1)}";
  }

  String toCamelCase() {
    List<String> splitString = split(' ').toList();
    splitString[0] = splitString[0].toLowerCase();
    for (int i = 1; i < splitString.length; i++) {
      splitString[i] = splitString[i].capitalize();
    }
    //print(splitString.join(''));
    return splitString.join('');
  }
}
