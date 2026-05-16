import 'package:olahin/shared/theme.dart';
import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {
  final String title;
  final bool obsecureText;
  final TextEditingController? controller;
  final bool isShowTitle;
  final TextInputType? keyboardType;

  const CustomFormField({
    super.key,
    required this.title,
    this.obsecureText = false,
    this.controller,
    this.isShowTitle = true,
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (isShowTitle)
          Text(
            title,
            style: blackTextStyle.copyWith(fontWeight: semiBold),
          ),
        if (isShowTitle)
          const SizedBox(
            height: 8,
          ),
        TextFormField(
          obscureText: obsecureText,
          controller: controller,
          keyboardType: keyboardType,
          decoration: InputDecoration(
            hintText: !isShowTitle ? title : null,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
            ),
            contentPadding: const EdgeInsets.all(12),
          ),
        ),
      ],
    );
  }
}