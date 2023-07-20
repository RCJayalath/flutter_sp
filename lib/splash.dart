import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
          children: [
          Expanded(
            flex: 3,
            child: Container(
        color: Color.fromARGB(255, 255, 255, 255), // Set your desired background color
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 45, 55, 160), // Set your desired color for the circle
                  shape: BoxShape.rectangle,
                ),
                child: const Center(),
              ),
              const SizedBox(height: 20),
            ],
          ),),),
           ), // Add some space between the circle and the text

Expanded(
            flex: 1,
            child: Container(
              color: Color.fromARGB(255, 255, 255, 255), // Replace with your desired color for the second part of the screen
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'NSBM',
                    style: TextStyle(
                      color: Color.fromARGB(255, 9, 9, 9),
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SmallSquare(color: Color.fromARGB(255, 112, 214, 30)), // First square in light green color
                      SizedBox(width: 10), // Adjust this value to reduce space between squares
                      SmallSquare(color: Color.fromARGB(255, 122, 214, 30)), // Second square in light green color
                      SizedBox(width: 10), // Adjust this value to reduce space between squares
                      SmallSquare(color: Color.fromARGB(194, 6, 117, 24)), // Third square in dark green color
                      SizedBox(width: 10), // Adjust this value to reduce space between squares
                      SmallSquare(color: Color.fromARGB(194, 6, 117, 24)), // Fourth square in dark green color
                      SizedBox(width: 10), // Adjust this value to reduce space between squares
                      SmallSquare(color: Color.fromARGB(194, 6, 117, 24)), // Fifth square in dark green color
                      

                    ],
                  ),
                ],
              ),
            ),
          ),
          ],
),
            
      );    
      
  }
}

// To use this SplashPage, you can navigate to it from your main.dart file or any other appropriate place in your app.
class SmallSquare extends StatelessWidget {
  
  final Color color;

  const SmallSquare({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 25,
      height: 25,
      color:color // Replace with your desired color for the small squares
    );
  }
}