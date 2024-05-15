import 'package:hive/hive.dart';

part 'user.g.dart';

@HiveType(typeId: 0)
class UserData extends HiveObject {
  @HiveField(0)
  final String firstName;

  @HiveField(1)
  final String lastName;

  @HiveField(2)
  final String emailAddress;

  @HiveField(3)
  final String userID;

  @HiveField(4)
  final String district;

  @HiveField(5)
  final String phoneNo;

  @HiveField(6)
  final String pincode;

  @HiveField(7)
  final String country;

  UserData({
    required this.firstName,
    required this.lastName,
    required this.emailAddress,
    required this.userID,
    required this.district,
    required this.phoneNo,
    required this.pincode,
    required this.country,
  });

  factory UserData.fromJson(Map<String, dynamic> json) {
    return UserData(
      firstName: json['firstName'],
      lastName: json['lastName'],
      emailAddress: json['emailAddress'],
      userID: json['userID'],
      district: json['district'],
      phoneNo: json['phoneNo'],
      pincode: json['pincode'],
      country: json['country'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'firstName': firstName,
      'lastName': lastName,
      'emailAddress': emailAddress,
      'userID': userID,
      'district': district,
      'phoneNo': phoneNo,
      'pincode': pincode,
      'country': country,
    };
  }
}
