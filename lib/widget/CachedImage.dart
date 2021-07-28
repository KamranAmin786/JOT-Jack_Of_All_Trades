import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CachedImage extends StatelessWidget {
  final String image;
  CachedImage({this.image='',});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50.0),
        child: CachedNetworkImage(
            placeholder: (context, url) => Container(
              child: Center(
                child: CircularProgressIndicator(
                  valueColor:
                  new AlwaysStoppedAnimation<Color>(Colors.grey),
                ),
              ),
              height: 30.0,
              decoration: BoxDecoration(
                  borderRadius:
                  BorderRadius.all(Radius.circular(50.0))),
            ),
            errorWidget: (context, url, error) => Material(
              child: Image.asset(
                "images/placeholder.jpg",
                width: 100.0,
                height: 100.0,
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.all(Radius.circular(50.0)),
              clipBehavior: Clip.hardEdge,
            ),
            imageUrl: image,
            width: 80.0,
            height: 80.0,
            fit: BoxFit.cover),
      ),
    );
  }
}