import 'package:app/components/categories.dart';
import 'package:app/components/home_header.dart';
import 'package:app/components/product_card.dart';
import 'package:app/components/special_card.dart';
import 'package:app/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProductList extends StatelessWidget {
  const ProductList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppTheme.primaryColor,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
        unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/home-svgrepo-com.svg',
                // ignore: deprecated_member_use
                color: AppTheme.primaryColor,
                height: 28,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/favourite-svgrepo-com.svg',
                height: 28,
              ),
              label: 'Favourite'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/bag-outline-svgrepo-com.svg',
                height: 28,
              ),
              label: 'Cart'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/profile-svgrepo-com.svg',
                height: 28,
              ),
              label: 'Profile'),
        ],
      ),
      body: ListView(
        children: [
          const Header(),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
            child: Text(
              'Good Morning, You ',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 24),
            ),
          ),
          const SearchBar(),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
            child: Text(
              'Categories',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 24),
            ),
          ),
          const Categories(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              child: GridView.builder(
                physics: ScrollPhysics(), // Cho phép GridView cuộn
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  childAspectRatio: 0.7,
                ),
                itemCount: 6, // Số lượng sản phẩm bạn muốn hiển thị
                itemBuilder: (context, index) => ProductCard(),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
            child: Text(
              'Special Offer',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w900,
                  fontSize: 24),
            ),
          ),
          const SpecialOfferCard()
        ],
      ),
    );
  }
}
