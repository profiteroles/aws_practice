import 'package:aws_practice/screens/student/controller.dart';
import 'package:get/instance_manager.dart';

class StudentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StudentController());
  }
}
