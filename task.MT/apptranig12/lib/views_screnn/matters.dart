import 'package:flutter/material.dart';

class CommunitiesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Communities',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
           // fontWeight: FontWeight.bold,
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
              itemCount: communities.length,
              itemBuilder: (context, index) {
                final community = communities[index];
                return Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(community.imageUrl),
                      ),
                      title: Text(
                        community.name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      subtitle: Text(
                        community.description,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      ),
                      trailing: Icon(Icons.arrow_forward_ios, color: Colors.grey),
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
        child: Icon(Icons.add),
      ),
    );
  }
}

// قائمة المجتمعات
class Community {
  final String imageUrl;
  final String name;
  final String description;

  Community({required this.imageUrl, required this.name, required this.description});
}


List<Community> communities = [
  Community(
    imageUrl: 'https://via.placeholder.com/150',
    name: 'Tech Enthusiasts',
    description: 'Latest updates in tech',
  ),
  Community(
    imageUrl: 'https://via.placeholder.com/150',
    name: 'Photography Lovers',
    description: 'Explore the art of photography',
  ),
  Community(
    imageUrl: 'https://via.placeholder.com/150',
    name: 'Book Club',
    description: 'Discuss your favorite books',
  ),
  Community(
    imageUrl: 'https://via.placeholder.com/150',
    name: 'Fitness Group',
    description: 'Stay fit and healthy',
  ),
];
