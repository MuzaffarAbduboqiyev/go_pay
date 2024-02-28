import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_pay/controller/monitoring_controller/monitoring_bloc.dart';
import 'package:go_pay/controller/monitoring_controller/monitoring_event.dart';
import 'package:go_pay/controller/monitoring_controller/monitoring_state.dart';
import 'package:go_pay/model/monitoring_model/monitoring_model.dart';
import 'package:go_pay/ui/widgets/appbar/appbar_widget.dart';
import 'package:go_pay/ui/widgets/image/svg_image.dart';
import 'package:go_pay/ui/widgets/list/list_widget.dart';
import 'package:go_pay/ui/widgets/list_items/monitoring_item.dart';
import 'package:go_pay/ui/widgets/shimmer/base_shimmer/shimmer_list.dart';
import 'package:go_pay/ui/widgets/shimmer/shimmer_item/monitoring_item.dart';
import 'package:go_pay/ui/widgets/sized_box/size_boxes.dart';
import 'package:go_pay/utils/service/language_service/language_translate_extension.dart';
import 'package:go_pay/utils/service/network_service/request_service.dart';
import 'package:go_pay/utils/service/theme_service/theme_extension.dart';
import 'package:pull_to_refresh_flutter3/pull_to_refresh_flutter3.dart';

class MonitoringScreen extends StatefulWidget {
  const MonitoringScreen({super.key});

  @override
  State<MonitoringScreen> createState() => _MonitoringScreenState();
}

class _MonitoringScreenState extends State<MonitoringScreen>
    with ListWidget, ShimmerList, SvgImageWidget, AppbarWidget {
  final RefreshController _refreshController = RefreshController();

  /// Refresh
  void _onRefresh() {
    context.read<MonitoringBloc>().add(const MonitoringEvent.refresh());
  }

  void _onLoading() {
    context.read<MonitoringBloc>().add(const MonitoringEvent.loadNextPage());
  }

  void _init(){
    context.read<MonitoringBloc>().add(const MonitoringEvent.initial());
  }

  @override
  void initState() {
    super.initState();
    _init();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: simpleAppBar(
        title: "monitoring.monitoring".translate,
        type: AppbarType.withBack,
      ),
      body: BlocListener<MonitoringBloc, MonitoringState>(
        listener: (context, state) {
          if (state.screenStatus != NetworkStatus.refresh &&
              _refreshController.isRefresh) {
            _refreshController.refreshCompleted();
          }

          if (state.paginationStatus != NetworkStatus.loading &&
              _refreshController.isLoading) {
            _refreshController.loadComplete();
          }
        },
        child: BlocBuilder<MonitoringBloc, MonitoringState>(
          builder: (context, state) =>
              (state.screenStatus == NetworkStatus.loading)
                  ? const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: MonitoringShimmerItem(),
                    )
                  : (state.monitoringList.isEmpty)
                      ? refresh(
                          refreshController: _refreshController,
                          onRefresh: _onRefresh,
                          body: _monitoringEmpty)
                      : listViewWithRefreshAndLoading<MonitoringModel>(
                          verticalMargin: 0,
                          refreshController: _refreshController,
                          onRefresh: _onRefresh,
                          items: state.monitoringList,
                          onLoading: _onLoading,
                          isLastPage: state.isLastPage,
                          itemBuilder: (dynamic item, int index) {
                            return MonitoringItem(
                              monitoringModel: item as MonitoringModel,
                            );
                          },
                        ),
        ),
      ),
    );
  }

  Widget get _monitoringEmpty => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            svgImageWidget(imageName: "empty", imageWidth: 40, imageHeight: 40),
            verticalBox(verticalSize: 8),
            Text(
              "monitoring.empty".translate,
              style: context.bodyLarge(),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      );
}
