import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../common/button.dart';
import '../../qrcode/bloc/bloc.dart';
import '../../qrcode/bloc/qrcode_event.dart';
import '../../resources/resources.dart';

class QRCodeFailurePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 32.0),
      child: Column(
        children: [
          Spacer(),
          Text(
            '失敗',
            style: TextStyle(
              fontSize: 50.0,
              color: MyColors.primary4,
            ),
          ),
          Spacer(),
          Image.asset(
            'assets/images/failure.png',
            height: 125.0,
          ),
          Spacer(flex: 2),
          BlocBuilder<QRCodeBloc, QRCodeState>(builder: (context, state) {
            return Text(
              (state as QRCodeFailure).error,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            );
          }),
          Spacer(),
          MyFlatButton(
            onPressed: () =>
                BlocProvider.of<QRCodeBloc>(context).add(RetryButtonPressed()),
            text: '重新嘗試',
            stream: Stream.value(true),
            color: MyColors.redGradient,
          ),
          Spacer(flex: 2),
        ],
      ),
    );
  }
}
