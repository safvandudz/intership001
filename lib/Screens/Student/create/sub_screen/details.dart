import 'package:get/get_rx/src/rx_types/rx_types.dart';

class UserModel {
  final String? name;
  final String? email;
  final String? uid;
  final String? district;
  final String? phoneNo;
  final String? pin;
  final String? country;

  UserModel({
    required this.name,
    required this.email,
    required this.uid,
    required this.district,
    required this.phoneNo,
    required this.pin,
    required this.country,
  });
}

final RxList<UserModel> items = RxList<UserModel>.empty();
