import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:pill_reminder/common/widgets/notifiBadge.dart';
import 'package:pill_reminder/utils/constants/colors.dart';
import 'package:pill_reminder/utils/constants/image_strings.dart';
import 'package:pill_reminder/utils/constants/sizes.dart';
import 'package:pill_reminder/utils/device/device_utility.dart';
import 'package:pill_reminder/utils/helpers/helper_functions.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = myHelperFunctions.isDarkMode(context);

    return Scaffold(
      backgroundColor: dark ? myColors.dark : myColors.primaryBackground,
      body: Container(
        width: myDeviceUtilities.getScreenWidth(context),
        padding: EdgeInsets.all(mySizes.spaceBetweenSections),
        child: Column(
          children: [
            Container(
              width: myDeviceUtilities.getScreenWidth(context),
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        '1403 ',
                        style: Theme.of(context).textTheme.labelSmall,
                      ),
                      Text(
                        'خرداد ',
                        style: Theme.of(context).textTheme.labelSmall,
                      ),
                      Text(
                        '14',
                        style: Theme.of(context).textTheme.labelSmall,
                      )
                    ],
                  ),
                  SizedBox(width: 20,),
                  Text(
                    'سه شنبه',
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .apply(fontFamily: 'yekan'),
                    textAlign: TextAlign.right,
                  ),
                ],
              ),
            ),
            SizedBox(height: mySizes.spaceBetweenSections),
            notifiBadgeWidget(
              title: 'یادت نره قرصا هاتو بخوری عزیزم',
              backgroundColor: Colors.red.shade200,
            ),

            SizedBox(height: mySizes.spaceBetweenSections),

            Container(
              child : Lottie.asset(Images.healthShieldAnimation)
            ),
          ],
        ),
      ),
    );
  }
}


