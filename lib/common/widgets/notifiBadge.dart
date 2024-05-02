import 'package:flutter/material.dart';
import 'package:pill_reminder/utils/constants/image_strings.dart';
import 'package:pill_reminder/utils/device/device_utility.dart';

class notifiBadgeWidget extends StatelessWidget {
  const notifiBadgeWidget({
    super.key, required this.title, this.backgroundColor,
  });

  final String title;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: myDeviceUtilities.getScreenWidth(context),
      height: 50,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Text(
              title,
              style: Theme.of(context).textTheme.bodySmall!.apply(fontFamily: 'bold'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Image.asset(
              Images.notifictionIcon,
              height: 45,
              width: 45,
            ),
          ),
          
        ],
      ),
    );
  }
}