import 'package:flutter/material.dart';
import '../l10n/l10n.dart';
import '../screens/contact_list_screen.dart';
import '../screens/edit_profile_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.title),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text(AppLocalizations.of(context)!.editProfile),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EditProfileScreen()),
                );
              },
            ),
            ListTile(
              title: Text(AppLocalizations.of(context)!.contactList),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ContactListScreen()),
                );
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text(AppLocalizations.of(context)!.title),
      ),
    );
  }
}
