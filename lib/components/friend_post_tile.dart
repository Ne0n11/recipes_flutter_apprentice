import 'package:flutter/material.dart';

import '../components/components.dart';
import '../models/models.dart';

class FriendPostTile extends StatelessWidget {
  final Post post;

  const FriendPostTile({
    Key? key,
    required this.post,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
=======
    // 1
>>>>>>> b5ba3db734acb21bb248c77ae2dff211d07ed08b
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
<<<<<<< HEAD
        CircleImage(
          imageProvider: AssetImage('${post.profileImageUrl}'),
          imageRadius: 20,
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(post.comment),
              Text(
                '${post.timestamp} mins ago',
                style: Theme.of(context).textTheme.bodyText1,
=======
        // 2
        CircleImage(
          imageProvider: AssetImage(post.profileImageUrl),
          imageRadius: 20,
        ),
        // 3
        const SizedBox(width: 16),
        // 4
        Expanded(
          // 5
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 6
              Text(post.comment),
              // 7
              Text(
                '${post.timestamp} mins ago',
                style: const TextStyle(fontWeight: FontWeight.w700),
>>>>>>> b5ba3db734acb21bb248c77ae2dff211d07ed08b
              ),
            ],
          ),
        ),
      ],
    );
  }
}
