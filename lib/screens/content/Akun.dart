import 'package:flutter/material.dart';
import 'package:ppb_modul_1/models/user_model.dart';
import 'package:ppb_modul_1/services/profile_service.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: const Text('Profil Pengguna')),
      body: Center(
        child: FutureBuilder<User>(
          future: fetchUserProfile(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            } else if (!snapshot.hasData) {
              return const Center(child: Text('User tidak ditemukan'));
            } else {
              final user = snapshot.data!;
              return Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 60,
                      backgroundImage: NetworkImage(user.avatar),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      '${user.firstName} ${user.lastName}',
                      style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 6),
                    Text(user.email, style: const TextStyle(fontSize: 16)),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                          Text('Follower', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),)
                          ],
                        ),
                        SizedBox(width: 6,),
                        Column(
                          children: [
                            Text('Post', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),)
                          ],
                        ),
                        SizedBox(width: 6,),
                        
                        Column(
                          children: [
                            Text('Following', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
