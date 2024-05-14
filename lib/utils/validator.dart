String? isEmailValid(String? email) {
  if (email != null && email.isNotEmpty) {
    String emailPattern = r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';
    RegExp regex = RegExp(emailPattern);
    return regex.hasMatch(email) ? null : "Invalid email";
  } else {
    return "Email cannot be empty";
  }
}

String? isPhoneNumberValid(String? phoneNumber) {
  if (phoneNumber != null && phoneNumber.trim().isNotEmpty) {
    String cleanedNumber = phoneNumber.trim();
    if (cleanedNumber.length == 10 && int.tryParse(cleanedNumber) != null) {
      return null;
    } else {
      return "Phone number must be 10 digits";
    }
  } else {
    // Return null to indicate no validation error if no number is entered
    return null;
  }
}


String? validName(String? name) {
  if (name != null && name.trim().length >= 3) {
    return null;
  } else {
    return 'First name must be at least 3 characters long';
  }
}

String? userIdValidator(String? userId) {
  if (userId != null && userId.trim().isNotEmpty) {
    return null; // No validation error if userId is not empty
  } else {
    return "User ID cannot be empty";
  }
}

