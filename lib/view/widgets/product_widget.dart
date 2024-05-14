import 'package:bytesonline_machinetest/model/product_model.dart';
import 'package:bytesonline_machinetest/view/pages/overview_page.dart';
import 'package:flutter/material.dart';

class ProductWidget extends StatelessWidget {
  final List<ProductModel> model;
  const ProductWidget({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: GridView.builder(
        physics: const ClampingScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
            mainAxisExtent: 200),
        itemBuilder: (context, index) => InkWell(
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => OverviewPage(
                  model: model[index],
                ),
              )),
          child: Card(
            color: Color.fromARGB(255, 2, 19, 68),
            elevation: 25,
            shadowColor: Colors.black,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 220,
                    height: 108,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                            image: NetworkImage(model[index].image),
                            fit: BoxFit.cover)),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    model[index].title,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                        color: Colors.white),
                  ),
                  Text(
                    model[index].type,
                    style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                        color: Color.fromARGB(255, 223, 26, 26)),
                  ),
                  Text(
                    '₹${model[index].price}',
                    style: const TextStyle(
                        fontWeight: FontWeight.w600, color: Colors.green),
                  )
                ],
              ),
            ),
          ),
        ),
        itemCount: model.length,
      ),
    );
  }
}
