import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

// Widget myDrawer(BuildContext build) {
//   return Drawer();
// }

@override
Widget myDrawer(BuildContext context) {
  return Drawer(
    child: ListView(
      children: [
        UserAccountsDrawerHeader(
            accountName: Text("Ahmad Ilyas"),
            accountEmail: Text("abc@email.com"),
            currentAccountPicture: CircleAvatar(
              child: Text(
                "AI",
                style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
              ),
            )
            ),
        ListTile(
          onTap: () {},
          leading: Icon(Ionicons.list),
          title: Text(
            "My Orders",
          ),
          trailing: Icon(Icons.arrow_forward_ios_sharp),
        ),
      ],    
    ),
  );
}
