import 'package:flutter/material.dart';
import 'package:spotify_app/gen/assets.gen.dart';
import 'package:spotify_app/login/login_page.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                Assets.images.logo.path,
                alignment: Alignment.center,
              ),
              Image.asset(
                Assets.images.listImage.path,
                alignment: Alignment.center,
              ),
              Image.asset(
                Assets.images.musicText.path,
                alignment: Alignment.center,
              ),
              const SizedBox(height: 32),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.black,
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 100),
                  textStyle: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
                },
                child: const Text('Get Started'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
