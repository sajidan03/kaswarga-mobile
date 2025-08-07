import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // const Expanded( flex: 3 ,child: _TopPortion()),
          Expanded( flex: 3,child: Padding(padding: 
          const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                'Sajidan'
              )
            ],
          ) ,
          ))
        ],
      ),
    );
  }
}