import 'package:flutter/material.dart';
import 'package:plant_store/core/utils/config/assets_path.dart';
import 'package:plant_store/core/utils/constants/app_colors.dart';
import 'package:plant_store/core/utils/constants/constants.dart';
import 'package:plant_store/core/utils/constants/responsive.dart';

class AccountViewBody extends StatelessWidget {
  const AccountViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: ScreenSize.deviceWidth,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(AssetsPath.backgroundImage), fit: BoxFit.fill),
      ),
      child: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            const Center(
              child: Text(
                "Flowerfly!",
                style: TextStyle(
                    fontFamily: kPacificoFont,
                    fontSize: 40,
                    color: AppColors.appGreen700),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Stack(children: [
              const CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage("https://picsum.photos/150"),
              ),
              Positioned(
                right: 25,
                top: 50,
                child: IconButton.filledTonal(
                    onPressed: () {}, icon: const Icon(Icons.edit)),
              ),
            ]),
            const SizedBox(
              height: 20,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      "Hello,",
                      style: TextStyle(
                        fontSize: 32,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 80),
                    child: Text("Sofia!",
                        style: TextStyle(
                            fontSize: 40,
                            color: AppColors.appGreen700,
                            fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
