import 'package:flutter/material.dart';
import 'package:flutter_clean_arc/core/route/go_router_provider.dart';
import 'package:flutter_clean_arc/core/theme/color_scheme.dart';

class MainWidget extends StatelessWidget {
  const MainWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final route = GoRouterProvider();
    return MaterialApp.router(
      title: 'Flutter Clean Arc',
      routerConfig: route.goRouter(),
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: lightColorScheme
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: darkColorScheme
      ),
      
    );
  }
}