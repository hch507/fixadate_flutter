import 'package:intl/intl.dart';

import '../../presentation/ui/sign_up/s_signup1.dart';

Function validator() {
  return (String? value) {
    if (value?.isEmpty == true) {
      return "빈 값일떄 문구";
    }
    if (value!.length > 17 || value!.length < 2) {
      return "범위 초과시 문구";
    }
    if (value.contains(RegExp(r'[!@#\$%^&*(),.?":{}|<>]'))) {
      return '특수 문자 포함시 문구';
    }
    if (value.contains(RegExp(
      r'[\u{1F600}-\u{1F64F}\u{1F300}-\u{1F5FF}\u{1F680}-\u{1F6FF}\u{1F700}-\u{1F77F}\u{1F780}-\u{1F7FF}\u{1F800}-\u{1F8FF}\u{1F900}-\u{1F9FF}\u{1FA00}-\u{1FA6F}\u{2600}-\u{26FF}\u{2700}-\u{27BF}]',
      unicode: true,
    ))) {
      return '이모지 포함시 문구';
    }
  };
}



