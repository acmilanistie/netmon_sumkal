import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/halaman_login_controller.dart';

class HalamanLoginView extends GetView<HalamanLoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade200,
      body: Container(
        width: context.width,
        height: context.height,
        child: Form(
          key: controller.loginFormKey,
          autovalidateMode: controller.sudahPencet.value == 0
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
                          child: Image.asset('assets/images/logo_yanti.png'),
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
                style: new TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w500,
                    fontSize: 16.0,
                    fontFamily: "Poppins"),
                controller: controller.emailController,
                decoration: InputDecoration(
                    hintStyle: TextStyle(
                      // fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w400,
                    ),
                    icon: Container(
                      height: 42.0,
                      width: 42.0,
                      decoration: BoxDecoration(
                          color: Colors.blueGrey.shade200,
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
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
                    hintText: "Email tanpa pusat/"),
              ),
              Container(
                height: 20.0,
              ),
              TextFormField(
                validator: (value) {
                  return controller.validatePassword(value!);
                },
                style: new TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w500,
                    fontSize: 16.0,
                    fontFamily: "Poppins"),
                controller: controller.passwordController,
                // obscureText: _obscureTextLogin,
                decoration: InputDecoration(
                    hintStyle: TextStyle(
                      // fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w400,
                    ),
                    icon: Container(
                      height: 42.0,
                      width: 42.0,
                      decoration: BoxDecoration(
                          color: Colors.blueGrey.shade200,
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
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
                        // onTap: _toggleLogin,
                        // child: Icon(
                        //   FontAwesomeIcons.eye,
                        //   size: 15.0,
                        //   color: Colors.black,
                        // ),
                        ),
                    hintText: "Password"),
              ),
              Container(
                height: 90.0,
              ),
              Container(
                height: 75.0,
                child: Center(
                  child: Container(
                    child: InkWell(
                      onTap: () {
                        // _sendToServer();
                      },
                      child: NeumorphicContainer(
                          color: Colors.blueGrey.shade200,
                          child: statusKlik == 0
                              ? Text(
                                  'LOGIN LDAP',
                                  style: Typography.blackCupertino.display2,
                                )
                              : Text(
                                  'Connecting..',
                                  style: Typography.blackCupertino.display2,
                                )),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
