import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'home_for_you_tabs.dart';
import 'movie_for_you_tabs.dart';

class HomeTopTabs extends StatefulWidget {
  HomeTopTabs(this.colorVal);
  int colorVal;

  @override
  _HomeTopTabsState createState() => _HomeTopTabsState();
}

class _HomeTopTabsState extends State<HomeTopTabs>
    with TickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _tabController = new TabController(length: 2, vsync: this);
    _tabController.addListener(_handleTabSelection);
  }

  void _handleTabSelection() {
    setState(() {
      widget.colorVal = 0xffff5722;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            controller: _tabController,
            isScrollable: true,
            indicatorWeight: 4.0,
            indicatorColor: Color(0xffff5722),
            unselectedLabelColor: Colors.grey,
            tabs: <Widget>[
              Tab(
                icon: Icon(
                  FontAwesomeIcons.compass,
                  color: _tabController.index == 0
                      ? Color(widget.colorVal)
                      : Colors.grey,
                ),
                child: Text(
                  "For You",
                  style: TextStyle(
                    color: _tabController.index == 0
                        ? Color(widget.colorVal)
                        : Colors.grey,
                  ),
                ),
              ),
              Tab(
                icon: Icon(
                  FontAwesomeIcons.compass,
                  color: _tabController.index == 1
                      ? Color(widget.colorVal)
                      : Colors.grey,
                ),
                child: Text(
                  "Top Charts",
                  style: TextStyle(
                    color: _tabController.index == 1
                        ? Color(widget.colorVal)
                        : Colors.grey,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: <Widget>[
            HomeForYouTabs(),
            MovieForYouTabs(),
          ],
        ),
      ),
    );
  }
}
