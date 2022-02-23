import 'package:aws_practice/models/ModelProvider.dart';
import 'package:aws_practice/screens/home/controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/route_manager.dart';

class StudentController extends GetxController {
  final formKey = GlobalKey<FormBuilderState>();
  final homeCtrl = HomeController.instance;

  void submitCreate() async {
    debugPrint('HomeController - submitCreate is Called');
    if (formKey.currentState!.saveAndValidate()) {
      debugPrint('HomeController - submitCreate validated');

      var data = formKey.currentState!.value;
      final String studentID = data['student_id'].toString().trim();
      final String name = data['name'].toString().trim();
      homeCtrl.createStudent(studentID: studentID, name: name);
      Get.back();
    } else {
      print('Not Validated');
    }
  }

  void updateStudent(String id) {
    debugPrint('HomeController - updateStudent is Called');
    if (formKey.currentState!.saveAndValidate()) {
      debugPrint('HomeController - updateStudent validated');
      final Map<String, dynamic> data = formKey.currentState!.value;
      final String studentID = data['student_id'].toString().trim();
      final String name = data['name'].toString().trim();
      final String github = data['github'].toString().trim();
      final String profileURL = data['profile_url'].toString().trim();
      print('studentID: $studentID\n name: $name\n github:$github\n profileURL:$profileURL');

      homeCtrl.updateStudent(id, studentID: studentID, name: name, github: github, profileURL: profileURL);
      Get.back();
    } else {
      debugPrint('Go Get Fucked!');
    }
  }
}
