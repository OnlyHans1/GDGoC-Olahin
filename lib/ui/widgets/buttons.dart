import 'package:flutter/material.dart';
import 'package:olahin/shared/theme.dart';

class CustomFilledButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final double? width;

  const CustomFilledButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      height: 52,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: orangeBackgroundColor,
          foregroundColor: whiteColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          elevation: 0,
        ),
        child: Text(
          title,
          style: TextStyle(fontSize: 16, fontWeight: semiBold),
        ),
      ),
    );
  }
}

class CustomTextButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const CustomTextButton({
    super.key,
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 52,
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: semiBold,
            color: orangeColor,
          ),
        ),
      ),
    );
  }
}