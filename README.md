# blog_app

A new Flutter project.

## Getting Started
1. make Auth structure features(auth(data, domain, presentation))
2. change app name to Blog App in main.dart
3. make signup page in signup_page.dart (auth/presentation/pages/signup_page.dart)
### Central Theme
1. make central color in app_palette.dart (core/theme/app_palette.dart)
#### app_palette.dart (core/theme/app_palette.dart)
import 'package:flutter/material.dart';

class AppPallete {
  static const Color backgroundColor = Color.fromRGBO(24, 24, 32, 1);
  static const Color gradient1 = Color.fromRGBO(187, 63, 221, 1);
  static const Color gradient2 = Color.fromRGBO(251, 109, 169, 1);
  static const Color gradient3 = Color.fromRGBO(255, 159, 124, 1);
  static const Color borderColor = Color.fromRGBO(52, 51, 67, 1);
  static const Color whiteColor = Colors.white;
  static const Color greyColor = Colors.grey;
  static const Color errorColor = Colors.redAccent;
  static const Color transparentColor = Colors.transparent;
}
#### app_theme.dart (core/theme/app_theme.dart)
class AppTheme {
  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: AppPalette.backgroundColor,);
}
add main.dart --> theme: AppTheme.darkTheme,
### Signup Page
1. make signup page in signup_page.dart (auth/presentation/pages/signup_page.dart) StatefulWidget (cuz textformfield controller and needed to dispose it) ==> dispose method only in stateful widget
[signup_page.dart](file:///C:/Users/ealsa/OneDrive/Documents/blog_app/lib/features/auth/presentation/pages/signup_page.dart)
2. make reusable widget auth_field.dart (auth/presentation/widgets/auth_field.dart)
- hintText 
[auth_field.dart](file:///C:/Users/ealsa/OneDrive/Documents/blog_app/lib/features/auth/presentation/widgets/auth_field.dart)
3. InputDecorationTheme for auth_field.dart textformfield
[app_theme.dart](file:///C:/Users/ealsa/OneDrive/Documents/blog_app/lib/core/theme/app_theme.dart)
- adding _border method for textformfield enabled and focused
...
**_border([Color color = AppPalette.borderColor])** add default value between []

## Auth Repository
1. make auth_repository.dart (auth/domain/repository/auth_repository.dart)
abstract interface class AuthRepository {}
2. add fpdart package to use either (sucess or falier ) return type
3. add failure.dart (core/error/failures.dart)
4. Future<Either<Failure, String>> future get data from internet
## Signin Supabase create project and add supabase package