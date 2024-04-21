import 'package:flutter/material.dart';
import 'package:plant_store/core/utils/constants/app_colors.dart';

class CustomImagePickW extends StatelessWidget {
  const CustomImagePickW({super.key});

  @override
  Widget build(BuildContext context) {
    return  Stack(
              children: [
                const CircleAvatar(
                  radius: 55,
                  backgroundImage: NetworkImage(
                    "https://randomuser.me/api/portraits/lego/5.jpg",
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                      alignment: Alignment.center,
                      height: 35,
                      width: 35,
                      decoration: const BoxDecoration(
                        color: AppColors.appGreen700,
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.edit,
                          color: AppColors.appWhite,
                          size: 20,
                        ),
                      )),
                ),
              ],
            );
  }
}