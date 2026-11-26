import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants.dart';

class NewsfeedScreen extends StatefulWidget {
  const NewsfeedScreen({super.key});

  @override
  State<NewsfeedScreen> createState() => _NewsfeedScreenState();
}

class _NewsfeedScreenState extends State<NewsfeedScreen> {
  final List<Map<String, dynamic>> posts = [
    {
      'name': 'Ant-Man',
      'date': 'November 24, 2026',
      'content': 'Small size, big responsibilities. Another mission completed! 🐜',
      'image': 'assets/images/antman.jpg',
      'likes': 245,
      'liked': false,
      'comments': 32,
    },
    {
      'name': 'Clayface',
      'date': 'November 24, 2026',
      'content': 'People change their faces, but they cannot change who they really are.',
      'image': 'assets/images/clayface.jpg',
      'likes': 189,
      'liked': false,
      'comments': 21,
    },
    {
      'name': 'Iceman',
      'date': 'November 23, 2026',
      'content': 'Just chilling after another day of saving the world. Stay cool! ❄️',
      'image': 'assets/images/iceman.jpg',
      'likes': 520,
      'liked': false,
      'comments': 48,
    },
    {
      'name': 'Red Ranger',
      'date': 'November 23, 2026',
      'content': 'Once a Ranger, always a Ranger. Teamwork makes us stronger! 🔴',
      'image': 'assets/images/redranger.jpg',
      'likes': 432,
      'liked': false,
      'comments': 56,
    },
    {
      'name': 'Superboy',
      'date': 'November 22, 2026',
      'content': 'Working hard to become the hero everyone believes I can be.',
      'image': 'assets/images/superboy.jpg',
      'likes': 678,
      'liked': false,
      'comments': 72,
    },
    {
      'name': 'Golem',
      'date': 'November 22, 2026',
      'content': 'Strength is not everything. Protecting the people around you matters more.',
      'image': 'assets/images/golem.jpg',
      'likes': 156,
      'liked': false,
      'comments': 18,
    },
    {
      'name': 'Ant-Man',
      'date': 'November 21, 2026',
      'content': 'You do not need to be the biggest person in the room to make a difference.',
      'image': 'assets/images/antman.jpg',
      'likes': 310,
      'liked': false,
      'comments': 40,
    },
    {
      'name': 'Iceman',
      'date': 'November 20, 2026',
      'content': 'Another beautiful day. Time to practice some new ice tricks!',
      'image': 'assets/images/iceman.jpg',
      'likes': 287,
      'liked': false,
      'comments': 25,
    },
    {
      'name': 'Red Ranger',
      'date': 'November 19, 2026',
      'content': 'The power of friendship and teamwork will always win!',
      'image': 'assets/images/redranger.jpg',
      'likes': 590,
      'liked': false,
      'comments': 63,
    },
    {
      'name': 'Superboy',
      'date': 'November 18, 2026',
      'content': 'New day, new challenges. Never stop believing in yourself!',
      'image': 'assets/images/superboy.jpg',
      'likes': 745,
      'liked': false,
      'comments': 91,
    },
  ];

  void toggleLike(int index) {
    setState(() {
      posts[index]['liked'] = !posts[index]['liked'];

      if (posts[index]['liked']) {
        posts[index]['likes']++;
      } else {
        posts[index]['likes']--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFE9BCB9),
      child: ListView.builder(
        padding: EdgeInsets.all(10.w),
        itemCount: posts.length,
        itemBuilder: (context, index) {
          final post = posts[index];

          return Card(
            color: Colors.white,
            margin: EdgeInsets.only(bottom: 12.h),
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Padding(
              padding: EdgeInsets.all(12.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Post header
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 23.r,
                        backgroundColor: fbDarkPrimary,
                        backgroundImage: AssetImage(post['image']),
                      ),
                      SizedBox(width: 10.w),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              post['name'],
                              style: TextStyle(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.bold,
                                color: fbPrimary,
                              ),
                            ),
                            Text(
                              post['date'],
                              style: TextStyle(
                                fontSize: 11.sp,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Icon(
                        Icons.more_horiz,
                        color: fbPrimary,
                      ),
                    ],
                  ),

                  SizedBox(height: 12.h),

                  // Post content
                  Text(
                    post['content'],
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.black87,
                    ),
                  ),

                  SizedBox(height: 12.h),

                  // Post image
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.r),
                    child: Image.asset(
                      post['image'],
                      width: double.infinity,
                      height: 210.h,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          height: 210.h,
                          color: const Color(0xFFE9BCB9),
                          child: const Center(
                            child: Icon(
                              Icons.image_not_supported,
                              size: 40,
                              color: Color(0xFF662249),
                            ),
                          ),
                        );
                      },
                    ),
                  ),

                  SizedBox(height: 12.h),

                  // Likes and comments count
                  Row(
                    children: [
                      Icon(
                        Icons.favorite,
                        color: fbLightPrimary,
                        size: 18.sp,
                      ),
                      SizedBox(width: 5.w),
                      Text(
                        '${post['likes']} likes',
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: Colors.grey[700],
                        ),
                      ),
                      const Spacer(),
                      Text(
                        '${post['comments']} comments',
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: Colors.grey[700],
                        ),
                      ),
                    ],
                  ),

                  const Divider(),

                  // Post actions
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextButton.icon(
                        onPressed: () => toggleLike(index),
                        icon: Icon(
                          post['liked']
                              ? Icons.thumb_up
                              : Icons.thumb_up_outlined,
                          color: post['liked']
                              ? fbLightPrimary
                              : fbDarkPrimary,
                        ),
                        label: Text(
                          'Like',
                          style: TextStyle(
                            color: post['liked']
                                ? fbLightPrimary
                                : fbDarkPrimary,
                          ),
                        ),
                      ),
                      TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.comment_outlined),
                        label: const Text('Comment'),
                        style: TextButton.styleFrom(
                          foregroundColor: fbDarkPrimary,
                        ),
                      ),
                      TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.share_outlined),
                        label: const Text('Share'),
                        style: TextButton.styleFrom(
                          foregroundColor: fbDarkPrimary,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}