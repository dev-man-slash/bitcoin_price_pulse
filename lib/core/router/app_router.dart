import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../utils/constants/app_routs_constants.dart';

class AppRouter {
  ///singleton class
  AppRouter._internal();

  static final AppRouter _instance = AppRouter._internal();

  factory AppRouter() => _instance;

  late GoRouter router = GoRouter(
    initialLocation: AppRoutsConstants.mainPageRout,
    debugLogDiagnostics: false,
    errorPageBuilder: (context, state) => MaterialPage<void>(
      key: state.pageKey,
      restorationId: state.pageKey.value,
      child: Container(), //! TODO => CustomErrorWidget(),
    ),
    routes: [
      _route(
        name: AppRoutsConstants.mainPageRout,
        path: AppRoutsConstants.mainPageRout,
        pageBuilder: (state) {
          return const SizedBox();
        },
      ),
      // _route(
      //   name: AppRoutsConstants.filtersPageRoute,
      //   path: AppRoutsConstants.filtersPageRoute,
      //   pageBuilder: (state) {
      //     Map<String, dynamic> data = state.extra! as Map<String, dynamic>;
      //     return FilterPage(data: data);
      //   },
      // ),
      // _route(
      //   name: AppRoutsConstants.searchInAdsRoute,
      //   path: AppRoutsConstants.searchInAdsRoute,
      //   pageBuilder: (state) {
      //     return BlocProvider(
      //       create: (context) => SearchCubit(locator()),
      //       child: SearchPage(
      //         searchText: state.uri.queryParameters['searchText'],
      //       ),
      //     );
      //   },
      // ),
      // _route(
      //   name: AppRoutsConstants.mainCategoryPageRout,
      //   path: AppRoutsConstants.mainCategoryPageRout,
      //   pageBuilder: (state) {
      //     return MainCategoriesPage(
      //       isCategoryPage: state.uri.queryParameters[RoutingKeys.isCategoryPage] == 'true',
      //       fromSchemaPage: state.uri.queryParameters[RoutingKeys.fromSchemaPage] == 'true',
      //       isFilterPage: state.uri.queryParameters['isFilterPage'] == 'true',
      //       isHomePage: state.uri.queryParameters['isHomePage'] == 'true',
      //     );
      //   },
      // ),
      // _route(
      //   name: AppRoutsConstants.myAppPageRout,
      //   path: AppRoutsConstants.myAppPageRout,
      //   pageBuilder: (state) {
      //     return const MyAppPage();
      //   },
      // ),
      // _route(
      //   name: AppRoutsConstants.chatRoute,
      //   path: AppRoutsConstants.chatRoute,
      //   pageBuilder: (state) {
      //     return ChatPage(
      //       advertId: int.tryParse(state.uri.queryParameters['adId']!)!,
      //       advertTitle: state.uri.queryParameters['adTitle']!,
      //       imagePath: state.uri.queryParameters['imagePath'],
      //       sellerName: state.uri.queryParameters['sellerName']!,
      //     );
      //   },
      // ),
      // _route(
      //   name: AppRoutsConstants.chatMainPageRout,
      //   path: AppRoutsConstants.chatMainPageRout,
      //   pageBuilder: (state) {
      //     return const ChatMainPage();
      //   },
      // ),
    ],
  );

  GoRoute _route({
    required String name,
    required String path,
    required Widget Function(GoRouterState state) pageBuilder,
    List<GoRoute> routes = const [],
  }) =>
      GoRoute(
        path: path,
        name: name,
        routes: routes,
        pageBuilder: (context, state) => CustomTransitionPage(
          child: pageBuilder(state),
          key: state.pageKey,
          restorationId: state.pageKey.value,
          transitionDuration: const Duration(milliseconds: 350),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        ),
      );
}

class CustomAppPagesTransition {
  static defaultTransition({
    required GoRouterState state,
    required Widget child,
  }) =>
      CustomTransitionPage<void>(
        key: state.pageKey,
        child: child,
        barrierDismissible: true,
        fullscreenDialog: true,
        barrierColor: Colors.black38,
        opaque: false,
        transitionDuration: const Duration(milliseconds: 500),
        reverseTransitionDuration: const Duration(milliseconds: 200),
        transitionsBuilder: (BuildContext context, Animation<double> animation,
            Animation<double> secondaryAnimation, Widget child) {
          return FadeTransition(
            opacity: animation,
            child: child,
          );
        },
      );
}
