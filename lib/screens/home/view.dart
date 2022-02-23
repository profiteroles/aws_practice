import 'package:aws_practice/values/routes.dart';
import 'package:aws_practice/values/utils/extention.dart';
import '../../screens/home/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  //GetView<HomeController>
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      initState: (_) {},
      builder: (controller) => Scaffold(
        appBar: AppBar(title: const Text('AWS Play Ground'), centerTitle: true),
        floatingActionButton: FloatingActionButton(
          onPressed: () => Get.toNamed(AppRoutes.createStudent),
          child: const Icon(Icons.add),
        ),
        body: ListView.builder(
          itemCount: controller.students.length,
          itemBuilder: ((context, i) => Dismissible(
                key: ValueKey<String>(controller.students[i].id),
                // onDismissed: (_) => controller.deleteStudent(controller.students[i].id),

                background: Container(
                  color: Colors.red,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [SizedBox(width: 2.0.wp), Icon(Icons.delete_rounded, color: Colors.white)],
                  ),
                ),
                secondaryBackground: Container(
                  color: Colors.blue,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [Icon(Icons.edit, color: Colors.white), SizedBox(width: 2.0.wp)],
                  ),
                ),
                onUpdate: (va) => print("Update: $va"),
                onDismissed: (va) => print("VA :$va"),
                onResize: () => print('WTF!!!!!!!!!'),
                confirmDismiss: (direction) => controller.updateStudentDetails(direction, controller.students[i]),
                child: controller.students.isEmpty
                    ? const Center(child: Text('No Students Found', style: TextStyle(color: Colors.red)))
                    : Center(
                        child: ListTile(
                          leading: Text(controller.students()[i].studend_id),
                          title: Text(controller.students()[i].name),
                          trailing: Icon(Icons.check, color: Colors.green),
                        ),
                      ),
              )),
        ),
      ),
    );
  }
}
