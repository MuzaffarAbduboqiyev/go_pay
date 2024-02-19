import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:shimmer/shimmer.dart';

abstract class ShimmerList {
  ShimmerListItem horizontalShimmerList({
    required Widget shimmerItem,
    required double height,
  });

  ShimmerListItem verticalShimmerList({
    required Widget shimmerItem,
  });
}

@Injectable(as: ShimmerList)
class ShimmerListImpl implements ShimmerList {
  @override
  ShimmerListItem horizontalShimmerList({
    required Widget shimmerItem,
    required double height,
  }) =>
      ShimmerListItem(
        shimmerItem: shimmerItem,
        scrollDirection: Axis.horizontal,
        height: height,
      );

  @override
  ShimmerListItem verticalShimmerList({
    required Widget shimmerItem,
  }) =>
      ShimmerListItem(
        shimmerItem: shimmerItem,
        scrollDirection: Axis.vertical,
      );
}

class ShimmerListItem extends StatelessWidget {
  final Widget shimmerItem;
  final Axis scrollDirection;
  final double height;

  const ShimmerListItem({
    required this.shimmerItem,
    required this.scrollDirection,
    this.height = 0.0,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => (scrollDirection == Axis.horizontal)
      ? SizedBox(
          height: height,
          child: _shimmerItem(),
        )
      : _shimmerItem();

  Widget _shimmerItem() => ListView.builder(
    itemCount: 15,
    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
    scrollDirection: scrollDirection,
    itemBuilder: (context, index) => Shimmer.fromColors(
      baseColor: Colors.grey.shade400,
      highlightColor: Colors.white,
      child: shimmerItem,
    ),
  );
}
