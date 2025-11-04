// lib/services/supabase_service.dart
// Handles initialization and provision of the Supabase client throughout the app.

import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseService {
  // TODO: Replace with your actual Supabase project URL and public anon key.
  // For security, consider using environment variables or secure storage.
  static const String supabaseUrl = 'YOUR_SUPABASE_URL';
  static const String supabaseAnonKey = 'YOUR_SUPABASE_ANON_KEY';

  /// Initialize Supabase with the provided credentials.
  /// This should be called once at app startup before any Supabase operations.
  static Future<void> init() async {
    await Supabase.initialize(
      url: supabaseUrl,
      anonKey: supabaseAnonKey,
      // Optionally configure additional parameters like _persistSession, _detectSessionInUrl, etc.
    );
  }

  /// Provides a singleton SupabaseClient instance for performing auth, database, storage, etc.
  static SupabaseClient get client => Supabase.instance.client;
}
