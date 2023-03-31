import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:not_atlas/model/post.dart';
import 'package:not_atlas/model/comment.dart';
import '../model/user.dart';

class PostController {
  static final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  static Future<void> createPost(Post post) async {
    try {
      await _firestore.collection('posts').add({
        'title': post.title,
        'body': post.body,
        'author': post.author.toMap(),
        'author_id': post.authorId,
        'timestamp': FieldValue.serverTimestamp(),
      });
    } catch (e) {
      ('Error creating post: $e');
    }
  }

  static Future<List<Post>> getPosts() async {
    try {
      final QuerySnapshot<Map<String, dynamic>> snapshot =
          await _firestore.collection('posts').get();
      final List<Post> posts = snapshot.docs
          .map((doc) => Post(
                id: doc.id,
                title: doc['title'],
                body: doc['body'],
                authorId: doc['author_id'],
                author: User.fromMap(doc['author']),
                timestamp: doc['timestamp']?.toDate(),
              ))
          .toList();
      return posts;
    } catch (e) {
      print('Error getting posts: $e');
      return [];
    }
  }

  static Future<void> addComment(String postId, Comment comment) async {
    try {
    await _firestore
        .collection('posts')
        .doc(postId)
        .collection('comments')
        .add({
      'body': comment.body,
      'author': comment.author.toMap(),
      'timestamp': FieldValue.serverTimestamp(),
    });
  } catch (e) {
    ('Error adding comment: $e');
  }
  }
}
