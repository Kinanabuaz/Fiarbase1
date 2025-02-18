import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Settings',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
        centerTitle: false,
      ),
      body: ListView(
        children: [

          ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                  'https://via.placeholder.com/150'),
            ),
            title: Text(
              'User Name',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            subtitle: Text(
              'Hey there! I am using WhatsApp.',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
              ),
            ),
            onTap: () {

            },
          ),
          Divider(),


          SettingsItem(
            icon: Icons.key,
            title: 'Account',
            subtitle: 'Privacy, security, change number',
            onTap: () {

            },
          ),
          Divider(),


          SettingsItem(
            icon: Icons.chat,
            title: 'Chats',
            subtitle: 'Theme, wallpapers, chat history',
            onTap: () {

            },
          ),
          Divider(),


          SettingsItem(
            icon: Icons.notifications,
            title: 'Notifications',
            subtitle: 'Message, group & call tones',
            onTap: () {

            },
          ),
          Divider(),


          SettingsItem(
            icon: Icons.data_usage,
            title: 'Storage and data',
            subtitle: 'Network usage, auto-download',
            onTap: () {

            },
          ),
          Divider(),


          SettingsItem(
            icon: Icons.help,

            title: "help",
            subtitle: 'Help center, contact us, privacy policy',
            onTap: () {

            },
          ),
          Divider(),


          SettingsItem(
            icon: Icons.group,
            title: 'Invite a friend',

            onTap: () {

            },
          ),


          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'WhatsApp from Meta',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}


class SettingsItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String? subtitle;
  final VoidCallback onTap;

  const SettingsItem({
    required this.icon,
    required this.title,
    this.subtitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.yellow,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
      subtitle: subtitle != null
          ? Text(
        subtitle!,
        style: TextStyle(
          color: Colors.grey,
          fontSize: 15,
        ),
      )
          : null,
      trailing: Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 16),
      onTap: onTap,
    );
  }
}
