import 'package:calc_app/presentation/widgets/search_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/bottom_sheet_body.dart';
import '../widgets/list_view_item.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) {
              return AbsorbPointer(
                absorbing: false,
                child: Padding(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: DraggableScrollableSheet(
                    expand: false,
                    initialChildSize: 0.4,
                    maxChildSize: 0.9,
                    minChildSize: 0.32,
                    builder: (context, scrollController) {
                      return SingleChildScrollView(
                        controller: scrollController,
                        child: const Directionality(
                            textDirection: TextDirection.rtl,
                            child: BottomSheetBody()),
                      );
                    },
                  ),
                ),
              );
            },
          );
        },
      ),
      body: Column(
        children: [
        
        const SafeArea(child: Padding(
           padding:  EdgeInsets.only(top: 10),
           child: SearchTextField(),
         )),
          SizedBox(height: 20.h),

          Expanded(
            child: ListView.builder(padding:EdgeInsets.zero,
              itemBuilder: (context, index) => ListViewItem(
                index: index,
              ),
              itemCount: 4,
            ),
          ),
        ],
      ),
    );
  }
}
