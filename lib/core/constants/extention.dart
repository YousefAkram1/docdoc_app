import 'package:flutter/material.dart';

extension Navigation on BuildContext {
  // Push
  Future<T?> push<T>(Widget page) {
    return Navigator.of(this).push<T>(MaterialPageRoute(builder: (_) => page));
  }

  // Push Replacement
  Future<T?> pushReplacement<T, TO>(Widget page) {
    return Navigator.of(
      this,
    ).pushReplacement<T, TO>(MaterialPageRoute(builder: (_) => page));
  }

  // Push And Remove Until
  Future<T?> pushAndRemoveUntil<T>(Widget page) {
    return Navigator.of(this).pushAndRemoveUntil<T>(
      MaterialPageRoute(builder: (_) => page),
      (route) => false,
    );
  }

  // Pop
  void pop<T>([T? result]) {
    Navigator.of(this).pop<T>(result);
  }

  // Can Pop
  bool get canPop => Navigator.of(this).canPop();

  // Maybe Pop
  Future<bool> maybePop<T>([T? result]) {
    return Navigator.of(this).maybePop<T>(result);
  }

  // ---------------- Named Navigation ----------------

  // Push Named
  Future<T?> pushNamed<T>(String routeName, {Object? arguments}) {
    return Navigator.of(this).pushNamed<T>(routeName, arguments: arguments);
  }

  // Push Replacement Named
  Future<T?> pushReplacementNamed<T, TO>(
    String routeName, {
    Object? arguments,
  }) {
    return Navigator.of(
      this,
    ).pushReplacementNamed<T, TO>(routeName, arguments: arguments);
  }

  // Push Named And Remove Until
  Future<T?> pushNamedAndRemoveUntil<T>(
    String routeName, {
    Object? arguments,
    bool Function(Route<dynamic>)? predicate,
  }) {
    return Navigator.of(this).pushNamedAndRemoveUntil<T>(
      routeName,
      predicate ?? (route) => false,
      arguments: arguments,
    );
  }

  // Pop Until
  void popUntil(bool Function(Route<dynamic>) predicate) {
    Navigator.of(this).popUntil(predicate);
  }

  // Pop And Push Named
  Future<T?> popAndPushNamed<T, TO>(String routeName, {Object? arguments}) {
    return Navigator.of(
      this,
    ).popAndPushNamed<T, TO>(routeName, arguments: arguments);
  }
}
