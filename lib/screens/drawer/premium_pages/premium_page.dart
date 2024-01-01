import 'package:flutter/material.dart';
import 'package:radio_app/screens/drawer/premium_pages/premium_pages/monthly.dart';
import 'package:radio_app/screens/drawer/premium_pages/premium_pages/twoyear.dart';
import 'package:radio_app/screens/drawer/premium_pages/premium_pages/yearly.dart';
import 'package:radio_app/utils/strings.dart';

import '../../../routes/routes.dart';
import '../../../utils/custom_color.dart';

class PremiumPage extends StatefulWidget {
  const PremiumPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _TabBarDemoState createState() => _TabBarDemoState();
}

class _TabBarDemoState extends State<PremiumPage>
    with SingleTickerProviderStateMixin {
  late TabController _controller;

  List<Widget> list = [
    Tab(
      text: Strings.monthly,
    ),
    Tab(
      text: Strings.yearly,
    ),
    Tab(
      text: Strings.twoYear,
    )
  ];

  @override
  void initState() {
    super.initState();
    // Create TabController for getting the index of current tab
    _controller = TabController(length: list.length, vsync: this);

    _controller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leading: InkWell(
            child: Image.asset(
              "assets/images/icon/cross.png",
              color: Colors.white,
            ),
            onTap: () {
              Navigator.of(context).pushNamedAndRemoveUntil(
                  Routes.dashboardScreen, (routes) => false);
            },
          ),
          backgroundColor: CustomColor.pink1,
          bottom: TabBar(
            indicatorColor: Colors.white,
            indicatorPadding: const EdgeInsets.fromLTRB(15, 0, 15, 2),
            tabs: list,
          ),
          title: Text(Strings.chooseYourPlan),
        ),
        body: const TabBarView(
          children: [
            Monthly(),
            OneYear(),
            TwoYear(),
          ],
        ),
      ),
    );
  }
}
