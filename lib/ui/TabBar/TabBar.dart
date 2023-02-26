

  import 'package:container_tab_indicator/container_tab_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_base/ui/TabBar/scale_tabbar.dart';


//TabBar from BeerCorner https://user-images.githubusercontent.com/73361175/221363116-019c4c04-1fcb-400f-814c-ba3eaf4d494f.jpg
class PrimaryTabBar extends StatelessWidget {
    final int initialIndex;
    final Color backgroundColor;
    final List<Widget> tabs;
    final List<Widget> pages;

    const PrimaryTabBar({
      super.key,
      this.initialIndex = 0,
      required this.backgroundColor,
      required this.tabs,
      required this.pages,
    });

    @override
    Widget build(BuildContext context) {
      final int length = tabs.length;
      return DefaultTabController(
        initialIndex: initialIndex,
        length: length,
        child: Column(
          children: [
            Material(
              color: backgroundColor,
              child: Container(
                padding: const EdgeInsets.only(left: 20),
                child: ScaleTabBar(
                  tabs: tabs,
                  isScrollable: true,
                  indicatorSize: TabBarIndicatorSize.tab,
                  labelStyle:
                      const TextStyle(fontSize: 24, fontFamily: 'Unbounded'),
                  unselectedLabelStyle:
                      const TextStyle(fontSize: 16, fontFamily: 'Unbounded'),
                  unselectedLabelColor: Colors.grey,
                  overlayColor:
                      MaterialStateProperty.all<Color>(Colors.transparent),
                  indicator: ContainerTabIndicator(
                    height: 2,
                    radius: BorderRadius.circular(20),
                    color: Colors.white,
                    padding: const EdgeInsets.only(top: 19),
                  ),
                  // indicatorPadding: EdgeInsets.only(bottom: 4),
                ),
              ),
            ),
            Expanded(
              child: TabBarView(children: pages),
            ),
          ],
        ),
      );
    }
  }
