import 'package:aws_practice/screens/student/controller.dart';
import 'package:aws_practice/values/utils/extention.dart';
import 'package:aws_practice/values/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../../models/Student.dart';

class UpdateStudent extends GetView<StudentController> {
  const UpdateStudent(this.student, {Key? key}) : super(key: key);
  final Student student;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Update ' + student.name), centerTitle: true),
      body: FormBuilder(
        key: controller.formKey,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 4.0.wp),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FormFields(hint: 'name', validators: [], initial: student.name),
                FormFields(hint: 'Student ID', validators: [], initial: student.studend_id, type: TextInputType.number),
                FormFields(hint: 'Email', validators: [], initial: student.studend_id + '@tafe.wa.edu.au', readOnly: true),
                FormFields(hint: 'GitHub', validators: [], initial: student.github),
                FormFields(
                  hint: 'Profile URL',
                  validators: [],
                  initial: student.profile_url,
                  hasBtn: true,
                  onPress: () => controller.updateStudent(student.id),
                  btnTitle: 'Update The MotherFucker',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
