import 'package:flutter/material.dart';

import '../models/post.dart';

class OtherCard extends StatelessWidget {
  final Other other;
  const OtherCard({Key key, @required this.other});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.network(
                  other.poster,
                  width: 150,
                  height: 240.5,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 3.0),
                child: Text(
                  other.title,
                  textAlign: TextAlign.start,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
