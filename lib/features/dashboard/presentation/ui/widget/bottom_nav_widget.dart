import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_arc/features/dashboard/presentation/controller/dashboard_controller.dart';
import 'package:flutter_clean_arc/features/dashboard/presentation/state/dashboard_state.dart';
import 'package:go_router/go_router.dart';

class BottomNavWidget extends StatelessWidget {
  const BottomNavWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DashboardController(),
      child: BlocBuilder<DashboardController, DashboardState>(
        builder: (context, state) {
          return NavigationBar(
            selectedIndex: state.pageIndex,
            onDestinationSelected: (value) => _onItemSelected(context,value),
            destinations: const [
              NavigationDestination(
                icon: Icon(CupertinoIcons.home),
                label: 'Home',
              ),
              NavigationDestination(
                icon: Icon(CupertinoIcons.settings),
                label: 'Settings',
              ),
            ],
          );
        },
      ),
    );
  }

  void _onItemSelected(BuildContext context, int index) {
    context.read<DashboardController>().setPageIndex(index);
    switch (index) {
      case 0:
      GoRouter.of(context).go('/');
        break;
      case 1:
       GoRouter.of(context).go('/setting');
        break;
      default:
        throw Exception('No Item Found');
    }
  }
}
