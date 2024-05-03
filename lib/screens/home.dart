import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:lottie/lottie.dart';
import 'package:pill_reminder/common/widgets/home_page/date_label.dart';
import 'package:pill_reminder/common/widgets/home_page/pills_doctor_name.dart';
import 'package:pill_reminder/common/widgets/notifiBadge.dart';
import 'package:pill_reminder/utils/constants/colors.dart';
import 'package:pill_reminder/utils/constants/image_strings.dart';
import 'package:pill_reminder/utils/constants/sizes.dart';
import 'package:pill_reminder/utils/device/device_utility.dart';
import 'package:pill_reminder/utils/helpers/helper_functions.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  bool? isChecked = false;

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
            // -- day & date
            Container(
              width: myDeviceUtilities.getScreenWidth(context),
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  dateLabel(),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'سه شنبه',
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .apply(fontFamily: 'sans'),
                    textAlign: TextAlign.right,
                  ),
                ],
              ),
            ),

            SizedBox(height: mySizes.spaceBetweenSections),

            // -- Notify
            notifiBadgeWidget(
              title: 'یادت نره قرصا هاتو بخوری عزیزم',
              backgroundColor: Colors.red.shade200,
            ),

            SizedBox(height: mySizes.spaceBetweenSections * 2),

            // -- pills to use => Title
            Container(
              width: myDeviceUtilities.getScreenWidth(context),
              height: 50,
              child: ShaderMask(
                shaderCallback: (bounds) {
                  return myColors.linearGradient.createShader(
                      Rect.fromLTWH(0, 0, bounds.width, bounds.height));
                },
                child: Text(
                  'داروها',
                  style: Theme.of(context).textTheme.headlineLarge!.apply(
                    shadows: [
                      BoxShadow(
                        color: dark ? myColors.white : myColors.dark,
                        spreadRadius: 5,
                        offset: Offset(1, 1),
                      ),
                    ],

                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),

            SizedBox(
              height: mySizes.spaceBetweenItems / 1.5,
            ),
            Divider(
              thickness: 3,
              color: dark ? myColors.white : myColors.dark,
            ),

            SizedBox(
              height: mySizes.spaceBetweenSections,
            ),


            // -- Pills to use => column & rows
            Container(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Checkbox(
                          value: isChecked,
                          activeColor: Colors.greenAccent,
                          onChanged: (newBool) {
                            setState(() {
                              isChecked = newBool;
                            });
                          },
                        ),

                        IconButton(
                          onPressed: () {}, 
                          icon: Icon(
                            Iconsax.notification5,
                            size: mySizes.iconMd,
                            color: Colors.yellow.shade800,
                          ),
                        ),

                        SizedBox(width: mySizes.spaceBetweenSections + 10),

                        pillsNameAndDoctor(
                          docName: 'دکتر معصومی',
                          pillName: 'استامینوفن',
                        ),
                    
                        SizedBox(width: mySizes.spaceBetweenItems),
                    
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromARGB(130, 100, 237, 58),
                                blurRadius: 20,
                                spreadRadius: 2,
                              )
                            ]
                          ),
                          child: Lottie.asset(
                            Images.healthShieldAnimation,
                            width: 60,
                            height: 60,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ),
          ],
        ),
      ),
    );
  }
}




