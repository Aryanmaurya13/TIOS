# Flutter Chat App Documentation
# Project Structure
The project is organized into various folders and files in the 'lib' directory:
1. api
- Api.dart: Contains the `Api` class responsible for handling Firebase messaging, Firestore, and other
  API-related functionalities.
2. assets
- images: Folder containing all the images used in the project.
3. Helper
- Dialog.dart: Contains the `Dialog` class with methods for displaying snackbar and progress bar.
- MyDetails.dart: Handles the parsing of date and time.
4. models
- ChatUser.dart: Model class for representing chat users.
- Message.dart: Model class for representing chat messages.
5. Screens
- authScreens
- LoginScreen.dart: The login screen of the application.
- FirebaseFunctionality
- Authentication.dart: Contains the code for Google authentication.
6. widgets
- ChatUserCard.dart: Widget for displaying information about a chat user.
- MessageCard.dart: Widget for displaying chat messages.
- Dialogs
- ProfileDialog.dart: Widget for displaying a profile dialog.
7. main.dart: The entry point of the Flutter application.
8. firebase_options.dart: Configuration file containing Firebase options.
## Running the Flutter Chat App
Prerequisites
1. [Flutter](https://flutter.dev/docs/get-started/install) installed on your machine.
2. [Firebase](https://firebase.google.com/) account with a configured project.
   Steps
1. Clone the Repository:
- Clone the Flutter Chat App repository to your local machine.

git clone https://github.com/yash1711v/ChatMate.git

2. Navigate to the Project Directory:
- Change your working directory to the root of the project.

cd your-flutter-chat-app

3. Install Dependencies:
- Run the following command to install the project dependencies.

flutter pub get

4. Configure Firebase:
- Follow the [Firebase setup documentation](https://firebase.google.com/docs/flutter/setup) to add
  your Flutter app to Firebase.
- Download the `google-services.json` file (for Android) and `GoogleService-Info.plist` file (for iOS) from
  the Firebase Console.
- Place these files in the appropriate directories: `android/app` for Android and the root of the Xcode
  project for iOS.
5. Run the App:
- Connect your device or use an emulator/simulator.
- Run the following command to launch the app.

flutter run

This will compile the app and install it on the connected device or emulator.
6. Explore the App:
- Once the app is installed and running, explore the different screens and functionalities.
- Use the login screen to authenticate with Google.
7. Test Firebase Functionality:
- Ensure that Firebase functionality, such as messaging and Firestore, is working correctly.
8. Enjoy Chatting!
- Engage with the chat functionality and explore the features of your Flutter Chat App.
  Additional Notes
- If you encounter any issues during the setup or run process, refer to the Flutter and Firebase
  documentation for troubleshooting.
- Make sure your development environment is correctly configured for both Android and iOS platforms.
  Note:- In app Home screen You can add my id
  yv48183@gmail.com for chating and testing
  purpose 