import 'package:get/get.dart';
import 'package:intership01/screens/teacher/teacher.dart';

class TeacherController extends GetxController{
 RxList<Teacher> teachers =<Teacher>[].obs;

 @override
  void onInit() {
teachers.addAll(getTeacherData());
    super.onInit();
  }


 List<Teacher> getTeacherData() {
   return [
     Teacher('John', 'Math', 35, 170.0),
     Teacher('Alice', 'English', 40, 165.5),
     Teacher('Bob', 'Science', 38, 175.0),
     Teacher('Emily', 'History', 45, 160.0),
     Teacher('David', 'Art', 30, 180.0),
   ];
 }


}

final teacherController=Get.put(TeacherController);