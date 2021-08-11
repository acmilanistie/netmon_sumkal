import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:netmon_sumkal/app/widget/long_button.dart';
import 'package:netmon_sumkal/app/widget/neumorphicContainer.dart';
import '../controllers/halaman_login_controller.dart';

class HalamanLoginView extends GetView<HalamanLoginController> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: controller.appValueNotifier.valueNotifier,
      builder: (BuildContext context, value, Widget? child) {
        return Scaffold(
          backgroundColor: Colors.blueGrey.shade200,
          body: Container(
            height: MediaQuery.of(context).size.height,
            child: Form(
              key: controller.loginFormKey,
              autovalidateMode: controller.autoValidasi.value == 0
                  ? null
                  : AutovalidateMode.onUserInteraction,
              child: ListView(
                shrinkWrap: true,
                padding: EdgeInsets.only(left: 35.0, right: 35.0),
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.width * 0.2,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 80),
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Card(
                            color: Colors.blueGrey.shade200,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40),
                            ),
                            elevation: 20.0,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child:
                                  Image.asset('assets/images/logo_yanti.png'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 55.0,
                  ),
                  TextFormField(
                    validator: (value) {
                      return controller.validateEmail(value!);
                    },
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontFamily: 'OpenSans',
                      letterSpacing: 1.2,
                    ),
                    controller: controller.emailController,
                    decoration: InputDecoration(
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontFamily: 'OpenSans',
                          letterSpacing: 2.0,
                        ),
                        icon: Container(
                          height: 42.0,
                          width: 42.0,
                          decoration: BoxDecoration(
                              color: Colors.blueGrey.shade200,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.0)),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black45,
                                    offset: Offset(2.0, 2.0),
                                    blurRadius: 6.0,
                                    spreadRadius: 1.0),
                                BoxShadow(
                                    color: Colors.white70,
                                    offset: Offset(-2.0, -2.0),
                                    blurRadius: 6.0,
                                    spreadRadius: 1.0)
                              ]),
                          child: Icon(
                            Icons.person_outline,
                            color: Colors.blueAccent,
                            size: 32.0,
                          ),
                        ),
                        hintText: "email"),
                  ),
                  Container(
                    height: 20.0,
                  ),
                  TextFormField(
                    validator: (value) {
                      return controller.validatePassword(value!);
                    },
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontFamily: 'OpenSans',
                      letterSpacing: 1.2,
                    ),
                    controller: controller.passwordController,
                    obscureText: value == true ? true : false,
                    decoration: InputDecoration(
                        hintStyle: TextStyle(
                          fontFamily: 'OpenSans',
                          fontWeight: FontWeight.w400,
                          letterSpacing: 2.0,
                        ),
                        icon: Container(
                          height: 42.0,
                          width: 42.0,
                          decoration: BoxDecoration(
                              color: Colors.blueGrey.shade200,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.0)),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black45,
                                    offset: Offset(2.0, 2.0),
                                    blurRadius: 6.0,
                                    spreadRadius: 1.0),
                                BoxShadow(
                                    color: Colors.white70,
                                    offset: Offset(-2.0, -2.0),
                                    blurRadius: 6.0,
                                    spreadRadius: 1.0)
                              ]),
                          child: Icon(
                            Icons.lock_outline,
                            color: Colors.redAccent,
                            size: 32.0,
                          ),
                        ),
                        suffixIcon: GestureDetector(
                          onTap: () =>
                              controller.appValueNotifier.incrementNotifier(),
                          child: Icon(
                            FontAwesomeIcons.eye,
                            size: 20.0,
                            color: Colors.black,
                          ),
                        ),
                        hintText: "password"),
                  ),
                  Container(
                    height: 90.0,
                  ),
                  Obx(
                    () => Container(
                      child: controller.berhasilLogin > 0
                          ? longButtons(
                              "Authenticating..",
                              () {},
                              true,
                              16,
                              Lottie.asset('assets/images/pln.json',
                                  height: 45))
                          : longButtons(
                              "Login",
                              () => controller.checkLogin,
                              true,
                              18,
                              ImageIcon(
                                AssetImage("assets/images/ic_forward.png"),
                                size: 30,
                                color: Colors.white,
                              )),
                    ),
                  ),
                  // Container(
                  //   height: 75.0,
                  //   child: Center(
                  //     child: Container(
                  //       child: InkWell(
                  //         onTap: () {
                  //           controller.checkLogin();
                  //         },
                  //         child: NeumorphicContainer(
                  //             key: controller.tombolFormKey,
                  //             color: Colors.blueGrey.shade200,
                  //             child: Text(
                  //               'LOGIN LDAP',
                  //               style: Typography.blackCupertino.display2,
                  //             )),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
