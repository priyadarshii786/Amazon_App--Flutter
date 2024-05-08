import 'package:amazon_app/constants/common_functions.dart';
import 'package:amazon_app/utils/colors.dart';
import 'package:amazon_app/utils/theme.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  AuthScreen({super.key});

  // bool inLogin = false;   //  <-----  dhyan do yaha
  String currentCountryCode = '+91';

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final TextTheme = Theme.of(context).textTheme;
    // String currentCountryCode = '+91';

    bool inLogin = true; //  <-----  dhyan do yaha
    String currentCountryCode = '+91';

    return Scaffold(
      backgroundColor: white,
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome',
                style: TextTheme.displaySmall!
                    .copyWith(fontWeight: FontWeight.w600),
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
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: greyShade3,
                          ),
                        ),
                        color: greyShade1,
                      ),
                      padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                inLogin = false;
                              });
                            },
                            child: Container(
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
                                color: inLogin ? transparent : secondaryColor,
                              ),
                            ),
                          ),
                          CommonFunctions.blankspace(
                            0,
                            width * 0.02,
                          ),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Create Account.',
                                  style: TextTheme.bodyMedium!
                                      .copyWith(fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                  text: 'New to Amazon?',
                                  style: TextTheme.bodyMedium,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: width,
                padding: EdgeInsets.symmetric(
                  horizontal: width * 0.03,
                  vertical: height * 0.01,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              inLogin = true;
                            });
                          },
                          child: Container(
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
                              color: inLogin ? secondaryColor : transparent,
                            ),
                          ),
                        ),
                        CommonFunctions.blankspace(
                          0,
                          width * 0.02,
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Sign in.',
                                style: TextTheme.bodyMedium!
                                    .copyWith(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: 'Already a Customer?',
                                style: TextTheme.bodyMedium,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    CommonFunctions.blankspace(
                      height * 0.01,
                      0,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 0.06,
                          width: width * 0.2,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: grey,
                            ),
                            color: greyShade2,
                            borderRadius: BorderRadius.circular(
                              5,
                            ),
                          ),
                          child: Text(
                            currentCountryCode,
                            style: TextTheme.displaySmall!.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
