import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:aws_practice/screens/student/bindings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import '../../amplifyconfiguration.dart';
import '../../models/ModelProvider.dart';
import '../student/update.dart';

class HomeController extends GetxController {
  var students = <Student>[].obs;
  var formKey = GlobalKey<FormBuilderState>();

  static HomeController instance = Get.find();

  @override
  void onInit() {
    _configureAmplify();
    super.onInit();
  }

  // final GetStream<List<Student>> streamMe;

  void _configureAmplify() async {
    debugPrint('HomeController - _configureAmplify is Called');
    // Add the following lines to your app initialization to add the DataStore plugin
    AmplifyDataStore datastorePlugin = AmplifyDataStore(modelProvider: ModelProvider.instance);
    Amplify.addPlugin(datastorePlugin);
    await Amplify.addPlugin(AmplifyAPI());
    try {
      await Amplify.configure(amplifyconfig);
      readData();
    } on AmplifyAlreadyConfiguredException {
      print("Tried to reconfigure Amplify; this can occur when your app restarts on Android.");
    }
  }

  Future<void> readData() async {
    debugPrint('HomeController - readData is Called');

    try {
      students = RxList(await Amplify.DataStore.query(Student.classType));
      update();
    } catch (e) {
      debugPrint('HomeController - readData caught an Error: $e');
    }
  }

  Future<void> createStudent({required String studentID, required String name}) async {
    debugPrint('HomeController - createStudent is Called');
    try {
      Student newStudent = Student(studend_id: studentID, name: name);
      await Amplify.DataStore.save(newStudent);
      readData();
    } catch (e) {
      debugPrint('HomeController - createStudent caught an Error: $e');
    }
  }

  Future<void> updateStudent(String id, {String? studentID, String? name, List<Skill>? skills, String? github, String? profileURL}) async {
    debugPrint('HomeController - updateStudent is Called');
    try {
      Student current = (await Amplify.DataStore.query(Student.classType, where: Student.ID.eq(id)))[0];

      Student newStudent = current.copyWith(studend_id: studentID, name: name, Skills: skills, github: github, profile_url: profileURL);
      await Amplify.DataStore.save(newStudent);
      readData();
    } catch (e) {
      debugPrint('HomeController - updateStudent caught an Error: $e');
    }
  }

  Future<void> deleteStudent(String id) async {
    debugPrint('HomeController - deleteStudent is Called');

    (await Amplify.DataStore.query(Student.classType, where: Student.ID.eq(id))).forEach((student) async {
      try {
        await Amplify.DataStore.delete(student);
        readData();
      } catch (e) {
        debugPrint('HomeController - deleteStudent caught an Error: $e');
      }
    });
  }

  Future<bool?> updateStudentDetails(DismissDirection direction, Student student) async {
    switch (direction) {
      case DismissDirection.endToStart:
        Get.to(UpdateStudent(student), binding: StudentBinding());
        break;
      case DismissDirection.startToEnd:
        deleteStudent(student.id);
        break;
      case DismissDirection.horizontal:
      case DismissDirection.vertical:
      case DismissDirection.up:
      case DismissDirection.down:
      case DismissDirection.none:
        return false;
    }
  }
}
