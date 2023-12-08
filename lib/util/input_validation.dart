import 'package:ecommerce/util/string_constants.dart';

class InputValidation{
  static String isUserNameValid(String username){
    if(username.isEmpty){
      return StringConstant.usernamemessage;
    }
    return '';

  }
}