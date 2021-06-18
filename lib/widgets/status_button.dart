import 'package:flutter/material.dart';

class StatusButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 58,
      child: Stack(
        children: [
          Image.asset(
            'assets/header_profile.png',
            width: 50,
            height: 50,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Image.asset(
                'assets/add.png',
                height: 20,
                width: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
