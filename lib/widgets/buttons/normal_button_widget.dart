import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:radio_app/utils/custom_color.dart';
import 'package:radio_app/utils/dimensions.dart';

class NormalButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const NormalButton({Key? key, required this.title, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextButton(
        onPressed: onPressed,
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(CustomColor.white),
            foregroundColor: MaterialStateProperty.all(Colors.white),
            padding: MaterialStateProperty.all(
              EdgeInsets.symmetric(vertical: 10.h),
            ),
            textStyle: MaterialStateProperty.all(TextStyle(
                color: CustomColor.pink1,
                fontSize: Dimensions.defaultTextSize.sp,
                fontWeight: FontWeight.w700)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: const BorderSide(color: Colors.black12)),
            )),
        child: Text(
          title,
          style: const TextStyle(color: CustomColor.pink1),
        ),
      ),
    );
  }
}
