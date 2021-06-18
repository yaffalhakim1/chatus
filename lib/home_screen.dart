import 'package:chatus/list_chat.dart';
import 'package:chatus/theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff252836),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 110,
                  left: 17,
                  right: 9,
                ),
                child: Image.asset(
                  'assets/icon_one.png',
                  width: 348,
                  height: 285,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Instant messaging, simple \nand personal',
                    style: titleTextStyle,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'start your new journey in the Chat Us',
                    style: subTextStyle,
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    width: 180,
                    height: 55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xff6A6AE3),
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ListChat()));
                      },
                      child: Text(
                        'Lets begin',
                        style: titleTextStyle.copyWith(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
