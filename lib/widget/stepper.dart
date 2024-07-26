import 'package:conduit/main.dart';
import 'package:flutter/material.dart';
import '../utils/AppColors.dart';

class ConduitStepper extends StatefulWidget {
  final int currIdx;
  void Function(int index) onTap;

  ConduitStepper({Key? key, this.currIdx = 0, required this.onTap})
      : super(key: key);

  @override
  State<ConduitStepper> createState() => _ConduitStepperState();
}

class _ConduitStepperState extends State<ConduitStepper> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: MediaQuery.of(context).size.width * 0.5,
      child: SizedBox(
        height: 40,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            GestureDetector(
              onTap: () {
                FocusManager.instance.primaryFocus?.unfocus();
                widget.onTap(0);
              },
              child: CircleAvatar(
                backgroundColor: widget.currIdx == 0
                    ? AppColors.primaryColor
                    : AppColors.steeperDisableColor,
                child: Text("1",
                    style: TextStyle(
                        color: widget.currIdx == 0
                            ? Colors.white
                            : AppColors.steeperDisableTextColor,
                        fontFamily: ConduitFontFamily.robotoMedium)),
              ),
            ),
            SizedBox(width: 80,
              child: Align(
                alignment: Alignment.center,
                child: Divider(
                  color: AppColors.steeperDisableColor,
                  thickness: 3,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                FocusManager.instance.primaryFocus?.unfocus();
                widget.onTap(1);
              },
              child: CircleAvatar(
                backgroundColor: widget.currIdx == 1
                    ? AppColors.primaryColor
                    : AppColors.steeperDisableColor,
                child: Text(
                  "2",
                  style: TextStyle(
                    color: widget.currIdx == 1
                        ? Colors.white
                        : AppColors.steeperDisableTextColor,
                    fontFamily: ConduitFontFamily.robotoMedium,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
