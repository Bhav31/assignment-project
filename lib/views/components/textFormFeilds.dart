import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';

class CustomTextFormFeild extends StatelessWidget {
  final TextEditingController? controller;
  final TextInputType? textInputType;
  final String? Function(String?)? validator;
  final int? maxlength;
  final int? maxLines;
  final String? hintText;
  final onTAp;
  final readOnly;
  final List<TextInputFormatter>? inputForamtters;
  final Widget? prefixIcon;
  final TextStyle? hintStyle;
  final Widget? suffixIcon;
  const CustomTextFormFeild(
      {super.key,
      this.controller,
      this.textInputType,
      this.validator,
      this.maxlength,
      this.maxLines,
      this.hintText,
      this.onTAp,
      this.readOnly,
      this.inputForamtters,
      this.prefixIcon,
      this.hintStyle,
      this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLength: maxlength,
      controller: controller,
      keyboardType: textInputType,
      validator: validator,
      maxLines: maxLines,
      inputFormatters: inputForamtters,
      style: TextStyle(
        color: Colors.black,
        fontSize: 14,
      ),
      onTap: onTAp,
      decoration: InputDecoration(
        // prefix: Text('+91 ',style: TextStyle(color: tBlack),),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        hintText: hintText,
        hintStyle: hintStyle != null
            ? hintStyle
            : TextStyle(
                color: Colors.black,
                fontSize: 14,
              ),
        // hintText: 'Enter Your Mobile Number',
        fillColor: Colors.grey[200],
        contentPadding: EdgeInsets.symmetric(
          horizontal: 2.w,
          vertical: 0.5.h,
        ),
        filled: true,

        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none),
      ),
    );
  }
}
