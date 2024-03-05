import 'package:flutter/material.dart';
import 'package:go_pay/ui/widgets/list/list_scroll_behavior.dart';
import 'package:go_pay/ui/widgets/list/refresh_header.dart';
import 'package:pull_to_refresh_flutter3/pull_to_refresh_flutter3.dart';

abstract mixin class ListWidget {
  /// List widget
  ListWidgetItem<T> listView<T>({
    required List<T> items,
    required Widget Function(T item, int index) itemBuilder,
    bool? shrinkWrap,
  }) =>
      ListWidgetItem<T>(
        items: items,
        itemBuilder: itemBuilder,
        shrinkWrap: shrinkWrap ?? false,
      );

  /// Refresh widget
  RefreshWidget refresh({
    required RefreshController refreshController,
    required Function onRefresh,
    required Widget body,
    double? horizontalMargin,
    double? verticalMargin,
  }) =>
      RefreshWidget(
        refreshController: refreshController,
        onRefresh: onRefresh,
        body: body,
        horizontalMargin: horizontalMargin ?? 16,
        verticalMargin: verticalMargin ?? 16,
      );

  /// List widget with refresh
  RefreshWidget listViewWithRefresh<T>({
    required RefreshController refreshController,
    required Function onRefresh,
    required List<T> items,
    required Widget Function(T item, int index) itemBuilder,
    double? horizontalMargin,
    double? verticalMargin,
  }) =>
      refresh(
        refreshController: refreshController,
        onRefresh: onRefresh,
        horizontalMargin: horizontalMargin,
        verticalMargin: verticalMargin,
        body: listView<T>(
          items: items,
          itemBuilder: itemBuilder,
          shrinkWrap: true,
        ),
      );

  /// List widget with refresh
  RefreshWidget listViewWithRefreshAndLoading<T>({
    required RefreshController refreshController,
    required Function onRefresh,
    required List<T> items,
    required Widget Function(T item, int index) itemBuilder,
    required Function onLoading,
    required bool isLastPage,
    double? horizontalMargin,
    double? verticalMargin,
  }) =>
      refresh(
        refreshController: refreshController,
        onRefresh: onRefresh,
        horizontalMargin: horizontalMargin,
        verticalMargin: verticalMargin,
        body: listView<T>(
          items: items,
          itemBuilder: itemBuilder,
          shrinkWrap: true,
        ),
      );
}

class ListWidgetItem<T> extends StatefulWidget {
  final List<T> items;
  final Widget Function(T item, int index) itemBuilder;
  final bool shrinkWrap;

  const ListWidgetItem({
    super.key,
    required this.items,
    required this.itemBuilder,
    required this.shrinkWrap,
  });

  @override
  State<ListWidgetItem> createState() => _ListWidgetItemState<T>();
}

class _ListWidgetItemState<T> extends State<ListWidgetItem> {
  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: ListScrollBehavior(),
      child: ListView.builder(
        itemCount: widget.items.length,
        shrinkWrap: widget.shrinkWrap,
        physics:
            widget.shrinkWrap ? const NeverScrollableScrollPhysics() : null,
        itemBuilder: (context, index) => widget.itemBuilder(
          widget.items[index],
          index,
        ),
      ),
    );
  }
}

class RefreshWidget extends StatelessWidget {
  final RefreshController refreshController;
  final Function onRefresh;
  final double horizontalMargin;
  final double verticalMargin;
  final Widget body;
  final bool isLastPage;
  final Function? onLoading;

  const RefreshWidget({
    required this.refreshController,
    required this.body,
    required this.onRefresh,
    required this.horizontalMargin,
    required this.verticalMargin,
    this.isLastPage = true,
    this.onLoading,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SmartRefresher(
      enablePullDown: true,
      enablePullUp: isLastPage ? false : true,
      onLoading: () => onLoading?.call(),
      controller: refreshController,
      onRefresh: () => onRefresh.call(),
      header: RefreshWidgetConfig.refreshHeader(),
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: verticalMargin, horizontal: horizontalMargin),
        child: body,
      ),
    );
  }
}
