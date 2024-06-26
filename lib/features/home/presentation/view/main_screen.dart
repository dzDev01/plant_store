import 'package:flutter/material.dart';
import 'package:plant_store/core/utils/constants/app_colors.dart';
import 'package:plant_store/features/account/presentation/view/account_page.dart';
import 'package:plant_store/features/shop/presentation/view/cart_page.dart';
import 'package:plant_store/features/shop/presentation/view/favorites_page.dart';
import 'package:plant_store/features/home/presentation/view/home_page.dart';
import 'package:plant_store/features/shop/presentation/view/shop_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MainScreenState createState() {
    return _MainScreenState();
  }
}

class _MainScreenState extends State<MainScreen> {
  int pageIndex = 0;
  final List<Widget> pages = [
    const HomePage(),
    const ShopPage(),
    const FavoritesPage(),
    const CartPage(),
    const AccountView(),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[pageIndex],
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  BottomNavigationBar _buildBottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: AppColors.appGreen700,
      currentIndex: pageIndex,
      onTap: (newPageIndex) {
        setState(() {
          pageIndex = newPageIndex;
        });
      },
      selectedLabelStyle: const TextStyle(fontFamily: "MerriWeather"),
      unselectedLabelStyle: const TextStyle(fontFamily: "MerriWeather"),
      unselectedItemColor: AppColors.appWhite,
      selectedItemColor: AppColors.appYellow,
      items: const [
        BottomNavigationBarItem(
          label: "Home",
          icon: Icon(
            Icons.home_outlined,
          ),
        ),
        BottomNavigationBarItem(
          label: "Shop",
          icon: Icon(
            Icons.store_outlined,
          ),
        ),
        BottomNavigationBarItem(
          label: "Favorites",
          icon: Icon(
            Icons.favorite_outline,
          ),
        ),
        BottomNavigationBarItem(
          label: "Cart",
          icon: Icon(
            Icons.shopping_cart_outlined,
          ),
        ),
        BottomNavigationBarItem(
          label: "Account",
          icon: Icon(
            Icons.person_2_outlined,
          ),
        ),
      ],
    );
  }
}
