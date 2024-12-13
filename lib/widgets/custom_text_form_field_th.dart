import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  
  final String? hintText;
  final String? labelText;
  final IconData? suffixIcon;
  final TextInputType? keyboardType;
  final bool obscureText;
  final OutlineInputBorder? border;

  const CustomTextFormField({
    Key? key, this.hintText, this.labelText, this.suffixIcon, this.keyboardType, this.obscureText=false, this.border
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      //initialValue: 'Nombre (Ejemplo: Luis)',
      textCapitalization: TextCapitalization.words,
      keyboardType: keyboardType,
      obscureText: obscureText,
      onChanged: (value) {
        print('value: $value');
      },
      validator: (value) {
        if(value!.length < 6) {
          return 'Mínimo 6 caracteres';
        }
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        suffixIcon: Icon(suffixIcon),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            topRight: Radius.circular(10)
          )
        )
      ),
    );
  }
}