import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  static final List<Map<String, String>> notifications = [
    {
      'name': 'Ant-Man',
      'description': 'liked your post.',
      'date': '2 minutes ago',
      'image': 'assets/images/antman.jpg',
    },
    {
      'name': 'Clayface',
      'description': 'commented on your photo.',
      'date': '10 minutes ago',
      'image': 'assets/images/clayface.jpg',
    },
    {
      'name': 'Golem',
      'description': 'shared your post.',
      'date': '20 minutes ago',
      'image': 'assets/images/golem.jpg',
    },
    {
      'name': 'Iceman',
      'description': 'liked your post.',
      'date': '30 minutes ago',
      'image': 'assets/images/iceman.jpg',
    },
    {
      'name': 'Red Ranger',
      'description': 'mentioned you in a comment.',
      'date': '1 hour ago',
      'image': 'assets/images/redranger.jpg',
    },
    {
      'name': 'Superboy',
      'description': 'sent you a friend request.',
      'date': '2 hours ago',
      'image': 'assets/images/superboy.jpg',
    },
    {
      'name': 'Ant-Man',
      'description': 'reacted to your photo.',
      'date': '3 hours ago',
      'image': 'assets/images/antman.jpg',
    },
    {
      'name': 'Iceman',
      'description': 'commented: Stay cool!',
      'date': '4 hours ago',
      'image': 'assets/images/iceman.jpg',
    },
    {
      'name': 'Red Ranger',
      'description': 'shared a memory with you.',
      'date': '5 hours ago',
      'image': 'assets/images/redranger.jpg',
    },
    {
      'name': 'Clayface',
      'description': 'liked your recent post.',
      'date': '6 hours ago',
      'image': 'assets/images/clayface.jpg',
    },
    {
      'name': 'Golem',
      'description': 'started following you.',
      'date': 'Yesterday',
      'image': 'assets/images/golem.jpg',
    },
    {
      'name': 'Superboy',
      'description': 'tagged you in a photo.',
      'date': 'Yesterday',
      'image': 'assets/images/superboy.jpg',
    },
    {
      'name': 'Ant-Man',
      'description': 'commented on your post.',
      'date': 'Yesterday',
      'image': 'assets/images/antman.jpg',
    },
    {
      'name': 'Red Ranger',
      'description': 'liked your comment.',
      'date': '2 days ago',
      'image': 'assets/images/redranger.jpg',
    },
    {
      'name': 'Iceman',
      'description': 'sent you a friend request.',
      'date': '3 days ago',
      'image': 'assets/images/iceman.jpg',
    },
    {
      'name': 'Clayface',
      'description': 'shared your photo.',
      'date': '4 days ago',
      'image': 'assets/images/clayface.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFE9BCB9),
      child: ListView.separated(
        padding: EdgeInsets.all(10.w),
        itemCount: notifications.length,
        separatorBuilder: (context, index) => const Divider(
          color: Color(0xFFE9BCB9),
          height: 1,
        ),
        itemBuilder: (context, index) {
          final notification = notifications[index];

          return Container(
            color: Colors.white,
            padding: EdgeInsets.all(12.w),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 23.r,
                  backgroundColor: fbDarkPrimary,
                  backgroundImage: AssetImage(notification['image']!),
                ),
                SizedBox(width: 12.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: 13.sp,
                            color: Colors.black87,
                          ),
                          children: [
                            TextSpan(
                              text: notification['name'],
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text: ' ${notification['description']}',
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 5.h),
                      Text(
                        notification['date']!,
                        style: TextStyle(
                          fontSize: 11.sp,
                          color: fbLightPrimary,
                        ),
                      ),
                    ],
                  ),
                ),
                const Icon(
                  Icons.more_horiz,
                  color: fbDarkPrimary,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}