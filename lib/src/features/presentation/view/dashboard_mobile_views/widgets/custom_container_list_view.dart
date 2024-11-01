import 'package:flutter/material.dart';
import 'package:task_deamsoft/src/features/data/models/car_modle.dart';
import 'package:task_deamsoft/src/features/presentation/view/dashboard_mobile_views/widgets/custom_container.dart';

class CustomContainerListView extends StatelessWidget {
  const CustomContainerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      itemCount: carModle.length,
      padding: EdgeInsetsDirectional.zero,
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return  CustomContainer(
          image: carModle[index].image,
          text: carModle[index].text,
        );
      },
    );
  }
}