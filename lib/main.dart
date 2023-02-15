import 'package:flutter/material.dart';
import 'package:app/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';

// ONBOARDING SCREENS :
import 'package:app/screens/onboarding/splash_screen.dart';
import 'package:app/screens/onboarding/onboarding1.dart';
import 'package:app/screens/Onboarding/onboarding2.dart';
import 'package:app/screens/onboarding/onboarding3.dart';
import 'package:app/screens/onboarding/onboarding4.dart';
import 'package:app/screens/onboarding/onboarding5.dart';

// SIGN-UP SCREENS :
import 'package:app/screens/signup/forgot_password.dart';
import 'package:app/screens/signup/reset_password.dart';

// MAIN APP SCREENS :
import 'package:app/screens/main-app/profile.dart';
import 'package:app/screens/main-app/expense/expense.dart';
import 'package:app/screens/main-app/expense/budget.dart';
import 'package:app/screens/main-app/expense/income.dart';

void main() async
{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget
{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      title: "BeeWiser | Manage Your Finance",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true
      ),

      initialRoute: "/income",
      routes: {
        "/" : (context) => const SplashScreen(),
        "/onboarding1" : (context) => const Onboarding1(),
        "/onboarding2" : (context) => const Onboarding2(),
        "/onboarding3" : (context) => const Onboarding3(),
        "/onboarding4" : (context) => const Onboarding4(),
        "/onboarding5" : (context) => const Onboarding5(),

        "/forgot-password" : (context) => const ForgotPassword(),
        "/reset-password"  : (context) => const ResetPassword(),

        "/profile" : (context) => const Profile(),

        "/expense" : (context) => const Expense(),
        "/budget"  : (context) => const Budget(),
        "/income"  : (context) => const Income(),
      }
    );
  }
}