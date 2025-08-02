import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:expense_tracer_app/src/core/extension/context_extension.dart';
import 'package:expense_tracer_app/src/core/widgets/appbar/global_app_bar.dart';
import 'package:expense_tracer_app/src/core/widgets/background/curve_background.dart';
import 'package:flutter/material.dart';

class ExpenseMobileLayout extends StatelessWidget {
  const ExpenseMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return CurveBackground(
      body: SizedBox(
        width: context.screenWidth,
        child: Column(
          spacing: 12,
          children: [
            Container(
              margin: EdgeInsets.only(top: context.heightPercent(.05)),
              padding: context.largePadding,
              width: context.widthPercent(.8),
              height: context.heightPercent(.5),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(.5, .5),
                    blurRadius: 20,
                    blurStyle: BlurStyle.outer,
                  ),
                ],
                borderRadius: BorderRadius.all(
                  Radius.circular(context.largeContainerBorderRadius),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 12,
                children: [
                  Text("NAME"),
                  DropDownTextField(
                    dropDownList: [
                      DropDownValueModel(name: "name", value: 'value'),
                    ],
                  ),
                  Text("AMOUNT"),
                  TextFormField(),
                  Text("DATE"),
                  DropDownTextField(
                    dropDownList: [
                      DropDownValueModel(name: "name", value: 'value'),
                    ],
                  ),
                  Text("INVOICE"),
                  Container(),
                  ElevatedButton(onPressed: () {}, child: Text("ADD")),
                ],
              ),
            ),
          ],
        ),
      ),
      appBar: GlobalAppBar(
        title: "Add Expense",
        action: [IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz))],
      ),
    );
  }
}
