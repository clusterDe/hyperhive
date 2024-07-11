import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:marketplace/constant.dart';
import 'package:marketplace/provider/home/home_provider.dart';
import 'package:marketplace/widget/dot_indicator.dart';
import 'package:provider/provider.dart';

class BannerSection extends StatelessWidget {
  const BannerSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(
      builder: (context, homeProv, _) {
        var listBanner = homeProv.listBanner;

        if (listBanner.isNotEmpty) {
          return SizedBox(
            width: double.infinity,
            child: Stack(
              alignment: AlignmentDirectional.center,
              children: [
                CarouselSlider.builder(
                  itemCount: homeProv.listBanner.length,
                  itemBuilder: (context, index, realIndex) {
                    return listBanner[index];
                  },
                  options: CarouselOptions(
                    autoPlay: true,
                    autoPlayCurve: Curves.easeInOut,
                    aspectRatio: 1.3,
                    viewportFraction: 1,
                    onPageChanged: (index, reason) {
                      homeProv.changePageIndex(index: index);
                    },
                  ),
                ),
                Positioned.fill(
                  bottom: defPadding * 3,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: List.generate(
                        homeProv.listBanner.length,
                        (index) => DotIndicator(
                          index: index,
                          currentPage: homeProv.pageIndex,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}
