import 'package:flutter/material.dart';

import 'home_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            //  welcome image
            //  welcome text
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const[
                  Text("We deliver",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                  ),
                  Text("grocery at your",
                    style: TextStyle(
                      fontSize : 28,
                      fontWeight: FontWeight.bold,
                  ),
                  ),
                  Text("door step",
                      style: TextStyle(
                    fontSize: 28,
                        fontWeight: FontWeight.bold,
                  ),
                  ),

                ],
              ),
            const SizedBox(height: 32.0),
            //  smaller welcome text
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text("Groceer gives you fresh vegetables and fruits"),
                  Text("Order fresh items from groceer")
                ]
              ),
            const SizedBox(height: 32.0 ),
            //  get started button
              Container(
                width: 200.0,
                height: 50.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  color: Colors.blueAccent,
                ),
                child: MaterialButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
                  },
                  child: const Text("Get Started",
                      style: TextStyle(color: Colors.white),
                  ),
                ),
              )

            ]
          ),
        ),
      )
    );
  }
}
