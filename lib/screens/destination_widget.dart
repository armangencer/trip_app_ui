import 'package:flutter/material.dart';
import 'package:trip_flutter_app/app/const/constant.dart';
import '../app/const/assets.dart';

class DestinationWidget extends StatelessWidget {
  DestinationWidget({
    super.key,
  });

  final List<DestinationModel> destinations = [
    DestinationModel(
      name: 'Location1',
      image: 'pantai_ubud.png',
      address: 'Place1',
    ),
    DestinationModel(
      name: 'Location2',
      image: 'gunung_fuji.png',
      address: 'Place2',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          destinations.length,
          (index) => Container(
            width: 195,
            height: 190,
            margin: EdgeInsets.only(left: index == 0 ? 20 : 0, right: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/images/${destinations[index].image}',
                ),
              ),
            ),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: const EdgeInsets.all(8),
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 14),
                width: double.infinity,
                height: 34,
                decoration: BoxDecoration(
                  color: white.withOpacity(0.30),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text(
                          destinations[index].name,
                          style: semiBold.copyWith(
                            color: white,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Image.asset(
                          location,
                          width: 10,
                          height: 10,
                        ),
                       const SizedBox(
                          width: 4,
                          height: 4,
                        ),
                        Text(
                          destinations[index].address,
                          style: medium.copyWith(color: white, fontSize: 10),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class DestinationModel {
  final String name;
  final String image;
  final String address;

  DestinationModel(
      {required this.name, required this.image, required this.address});
}
