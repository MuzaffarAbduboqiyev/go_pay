import 'package:flutter/material.dart';
import 'package:go_pay/ui/widgets/shimmer/base_shimmer/shimmer_item.dart';
import 'package:go_pay/ui/widgets/sized_box/size_boxes.dart';

class MonitoringShimmerItem extends StatelessWidget {
  const MonitoringShimmerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: const EdgeInsets.symmetric(
        vertical: 4,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 8,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _rowItem,
          verticalBox(verticalSize: 16),
          _rowItem,
        ],
      ),
    );
  }

  Widget get _rowItem => Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _item,
          horizontalBox(horizontalSize: 16),
          _item,
        ],
      );

  Widget get _item => const Expanded(
        child: ShimmerItem(width: double.maxFinite, height: 40),
      );
}
