import 'package:flutter/material.dart';
import '../../../core/utils/app_string.dart';

class BuildTopRatedHeader extends StatelessWidget {
  const BuildTopRatedHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(
        16.0,
        24.0,
        16.0,
        8.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            AppString.topRated,
            style: GoogleFonts.poppins(
              fontSize: 19,
              color: Colors.white,
              fontWeight: FontWeight.w500,
              letterSpacing: 0.15,
            ),
          ),
          InkWell(
            onTap: () {
              /// TODO : NAVIGATION TO Top Rated Movies Screen
            },
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    AppString.seeMore,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 16.0,
                    color: Colors.white,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
