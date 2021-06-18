import 'package:chatus/models/messages.dart';
import 'package:chatus/theme.dart';
import 'package:flutter/material.dart';

class MessageList extends StatelessWidget {
  final Message message;

  MessageList(this.message);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Row(
        children: [
          Image.asset(
            message.imageUrl,
            width: 50,
            height: 50,
          ),
          SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                message.name,
                style: titleTextStyle.copyWith(fontSize: 14),
              ),
              Text(
                message.chat,
                style: subTextStyle.copyWith(fontSize: 12),
              ),
            ],
          ),
          Spacer(),
          Text(
            message.time,
            style: subTextStyle.copyWith(
                fontSize: 10, fontWeight: FontWeight.normal),
          ),
        ],
      ),
    );
  }
}
