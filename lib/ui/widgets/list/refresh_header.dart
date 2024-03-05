import 'package:go_pay/utils/service/language_service/language_translate_extension.dart';
import 'package:pull_to_refresh_flutter3/pull_to_refresh_flutter3.dart';

class RefreshWidgetConfig {
  static ClassicHeader refreshHeader() => ClassicHeader(
        refreshingText: "refresh.refreshing".translate,
        completeText: "refresh.refreshed".translate,
        failedText: "refresh.refresh_error".translate,
        releaseText: "refresh.loading".translate,
        idleText: "refresh.scroll_to_refresh".translate,
      );

  static ClassicFooter refreshFooter() => ClassicFooter(
        loadingText: "refresh.loading".translate,
        canLoadingText: "refresh.scroll_to_loading".translate,
        failedText: "refresh.refresh_error".translate,
        idleText: "refresh.scroll_to_loading".translate,
      );
}
