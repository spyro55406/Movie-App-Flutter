import 'package:flutter/material.dart';
import 'package:movie_app/common/utils.dart';
import 'package:movie_app/pages/movie_detail/movie_detail_page.dart';

class CustomCardThumbnail extends StatelessWidget {
  final String imageAsset;
  final int movieId;

  const CustomCardThumbnail({
    super.key,
    required this.imageAsset,
    required this.movieId,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => MovieDetailPage(
              movieId: movieId,
            ),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 5,
              spreadRadius: 1,
              offset: const Offset(0, 3),
            ),
          ],
          image: DecorationImage(
            image: NetworkImage(
              '$imageUrl$imageAsset',
            ),
            fit: BoxFit.contain,
          ),
        ),
        margin: const EdgeInsets.only(left: 15, right: 15, top: 20, bottom: 30),
        height: 300,
        width: double.infinity,
      ),
    );
  }
}
