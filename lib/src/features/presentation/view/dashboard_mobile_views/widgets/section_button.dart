import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_deamsoft/src/common/base/app_strings.dart';
import 'package:task_deamsoft/src/common/base/text_styles.dart';
import 'package:task_deamsoft/src/common/widgets/app_text_button.dart';

class SectionButton extends StatelessWidget {
  const SectionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: AppTextButton(
              buttonText: AppStrings.asian,
              textStyle: TextStyles.styleRobotoMedium12(context).copyWith(
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ),
          16.verticalSpace,
          Expanded(
            child: AppTextButton(
              buttonText: AppStrings.auroba,
              textStyle: TextStyles.styleRobotoMedium12(context).copyWith(
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ),
          16.verticalSpace,
          Expanded(
            child: AppTextButton(
              buttonText: AppStrings.amirca,
              textStyle: TextStyles.styleRobotoMedium12(context).copyWith(
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
