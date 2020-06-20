import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:grpcsampleclient/generated/game.pb.dart';
import 'package:grpcsampleclient/main.dart';
import 'package:grpcsampleclient/screen/detail_screen.dart';
import 'package:grpcsampleclient/store/fetch_data_store.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final reviews = context.select((FetchDataStore store) => store.gameReviews);
    print(reviews);
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
              "新着ゲーム",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
            ),
            _buildNewGameList(reviews),
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

  Widget _buildNewGameList(GameReviews reviews) => Expanded(
        child: StaggeredGridView.countBuilder(
          crossAxisCount: 2,
          itemCount: reviews.games.length,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, AppRoutes.detail,
                    arguments: DetailArgs(reviews.games[index]));
              },
              child: Container(
                height: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Image.network(
                  reviews.games[index].imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
          staggeredTileBuilder: (index) => StaggeredTile.fit(1),
        ),
      );
}
