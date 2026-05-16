import 'package:flutter/material.dart';
import 'package:olahin/shared/theme.dart';

class RecipeCard extends StatelessWidget {
  final String name;
  final String username;
  final String time;
  final String description;
  final String imageUrl;
  final String likes;
  final String comments;
  final String avatarUrl;

  const RecipeCard({
    super.key,
    required this.name,
    required this.username,
    required this.time,
    required this.description,
    required this.imageUrl,
    required this.likes,
    required this.comments,
    required this.avatarUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: grayColor.withOpacity(0.2)),
        boxShadow: [
          BoxShadow(
            color: blackColor.withOpacity(0.05),
            blurRadius: 20,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(avatarUrl),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: blackTextStyle.copyWith(
                          fontWeight: semiBold,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        '$username • $time',
                        style: grayTextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: medium,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              description,
              style: grayTextStyle.copyWith(
                fontSize: 14,
                height: 1.5,
              ),
            ),
          ),
          const SizedBox(height: 12),
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    _buildIconAction(Icons.favorite_outline, likes),
                    const SizedBox(width: 16),
                    _buildIconAction(Icons.chat_bubble_outline, comments),
                  ],
                ),
                _buildIconAction(Icons.share_outlined, 'Bagikan'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildIconAction(IconData icon, String label) {
    return Row(
      children: [
        Icon(
          icon,
          color: grayColor,
          size: 20,
        ),
        const SizedBox(width: 6),
        Text(
          label,
          style: grayTextStyle.copyWith(
            fontSize: 12,
            fontWeight: medium,
          ),
        ),
      ],
    );
  }
}
