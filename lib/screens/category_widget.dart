import 'package:flutter/material.dart';
import 'package:trip_flutter_app/app/const/constant.dart';

class CategoryWidget extends StatelessWidget {
  CategoryWidget({
    super.key,
  });

  final List<CategoryModel> categories = [
    CategoryModel(name: 'Doğa', image: 'danau.png'),
    CategoryModel(name: 'Gunung', image: 'gunung.png'),
    CategoryModel(name: 'Pantai', image: 'pantai.png'),
    CategoryModel(name: 'Desa', image: 'desa.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          categories.length,
          (index) => Container(
            margin: EdgeInsets.only(left: index == 0 ? 5 : 0, right: 16),
            width: 95,
            height: 110,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: AssetImage('assets/images/${categories[index].image}'),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  categories[index].name,
                  style: medium.copyWith(color: white, fontSize: 18),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CategoryModel {
  final String name;
  final String image;

  CategoryModel({
    required this.name,
    required this.image,
  });
}
