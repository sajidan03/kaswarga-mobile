import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(36),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Profiles',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/akaza.jpg'),
            ),
            SizedBox(width: 10,),
            Align(
              alignment: Alignment.topLeft,
              child: Column(
                children: [
                     Text(
              'Hakuji Akaza',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
               Text(
              'Hakuji Akaza',
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.normal,
              ),
              textAlign: TextAlign.left,
            ),
                ],
              ),
            )
            
              ],
            ),
          ],
        ),
      ),
    );
  }
}
