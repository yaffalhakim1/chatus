import 'package:chatus/models/status.dart';
import 'package:flutter/material.dart';

class StatusRow extends StatelessWidget {
  final Status status;

  StatusRow(this.status);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
      ),
      child: Container(
        height: 50,
        width: 50,
        child: Stack(
          children: [
            Image.asset(
              status.imageUrl,
            ),
            status.online
                ? Padding(
                    padding: EdgeInsets.only(top: 35.0, left: 35),
                    child: Center(
                      child: Image.asset(
                        'assets/online.png',
                        width: 12,
                        height: 12,
                      ),
                    ),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
