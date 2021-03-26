// ignore: avoid_web_libraries_in_flutter
import 'dart:js' as js;

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePageView extends StatelessWidget {
  final Color white = Colors.white;
  final Color black = Colors.black;
  final Color grey = Colors.grey[400];

  SizedBox box(context, double value) {
    return SizedBox(height: MediaQuery.of(context).size.height * value);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                buildNavBar(context),
                buildFirstWrap(context),
                box(context, 0.1),
                buildSecondWrap(context),
                Divider(color: grey),
                box(context, 0.01),
                Center(
                    child: Text(
                  'SWINDER © 2021',
                  style: TextStyle(color: grey),
                )),
                box(context, 0.01),
              ],
            ),
          )
        ],
      ),
    );
  }

  Center buildNavBar(BuildContext context) => Center(
        child: Image.network(
          'http://swinderapp.com/assets/logo2.png',
          height: MediaQuery.of(context).size.height * 0.14,
        ),
      );

  Wrap buildSecondWrap(BuildContext context) => Wrap(
        alignment: WrapAlignment.spaceAround,
        children: [
          Wrap(
            alignment: WrapAlignment.spaceEvenly,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Wrap(
                    alignment: WrapAlignment.center,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Container(
                        child: Text(
                          'first_explain'.tr(),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.036,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Image.network(
                'http://swinderapp.com/assets/iphonexpreview2.jpg',
                height: MediaQuery.of(context).size.height * 0.8,
              ),
            ],
          ),
        ],
      );

  Wrap buildFirstWrap(BuildContext context) => Wrap(
        alignment: WrapAlignment.spaceAround,
        children: [
          Wrap(
            alignment: WrapAlignment.spaceEvenly,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              Image.network(
                'http://swinderapp.com/assets/iphonex.jpg',
                height: MediaQuery.of(context).size.height * 0.8,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Wrap(
                    alignment: WrapAlignment.center,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      CupertinoButton(
                        child: Image.network(
                          'http://swinderapp.com/assets/appstore_download.png',
                          height: MediaQuery.of(context).size.height * 0.1,
                        ),
                        onPressed: () async {
                          const url =
                              'https://apps.apple.com/sl/app/swinder-for-instagram/id1547251259';
                          js.context.callMethod("open", [url]);
                        },
                      ),
                      CupertinoButton(
                        child: Image.network(
                          'http://swinderapp.com/assets/playstore_download.png',
                          height: MediaQuery.of(context).size.height * 0.1,
                        ),
                        onPressed: () async {
                          const url =
                              'https://play.google.com/store/apps/details?id=com.swinder.swinder&hl=tr&gl=US';

                          js.context.callMethod("open", [url]);
                        },
                      ),
                    ],
                  ),
                  Wrap(
                    alignment: WrapAlignment.center,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Container(
                        child: Text(
                          'second_explain'.tr(),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.042,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ],
      );
}
