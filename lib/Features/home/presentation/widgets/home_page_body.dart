import 'package:calc_app/Features/home/presentation/widgets/list_view_item.dart';
import 'package:calc_app/Features/home/presentation/widgets/search_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20.h,
        ),
        const SafeArea(
            child: Padding(
          padding: EdgeInsets.only(top: 10),
          child: SearchTextField(),
        )),
        SizedBox(height: 20.h),
        Expanded(
          child: ListView.builder(
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) => ListViewItem(
              index: index,
            ),
            itemCount: 4,
          ),
        ),
      ],
    );
  }
}
