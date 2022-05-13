// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint
/*
import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flutter/material.dart' as _i5;

import '../ui/pages/BarCode.dart' as _i4;
import '../ui/pages/home.dart' as _i3;
import '../ui/pages/login.dart' as _i1;
import 'route_guard.dart' as _i6;

class AppRouter extends _i2.RootStackRouter {
  AppRouter(
      {_i5.GlobalKey<_i5.NavigatorState>? navigatorKey,
      required this.routeGuard})
      : super(navigatorKey);

  final _i6.RouteGuard routeGuard;

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    Login.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child:  _i1.Login(onLoginCallback: (bool loggedIn) {  },));
    },
    ProductsRoute.name: (routeData) {
      return _i2.MaterialPageX<_i2.EmptyRouterPage>(
          routeData: routeData, child: const _i2.EmptyRouterPage());
    },
    HOMERoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.HOME());
    },
    AddProductsRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child:  _i4.BareCode());
    }
  };

  @override
  List<_i2.RouteConfig> get routes => [
        _i2.RouteConfig(Login.name, path: '/', guards: [
          routeGuard
        ], children: [
          _i2.RouteConfig(ProductsRoute.name,
              path: 'products',
              parent: Login.name,
              children: [
                _i2.RouteConfig(HOMERoute.name,
                    path: '', parent: ProductsRoute.name),
                _i2.RouteConfig(AddProductsRoute.name,
                    path: 'add_products', parent: ProductsRoute.name)
              ])
        ])
      ];
}

/// generated route for
/// [_i1.Login]
class Login extends _i2.PageRouteInfo<void> {
  const Login({List<_i2.PageRouteInfo>? children})
      : super(Login.name, path: '/', initialChildren: children);

  static const String name = 'Login';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class ProductsRoute extends _i2.PageRouteInfo<void> {
  const ProductsRoute({List<_i2.PageRouteInfo>? children})
      : super(ProductsRoute.name, path: 'products', initialChildren: children);

  static const String name = 'ProductsRoute';
}

/// generated route for
/// [_i3.HOME]
class HOMERoute extends _i2.PageRouteInfo<void> {
  const HOMERoute() : super(HOMERoute.name, path: '');

  static const String name = 'HOMERoute';
}

/// generated route for
/// [_i4.BareCode]
class AddProductsRoute extends _i2.PageRouteInfo<void> {
  const AddProductsRoute() : super(AddProductsRoute.name, path: 'add_products');

  static const String name = 'AddProductsRoute';
}
*/