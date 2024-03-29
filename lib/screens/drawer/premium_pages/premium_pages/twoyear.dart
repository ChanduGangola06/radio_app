import 'package:flutter/material.dart';
import 'package:radio_app/utils/custom_color.dart';
import 'package:radio_app/utils/dimensions.dart';
import 'package:radio_app/utils/strings.dart';
import 'package:radio_app/widgets/buttons/normal_button_widget.dart';

class TwoYear extends StatelessWidget {
  const TwoYear({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      SizedBox(
        height: MediaQuery.of(context).size.height * .5,
        width: MediaQuery.of(context).size.width,
        child: Stack(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "\$",
                style: TextStyle(
                    color: CustomColor.pink1,
                    fontSize: Dimensions.largeTextSize * 2),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "64",
                  style: TextStyle(
                      color: CustomColor.pink1,
                      fontSize: Dimensions.extraLargeTextSize * 5),
                ),
              ),
              Text(
                ".",
                style: TextStyle(
                    color: CustomColor.pink1,
                    fontSize: Dimensions.extraLargeTextSize * 2),
              ),
              Text(
                "0",
                style: TextStyle(
                    color: CustomColor.pink1,
                    fontSize: Dimensions.largeTextSize * 2),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "/",
                  style: TextStyle(
                      color: CustomColor.textYellow,
                      fontSize: Dimensions.extraLargeTextSize * 5),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "month",
                  style: TextStyle(
                      color: CustomColor.textYellow,
                      fontSize: Dimensions.largeTextSize * 2),
                ),
              ),
            ],
          ),
        ]),
      ),
      Padding(
        padding: EdgeInsets.all(Dimensions.marginSize),
        child: NormalButton(
          key: key,
          onPressed: () {},
          title: Strings.subscribeNow,
        ),
      )
    ]));
  }
}
