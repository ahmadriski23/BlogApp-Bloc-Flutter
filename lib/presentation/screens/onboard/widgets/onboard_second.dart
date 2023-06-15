part of 'widgets_imports.dart';

class OnBoardSecond extends StatelessWidget {
  const OnBoardSecond({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset("assets/images/logoFinanceRemove.png",
            height: 333, width: 333),
        "Lorem ipsum, lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum"
            .text
            .size(15)
            .align(TextAlign.center)
            .fontWeight(FontWeight.w500)
            .make()
      ],
    );
  }
}
