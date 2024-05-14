import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class homePageShimmer extends StatelessWidget {
  const homePageShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: 10,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 5,
          mainAxisSpacing: 2,
          mainAxisExtent: 250),
      itemBuilder: (context, index) {
        return Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    24,
                  ),
                  color: Color.fromARGB(255, 209, 210, 224),
                  boxShadow: [BoxShadow(color: Colors.black)],
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 16, top: 16, right: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Shimmer.fromColors(
                        baseColor: Colors.grey,
                        highlightColor: Colors.black38,
                        child: Container(
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(
                              8,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          bottom: 8,
                          top: 8,
                        ),
                        child: Shimmer.fromColors(
                          baseColor: Colors.grey,
                          highlightColor: Colors.black45,
                          child: Container(
                            height: 16,
                            width: 150,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(8)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          bottom: 8,
                          top: 8,
                        ),
                        child: Shimmer.fromColors(
                          baseColor: Colors.grey,
                          highlightColor: Colors.black45,
                          child: Container(
                            height: 16,
                            width: 100,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(8)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
