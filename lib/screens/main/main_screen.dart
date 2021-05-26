import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_admin_panel/controllers/menu_controller.dart';
import 'package:responsive_admin_panel/responsive.dart';
import 'package:responsive_admin_panel/screens/dashboard/dashboard_screen.dart';
import 'package:responsive_admin_panel/screens/main/components/side_menu.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<MenuController>().scaffoldKey,
      drawer: SideMenu(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (Responsive.isDesktop(context))
              Expanded(
                child: SideMenu(),
              ),
            Expanded(flex: 5, child: DashboardScreen())
          ],
        ),
      ),
    );
  }
}
