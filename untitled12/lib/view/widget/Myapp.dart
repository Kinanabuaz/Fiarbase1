import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:untitled12/locale1/locale.dart';
import 'package:untitled12/screen/card.dart';

import '../../locale1/local_controller.dart';

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(Mylocalcontroller());
    return GetMaterialApp(
     locale: Get.deviceLocale,
      translations: Mylocal(),
      getPages: [
        GetPage(name: "/", page :() => Card1(),)
      ],
    );
  }
}
