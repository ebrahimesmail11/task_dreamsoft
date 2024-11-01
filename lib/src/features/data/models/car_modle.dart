import 'package:task_deamsoft/src/common/base/app_images.dart';
import 'package:task_deamsoft/src/common/base/app_strings.dart';

class CarModle {
  final String text;
  final String image;

 const  CarModle({required this.text, required this.image});
}
List<CarModle> carModle = [
  const CarModle(text: AppStrings.bmw, image:AppImages.bmw1),
  const CarModle(text: AppStrings.bmw, image: AppImages.bmw2),
  const CarModle(text: AppStrings.toyta, image: AppImages.bmw3),
  const CarModle(text: AppStrings.ford, image: AppImages.bmw4),
  const CarModle(text: AppStrings.bmw, image: AppImages.bmw5),
  const CarModle(text: AppStrings.bmw, image:AppImages.bmw1),
  const CarModle(text: AppStrings.bmw, image: AppImages.bmw2),

];