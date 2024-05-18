import 'dart:convert';

class DpiCreate {
  final CreateDpiRateInput createDpiRateInput;

  DpiCreate({
   required this.createDpiRateInput,
  });

  factory DpiCreate.fromRawJson(String str) => DpiCreate.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory DpiCreate.fromJson(Map<String, dynamic> json) => DpiCreate(
    createDpiRateInput: CreateDpiRateInput.fromJson(json["createDpiRateInput"]),
  );

  Map<String, dynamic> toJson() => {
    "createDpiRateInput": createDpiRateInput.toJson(),
  };
}

class CreateDpiRateInput {
  final String? branchId;
  final String? name;
  final double? rate;

  CreateDpiRateInput({
    this.branchId,
    this.name,
    this.rate,
  });

  factory CreateDpiRateInput.fromRawJson(String str) => CreateDpiRateInput.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CreateDpiRateInput.fromJson(Map<String, dynamic> json) {

    return CreateDpiRateInput(
      branchId: json["branchId"] ?? "",
      name: json["name"] ?? "",
      rate: json["rate"] != null ? json["rate"].toDouble() : 0.0,
    );
  }

  Map<String, dynamic> toJson() => {
    "branchId": branchId,
    "name": name,
    "rate": rate,
  };
}
