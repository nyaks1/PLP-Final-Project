import 'package:flutter/foundation.dart';

class Post {
  final String id;
  final String title;
  final String content;
  final String authorId;
  final DateTime dateCreated;

  Post({
    required this.id,
    required this.title,
    required this.content,
    required this.authorId,
    required this.dateCreated,
  });
}
