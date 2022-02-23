import 'package:aws_practice/screens/home/controller.dart';
import 'package:aws_practice/screens/student/controller.dart';
import 'package:aws_practice/values/utils/extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/route_manager.dart';

import '../../values/widgets/text_field.dart';

class CreateStudent extends GetView<StudentController> {
  const CreateStudent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add New Student'), centerTitle: true),
      body: FormBuilder(
          key: controller.formKey,
          child: Padding(
            padding: EdgeInsets.all(8.0.wp),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  FormFields(
                    hint: 'Student ID',
                    hasSpace: false,
                    validators: [
                      FormBuilderValidators.required(context),
                      FormBuilderValidators.numeric(context),
                    ],
                  ),
                  FormFields(hint: 'Name', validators: [FormBuilderValidators.required(context)]),
                  FormFields(hint: 'GitHub', validators: []),
                  FormFields(hint: 'Profile URL', hasBtn: true, validators: [], onPress: controller.submitCreate),
                ],
              ),
            ),
          )),
    );
  }
}
