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
        body: SafeArea(
            child: Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              MyAssets.mainLogo,
              color: MyColors.primaryColor,
              height: 150.h,
              width: 500.w,
            ),
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
                    minimumSize: Size(MediaQuery.of(context).size.width, 44.h),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(11.r),
                    )),
                onPressed: () => AutoRouter.of(context).push(AuthRoute()),
                child: "Get Started"
                    .text
                    .size(16.sp)
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
                    effect: WormEffect(
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
