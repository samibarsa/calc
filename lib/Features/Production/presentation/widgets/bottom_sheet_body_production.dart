import 'package:calc_app/core/widgets/custom_botton.dart';
import 'package:calc_app/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomSheetBodyProduction extends StatelessWidget {
   BottomSheetBodyProduction({super.key});
  GlobalKey<FormState> formKey = GlobalKey();
    AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: autovalidateMode,
      child: SizedBox(
        height: 450.h,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: EdgeInsets.only(top: 10.h),
          child: Column(
            children: [
              SizedBox(height: 30.h,),
              SizedBox(
                width: 360.w,
                child: const CustomTextField(
                  hint: "كمية الإنتاج"  ,
                ),
              ),
              SizedBox(height: 20.h,),
              SizedBox(
                width: 360.w,
                child: const CustomTextField(
                  hint: "التاريخ ",
                  keyboardType: TextInputType.datetime,
                ),
              ),
              SizedBox(height: 20.h,),

              SizedBox(
                width: 360.w,
                child: const CustomTextField(
                  hint: "الوزن",
                ),
              ),
              
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                width: 360.w,
                child: const CustomTextField(
                  keyboardType: TextInputType.number,
                  hint: "الملاحظات",
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              Padding(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: const CustomBotton(),
              )
            ],
          ),
        ),
      ),
    );
  }
}