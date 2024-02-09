import 'package:flutter/material.dart';
import 'package:go_pay/ui/widgets/image/loader_widget.dart';
import 'package:go_pay/ui/widgets/image/svg_image.dart';
import 'package:go_pay/utils/service/network_service/network_urls.dart';
import 'package:go_pay/utils/service/singleton_service/get_it_service.dart';
import 'package:injectable/injectable.dart';


abstract mixin class ImageWidget {
  Widget imageWidget({
    required String imageUrl,
    required double imageWidth,
    required double imageHeight,
    BoxFit? boxFitType,
  });

  Widget localImageWidget({
    required String imageName,
    required double imageWidth,
    required double imageHeight,
    BoxFit? boxFitType,
  });
}

@Injectable(as: ImageWidget)
class ImageWidgetImpl extends ImageWidget {
  @override
  Widget imageWidget({
    required String imageUrl,
    required double imageWidth,
    required double imageHeight,
    BoxFit? boxFitType,
  }) {
    return ImageItem(
      imageUrl: imageUrl,
      imageWidth: imageWidth,
      imageHeight: imageHeight,
      boxFitType: boxFitType,
    );
  }

  @override
  Widget localImageWidget({
    required String imageName,
    required double imageWidth,
    required double imageHeight,
    BoxFit? boxFitType,
  }) =>
      Image.asset(
        "assets/images/$imageName.png",
        width: imageWidth,
        height: imageHeight,
        fit: boxFitType ?? BoxFit.contain,
      );
}

class ImageItem extends StatelessWidget {
  final String? imageUrl;
  final double imageWidth;
  final double imageHeight;
  final BoxFit? boxFitType;

  const ImageItem({
    required this.imageUrl,
    required this.imageWidth,
    required this.imageHeight,
    this.boxFitType,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.network(
      "${NetworkUrl.productImageUrl}$imageUrl",
      width: imageWidth,
      height: imageHeight,
      fit: boxFitType,
      loadingBuilder: (_, child, progress) {
        if (progress == null) return child;
        return const LoaderWidget();
      },
      errorBuilder: (context, url, error) => _errorImage,
    );
  }

  Widget get _errorImage => Center(
        child: getIt<SvgImageWidget>().svgImageWidget(
          imageName: "logo",
          imageWidth: imageWidth,
          imageHeight: imageHeight,
          boxFitType: boxFitType,
        ),
      );
}
