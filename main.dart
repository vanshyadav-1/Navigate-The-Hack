import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:navigate_the_hack/core/theme/app_theme.dart';
import 'package:navigate_the_hack/routes/app_router.dart';

void main() {
  runApp(
    const ProviderScope(
      child: HackerNewsApp(),
    ),
  );
}

class HackerNewsApp extends ConsumerWidget {
  const HackerNewsApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(appRouterProvider);
    final themeMode = ref.watch(themeModeProvider);

    return MaterialApp.router(
      title: 'Hacker News Reader',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: themeMode,
      routerConfig: router,
    );
  }
}
