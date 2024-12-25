import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'home_page.dart';
import 'task_screen.dart';

final router = GoRouter(
  initialLocation: "/",
  routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: "/task/:id",
      builder: (context, state) {
        final String id = state.pathParameters['id']!;
        return TaskScreen(taskId: id);
      },
    ),
  ],
);
