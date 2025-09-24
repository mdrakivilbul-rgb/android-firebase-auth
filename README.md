# Android Firebase Authentication Project

This project provides a basic Android application with Firebase Email/Password authentication (Login and Sign Up) and a Welcome screen.

## Project Structure

- `app/src/main/java/com/rakib/com/MainActivity.java`: Handles user login and registration using Firebase Authentication.
- `app/src/main/java/com/rakib/com/WelcomeActivity.java`: Displays a welcome message after successful login and provides a logout option.
- `app/src/main/res/layout/activity_main.xml`: Layout for the login/signup screen.
- `app/src/main/res/layout/activity_welcome.xml`: Layout for the welcome screen.
- `app/google-services.json`: Firebase configuration file (already included based on your provided details).
- `build.gradle` (project-level) and `app/build.gradle` (module-level): Gradle build scripts with necessary Firebase dependencies.

## How to Build the APK from Terminal

You can build the APK file directly from your terminal without needing Android Studio. Follow these steps:

### Prerequisites

1.  **Java Development Kit (JDK):** Ensure you have JDK 11 or higher installed on your system. You can check your version with `java -version`.
2.  **Git:** To clone the repository.

### Steps

1.  **Clone the Repository:**
    Open your terminal and clone this GitHub repository:
    ```bash
    git clone https://github.com/mdrakivilbul-rgb/android-firebase-auth.git
    ```

2.  **Navigate to the Project Directory:**
    Change your current directory to the cloned project folder:
    ```bash
    cd android-firebase-auth
    ```

3.  **Make Gradle Wrapper Executable (if necessary):**
    Ensure the `gradlew` script has executable permissions:
    ```bash
    chmod +x gradlew
    ```

4.  **Build the Debug APK:**
    Run the following command to build the debug APK. This will download all necessary Gradle dependencies and compile the project.
    ```bash
    ./gradlew assembleDebug
    ```
    *For Windows users, use `gradlew.bat assembleDebug`.*

5.  **Locate the APK:**
    Once the build is successful, you will find the `app-debug.apk` file in the following directory:
    ```
    app/build/outputs/apk/debug/app-debug.apk
    ```
    You can then install this APK on your Android device or emulator for testing.

## Firebase Setup Notes

- The `google-services.json` file is already included in the `app/` directory with the configuration you provided.
- Ensure that you have enabled Email/Password authentication in your Firebase project's Authentication section.

Enjoy your Android app!

