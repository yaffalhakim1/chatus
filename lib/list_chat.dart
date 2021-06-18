import 'package:chatus/models/messages.dart';
import 'package:chatus/models/status.dart';
import 'package:chatus/widgets/message_list.dart';
import 'package:chatus/widgets/status_button.dart';
import 'package:chatus/widgets/status_row.dart';
import 'package:flutter/material.dart';
import 'package:chatus/theme.dart';

class ListChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff252836),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/header_profile.png',
                      width: 40,
                    ),
                    Image.asset(
                      'assets/line.png',
                      height: 14,
                      width: 18,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Online',
                      style: titleTextStyle.copyWith(fontSize: 20),
                    ),
                    Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        color: Color(0xff2F3142),
                        borderRadius: BorderRadius.circular(2),
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 6, right: 6, top: 1),
                        child: Text(
                          '4',
                          style: titleTextStyle.copyWith(fontSize: 12),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 10,
                ),
                child: Row(
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          StatusButton(),
                          Row(
                            children: [
                              StatusRow(
                                Status(
                                  imageUrl: 'assets/one.png',
                                  online: true,
                                ),
                              ),
                              StatusRow(
                                Status(imageUrl: 'assets/two.png'),
                              ),
                              StatusRow(
                                Status(
                                  imageUrl: 'assets/three.png',
                                  online: true,
                                ),
                              ),
                              StatusRow(
                                Status(imageUrl: 'assets/four_status.png'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 22,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Messages',
                      style: titleTextStyle.copyWith(fontSize: 20),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 6, right: 6, top: 1),
                      child: Image.asset(
                        'assets/search.png',
                        height: 20,
                        width: 20,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Column(
                  children: [
                    MessageList(
                      Message(
                          chat: 'sent a photo',
                          time: 'Now',
                          name: 'Keazia de Rezia',
                          imageUrl: 'assets/one.png'),
                    ),
                    MessageList(
                      Message(
                          chat: 'Sure',
                          time: '12.00',
                          name: 'Peter Park',
                          imageUrl: 'assets/four_status.png'),
                    ),
                    MessageList(
                      Message(
                          chat: "Don't forget group as...",
                          time: '11.30',
                          name: 'Alice',
                          imageUrl: 'assets/three.png'),
                    ),
                    MessageList(
                      Message(
                          chat: 'No, sorry',
                          time: '10.50',
                          name: 'Loila Bae',
                          imageUrl: 'assets/two.png'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xff6A6AE3),
        unselectedItemColor: Color(0xff92949B),
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xff2F3142),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 15.0),
              child: Image.asset(
                'assets/chats_icon.png',
                width: 24,
                height: 24,
              ),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 15.0),
              child: Image.asset(
                'assets/calls.png',
                width: 24,
                height: 24,
              ),
            ),
            label: 'Calls',
          )
        ],
      ),
    );
  }
}
