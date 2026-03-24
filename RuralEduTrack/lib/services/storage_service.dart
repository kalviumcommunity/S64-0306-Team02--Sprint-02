import 'package:firebase_storage/firebase_storage.dart';
import 'dart:io';

class StorageService {
  Future<void> uploadFile(File file) async {
    final ref = FirebaseStorage.instance
        .ref()
        .child('uploads/myImage.jpg');

    await ref.putFile(file);
  }
}
