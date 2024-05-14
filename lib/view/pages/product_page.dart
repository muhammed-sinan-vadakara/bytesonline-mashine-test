import 'package:bytesonline_machinetest/controller/provider/product_provider.dart';
import 'package:bytesonline_machinetest/core/constants/constants.dart';
import 'package:bytesonline_machinetest/view/widgets/product_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProductPage extends ConsumerWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 3, 14, 82),
          centerTitle: true,
          title: Text(
            Constants.tittle,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ),
        body: FutureBuilder(
            future: ref.watch(productProvider.notifier).getData(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Column(
                  children: [ProductWidget(model: snapshot.data!)],
                );
              } else if (snapshot.hasError) {
                return const Center(
                  child: Text(Constants.error),
                );
              } else {
                return const LinearProgressIndicator();
              }
            }));
  }
}
