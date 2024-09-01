# authentication App ✅

# authentication_with_API_app
 Authentication Application with API Integration and BLoC State Managment

# Introduction in application
In today’s digital landscape, secure access to applications is paramount. **Authentication** is a robust mobile application designed to ensure user data security and privacy by offering a seamless authentication process. By integrating with a powerful **API Back-end**, this app delivers a reliable and efficient solution for managing user login and registration, making it an essential tool for any application requiring strong authentication measures.

# Comprehensive Description:
**Authentication** is a fully-featured mobile application that provides a secure and user-friendly platform for handling user authentication. It leverages a backend API to validate and manage user credentials, ensuring that sensitive information is handled with the utmost security.

# Technology application
    - Flutter Framework
    - Dart Language 

# Architecture Pattern
    Clean Architecture 

# State Management
    BLoc/Cubit Statemanagement

# Key Features:

1. # Login Functionality:
   - **Authentication** offers a straightforward and intuitive user interface for logging in, where users can enter their credentials (email/username and password) with ease.
   - The entered credentials are securely transmitted to the **API Back-end**, where they are validated against the stored user data.
   - Upon successful validation, users are granted access to the application. In case of incorrect credentials, the app provides immediate feedback to the user through detailed error messages.

2. **User Registration Process**:
   - The application allows new users to register quickly by entering the required details (name, email, password, etc.).
   - Once submitted, the registration data is sent to the **API Back-end** for processing, where it is checked for validity (e.g., ensuring the email is unique and the password meets security requirements).
   - Upon successful registration, users can proceed to log in immediately, and a confirmation email may be sent to verify their account.

3. **Error Messaging from the Server**:
   - To enhance the user experience, **Authentication** features a comprehensive error messaging system that displays clear and actionable error messages when users enter invalid data.
   - These error messages are generated based on responses from the **API Back-end**, helping users quickly identify and correct issues such as weak passwords, already registered emails, or incorrect login credentials.
   - This feature ensures that users are well-informed of any problems and can take appropriate steps to resolve them.

# Conclusion:
**Authentication** is more than just a login tool; it is your gateway to secure and reliable access management in the digital realm. With its robust **API Back-end** integration and advanced features for user authentication, it provides a superior user experience that balances ease of use with comprehensive security.

# Screens
[1] Sign In Screen
[2] Sign Up Screens
[3] Profile Screen

# Create Screen Done
[1] Sign In Screen
[2] Sign Up Screen
[3] Profile Screen

# Screenshots


# packages & Dependencies
  cupertino_icons: ^1.0.2
  flutter_bloc: ^8.1.6
  image_picker: ^1.0.4
  dio: ^5.5.0+1
  jwt_decoder: ^2.0.1
  shared_preferences: ^2.2.2
  dartz: ^0.10.1
  flutter_svg: ^2.0.5

# Directory Structure & Design System

lib
├───core
│   ├───api
│   ├───cache
│   ├───errors
│   └───functions
├───data
│   ├───models
│   └───repositories
├───logic
│   └───functions
├───data
│   ├───models
│   └───repositories
├───logic
├───data
│   ├───models
│   └───repositories
├───logic
│   └───repositories
├───logic
├───logic
│   ├───bloc
│   └───cubit
└───view
    ├───screens
    └───widgets
