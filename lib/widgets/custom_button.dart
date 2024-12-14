import 'package:flutter/material.dart';

import '../utils/app_font_style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onTap,
    required this.text,
    required this.bgColor,
    this.borderColor,
    this.textColor,
    this.isLeft,
  });
  final VoidCallback onTap;
  final String text;
  final Color bgColor;
  final Color? borderColor;
  final Color? textColor;
  final bool? isLeft;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: bgColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            side: BorderSide(color: borderColor ?? Colors.transparent)),
        onPressed: onTap,
        child: Row(
          children: [
            isLeft != null
                ? isLeft!
                    ? const Icon(Icons.arrow_back_ios)
                    : Container()
                : Container(),
            const Spacer(),
            Text(
              text,
              style: AppFontStyle.buttonTextStyle18.copyWith(color: textColor),
            ),
            const Spacer(),
            isLeft != null
                ? isLeft!
                    ? Container()
                    : const Icon(Icons.arrow_forward_ios)
                : Container(),
          ],
        ),
      ),
    );
  }
}
