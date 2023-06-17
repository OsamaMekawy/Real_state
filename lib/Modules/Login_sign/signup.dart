import 'package:buildcondition/buildcondition.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:realstate/core/compounts.dart';


class RegisterScreen extends StatelessWidget {
  var emailController = TextEditingController();
  var PasswordController = TextEditingController();
  var nameController = TextEditingController();
  var phoneController = TextEditingController();

  var formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
            appBar: AppBar(),
            body: Center(
              child: SingleChildScrollView(
                child: Form(
                  key: formkey,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Register",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                        // SizedBox(
                        //   height: 20,
                        // ),
                        // Text(
                        //   "register in our braows to enjoy Matches ",
                        //   style: TextStyle(fontSize: 13, color: Colors.grey),
                        // ),
                        SizedBox(
                          height: 30,
                        ),
                        defultForm(
                            controller: nameController,
                            type: TextInputType.name,
                            lable: "Enter your Name",
                            prefix: Icons.person),
                        SizedBox(
                          height: 20,
                        ),
                        defultForm(
                            controller: phoneController,
                            type: TextInputType.phone,
                            lable: "Enter your Phone",
                            prefix: Icons.phone),
                        SizedBox(
                          height: 20,
                        ),
                        defultForm(
                            controller: emailController,
                            type: TextInputType.emailAddress,
                            lable: "Enter your Email",
                            prefix: Icons.mail_outline),
                        SizedBox(
                          height: 20,
                        ),
                        defultForm(
                            controller: PasswordController,
                            type: TextInputType.visiblePassword,
                            lable: "Enter your password",
                            prefix: Icons.lock,
                            isPassword: true,
                            sufix: Icons.visibility),
                        SizedBox(
                          height: 20,
                        ),
                        defult_Button(text: "register", function: (){

                        })
                        // BuildCondition(
                        //     condition: state != RegisterLodiningState(),
                        //     builder: (context) => defult_Button(
                        //         text: "register",
                        //         function: () {
                        //
                        //           if (formkey.currentState!.validate()) {
                        //             print(nameController.text);
                        //
                        //             AppCubit.get(context).userRegister(
                        //                 email: emailController.text,
                        //                 password: PasswordController.text,
                        //                 name: nameController.text,
                        //                 phone: phoneController.text);
                        //           }
                        //           navigateTo(context, LayoutScreen());
                        //         },
                        //         isUpperCase: true),
                        //     fallback: (context) => Center(
                        //           child: CircularProgressIndicator(),
                        //         )),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );


  }
}
