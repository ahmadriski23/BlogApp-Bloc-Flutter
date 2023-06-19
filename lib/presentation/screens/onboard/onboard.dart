part of 'onboard_imports.dart';

@RoutePage()
class OnBoard extends StatefulWidget {
  const OnBoard({super.key});

  @override
  State<OnBoard> createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {
  OnBoardViewModel onBoardViewModel = OnBoardViewModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          backgroundColor: Colors.transparent,
          title: Image.asset(
            MyAssets.mainLogo,
            color: MyColors.primaryColor,
            height: 125.h,
            width: 250.w,
          ),
        ),
        body: SafeArea(
            child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 24.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                63.h.heightBox,
                PageView(
                  controller: onBoardViewModel.pageController,
                  children: [
                    OnBoardFirst(),
                    OnBoardSecond(),
                    OnBoardThird(),
                  ],
                ).expand(),
                61.h.heightBox,
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: MyColors.primaryColor,
                        minimumSize:
                            Size(MediaQuery.of(context).size.width, 44.h),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(11.r),
                        )),
                    onPressed: () => AutoRouter.of(context).push(AuthRoute()),
                    child: "Get Started"
                        .text
                        .size(16.sp)
                        .white
                        .fontWeight(FontWeight.w700)
                        .make()),
                SizedBox(
                  height: 61.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    "Skip"
                        .text
                        .color(MyColors.primaryColor)
                        .size(16.sp)
                        .textStyle(GoogleFonts.poppins())
                        .fontWeight(FontWeight.w700)
                        .make(),
                    SmoothPageIndicator(
                        controller:
                            onBoardViewModel.pageController, // PageController
                        count: 3,
                        effect: ExpandingDotsEffect(
                          activeDotColor: MyColors.primaryColor,
                          dotHeight: 12.0,
                          dotWidth: 12.0,
                        ), // your preferred effect
                        onDotClicked: (index) {}),
                    "Next"
                        .text
                        .color(MyColors.primaryColor)
                        .size(16.sp)
                        .fontWeight(FontWeight.w700)
                        .make()
                  ],
                )
              ],
            ),
          ),
        )));
  }
}
