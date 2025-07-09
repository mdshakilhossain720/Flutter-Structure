import 'package:flutter/material.dart';

class CustomFormBuilderTextField extends StatelessWidget {
  final String name;
  final String hintText;
  final String requiredIndicator;
  final Color hintTextColor;
  final Color requiredIndicatorColor;
  final bool isRequired;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final FocusNode? focusNode;
  final String? Function(String?)? validator;
  final IconData? suffixIcon;
  final int? maxLine; // Nullable maxLine

  const CustomFormBuilderTextField({
    super.key,
    required this.name,
    required this.hintText,
    this.requiredIndicator = '*',
    this.hintTextColor = Colors.grey,
    this.requiredIndicatorColor = Colors.red,
    this.keyboardType = TextInputType.text,
    this.textInputAction = TextInputAction.done,
    this.focusNode,
    this.validator,
    this.isRequired = true,
    this.suffixIcon,
    this.maxLine,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        FormBuilderTextField(
          name: name,
          focusNode: focusNode,
          keyboardType: keyboardType,
          maxLines: maxLine ?? 1,
          textInputAction: textInputAction,
          decoration: InputDecoration(
            suffixIcon: suffixIcon != null ? Icon(suffixIcon) : null,
            hintText: '',
          ),
          validator: validator,
        ),
        Positioned.fill(
          child: IgnorePointer(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
                child: RichText(
                  text: TextSpan(
                    text: hintText,
                    style: TextStyle(
                      color: Color(0xFF6D6D6D),
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                    ),
                    children: [
                      if (isRequired)
                        TextSpan(
                          text: requiredIndicator,
                          style: TextStyle(
                            color: requiredIndicatorColor,
                            fontSize: 16.0,
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
