import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_ui/models/user_model.dart';

import '../../../common/utils/utils.dart';

class ChatRepository {
  final FirebaseFirestore firestore;
  final FirebaseAuth auth;

  ChatRepository({required this.firestore, required this.auth});

  Future<void> sendTextMessage({
    required BuildContext context,
    required String text,
    required String receiverUserId,
    // we need senders all data
    required UserModel senderUser,
  }) async {
    // we want to send message
    // users -> senderId -> receiverId -> messages -> messageId -> store message
    try {
      var timeSent = DateTime.now();
      UserModel receiverUserData;
      // get receiver user data from firestore in map
      var userDataMap =
          await firestore.collection('users').doc(receiverUserId).get();
      // convert map to UserModel
      receiverUserData = UserModel.fromMap(userDataMap.data()!);
      // users -> receiverId -> chats -> currentUserId -> setData
    } catch (e) {
      showSnackBar(content: e.toString(), context: context);
    }
  }
}
