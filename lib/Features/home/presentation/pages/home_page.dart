import 'package:calc_app/core/func/show_bottom_sheet.dart';
import 'package:flutter/material.dart';
import '../widgets/bottom_sheet_body.dart';
import '../widgets/home_page_body.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ShowBottomSheet.showBottomSheet(context,
              child: const BottomSheetBody(), initialChildSize: 0.4);
        },
      ),
      body: const HomePageBody(),
    );
  }
}
