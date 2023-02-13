import 'package:flutter/material.dart';
import 'package:ideapreneur_nepal/views/authentication/signup.dart';
import 'package:ideapreneur_nepal/views/product_choose.dart';

import '../reusable_widgets/button.dart';
import '../reusable_widgets/heading.dart';
import '../reusable_widgets/textfield.dart';

class Login extends StatelessWidget {
  const Login({super.key});

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
        height: 450,
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                'Login to Ideapeneur',
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
                head: 'Email',
              ),
              const ReusableTextField(
                head: 'Enter your email address',
              ),
              heading2(
                head: 'Password',
              ),
              const ReusableTextField(
                head: 'Enter your password',
              ),
              ReusableButton(
                head: 'Login',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProductChoose()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
