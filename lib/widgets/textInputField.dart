import 'package:flutter/material.dart';
import 'package:sarb_mobile_app/commons/appColors.dart';
import 'package:sarb_mobile_app/commons/appTextStyles.dart';

class TextInputField extends StatelessWidget {
  final TextEditingController? editingController;

  final String? hint;
  final String? postfix;
  final Widget? prefixIcon;
  final Widget? sufixIcon;
  final int? length;
  final bool? validation;
  final TextInputType? inputType;
  final Color? textColor;
  final Color? cursorColor;
  final bool readOnlyText;
  final String? initialValue;
  final TextCapitalization capitalization;
  final String? placeholderText;
  final String? validationErrorMsg;
  final bool? textFieldVisible;
  final bool obscureText;
  final FocusNode? focusNode;
  final TextInputAction textInputAction;

  const TextInputField({
    Key? key,
    this.editingController,
    this.hint,
    this.postfix,
    this.length,
    this.inputType,
    this.textColor,
    this.readOnlyText = false,
    this.capitalization = TextCapitalization.none,
    this.placeholderText,
    this.textFieldVisible,
    this.focusNode,
    this.prefixIcon,
    this.sufixIcon,
    this.cursorColor,
    this.initialValue,
    this.obscureText = false,
    this.validation,
    this.validationErrorMsg,
    this.textInputAction = TextInputAction.next,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.iron,
      margin: EdgeInsets.only(left: 30, right: 30, top: 20),
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      child: TextFormField(
        textAlignVertical: TextAlignVertical.center,
        style:
            TextStyle(color: AppColors.darkGreen, fontWeight: FontWeight.w600),
        textAlign: TextAlign.left,
        readOnly: readOnlyText,
        textCapitalization: capitalization,
        controller: editingController,
        cursorColor: cursorColor,
        focusNode: focusNode,
        initialValue: initialValue,
        keyboardType: inputType,
        textInputAction: textInputAction,
        maxLength: length,
        obscureText: obscureText,
        validator: (String? value) {
          if (validation!) {
            if (value!.isEmpty) {
              return validationErrorMsg;
            }
          }
        },
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          suffixIcon: sufixIcon,
          hintText: hint,
          hintStyle: AppTextStyles.inputTextStyle,
          filled: true,
          fillColor: AppColors.iron,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(
              Radius.circular(12.0),
            ),
          ),
          contentPadding:
              EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
        ),
      ),
    );
  }
}
