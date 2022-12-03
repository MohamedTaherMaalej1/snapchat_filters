import 'package:flutter/material.dart';
import 'package:snap_app/widgets/info_card.dart';

const url = "meshivanshsingh.me";
const email = "me.shivansh007@gmail.com";
const phone = "90441539202"; // not real number :)
const location = "Lucknow, India";

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        minimum: const EdgeInsets.only(top: 150),
        child: Column(
          children: <Widget>[
            // const CircleAvatar(
            //   radius: 50,
            //   backgroundImage: AssetImage('assets/avatar1.png'),
            // ),
            ClipRRect(
              borderRadius: BorderRadius.circular(15), // Image border
              child: Image.asset(
                  "assets/avatar11.jpg",
                  height: 100.0,
                  width: 100.0,
                  fit:BoxFit.cover,
              ),
            ),
            const Text(
              "Supcom Student",
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              "@supcomstudent123",
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.blueGrey,
                fontWeight: FontWeight.bold,
                fontFamily: "Source Sans Pro",
              ),
            ),
            const SizedBox(
              height: 20,
              width: 200,
              child: Divider(
                color: Colors.blueGrey,
              ),
            ),
            
            InfoCard(text: "Take a photo", icon: Icons.photo_camera, onPressed: () async {}),
            InfoCard(text: "Uplaod image", icon: Icons.photo_library, onPressed: () async {}),


          ],
        )),


    );
  }
}