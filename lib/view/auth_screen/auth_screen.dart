import 'package:amazon_app/constants/common_functions.dart';
import 'package:amazon_app/utils/colors.dart';
import 'package:amazon_app/utils/theme.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  AuthScreen({super.key});

  bool inLogin = false;

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final TextTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        centerTitle: true,
        title: Image(
          image: const AssetImage('assets/images/amazon_logo.png'),
          height: height * 0.04,
        ),
      ),
      body: SafeArea(
        child: Container(
          height: height,
          width: width,
          padding: EdgeInsets.symmetric(
              horizontal: width * 0.03, vertical: height * 0.02),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              'Welcome',
              style:
                  TextTheme.displaySmall!.copyWith(fontWeight: FontWeight.w600),
            ),
            CommonFunctions.blankspace(
              height * 0.02,
              0,
            ),
            Container(
              width: width,
              decoration: BoxDecoration(
                border: Border.all(
                  color: greyShade3,
                ),
              ),
              child: Column(
                children: [
                  Container(
                    height: height * 0.06,
                    width: width,
                    padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                    child: Row(
                      children: [
                        Container(
                          height: height * 0.03,
                          width: height * 0.03,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: grey),
                              color: white),
                          alignment: Alignment.center,
                          child: Icon(
                            Icons.circle,
                            size: height * 0.015,
                            color: !inLogin ? transparent : secondaryColor,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
