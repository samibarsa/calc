import 'package:flutter/material.dart';
import 'package:calc_app/core/func/show_bottom_sheet.dart';

import '../widgets/bottom_sheet_body_production.dart';
import '../widgets/production_body.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () async {
        ShowBottomSheet.showBottomSheet(context,
            child: BottomSheetBodyProduction(), initialChildSize: 0.6);
      }),
      body: const ProductionBody(),
    );
  }
}
