import 'package:flutter/material.dart';
import 'package:trip_flutter_app/app/const/assets.dart';
import 'package:trip_flutter_app/app/const/constant.dart';
import 'package:trip_flutter_app/screens/category_widget.dart';
import 'package:trip_flutter_app/screens/destination_widget.dart';
import 'package:trip_flutter_app/screens/detail_screen.dart';

import '../components/search_bar.dart';
import '../components/tab_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: SizedBox(
          child: Transform.scale(
            scale: 0.5,
            child: Image.asset(menuIcon),
          ),
        ),
        title: Center(
          child: Title(
            color: Colors.black,
            child: const Text('Fist Trip Add'),
          ),
        ),
        actions: const <Widget>[
          CircleAvatar(foregroundImage: AssetImage(avatar), radius: 25),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Text(
                  'Hey My Friend',
                  style: semiBold.copyWith(
                      color: Colors.grey.shade900, fontSize: 15),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Yılın En güzel Oteline Hoşgeldiniz',
                    style: semiBold.copyWith(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const SearchBar(),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30,
                    width: MediaQuery.of(context).size.width,
                    child: TabWidget(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Categories',
                          style: bold.copyWith(fontSize: 15),
                        ),
                        const Spacer(),
                        Text(
                          'TURKEY',
                          style: regular.copyWith(fontSize: 15),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: SizedBox(
                child: CategoryWidget(),
              ),
            ),
            const SizedBox(),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Top Destinations',
                    style: bold.copyWith(fontSize: 15),
                  ),
                  const Spacer(),
                  Text(
                    'TURKEY',
                    style: regular.copyWith(fontSize: 15),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const DetailScreen(),
                ),
              ),
              child: DestinationWidget(),
            ),
          ]),
        ),
      ),
    );
  }
}
