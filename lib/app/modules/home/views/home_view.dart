import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: DefaultTabController(
          length: 2,
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Container(
                  height: 150,
                  child: Center(child: Text('Ini card')),
                ),
              ),
              SliverToBoxAdapter(
                child: TabBar(
                  labelColor: Colors.black,
                  onTap: (index) => controller.changeIndex(index),
                  tabs: [
                    Tab(text: "Tab 1"),
                    Tab(text: "Tab 2"),
                  ],
                ),
              ),
              GetBuilder(
                init: controller,
                builder: (_) => tabView[controller.tab],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

final List<Widget> tabView = [
  ListItemView(),
  TabItemSecond(),
];

class TabItemSecond extends StatelessWidget {
  const TabItemSecond({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
        child: Center(
            child: Text(
      "Item Tab 2",
      style: TextStyle(color: Colors.black),
    )));
  }
}

class ListItemView extends StatelessWidget {
  const ListItemView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (_, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('List $index'),
        ),
        childCount: 20,
      ),
    );
  }
}
