import 'package:coastertest/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final nameController = TextEditingController(text: "Anna Avetisyan");
  final birthdayController = TextEditingController(text: "");
  final phoneController = TextEditingController(text: "818 123 4567");
  final instagramController = TextEditingController(text: "");
  final mailController = TextEditingController(text: "info@aplusdesing.co");
  final passwordController = TextEditingController(text: "");

  void _addListeners() {
    nameController.addListener(() {
      setState(() {});
    });
    birthdayController.addListener(() {
      setState(() {});
    });
    phoneController.addListener(() {
      setState(() {});
    });
    instagramController.addListener(() {
      setState(() {});
    });
    mailController.addListener(() {
      setState(() {});
    });
    passwordController.addListener(() {
      setState(() {});
    });
  }

  @override
  void initState() {
    super.initState();
    _addListeners();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 330,
              child: Stack(
                children: [
                  SizedBox(
                    height: 270,
                    width: MediaQuery.of(context).size.width,
                    child: Container(
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              ImageConstant.imgGroup1,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 170,
                    left: 0,
                    right: 0,
                    child: CircleAvatar(
                        radius: 75,
                        backgroundColor: Colors.grey[350],
                        child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 70,
                            child: Icon(
                              FontAwesomeIcons.userAstronaut,
                              color: Color.fromARGB(255, 97, 17, 177),
                              size: 90,
                            ))),
                  ),
                  Positioned(
                      top: 45,
                      left: 25,
                      child: Icon(FontAwesomeIcons.arrowLeftLong,
                          size: 30, color: Colors.white)),
                  Positioned(
                      top: 100,
                      left: 0,
                      right: 0,
                      child: Center(
                        child: Text('Anna Avetisyan',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                            )),
                      ))
                ],
              ),
            ),
            _textFormField(
                icon: FontAwesomeIcons.user,
                label: "Name",
                controller: nameController),
            Divider(
              height: 1,
              thickness: 1,
            ),
            _textFormField(
                icon: FontAwesomeIcons.calendarMinus,
                label: "Birthday",
                controller: birthdayController),
            Divider(
              height: 1,
              thickness: 1,
            ),
            _textFormField(
                icon: FontAwesomeIcons.mobileScreen,
                label: "818 123 4567",
                controller: phoneController),
            Divider(
              height: 1,
              thickness: 1,
            ),
            _textFormField(
                icon: FontAwesomeIcons.instagram,
                label: "Instagram account",
                controller: instagramController),
            Divider(
              height: 1,
              thickness: 1,
            ),
            _textFormField(
                icon: FontAwesomeIcons.envelope,
                label: "info@aplusdesing.co",
                controller: mailController),
            Divider(
              height: 1,
              thickness: 1,
            ),
            _textFormField(
                icon: FontAwesomeIcons.eye,
                label: "password",
                controller: passwordController,
                suffixIcon: FontAwesomeIcons.sync),
            Divider(
              height: 1,
              thickness: 1,
            ),
            SizedBox(height: 24),
            InkWell(
                onTap: () {},
                child: Ink(
                    height: 60,
                    width: MediaQuery.of(context).size.width - 100,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 97, 17, 177),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                        child: Text(
                      "Edit profile",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    )))),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }

  Widget _textFormField(
      {required IconData icon,
      IconData? suffixIcon,
      required String label,
      required TextEditingController controller,
      void Function(String text)? onChange}) {
    return TextField(
      autofocus: false,
      controller: controller,
      decoration: InputDecoration(
        prefixIcon: Container(
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.only(right: 20),
          child: Icon(
            icon,
            color: Color.fromARGB(255, 97, 17, 177),
            size: 27,
          ),
        ),
        suffixIcon: suffixIcon != null
            ? Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.only(right: 20),
                child: Icon(
                  suffixIcon,
                  color: Colors.grey[350],
                  size: 27,
                ),
              )
            : null,
        label: controller.text.isEmpty ? Text(label) : SizedBox(),
      ),
      onChanged: onChange,
    );
  }
}
