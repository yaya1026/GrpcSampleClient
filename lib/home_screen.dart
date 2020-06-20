import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 20, top: 50, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildAppBar(),
            SizedBox(height: 30),
            const Text(
              "おすすめのゲームを紹介",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
            ),
            SizedBox(height: 8),
            const Text(
              "ゲームを探す",
            ),
            SizedBox(height: 8),
            _buildSearchBar(),
            SizedBox(height: 16),
            const Text(
              "新着",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAppBar() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.menu),
          Container(
            height: 32,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.network(
                "https://pbs.twimg.com/profile_images/1251320609226645504/r8HQWMi1_400x400.jpg",
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      );

  Widget _buildSearchBar() => Container(
        height: 60,
        decoration: BoxDecoration(
          color: Color(0xFFF5F5F7),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            SizedBox(width: 16),
            Icon(Icons.search),
            SizedBox(width: 8),
            Text(
              "Search by title, account name...",
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      );
}
