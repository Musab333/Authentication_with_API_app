import '../../data/models/user_model.dart';

class UserState {}

class UserInitial extends UserState {}

class SignInSuccess extends UserState {}

class UploadProfilePic extends UserState {}

class SignInLoading extends UserState {}

class SignInFailure extends UserState {
  final String errMessage;

  SignInFailure({required this.errMessage});
}

class SignUpSuccess extends UserState {
  final String message;

  SignUpSuccess({required this.message});
}

class SignUpLoading extends UserState {}

class SignUpFailure extends UserState {
  final String errMessage;

  SignUpFailure({required this.errMessage});
}

class GetUserSuccess extends UserState {
  final UserModel user;

  GetUserSuccess({required this.user});
}

class GetUserLoading extends UserState {}

class GetUserFailure extends UserState {
  final String errMessage;

  GetUserFailure({required this.errMessage});
}
