import 'package:flutter/material.dart';
import 'package:flutter_clean_arc/core/route/route_name.dart';
import 'package:flutter_clean_arc/features/dashboard/presentation/ui/dashboard_screen.dart';
import 'package:flutter_clean_arc/features/setting/presentation/ui/setting_screen.dart';
import 'package:flutter_clean_arc/features/todo/presentation/ui/todo_screen.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey(debugLabel: 'shell');

class GoRouterProvider {
  GoRouter goRouter() {
    return GoRouter(
      navigatorKey: _rootNavigatorKey,
      initialLocation: '/',
      routes: [
        ShellRoute(
          navigatorKey: _shellNavigatorKey,
          builder: (context, state, child) {
            return DashboardScreen(
              key: state.pageKey,
              child: child,
            );
          },
          routes: [
            //route to todo screen
            GoRoute(
              path: '/',
              name: homeRoute,
              pageBuilder: (context, state) {
                return NoTransitionPage(
                    child: TodoScreen(
                  key: state.pageKey,
                ));
              },
            ),
            GoRoute(
              path: '/setting',
              name: settingRoute,
              pageBuilder: (context, state) {
                return NoTransitionPage(
                    child: SettingScreen(
                  key: state.pageKey,
                ));
              },
            ),
          ],
        ),
      ],
    );
  }
}
