import 'package:flutter/material.dart';

class CallsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Calls',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: Colors.green),
            onPressed: () {

            },
          ),
        ],
        centerTitle: false,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: calls.length,
              itemBuilder: (context, index) {
                final call = calls[index];
                return Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(call.imageUrl),
                      ),
                      title: Text(
                        call.name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      subtitle: Row(
                        children: [
                          Icon(
                            call.isMissed ? Icons.call_missed : Icons.call_received,
                            color: call.isMissed ? Colors.red : Colors.green,
                            size: 16,
                          ),
                          SizedBox(width: 5),
                          Text(
                            call.time,
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      trailing: Icon(
                        call.isVideo ? Icons.videocam : Icons.phone,
                        color: Colors.green,
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
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {

        },
        backgroundColor: Colors.green,
        child: Icon(Icons.add_call),
      ),
    );
  }
}


class Call {
  final String imageUrl;
  final String name;
  final String time;
  final bool isMissed;
  final bool isVideo;

  Call({
    required this.imageUrl,
    required this.name,
    required this.time,
    required this.isMissed,
    required this.isVideo,
  });
}


List<Call> calls = [
  Call(
    imageUrl: 'https://via.placeholder.com/150',
    name: 'John Doe',
    time: 'Today, 10:30 AM',
    isMissed: false,
    isVideo: false,
  ),
  Call(
    imageUrl: 'https://via.placeholder.com/150',
    name: 'Jane Smith',
    time: 'Yesterday, 3:20 PM',
    isMissed: true,
    isVideo: true,
  ),
  Call(
    imageUrl: 'https://via.placeholder.com/150',
    name: 'Michael Brown',
    time: 'Yesterday, 1:15 PM',
    isMissed: false,
    isVideo: false,
  ),
  Call(
    imageUrl: 'https://via.placeholder.com/150',
    name: 'Emily Johnson',
    time: '2 days ago, 5:00 PM',
    isMissed: true,
    isVideo: true,
  ),


  Call(
    imageUrl: 'https://via.placeholder.com/150',
    name: 'Emily Johnson',
    time: '2 days ago, 5:00 PM',
    isMissed: true,
    isVideo: true,
  ),Call(
    imageUrl: 'https://via.placeholder.com/150',
    name: 'Emily Johnson',
    time: '2 days ago, 5:00 PM',
    isMissed: true,
    isVideo: true,
  ),Call(
    imageUrl: 'https://via.placeholder.com/150',
    name: 'Emily Johnson',
    time: '2 days ago, 5:00 PM',
    isMissed: true,
    isVideo: true,
  ),Call(
    imageUrl: 'https://via.placeholder.com/150',
    name: 'Emily Johnson',
    time: '2 days ago, 5:00 PM',
    isMissed: true,
    isVideo: true,
  ),Call(
    imageUrl: 'https://via.placeholder.com/150',
    name: 'Emily Johnson',
    time: '2 days ago, 5:00 PM',
    isMissed: true,
    isVideo: true,
  ),Call(
    imageUrl: 'https://via.placeholder.com/150',
    name: 'Emily Johnson',
    time: '2 days ago, 5:00 PM',
    isMissed: true,
    isVideo: true,
  ),
];
