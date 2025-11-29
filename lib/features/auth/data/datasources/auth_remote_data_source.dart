import 'package:blog_app/core/error/exception.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract interface class AuthRemoteDataSource {
  Future<String> signInWithEmailPassword({
    required String email,
    required String password,
  });
  Future<String> signUpWithEmailPassword({
    required String name,
    required String email,
    required String password,
  });
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final SupabaseClient supabase;
  AuthRemoteDataSourceImpl({required this.supabase});
  @override
  Future<String> signInWithEmailPassword({
    required String email,
    required String password,
  }) {
    // TODO: implement signInWithEmailPassword
    throw UnimplementedError();
  }

  @override
  Future<String> signUpWithEmailPassword({
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      final result = await supabase.auth.signUp(
        email: email,
        password: password,
        data: {"name": name},
      );
      if (result.user == null) {
        throw ServerException("User is null");
      }
      return result.user!.id;
    } catch (e) {
      throw ServerException(e.toString());
    }
  }
}
