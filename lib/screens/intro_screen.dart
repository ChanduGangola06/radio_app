import 'package:flutter/material.dart';
import 'package:radio_app/routes/routes.dart';
import 'package:radio_app/utils/dimensions.dart';
import 'package:radio_app/utils/strings.dart';
import 'package:radio_app/widgets/buttons/primary_button_white.dart';
import 'package:radio_app/widgets/buttons/primary_button_widget.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/icon/xLogo.png",
                  width: Dimensions.widthSize * 7,
                  height: Dimensions.heightSize * 5,
                  alignment: Alignment.center,
                  fit: BoxFit.fill,
                ),
                SizedBox(height: Dimensions.heightSize * 2),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 0, 30, 20),
                  child: PrimaryButtonWidgetWhite(
                    title: Strings.signin,
                    onPressed: () {
                      Navigator.of(context).pushNamed(Routes.authScreen);
                    },
                  ),
                ),
                SizedBox(height: Dimensions.heightSize * .5),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 0, 30, 20),
                  child: PrimaryButtonWidget(
                    title: Strings.signUP,
                    onPressed: () {
                      Navigator.of(context).pushNamed(Routes.authScreen);
                    },
                  ),
                ),
                TextButton(
                  child: Text(
                    Strings.termsAndCondition,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black54),
                  ),
                  onPressed: () {
                    Navigator.of(context)
                        .pushNamed(Routes.termsAndConditionScreen);
                  },
                ),
              ]),
        ),
      ),
    );
  }
}
