import 'package:aws_practice/values/utils/extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class FormFields extends StatelessWidget {
  const FormFields({
    Key? key,
    required this.hint,
    this.height,
    this.hasSpace = true,
    this.hasBtn = false,
    this.onPress,
    required this.validators,
    this.type,
    this.capitalisation,
    this.initial,
    this.readOnly = false,
    this.btnTitle = 'Add',
  }) : super(key: key);

  final String hint;
  final double? height;
  final bool hasSpace;
  final bool hasBtn;
  final TextCapitalization? capitalisation;
  final TextInputType? type;
  final VoidCallback? onPress;
  final List<String? Function(String?)> validators;
  final String? initial;
  final bool readOnly;
  final String btnTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (hasSpace) SizedBox(height: height ?? 2.0.hp),
        FormBuilderTextField(
          name: hint.toLowerCase().replaceAll(' ', '_'),
          keyboardType: type,
          validator: FormBuilderValidators.compose(validators),
          textCapitalization: capitalisation ?? TextCapitalization.words,
          initialValue: initial,
          readOnly: readOnly,
          decoration: InputDecoration(
            hintText: hint,
            border: OutlineInputBorder(borderSide: const BorderSide(color: Colors.black), borderRadius: BorderRadius.circular(8)),
          ),
        ),
        if (hasBtn) SizedBox(height: height ?? 1.0.hp),
        if (hasBtn) ElevatedButton(onPressed: onPress, child: Text(btnTitle))
      ],
    );
  }
}
