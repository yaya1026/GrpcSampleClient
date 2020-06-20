import 'package:flutter/material.dart';
import 'package:grpcsampleclient/generated/game.pb.dart';

class DetailArgs {
  GameReview review;

  DetailArgs(this.review);
}

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final review =
        (ModalRoute.of(context).settings.arguments as DetailArgs).review;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("nasi"),
        iconTheme: IconThemeData(color: Colors.blueGrey),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildImage(review),
          _buildTitle(review),
          _buildUser(),
          _buildComment(review),
          _buildIine(),
        ],
      ),
    );
  }

  Widget _buildImage(GameReview review) => Container(
        height: 400,
        alignment: Alignment.topCenter,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
            review.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
      );

  Widget _buildTitle(GameReview review) => Padding(
        padding: const EdgeInsets.all(20),
        child: Text(review.title,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 28,
                color: Color(0xff37474F))),
      );

  Widget _buildUser() => Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Row(
          children: [
            Container(
              height: 64,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(32),
                child: Image.network(
                  "https://pbs.twimg.com/profile_images/1251320609226645504/r8HQWMi1_400x400.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "yaya",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Color(0xff37474F)),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "2020/06/24",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            )
          ],
        ),
      );

  Widget _buildComment(GameReview review) => Padding(
        padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
        child: Text(
          review.comment,
          style: TextStyle(color: Color(0xff37474F), fontSize: 14),
        ),
      );

  Widget _buildIine() => Padding(
        padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
        child: Row(
          children: [
            Icon(Icons.favorite, color: Color(0xffef5350)),
            SizedBox(width: 8),
            Text("20"),
          ],
        ),
      );
}
