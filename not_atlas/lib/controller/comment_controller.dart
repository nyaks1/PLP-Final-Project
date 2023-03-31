import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;
import '../model/comment.dart';
import '../model/user.dart';

class CommentController {
  static CollectionReference commentsRef =
      FirebaseFirestore.instance.collection('comments');

  static Future<void> addComment(
      String postId, String userId, String text) async {
    User? currentUser = await UserController.getCurrentUser();
    Comment comment = Comment(
      content: '',
      author: currentUser!,
      createdAt: DateTime.now(),
      id: '',
      body: null,
      timestamp: null,
      postId: '',
      text: text,
      userId: userId,
    );
    await commentsRef.add(comment.toMap());
  }

  static Stream<List<Comment>> getComments(String postId) {
    return commentsRef.where('postId', isEqualTo: postId).snapshots().map(
        (snapshot) => snapshot.docs
            .map<Comment>((doc) => Comment.fromMap(doc.data(), doc.id))
            .toList());
  }
}

class UserController {
  static Future<User?> getCurrentUser() async {
    final user = await FirebaseFirestore.instance
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .get();
    if (user.exists) {
      return User.fromMap(user.data()!,);
    }
    return null;
  }
}
