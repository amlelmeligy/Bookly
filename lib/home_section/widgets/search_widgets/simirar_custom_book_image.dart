import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class SimilarCustomBookImage extends StatelessWidget {
  const SimilarCustomBookImage({super.key, required this.imageUrl});

  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(50),
      child: SizedBox(
          width: 70,
          height: 90,
          child: CachedNetworkImage(
            fit: BoxFit.fill,
            imageUrl: imageUrl,
            errorWidget: (context, url, error) => const Icon(Icons.error),
            placeholder: (context, url) => const Center(
              child: CircularProgressIndicator(),
            ),
          )),
    );
  }
}
