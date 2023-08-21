import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:state_multipage_app/providers/counter_provider.dart';
import 'package:state_multipage_app/providers/shopping_cart_provider.dart';
import 'package:state_multipage_app/screens/home_screen.dart';
import 'package:state_multipage_app/screens/settings/display/brightness_screen.dart';
import 'package:state_multipage_app/screens/settings/display/index.dart';
import 'package:state_multipage_app/screens/settings/display/timeout_screen.dart';
import 'package:state_multipage_app/screens/settings/display/wallpaper_screen.dart';
import 'package:state_multipage_app/screens/settings/index.dart';
import 'package:state_multipage_app/screens/settings/network_settings_screen.dart';
import 'package:state_multipage_app/screens/settings/notification_settings_screen.dart';
import 'package:state_multipage_app/screens/user/bio_screen.dart';
import 'package:state_multipage_app/screens/user/index.dart';
import 'package:state_multipage_app/screens/user/personality_screen.dart';
// import 'package:state_multipage_app/screens/settings_screen.dart';
// import 'package:state_multipage_app/screens/user_screen.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => Counter()),
      ChangeNotifierProvider(create: (_) => ShoppingCart()),
    ],
    child: MyApp(),
  ));
  // runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      // debugShowCheckedModeBanner: false,
      // routerDelegate: _router.routerDelegate,
      // routeInformationParser: _router.routeInformationParser,
      // routeInformationProvider: _router.routeInformationProvider,
      routerConfig: _router,
    );
  }

  final GoRouter _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) =>
            const HomeScreen(),
        routes: [
          // User---------------------------------------------------------------
          GoRoute(
            name: 'user',
            path: 'user',
            builder: (BuildContext context, GoRouterState state) =>
                const UserScreen(),
            routes: [
              GoRoute(
                name: 'userBio',
                path: 'bio/:id',
                builder: (context, state) => UserBioScreen(
                  id: state.params["id"]!,
                  params: state.queryParams,
                ),
              ),
              GoRoute(
                name: 'userPersonality',
                path: 'personality',
                builder: (context, state) => const UserPersonalityScreen(),
              ),
            ],
          ),

          // Settings-----------------------------------------------------------
          GoRoute(
            path: 'settings',
            builder: (BuildContext context, GoRouterState state) =>
                const SettingsScreen(),
            routes: [
              GoRoute(
                path: 'display',
                builder: (context, state) => const DisplaySettingsScreen(),
                routes: [
                  GoRoute(
                    name: 'wallpaper-settings',
                    path: 'wallpaper',
                    builder: (context, state) =>
                        const WallpaperSettingsScreen(),
                  ),
                  GoRoute(
                    name: 'brightness-settings',
                    path: 'brightness',
                    builder: (context, state) =>
                        const BrightnessSettingsScreen(),
                  ),
                  GoRoute(
                    name: 'timeout-settings',
                    path: 'timeout',
                    builder: (context, state) => const TimeoutSettingsScreen(),
                  ),
                ],
              ),
              GoRoute(
                path: 'network/:id',
                builder: (context, state) => NetworkSettingsScreen(
                  id: state.params["id"]!,
                ),
              ),
              GoRoute(
                path: 'notification',
                builder: (context, state) => const NotificationSettingsScreen(),
              ),
            ],
          ),
        ],
      ),
    ],
  );

  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     title: 'Flutter Demo',
  //     theme: ThemeData(
  //       primarySwatch: Colors.blue,
  //     ),
  //     home: HomeScreen(),
  //   );
  // }
}
