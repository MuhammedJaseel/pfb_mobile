import 'package:flutter/material.dart';

class Loading extends StatelessWidget {
  final bool viewStatus;
  const Loading({Key? key, this.viewStatus = true}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const SizedBox(
              child: CircularProgressIndicator  (strokeWidth: 2,), width: 20, height: 20),
          if (viewStatus)
            const Padding(
                padding: EdgeInsets.only(top: 16), child: Text('Loading...'))
        ],
      ),
    );
  }
}
