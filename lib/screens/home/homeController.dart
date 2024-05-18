import 'package:get/get.dart';

class HomeController extends GetxController {
  int _selectedIndex = 0;

  List<NavItem> navItems = [
    NavItem(name: "Student", route: "/students"),
    NavItem(name: "Teacher", route: "/teacher"),
    NavItem(name: "Dump", route: "/dump"),

  ];

  int get selectedIndex => _selectedIndex;

  void setSelectedIndex(int index) {
    _selectedIndex = index;
    update();
  }
}

class NavItem {
  final String name;
  final String route;

  NavItem({required this.name, required this.route});
}
