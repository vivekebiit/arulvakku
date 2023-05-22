import 'package:arulvakku/features/testament/tabs/new_testament_screen.dart';
import 'package:arulvakku/features/testament/tabs/old_testament_screen.dart';
import 'package:flutter/material.dart';

import '../../routes/routes.dart';

class TestamentScreen extends StatefulWidget {
  const TestamentScreen({Key? key}) : super(key: key);

  @override
  State<TestamentScreen> createState() => _TestamentScreenState();
}

class _TestamentScreenState extends State<TestamentScreen>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('திருவிவிலியம்'),
        actions: [
          const Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(
                Icons.search,
                size: 20,
              )),
          const Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(Icons.note_add_rounded)),
          Padding(
              padding: const EdgeInsets.only(right: 20),
              child: IconButton(
                icon: const Icon(Icons.note_rounded),
                onPressed: () {
                  Navigator.of(context).pushNamed(
                    Routes.notesList,
                  );
                },
              ))
        ],
        bottom: TabBar(
          controller: _tabController,
          tabs: const <Widget>[
            Tab(
              child: Text("பழைய ஏற்பாடு"),
            ),
            Tab(
              child: Text("புதிய ஏற்பாடு"),
            ),
          ],
          indicatorColor: Theme.of(context).cardColor,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[OldTestamentScreen(), NewTestamentScreen()],
      ),
    );
  }
}
