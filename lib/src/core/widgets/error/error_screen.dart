import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ErrorScreen extends StatelessWidget {
  final GoRouterState? state;

  const ErrorScreen({super.key, this.state});

  @override
  Widget build(BuildContext context) {
    final error = state?.error?.toString() ?? "Unknown error";

    return Scaffold(
      appBar: AppBar(title: const Text("Something went wrong")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.error, size: 80, color: Colors.red),
            const SizedBox(height: 16),
            const Text("Oops! An error occurred."),
            const SizedBox(height: 8),
            Text(error, textAlign: TextAlign.center),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => context.go('/'),
              child: const Text("Go to Home"),
            )
          ],
        ),
      ),
    );
  }
}
