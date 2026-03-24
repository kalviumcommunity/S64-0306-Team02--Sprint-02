import 'package:flutter/material.dart';
import '../services/firestore_service.dart';

class HomeScreen extends StatelessWidget {
  final FirestoreService firestoreService = FirestoreService();
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Realtime Tasks')),
      body: Column(
        children: [
          TextField(controller: controller),
          ElevatedButton(
            onPressed: () {
              firestoreService.addTask(controller.text);
              controller.clear();
            },
            child: Text('Add Task'),
          ),
          Expanded(
            child: StreamBuilder(
              stream: firestoreService.getTasks(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return CircularProgressIndicator();
                }
                final docs = snapshot.data!.docs;
                return ListView(
                  children: docs
                      .map((doc) => ListTile(
                            title: Text(doc['title']),
                          ))
                      .toList(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}