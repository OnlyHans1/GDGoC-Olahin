import 'package:flutter/material.dart';
import 'package:olahin/shared/theme.dart';
import 'package:olahin/ui/widgets/cards/create_post_card.dart';
import 'package:olahin/ui/widgets/cards/recipe_card.dart';
import 'package:olahin/ui/widgets/headers/community_header.dart';
import 'package:olahin/ui/widgets/navbar/custom_bottom_navbar.dart';

class CommunityPage extends StatelessWidget {
  const CommunityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const CommunityHeader(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const SizedBox(height: 4),
                  const RecipeCard(
                    name: 'Resep Populer',
                    username: '@chef_hijau',
                    time: '2 jam yang lalu',
                    description:
                        'Nasi Goreng Spesial dengan bahan-bahan sisa di kulkas. Tetap lezat dan hemat budget! #HematSehat #NasiGoreng',
                    imageUrl:
                        'https://images.unsplash.com/photo-1512058564366-18510be2db19?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80',
                    likes: '245',
                    comments: '12',
                    avatarUrl:
                        'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&auto=format&fit=crop&w=200&q=80',
                  ),
                  const SizedBox(height: 20),
                  const CreatePostCard(),
                  const SizedBox(height: 20),
                  const RecipeCard(
                    name: 'Resep Populer',
                    username: '@masak_dirumah',
                    time: '5 jam yang lalu',
                    description:
                        'Salad Sayur Segar dari pasar lokal. Hanya Rp 15.000 untuk 2 porsi! Nutrisi maksimal dengan budget minimal.',
                    imageUrl:
                        'https://images.unsplash.com/photo-1512621776951-a57141f2eefd?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80',
                    likes: '892',
                    comments: '45',
                    avatarUrl:
                        'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-4.0.3&auto=format&fit=crop&w=200&q=80',
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const CustomBottomNavbar(currentIndex: 4),
    );
  }
}