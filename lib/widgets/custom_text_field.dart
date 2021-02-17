import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextFieldWidget extends StatelessWidget {
  CustomTextFieldWidget({
    Key key,
    this.title,
    this.enableSuggestion = true,
    this.autoFillHints,
    this.controller,
    this.initialValue = null,
    this.validator,
    this.readOnly = false,
    this.obscureText = false,
    this.prefixIcon,
    this.suffixIcon,
    this.hintValue,
    this.onChanged,
    this.type,
    this.textCapitalization = TextCapitalization.none,
    this.maxLength,
    this.onSubmit,
    this.focusNode = null,
    this.upperLabel = null,
    this.onEditingComplete,
    this.textInputAction,
    this.inputFormatters,
    this.enabled = true,
    this.counterText,
    this.textAlign = TextAlign.left,
  }) : super(key: key);
  final String hintValue;
  final TextEditingController controller;
  final validator;
  final bool obscureText;
  final TextInputType type;
  final upperLabel;
  final bool enabled;
  TextInputAction textInputAction;
  dynamic onChanged;
  dynamic onEditingComplete;
  var maxLength = 0;
  dynamic onSubmit;
  FocusNode focusNode;
  bool readOnly;
  final List<TextInputFormatter> inputFormatters;
  TextCapitalization textCapitalization;
  String initialValue;
  final Widget prefixIcon;
  final Widget suffixIcon;
  final String counterText;
  final TextAlign textAlign;
  final bool enableSuggestion;
  final List<String> autoFillHints;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        title == null || title == ''
            ? Container()
            : Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(
                  title,
                  style: Theme.of(context)
                      .textTheme
                      .headline6
                      .copyWith(fontSize: 18.0),
                ),
              ),
        TextFormField(
          enableSuggestions: enableSuggestion,
          enabled: enabled,
          textAlign: textAlign,
          initialValue: initialValue,
          inputFormatters: inputFormatters,
          readOnly: readOnly,
          focusNode: focusNode,
          keyboardType: type,
          autocorrect: false,
          obscureText: obscureText,
          onEditingComplete: onEditingComplete,
          textCapitalization: textCapitalization,
          autofillHints: autoFillHints,
          decoration: InputDecoration(
            counterText: counterText,
            suffixIcon: suffixIcon,
            prefixIcon: Container(
              // color: Colors.red,
              width: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  prefixIcon,
                  SizedBox(
                    height: 25,
                    child: VerticalDivider(
                      color: Colors.black,
                      thickness: 1.0,
                    ),
                  )
                ],
              ),
            ),
            labelText: upperLabel,
            hintText: hintValue,
          ),
          validator: validator,
          controller: controller,
          onChanged: onChanged,
          maxLength: maxLength,
          onFieldSubmitted: onSubmit,
        ),
      ],
    );
  }
}
