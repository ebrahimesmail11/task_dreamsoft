// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class ContainerImage extends StatelessWidget {
//   const ContainerImage({
//     required this.image,
//     super.key,
//   });
// final String image;
//   @override
//   Widget build(BuildContext context) {
//     return AspectRatio(
//       aspectRatio: MediaQuery.sizeOf(context).width / 300.h,
//       child: Container(
//         decoration:  BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage(image),
//             fit: BoxFit.fill,
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class ContainerImage extends StatelessWidget {
  const ContainerImage({
    required this.image,
    super.key,
  });
  final String image;

  @override
  Widget build(BuildContext context) {
    // استخدام MediaQuery للحصول على الأبعاد مرة واحدة
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height * 0.2;

    return SizedBox(
      width: width,
      height: height,
      child: Image.asset(
        image,
        fit: BoxFit.cover,
        width: width,
        height: height,
      ),
    );
  }
}
