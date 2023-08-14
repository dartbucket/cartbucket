import 'package:cartbucket/src/sample.dart';
import 'package:cartbucket/src/views/widgets/banner.dart';
import 'package:cartbucket/src/views/widgets/custom_app_bar.dart';
import 'package:cartbucket/src/views/widgets/product_tile.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          const CustomAppBar(),
          Expanded(
            child: ListView(
              children: [
                const MainBanner(),
                ListView.builder(
                  shrinkWrap: true,
                  primary: false,
                  itemCount: products.length,
                  itemBuilder: (context, index) => ProdcutTile(
                    product: products[index],
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
