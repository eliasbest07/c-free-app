import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Transform.rotate(
              angle: 43 * 3.1416 / 180,
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            ),
            itemCount: 100,
            itemBuilder: (context, index) {
              return  Container(
                  margin: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color.fromARGB(255, 202, 112, 218)
                  ),
                  child: Center(
                    child: Text(
                      '$index',
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                  ),
              );
            },
          ),
        ),
    );
  }
}