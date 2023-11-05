import 'package:flutter/material.dart';
import 'package:safetycompass/core/app_export.dart';

// ignore: must_be_immutable
class TopiclistItemWidget extends StatelessWidget {
  const TopiclistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "TOPIC",
          style: theme.textTheme.bodyMedium,
        ),
        Padding(
          padding: EdgeInsets.only(left: 205.h),
          child: Text(
            "DISCUSSIONS",
            style: theme.textTheme.bodyMedium,
          ),
        ),
      ],
    );
  }
}
