import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const imageURL =
        "https://pbs.twimg.com/profile_images/1205438153928192006/w9th6Snv.jpg";
    return Drawer(
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.deepPurple,
        ),
        child: ListView(
          children: const [
            DrawerHeader(
              child: UserAccountsDrawerHeader(
                accountName: Text(
                  "Maharshi",
                  style: TextStyle(color: Colors.white),
                ),
                accountEmail: Text(
                  "20bcs004@nith.ac.in",
                  style: TextStyle(color: Colors.white),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageURL),
                ),
                margin: EdgeInsets.all(0),
              ),
              padding: EdgeInsets.all(0),
              margin: EdgeInsets.all(0),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                style: TextStyle(color: Colors.white),
                textScaleFactor: 1.5,
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                style: TextStyle(color: Colors.white),
                textScaleFactor: 1.5,
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text(
                "Email",
                style: TextStyle(color: Colors.white),
                textScaleFactor: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
