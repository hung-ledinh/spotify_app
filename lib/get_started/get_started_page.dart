import 'package:flutter/material.dart';
import 'package:spotify_app/gen/assets.gen.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Assets.images.logo.svg(width: 80,height: 80),
      ],
    );
  }
}
