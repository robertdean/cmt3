import 'package:fbt/app/charges/prescriptions/prescriptions_list.dart';
import 'package:fbt/app/home_page.dart';
import 'package:fbt/app/sign_in_page.dart';
import 'package:fbt/app/todos.dart';

routes(context) {
  return {
    PrescriptionList.routeName: (context) => PrescriptionList(),
    SignInPage.routeName: (context) => SignInPage(),
    HomePage.routeName: (context) => HomePage(),
    Todos.routeName: (context)=>Todos()
  };
}
