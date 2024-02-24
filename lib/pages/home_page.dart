import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learn_riverpod/notifiers/home_notifier.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(homeNotifierProvider);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(ref.read(homeNotifierProvider).toString()),
            ElevatedButton(
                onPressed: (){
                  ref.read(homeNotifierProvider.notifier).increment();
                },
                child: const Text("Increment"),
            )
          ],
        ),
      ),
    );
  }
}
