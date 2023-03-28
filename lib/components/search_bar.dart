import 'package:flutter/material.dart';

import '../app/const/assets.dart';
import '../app/const/constant.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: SizedBox(
            height: 40,
            child: TextField(
              cursorColor: black,
              style: regular.copyWith(
                color: black,
                decorationColor: Colors.black,
              ),
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search, color: grey),
                hintText: 'Search',
                hintStyle: const TextStyle(color: grey),
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 12),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: Colors.black),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: Colors.black),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 10),
        Container(
          height: 35,
          width: 50,
          padding: const EdgeInsets.all(5),
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Image.asset(filterIcon),
        ),
      ],
    );
  }
}
