import 'package:flutter/material.dart';
import '../services/firestore_service.dart';

class HomeScreen extends StatelessWidget {
  final String uid;
  HomeScreen(this.uid);

  final FirestoreService firestoreService = FirestoreService();
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dashboard')),
      body: Column(
        children: [
          TextField(controller: controller),
          ElevatedButton(
            onPressed: () {
              firestoreService.addUserData(uid, {
                'name': controller.text,
              });
              controller.clear();
            },
            child: Text('Add Data'),
          ),
          Expanded(
            child: StreamBuilder(
              stream: firestoreService.getUsers(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) return CircularProgressIndicator();
                final docs = snapshot.data!.docs;
                return ListView(
                  children: docs.map((doc) => ListTile(
                    title: Text(doc['name'] ?? ''),
                  )).toList(),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}