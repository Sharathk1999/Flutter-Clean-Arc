import 'package:flutter/material.dart';
import 'package:flutter_clean_arc/features/dashboard/presentation/ui/widget/bottom_nav_widget.dart';

class DashboardScreen extends StatelessWidget {
  final Widget child;
  const DashboardScreen({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: child,
      bottomNavigationBar: const BottomNavWidget(),
    );
  }
}