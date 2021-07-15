import "package:flutter/material.dart";
import 'package:rz_rasel_tutorial/content_view.dart';
import 'package:rz_rasel_tutorial/custom_tab.dart';
import 'package:rz_rasel_tutorial/custom_tab_bar.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  late double screenWidth;
  late double screenHeight;
  late double topPadding;
  late double bottomPadding;
  late TabController tabController;
  List<ContentView> contentViews = [
    /*ContentView(
        tab: CustomTab(
          title: "Home",
        ),
        content: Center(
          child: Container(
            color: Colors.green,
            width: 100,
            height: 100,
          ),
        )),*/
    ContentView(
        tab: CustomTab(
          title: "Home",
        ),
        content: Center(
          child: Text(
            "Home Page - Rz Rasel - Tutorial",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: Colors.white,
            ),
          ),
        )),
    ContentView(
        tab: CustomTab(
          title: "About",
        ),
        content: Center(
          child: Text(
            "About Page - Rz Rasel - Tutorial",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: Colors.white,
            ),
          ),
        )),
    ContentView(
        tab: CustomTab(
          title: "Projects",
        ),
        content: Center(
          child: Text(
            "Project Page - Rz Rasel - Tutorial",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: Colors.white,
            ),
          ),
        )),
  ];

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: contentViews.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    topPadding = screenHeight * 0.05;
    bottomPadding = screenHeight * 0.01;

    return Scaffold(
      backgroundColor: Color(0xff1e1e24),
      endDrawer: drawer(),
      key: scaffoldKey,
      body: Padding(
        padding: EdgeInsets.only(bottom: bottomPadding, top: topPadding),
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth > 715) {
              return desktopView();
            } else {
              return mobileView();
            }
          },
        ),
      ),
    );
  }

  Widget desktopView() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        CustomTabBar(
          controller: tabController,
          tabs: contentViews.map((e) => e.tab).toList(),
        ),
        Container(
          height: screenHeight * 0.85,
          child: TabBarView(
            controller: tabController,
            children: contentViews.map((e) => e.content).toList(),
          ),
        ),
      ],
    );
  }

  Widget mobileView() {
    return Padding(
      padding: EdgeInsets.only(
        left: screenWidth * 0.05,
        right: screenWidth * 0.05,
      ),
      child: Container(
        width: screenWidth,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            IconButton(
              iconSize: screenWidth * 0.08,
              onPressed: () => scaffoldKey.currentState!.openEndDrawer(),
              icon: Icon(Icons.menu_rounded),
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }

  Widget drawer() {
    return Drawer(
      child: ListView(
        children: [
              Container(
                height: screenHeight * 0.1,
              ),
            ] +
            contentViews
                .map((e) => Container(
                      child: ListTile(
                        title: Text(e.tab.title),
                        onTap: () {},
                      ),
                    ))
                .toList(),
      ),
    );
  }
}
//https://youtu.be/wmQbvkXnvbM?t=578

//Just press CTRL+O on Windows or Command+O on Mac and you'll be presented with a list of methods that you can override
