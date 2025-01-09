import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final Map user;

  DetailPage({required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('${user['name']['first']} ${user['name']['last']}')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Card(
          elevation: 4.0,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(user['picture']['large']),
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'Name: ${user['name']['first']} ${user['name']['last']}',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text('Email: ${user['email']}', style: TextStyle(fontSize: 16)),
                SizedBox(height: 8),
                Text('Phone: ${user['phone']}', style: TextStyle(fontSize: 16)),
                SizedBox(height: 8),
                Text(
                  'Address: ${user['location']['street']['number']} ${user['location']['street']['name']}, '
                      '${user['location']['city']}, ${user['location']['state']}',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}