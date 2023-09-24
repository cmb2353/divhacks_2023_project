import 'package:divhacks_2023_project/model/allsets.dart'; 
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({
    super.key,
    });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 239, 202, 214),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const AvatarCard(),
            const SizedBox(height: 20),
            const Divider(),
            const SizedBox(height: 10),
            Column(
              children: List.generate(
                sets.length,
                (index) => SetPart(sets: sets[index]),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SetPart extends StatelessWidget {
  final AllSets sets;
  const SetPart({
    super.key,
    required this.sets,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 45,
          width: 45,
          margin: const EdgeInsets.only(bottom: 24),
          decoration: BoxDecoration(
            color:Color.fromARGB(255, 247, 216, 234),
            borderRadius: BorderRadius.circular(13),
          ),
          child: Icon(sets.icon, color:Color.fromARGB(255, 55, 0, 29))
        ),
        const SizedBox(width: 14),
        Text(
          sets.title,
          style: const TextStyle(
            color:Color.fromARGB(255, 34, 0, 25),
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Spacer(),
        Icon(
          CupertinoIcons.chevron_forward,
          color: Color.fromARGB(255, 146, 114, 139),
        ),
      ],
    );
  }
}

class AvatarCard extends StatelessWidget {
  const AvatarCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 85,
          width: 85,
          decoration: BoxDecoration(
            color:Color.fromARGB(255, 250, 228, 241),
            borderRadius: BorderRadius.circular(50),
          ),
          child: const Icon(Icons.person, color:Color.fromARGB(255, 96, 0, 69), size: 80,)
        ),
        const SizedBox(width: 20),
        const Text(
          "User",
          style: TextStyle(
            color:Colors.black,
            fontSize: 21,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],  
    );
  }
}

