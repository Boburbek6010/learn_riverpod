import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learn_riverpod/notifiers/detail_notifier.dart';



class DetailPage extends ConsumerStatefulWidget {
  const DetailPage({super.key});
  @override
  ConsumerState<DetailPage> createState()  => _DetailPageState();
}

class _DetailPageState extends ConsumerState<DetailPage> {

  @override
  void initState() {

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ref.watch(detailNotifier);
    var con = ref.read(detailNotifier);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(con.counter.toString()),
            ElevatedButton(
              onPressed: (){
                ref.read(detailNotifier).increment();
              },
              child: const Text("Increment"),
            )
          ],
        ),
      ),
    );
  }
}
