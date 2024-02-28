import 'package:flutter/material.dart';
import 'package:go_pay/ui/widgets/list/list_scroll_behavior.dart';
import 'package:shimmer/shimmer.dart';

abstract mixin class ShimmerList {
  ShimmerListItem horizontalShimmerList({
    required Widget shimmerItem,
    required double height,
  }) =>
      ShimmerListItem(
        shimmerItem: shimmerItem,
        scrollDirection: Axis.horizontal,
        height: height,
      );

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
    super.key,
  });

  @override
  Widget build(BuildContext context) => (scrollDirection == Axis.horizontal)
      ? SizedBox(
          height: height,
          child: _shimmerItem(),
        )
      : _shimmerItem();

  Widget _shimmerItem() => ScrollConfiguration(
        behavior: ListScrollBehavior(),
        child: ListView.builder(
          itemCount: 15,
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          scrollDirection: scrollDirection,
          itemBuilder: (context, index) => Shimmer.fromColors(
            baseColor: Colors.grey.shade400,
            highlightColor: Colors.white,
            child: shimmerItem,
          ),
        ),
      );
}
