import 'package:flutter/material.dart';

import 'package:flutter_image_slider/carousel.dart';

import 'authentication/login.dart';
import 'authentication/signup.dart';
import 'reusable_widgets/button.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            SizedBox(
                width: double.infinity,
                child: SizedBox(
                    height: 640,
                    width: size.width,
                    child: Carousel(
                      height: double.infinity,
                      indicatorBarColor: Colors.white,
                      autoScrollDuration: const Duration(seconds: 2),
                      animationPageDuration: const Duration(milliseconds: 500),
                      activateIndicatorColor: const Color(0xFF35B14F),
                      animationPageCurve: Curves.bounceInOut,
                      indicatorBarHeight: 50,
                      indicatorHeight: 9,
                      indicatorWidth: 10,
                      unActivatedIndicatorColor: Colors.grey,
                      stopAtEnd: true,
                      autoScroll: true,
                      items: const [
                        SliderContent(),
                        SliderContent(),
                        SliderContent(),
                        SliderContent(),
                        SliderContent(),
                      ],
                    ))),
            const SizedBox(
              height: 13,
            ),
            Column(
              children: [
                ReusableButton(
                  head: 'Sign up for free',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUp()),
                    );
                  },
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Login()),
                    );
                  },
                  child: const Text(
                    'Or Login',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.green,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Roboto',
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class SliderContent extends StatelessWidget {
  const SliderContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 250.0),
          child: Image.asset(
              "lib/views/components/images/Ideapreneur Vector Logo-02 1.png"),
        ),
        const SizedBox(
          height: 35,
        ),
        const Text(
          'Welcome to Ideapenuer Nepal ',
          style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 22,
              color: Colors.black,
              fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          'Your finance guide & one- stop solution for all things finance.',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18,
            fontFamily: 'Roboto',
            color: Colors.grey,
          ),
        )
      ]),
    );
  }
}
