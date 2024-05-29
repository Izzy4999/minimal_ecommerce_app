import 'package:flutter/material.dart';
import 'package:minimal_ecommerce_app/components/my_list_tile.dart';
import 'package:minimal_ecommerce_app/themes/theme.dart';
import 'package:minimal_ecommerce_app/themes/theme_provider.dart';
import 'package:provider/provider.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              SizedBox(
                height: 220,
                child: Center(
                  child: Icon(
                    Icons.shopping_bag,
                    size: 72,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
              ),
              MyListTile(
                icon: Icons.home,
                text: "Shop",
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, "/shop-page");
                },
              ),
              MyListTile(
                icon: Icons.shopping_cart,
                text: "Cart",
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, "/cart-page");
                },
              ),
              MyListTile(
                icon: Provider.of<ThemeProvider>(context).themeData == lightMode
                    ? Icons.dark_mode
                    : Icons.light_mode,
                text: Provider.of<ThemeProvider>(context).themeData == lightMode
                    ? "Dark mode"
                    : " Light mode",
                onTap: () {
                  Provider.of<ThemeProvider>(context, listen: false)
                      .toggleTheme();
                },
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 30.0),
            child: MyListTile(
              icon: Icons.logout,
              text: "Logout",
              onTap: () => Navigator.pushNamed(context, "/intro-page"),
            ),
          ),
        ],
      ),
    );
  }
}
