import 'package:olahin/shared/theme.dart';
import 'package:olahin/ui/widgets/buttons.dart';
import 'package:olahin/ui/widgets/forms.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 80,
                margin: const EdgeInsets.only(
                  bottom: 50,
                ),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/logo/bg_white.png',
                    ),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Text(
                'Sign In &\nGrow Your Finance',
                style: blackTextStyle.copyWith(fontSize: 20, fontWeight: semiBold),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                padding: const EdgeInsets.all(22),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: whiteColor,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    //Email
                    const CustomFormField(
                      title: "Email Address",
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    //Password
                    const CustomFormField(
                      title: 'Password',
                      obsecureText: true,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'Forgot Password',
                        style: orangeTextStyle,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    CustomFilledButton(
                      title: "Sign In",
                      onPressed: () {
                        Navigator.pushNamedAndRemoveUntil(
                            context, '/home', (route) => false);
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomTextButton(
                      title: "Create New Account",
                      onPressed: () {
                        Navigator.pushNamed(context, '/sign-up');
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}