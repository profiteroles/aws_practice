import 'package:aws_practice/screens/auth/binding.dart';
import 'package:aws_practice/screens/auth/view.dart';
import 'package:aws_practice/screens/home/bindings.dart';
import 'package:aws_practice/screens/home/view.dart';
import 'package:aws_practice/screens/student/bindings.dart';
import 'package:aws_practice/screens/student/create.dart';
import 'package:aws_practice/screens/initial/bindings.dart';
import 'package:aws_practice/screens/initial/view.dart';
import 'package:get/route_manager.dart';

class AppRoutes {
  static const String home = '/';
  static const String initial = '/initial';
  static const String auth = '/auth';
  static const String createStudent = '/student/create';
  // static const String updateStudent = '/student/update';
}

class AppPages {
  static final pages = [
    GetPage(name: AppRoutes.auth, page: () => const AuthScreen(), binding: AuthBinding()),
    GetPage(name: AppRoutes.initial, page: () => const InitialScreen(), binding: InitialBinding()),
    GetPage(name: AppRoutes.home, page: () => const HomeScreen(), binding: HomeBindings()),
    GetPage(name: AppRoutes.createStudent, page: () => const CreateStudent(), binding: StudentBinding()),
  ];
}
