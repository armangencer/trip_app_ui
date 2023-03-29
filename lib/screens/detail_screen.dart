import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:trip_flutter_app/app/const/assets.dart';
import 'package:trip_flutter_app/app/const/constant.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(backgroundImage),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () => Navigator.pop(context),
                        child: Container(
                          width: 40,
                          height: 40,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 14, vertical: 10),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.arrow_back_ios,
                              size: 20,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        'DETAIL',
                        style: semiBold.copyWith(color: white, fontSize: 20),
                      ),
                      const SizedBox(
                        height: 40,
                        width: 40,
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 8.0),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: white.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(6),
                    boxShadow: [
                      BoxShadow(
                        color: white.withOpacity(0.1),
                        offset: const Offset(0, 0),
                        blurRadius: 16,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Places',
                            style: bold.copyWith(color: white, fontSize: 20),
                          ),
                          const Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ),
                          Text(
                            'Places ,Info',
                            style: regular.copyWith(color: white, fontSize: 14),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      const SizedBox(height: 18),
                      Text(
                        'Example\n\nPlaces İnfo',
                        style: regular.copyWith(color: white, fontSize: 14),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 18),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                'Distance',
                                style: semiBold.copyWith(
                                    color: white, fontSize: 14),
                              ),
                              Text(
                                '105 ml',
                                style: regular.copyWith(
                                    color: const Color(0XFFC8C8C8),
                                    fontSize: 12),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                'Elavation',
                                style: semiBold.copyWith(
                                    color: white, fontSize: 14),
                              ),
                              Text(
                                '4.073',
                                style: regular.copyWith(
                                    color: const Color(0XFFC8C8C8),
                                    fontSize: 12),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                'Difficulty',
                                style: semiBold.copyWith(
                                    color: white, fontSize: 14),
                              ),
                              Text(
                                'Hard',
                                style: regular.copyWith(
                                    color: const Color(0XFFC8C8C8),
                                    fontSize: 12),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 18),
                      Center(
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 45,
                          decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'Join',
                              style: bold.copyWith(
                                  fontSize: 18, color: Colors.grey.shade800),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
