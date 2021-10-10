import 'package:flutter/material.dart';

<<<<<<< HEAD
import '../components/components.dart';
import '../models/models.dart';

class FriendPostListView extends StatelessWidget {
=======
import '../models/models.dart';
import 'components.dart';

class FriendPostListView extends StatelessWidget {
  // 1
>>>>>>> b5ba3db734acb21bb248c77ae2dff211d07ed08b
  final List<Post> friendPosts;

  const FriendPostListView({
    Key? key,
    required this.friendPosts,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
=======
    // 2
>>>>>>> b5ba3db734acb21bb248c77ae2dff211d07ed08b
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        top: 0,
      ),
<<<<<<< HEAD
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Social Chefs 👩‍🍳',
            style: Theme.of(context).textTheme.headline1,
          ),
          const SizedBox(height: 16),
          ListView.separated(
            primary: false,
            physics: const NeverScrollableScrollPhysics(),
=======
      // 3
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 4
          Text('Social Chefs 👩‍🍳',
              style: Theme.of(context).textTheme.headline1),
          // 5
          const SizedBox(height: 16),
          // 1
          ListView.separated(
            // 2
            primary: false,
            // 3
            physics: const NeverScrollableScrollPhysics(),
            // 4
>>>>>>> b5ba3db734acb21bb248c77ae2dff211d07ed08b
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: friendPosts.length,
            itemBuilder: (context, index) {
<<<<<<< HEAD
=======
              // 5
>>>>>>> b5ba3db734acb21bb248c77ae2dff211d07ed08b
              final post = friendPosts[index];
              return FriendPostTile(post: post);
            },
            separatorBuilder: (context, index) {
<<<<<<< HEAD
              return const SizedBox(height: 16);
            },
          ),
=======
              // 6
              return const SizedBox(height: 16);
            },
          ),

          // 6
>>>>>>> b5ba3db734acb21bb248c77ae2dff211d07ed08b
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
