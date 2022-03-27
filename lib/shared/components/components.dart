import 'package:flutter/material.dart';

Widget defaultFormFeild({
  @required TextEditingController controller,
  @required TextInputType type,
  Function onSubmit,
  Function onChange,
  Function onTap,
  bool isClickable = true,
  @required Function validate,
  @required String label,
  @required IconData prefix,
  IconData suffix,
  bool isPassword = false,
  Function iconButton,
}) =>
    TextFormField(
      onFieldSubmitted: onSubmit,
      validator: validate,
      onTap: onTap,
      onChanged: onChange,
      enabled: isClickable,
      controller: controller,
      keyboardType: type,
      obscureText: isPassword,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: label,
        prefixIcon: Icon(prefix),
        suffixIcon: suffix != null
            ? IconButton(
          icon: Icon(suffix),
          onPressed: iconButton,
        )
            : null,
      ),
    );

void navigateTo(context, widget) => Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => widget,
  ),
);