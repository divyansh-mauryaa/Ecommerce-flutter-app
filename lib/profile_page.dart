import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Profile.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: FilledButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ProfileScreen(
                              userEmail: "divyanshm510@gmail.com",
                              userName: "Divyansh Maurya",
                              userImage:
                                  "https://w7.pngwing.com/pngs/81/570/png-transparent-profile-logo-computer-icons-user-user-blue-heroes-logo-thumbnail.png",
                            )));
              },
              child: const Text("View Profile"))),
    );
  }
}
