import 'package:authentication_app/view/screens/profile_screen.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/api/dio_consumer.dart';
import '../../data/repositories/user_repository.dart';
import '../../logic/cubit/user_cubit.dart';
import '../../logic/cubit/user_state.dart';
import '../widgets/custom_form_button.dart';
import '../widgets/custom_input_field.dart';
import '../widgets/dont_have_an_account.dart';
import '../widgets/forget_password_widget.dart';
import '../widgets/page_header_sign_in.dart';
import '../widgets/page_heading.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: BlocProvider(
        create: (BuildContext context) =>
            UserCubit(UserRepository(api: DioConsumer(dio: Dio()))),
        child: BlocConsumer<UserCubit, UserState>(
          listener: (context, state) {
            if (state is SignInSuccess) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("Success"),
                ),
              );
              context.read<UserCubit>().getUserProfile();
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProfileScreen(),
                ),
              );
            } else if (state is SignInFailure) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.errMessage),
                ),
              );
            }
          },
          builder: (context, state) {
            return Scaffold(
              backgroundColor: const Color(0xffEEF1F3),
              body: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                child: Column(
                  children: [
                    const PageHeaderSignIn(),
                    Expanded(
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Color(0xffEEF1F3),
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(20),
                          ),
                        ),
                        child: SingleChildScrollView(
                          physics: const BouncingScrollPhysics(),
                          child: Form(
                            key: context.read<UserCubit>().signInFormKey,
                            child: Column(
                              children: [
                                const PageHeading(title: 'Sign-in'),
                                //!Email
                                CustomInputField(
                                  labelText: 'Email',
                                  hintText: 'Your email',
                                  controller:
                                      context.read<UserCubit>().signInEmail,
                                ),
                                const SizedBox(height: 16),
                                //!Password
                                CustomInputField(
                                  labelText: 'Password',
                                  hintText: 'Your password',
                                  obscureText: true,
                                  suffixIcon: true,
                                  controller:
                                      context.read<UserCubit>().signInPassword,
                                ),
                                const SizedBox(height: 16),
                                //! Forget password?
                                ForgetPasswordWidget(size: size),
                                const SizedBox(height: 20),
                                //!Sign In Button
                                state is SignInLoading
                                    ? const CircularProgressIndicator()
                                    : CustomFormButton(
                                        innerText: 'Sign In',
                                        onPressed: () {
                                          context.read<UserCubit>().signIn();
                                        },
                                      ),
                                const SizedBox(height: 18),
                                //! Dont Have An Account ?
                                DontHaveAnAccountWidget(size: size),
                                const SizedBox(height: 20),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
