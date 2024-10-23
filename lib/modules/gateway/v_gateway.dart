import 'package:flutter/material.dart';
import 'package:link_up/_servies/theme_services/w_custon_theme_builder.dart';

class GatewayPage extends StatelessWidget {
  const GatewayPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaxThemeBuilder(
      builder: (context, theme, themeController) {
        return Scaffold(
          body: Center(
            child: const Text('hello'),
          ),
        );
      },
    );
  }
}
