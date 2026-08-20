import 'package:book/Features/Splash/presentation/views/splash_view.dart';


import 'package:go_router/go_router.dart';

import '../../Features/home/presentation/views/book_detailes_view.dart';
import '../../Features/home/presentation/views/home_view.dart';
import '../../Features/search/presentation/views/search_view.dart';

abstract class AppRouter {
  static const kHomeView = '/homeview';
  static const kBookDetailesView = '/bookDetailsView';
  static const kSearchView = '/SearchView';
  static final router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SplashView()),
      GoRoute(path: kHomeView, builder: (context, state) => const HomeView()),

      GoRoute(
        path: kBookDetailesView,
        builder: (context, state) => const BookDetailsView(),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
