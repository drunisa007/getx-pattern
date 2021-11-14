import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:whole_snack/core/utils/main_pages.dart';
import 'package:whole_snack/features/feature_main/controller/feature_main_controller.dart';
import 'package:whole_snack/features/feature_main/view/butild_bottom_navbar_feature.dart';

class FeatureMain extends StatelessWidget {
  const FeatureMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FeatureMainController mFeatureController = Get.find<FeatureMainController>();


    return ScreenUtilInit(
        builder: () => Obx(()=> Scaffold(
          body: MainPages().getPages(mFeatureController.getIndex()),
          bottomNavigationBar:
          BuildButtonNavBarFeature(featureMainController: mFeatureController,),
        ))
    );

    /* return ScreenUtilInit(
        builder: () => Obx(() => mFeatureController.authPosition.value == 0
            ? Center(child: Text("Splash Screen is showing"))
            : mFeatureController.authPosition.value == 1
                ?
        GestureDetector(
          onTap: (){
              mFeatureController.letsRegister();
          },
            child: Center(child: Text("Plese Login")))
                : Scaffold(
                    body: MainPages().getPages(mFeatureController.getIndex()),
                    bottomNavigationBar:
                        getBottomNavBarForFeature(mFeatureController, context),
                  )));*/
  }
}
