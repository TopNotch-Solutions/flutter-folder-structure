class TValidation{

  TValidation._();

  static String? validateEmail(String? email) {
  if (email == null || email.isEmpty) {
    return 'Email is required';
  }

  final emailRegExp = RegExp(r'^[\w-]+@([\w-]+\.)+[\w-]{2,4}$');
  if (!emailRegExp.hasMatch(email)) {
    return 'Invalid email';
  }
  return null;
}

 static String? validatePassword(String? password){
  if (password == null || password.isEmpty) {
    return 'Password is required';
  }
  if(password.length<6){
    return 'Password must be atleast 6 digits long';
  }
  if(!password.contains(RegExp(r'[A-Z]'))){
    return 'Password must contain atleast one uppercase letter';
  }
  if(!password.contains(RegExp(r'[0-9]'))){
    return 'Password must contain atleast one number';
  }
  if(!password.contains(RegExp(r'[!#@$%^&*(),.?":{}|<>]'))){
    return 'Password must contain atleast one special character';
  }
  return null;
 }

  static String? validatePhoneNumber(String? phone) {
  if (phone == null || phone.isEmpty) {
    return 'Email is required';
  }

  final phoneRegExp = RegExp(r'^\d{10}$');
  if (!phoneRegExp.hasMatch(phone)) {
    return 'Invalid number formate';
  }
  return null;
}

}