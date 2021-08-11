import 'package:flutter/material.dart';

MaterialButton longButtons(
    String title, Function fun, bool nampak, double ukuran, Widget gambar,
    {Color textColor: Colors.white}) {
  return MaterialButton(
    onPressed: fun(),
    textColor: textColor,
    child: Builder(builder: (BuildContext mContext) {
      return Padding(
        padding: EdgeInsets.only(bottom: 10),
        child: Stack(
          alignment: Alignment(1.0, 0.0),
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(mContext).size.width / 1.7,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
                gradient: LinearGradient(colors: [
                  Color(0xFF0EDED2),
                  Color(0xFF03A0FE),
                ], begin: Alignment.topLeft, end: Alignment.bottomRight),
              ),
              child: Text(title,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: ukuran,
                      fontWeight: FontWeight.w500)),
              padding: EdgeInsets.only(top: 16, bottom: 16),
            ),
            Visibility(
              visible: nampak,
              child: Padding(
                padding: EdgeInsets.only(right: 10),
                child: gambar,
              ),
            ),
          ],
        ),
      );
    }),
  );
}
