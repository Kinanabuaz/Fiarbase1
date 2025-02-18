import 'package:flutter/material.dart';

class UpdatesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Updates',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.camera_alt, color: Colors.green),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.edit, color: Colors.green),
            onPressed: () {},
          ),
        ],
        centerTitle: false,
      ),
      body: Column(
        children: [
          ListTile(
            leading: Stack(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                      'https://via.placeholder.com/150'),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.add,
                      size: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            title: Text(
              'My Status',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            subtitle: Text(
              'Tap to add status update',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
              ),
            ),
            onTap: () {},
          ),
          Divider(
            height: 1,
            indent: 80,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Recent updates',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.grey[700],
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: statuses.length,
              itemBuilder: (context, index) {
                final status = statuses[index];
                return Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(status.imageUrl),
                      ),
                      title: Text(
                        status.name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      subtitle: Text(
                        status.time,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      ),
                      onTap: () {

                      },
                    ),
                    Divider(
                      height: 1,
                      indent: 80,
                    ),
                  ],
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Channels',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.grey[700],
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: channels.length,
              itemBuilder: (context, index) {
                final channel = channels[index];
                return Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(channel.imageUrl),
                      ),
                      title: Text(
                        channel.name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      subtitle: Text(
                        channel.description,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      ),
                      onTap: () {},
                    ),
                    Divider(
                      height: 1,
                      indent: 80,
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Status {
  final String imageUrl;
  final String name;
  final String time;

  Status({
    required this.imageUrl,
    required this.name,
    required this.time,
  });
}

class Channel {
  final String imageUrl;
  final String name;
  final String description;

  Channel({
    required this.imageUrl,
    required this.name,
    required this.description,
  });
}

List<Status> statuses = [
  Status(
    imageUrl: 'https://via.placeholder.com/150',
    name: 'John Doe',
    time: 'Today, 10:00 AM',
  ),
  Status(
    imageUrl: 'https://via.placeholder.com/150',
    name: 'Jane Smith',
    time: 'Yesterday, 5:30 PM',
  ),
];

List<Channel> channels = [
  Channel(
    imageUrl: 'https://via.placeholder.com/150',
    name: 'Tech Updates',
    description: 'Latest in technology and gadgets',
  ),
  Channel(
    imageUrl: 'https://via.placeholder.com/150',
    name: 'Travel Diaries',
    description: 'Explore new destinations around the world',
  ),
];
