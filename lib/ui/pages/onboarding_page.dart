import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:olahin/shared/theme.dart';
import 'package:olahin/ui/widgets/buttons.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int currentIndex = 0;
  CarouselSliderController carouselController = CarouselSliderController();

  final List<String> lottieImages = [
    'assets/splash/Preparing.json',
    'assets/splash/Processing.json'
  ];

  Widget buildTitle(int index) {
    if (index == 0) {
      return RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          style: TextStyle(
            fontSize: 26,
            fontWeight: bold,
            color: blackColor,
            height: 1.3,
            fontFamily: blackTextStyle.fontFamily,
          ),
          children: [
            const TextSpan(text: "It's a big world out\nthere go "),
            TextSpan(
              text: "explore",
              style: TextStyle(
                color: orangeColor,
                decoration: TextDecoration.underline,
                decorationColor: orangeColor,
                decorationThickness: 2,
              ),
            ),
          ],
        ),
      );
    } else {
      return RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          style: TextStyle(
            fontSize: 26,
            fontWeight: bold,
            color: blackColor,
            height: 1.3,
            fontFamily: blackTextStyle.fontFamily,
          ),
          children: [
            const TextSpan(text: "People don't take trips,\ntrips take "),
            TextSpan(
              text: "people",
              style: TextStyle(
                color: orangeColor,
                decoration: TextDecoration.underline,
                decorationColor: orangeColor,
                decorationThickness: 2,
              ),
            ),
          ],
        ),
      );
    }
  }

  final List<String> subtitles = [
    'To get the best of your adventure you just\nneed to leave and go where you like. we are\nwaiting for you',
    'To get the best of your adventure you just\nneed to leave and go where you like. we are\nwaiting for you',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      body: Column(
        children: [
          Expanded(
              child: CarouselSlider(
                  carouselController: carouselController,
                  items: lottieImages.map((path) {
                    return ClipRRect(
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                      child: Lottie.asset(
                        path,
                        width: double.infinity,
                        fit: BoxFit.cover,
                        repeat: true,
                        animate: true,
                      ),
                    );
                  }).toList(),
                  options: CarouselOptions(
                      height: double.infinity,
                      viewportFraction: 1,
                      enableInfiniteScroll: false,
                      onPageChanged: (index, reason) {
                        setState(() {
                          currentIndex = index;
                        });
                      }))),

          Container(
            width: double.infinity,
            color: whiteColor,
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                buildTitle(currentIndex),

                const SizedBox(height: 16),

                Text(
                  subtitles[currentIndex],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: grayColor,
                    height: 1.6,
                    fontFamily: grayTextStyle.fontFamily,
                  ),
                ),

                const SizedBox(height: 30),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(lottieImages.length, (index) {
                    return Container(
                      width: currentIndex == index ? 24 : 12,
                      height: 12,
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      decoration: BoxDecoration(
                        color: currentIndex == index ? orangeColor : grayColor,
                        borderRadius: BorderRadius.circular(6),
                      ),
                    );
                  }),
                ),

                const SizedBox(height: 30),

                currentIndex == lottieImages.length - 1
                ? Column(
                  children: [
                    CustomFilledButton(
                      title: 'Get Started',
                      onPressed: () {
                        Navigator.pushNamedAndRemoveUntil(context, '/sign-in', (route) => false);
                      },
                    ),
                  ],
                )
                : CustomFilledButton(
                    title: 'Next',
                    onPressed: () => carouselController.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut
                    ),
                  )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
