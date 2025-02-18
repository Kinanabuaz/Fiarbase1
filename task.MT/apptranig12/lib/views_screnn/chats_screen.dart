import 'package:flutter/material.dart';

class IosChatListScreen extends StatefulWidget {
  @override
  State<IosChatListScreen> createState() => _IosChatListScreenState();
}

class _IosChatListScreenState extends State<IosChatListScreen> {
  List<CategoryListScreen> categories = [
    CategoryListScreen(
        imageUrl: 'https://via.placeholder.com/150', title: 'mohammed altahat'),
    CategoryListScreen(
        imageUrl: 'https://via.placeholder.com/150', title: 'John Doe'),
    CategoryListScreen(
        imageUrl: 'https://via.placeholder.com/150', title: 'Jane Smith'),
    CategoryListScreen(
        imageUrl: 'https://via.placeholder.com/150', title: 'Michael Brown'),
    CategoryListScreen(
        imageUrl: 'https://via.placeholder.com/150', title: 'ahmed ali'),
    CategoryListScreen(
        imageUrl: 'https://via.placeholder.com/150', title: 'hosam ali'),
    CategoryListScreen(
        imageUrl: 'https://via.placeholder.com/150', title: 'khaled'),
    CategoryListScreen(
        imageUrl: 'https://via.placeholder.com/150', title: 'ayman'),
    CategoryListScreen(
        imageUrl: 'https://via.placeholder.com/150', title: 'hala'),
    CategoryListScreen(
        imageUrl: 'https://via.placeholder.com/150', title: 'tareq'),
    CategoryListScreen(
        imageUrl: 'https://via.placeholder.com/150', title: 'moth'),
    CategoryListScreen(
        imageUrl: 'https://via.placeholder.com/150', title: 'lath'),
    CategoryListScreen(
        imageUrl: 'https://via.placeholder.com/150', title: 'anas'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Chats',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.edit, color: Colors.green),
            onPressed: () {},
          ),
        ],
        centerTitle: false,
      ),
      body: Column(
        children: [
          // Search bar
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  prefixIcon: Icon(Icons.search, color: Colors.grey),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(vertical: 15),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundImage: NetworkImage(
                            categories[index].imageUrl), // صورة جهة الاتصال
                      ),
                      title: Text(
                        categories[index].title, // اسم جهة الاتصال
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      subtitle: Text(
                        'Last message from this contact...', // آخر رسالة
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      ),
                      trailing: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '12:30 PM', // وقت آخر رسالة
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(height: 5),
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Colors.green,
                              shape: BoxShape.circle,
                            ),
                            child: Text(
                              '2', // عدد الرسائل غير المقروءة
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ],
                      ),
                      onTap: () {
                        // الانتقال إلى شاشة الدردشة
                      },
                    ),
                    Divider(
                      height: 0,
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
        child: Icon(Icons.chat),
      ),
    );
  }
}

class CategoryListScreen {
  String imageUrl;
  String title;

  CategoryListScreen({required this.imageUrl, required this.title});
}
