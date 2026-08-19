import 'package:book/Features/Splash/presentation/views/splash_view.dart';
import 'package:book/Features/home/presentaion/views/book_detailes_view.dart';
import 'package:book/Features/home/presentaion/views/home_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeview';
  static const kBookDetailesView = '/bookDetailsView';
  static final router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SplashView()),
      GoRoute(path: kHomeView, builder: (context, state) => const HomeView()),

      GoRoute(
        path: kBookDetailesView,
        builder: (context, state) => const BookDetailesView(),
      ),
    ],
  );
}
