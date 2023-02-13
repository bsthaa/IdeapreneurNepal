import 'package:flutter/material.dart';
import 'package:ideapreneur_nepal/views/product_choose.dart';

import '../reusable_widgets/button.dart';
import '../reusable_widgets/heading.dart';
import '../reusable_widgets/textfield.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
      ),
      body: SizedBox(
        height: 650,
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                'Sign Up to Ideapenuer Nepal',
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 22,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 15,
              ),
              heading2(
                head: 'Full Name',
              ),
              const ReusableTextField(
                head: 'Enter full name',
              ),
              heading2(
                head: 'Phone Number',
              ),
              const ReusableTextField(
                head: 'Enter your phone number',
              ),
              heading2(
                head: 'Email',
              ),
              const ReusableTextField(
                head: 'Enter your email address',
              ),
              heading2(
                head: 'Password',
              ),
              const ReusableTextField(
                head: 'Minimum 8 characters ',
              ),
              ReusableButton(
                head: 'Sign up now',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProductChoose()),
                  );
                },
              ),
              RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  text:
                      'By signing up, you accepting BittaMitras                              ',
                  style: TextStyle(color: Color(0xFF46464F), height: 1.5),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Terms of service',
                        style: TextStyle(
                            color: Color(0xFF35B14F),
                            fontSize: 14,
                            fontWeight: FontWeight.w600)),
                    TextSpan(
                        text: ' and ',
                        style: TextStyle(color: Color(0xFF46464F))),
                    TextSpan(
                        text: 'Privacy policy',
                        style: TextStyle(
                            color: Color(0xFF35B14F),
                            fontSize: 14,
                            fontWeight: FontWeight.w600)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
