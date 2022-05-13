import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:demo5/router/route_guard.dart';
import 'package:demo5/ui/pages/home.dart';
import 'package:demo5/ui/pages/login.dart';


import '../ui/pages/BarCode.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[

    AutoRoute(
      page: Login2,
      name: 'login',
      path: '/',
      guards: [RouteGuard],
      children: <AutoRoute>[
        AutoRoute<EmptyRouterPage>(
          name: 'ProductsRoute',
          path: 'products',
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              page: HOME,
              path: '',
            ),
            AutoRoute(
                page: BareCode,
                name: 'AddProductsRoute',
                path: 'add_products'),

          ],
        ),

      ],
    ),

  ],
)
class $AppRouter {}