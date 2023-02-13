import 'package:flutter/material.dart';
import 'package:ideapreneur_nepal/views/reusable_widgets/button.dart';

class ProductChoose extends StatelessWidget {
  const ProductChoose({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 210,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Where would you like to start with?',
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 22,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                      ),
                      const Text(
                        'Choose any product for now',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      Center(
                        child: Image.asset(
                            "lib/views/components/images/Why tulkey-15 1.png"),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 600,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ReusableCard(
                        head: 'Ideapreneur',
                        detail:
                            'User friendly data analytics interface\nwith integrated notification system.',
                        image: '1',
                      ),
                      ReusableCard(
                        head: 'GuruMantra',
                        detail:
                            'User friendly data analytics interface\nwith integrated notification system.',
                        image: '2',
                      ),
                      ReusableCard(
                        head: 'Broker Chirfaad',
                        detail:
                            'User friendly data analytics interface\nwith integrated notification system.',
                        image: '3',
                      ),
                      ReusableCard(
                        head: 'Vriddhi',
                        detail:
                            'User friendly data analytics interface\nwith integrated notification system.',
                        image: '4',
                      ),
                      ReusableButton(onTap: () {}, head: 'Continue')
                    ],
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  final String head;
  final String detail;
  final String image;

  ReusableCard({
    required this.head,
    required this.detail,
    required this.image,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: const Color(0xFF56bc6c).withOpacity(0.2),
      ),
      height: 112,
      width: 450,
      child: Row(
        children: [
          Container(
            color: Colors.white,
            width: 112,
            child: Image.asset(
              'lib/views/components/images/$image.png',
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  head,
                  style: const TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  detail,
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 14,
                      color: Colors.black.withOpacity(0.66),
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
