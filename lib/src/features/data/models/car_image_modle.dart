import 'package:task_deamsoft/src/common/base/app_images.dart';

class CarImageModel {
  final String image;
  const CarImageModel({required this.image});
}

List<CarImageModel> carImage = const [
  CarImageModel(image: AppImages.car1),
  CarImageModel(image: AppImages.car2),
  CarImageModel(image: AppImages.car4),
  CarImageModel(image: AppImages.car1),
  CarImageModel(image: AppImages.car1),
  CarImageModel(image: AppImages.car1),
];
