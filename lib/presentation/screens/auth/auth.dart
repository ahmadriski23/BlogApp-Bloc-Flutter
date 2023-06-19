part of 'auth_imports.dart';

@RoutePage()
class Auth extends StatefulWidget {
  const Auth({super.key});

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(MyAssets.authBackground),
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios_new,
              color: MyColors.whiteColor,
            ),
          ),
          title: Image.asset(
            MyAssets.mainLogo,
            height: 125.h,
            width: 250.w,
          ),
        ),
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0.h, vertical: 24.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(),
                "Explore the world,\nBillions of Thoughts"
                    .text
                    .size(28.sp)
                    .align(TextAlign.left)
                    .white
                    .fontWeight(FontWeight.w700)
                    .make(),
                20.h.heightBox,
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: MyColors.primaryColor,
                        minimumSize:
                            Size(MediaQuery.of(context).size.width, 44.h),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(11.r),
                        )),
                    onPressed: () {},
                    child: "Login"
                        .text
                        .size(16.sp)
                        .white
                        .fontWeight(FontWeight.w700)
                        .make()),
                12.h.heightBox,
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        minimumSize:
                            Size(MediaQuery.of(context).size.width, 44.h),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: MyColors.whiteColor),
                          borderRadius: BorderRadius.circular(11.r),
                        )),
                    onPressed: () {},
                    child: "Register"
                        .text
                        .size(16.sp)
                        .white
                        .fontWeight(FontWeight.w700)
                        .make()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
