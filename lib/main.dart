import 'package:flutter/material.dart';
import 'package:olahin/shared/theme.dart';
import 'package:olahin/ui/pages/onboarding_page.dart';
import 'package:olahin/ui/pages/sign_in_page.dart';
import 'package:olahin/ui/pages/sign_up_page.dart';
import 'package:olahin/ui/pages/sign_up_success.dart';
import 'package:olahin/ui/pages/splash_page.dart';
import 'ui/pages/home_page.dart';
import 'ui/pages/community_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: lightBackgroundColor,
        appBarTheme: AppBarTheme(
          backgroundColor: lightBackgroundColor,
          elevation: 0,
          centerTitle: true,
          iconTheme: IconThemeData(
            color: blackColor
          ),
          titleTextStyle: blackTextStyle.copyWith(
            fontSize: 20,
            fontWeight: semiBold,
          )
        ),
      ),
      routes: {
        '/': (context) => const SplashPage(),
        '/sign-in': (context) => const SignInPage(),
        '/sign-up': (context) => const SignUpPage(),
        '/sign-up-success': (context) => const SignUpSuccessPage(),
        '/onboarding': (context) => const OnboardingPage(),
        '/home': (context) => const HomePage(),
        '/community': (context) => const CommunityPage(),
      },
    );
  }
}