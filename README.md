# Boredom App

A cross-platform app to cure your boredom! Hit the boredom button to get ideas for
things to do that do not involve a screen. 

Activities are selected at random, and the same activity can sometimes be shown 
multiple times in a row. 

## Running the app

To run the demo, clone the repository and run the main.dart file on the simulator or emulator
of your choice.

## Adding a new activity

Others can add new activities to the suggestions using the Map called `activities` in `lib/activities.dart`.
To add a new activity:
1) add an image with a unique name related to the activity to the `assets/images` folder. MAKE SURE YOU HAVE PERMISSION TO USE THE PHOTO OR THAT IT IS ROYALTY FREE
2) put the SHORT description of the activity as the key (Use Title Case) and 
3) put the path to the image as the value in the map

Example: 
`'Read a Book': 'assets/images/bookcase.jpg'`,

## Design choices made

This app neede to stay as simple as possible. It aims to inspire the user 
with beautiful backgrounds and open-ended, short descriptions of activities.

Using real user input, the decision was made to return to the boredom button if the 
activity description is clicked, and continue being shown activities if the 'Still Bored' 
button is clicked. 

Intentionally, no other links or functionality exists within the app.

