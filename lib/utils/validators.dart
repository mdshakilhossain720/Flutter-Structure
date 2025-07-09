import 'package:flutter/material.dart';

class Validator {
  /// Required field
  static String? required({
    required String value,
    required String fieldName,
    required BuildContext context,
  }) {
    return value.trim().isEmpty ? '$fieldName is required' : null;
  }

  /// Email validation
  static String? email({
    required String value,
    required String fieldName,
    required BuildContext context,
  }) {
    if (value.trim().isEmpty) {
      return '$fieldName is required';
    }
    final regex = RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$');
    if (!regex.hasMatch(value)) {
      return 'Enter a valid $fieldName';
    }
    return null;
  }

  /// Phone number validation
  static String? phone({
    required String value,
    required String fieldName,
    required BuildContext context,
    int minLength = 10,
    int maxLength = 14,
  }) {
    if (value.trim().isEmpty) {
      return '$fieldName is required';
    }
    if (value.length < minLength) {
      return '$fieldName must be at least $minLength digits';
    }
    if (value.length > maxLength) {
      return '$fieldName must be at most $maxLength digits';
    }
    return null;
  }

  /// Password validation
  static String? password({
    required String value,
    required String fieldName,
    required BuildContext context,
    int minLength = 6,
  }) {
    if (value.trim().isEmpty) {
      return '$fieldName is required';
    }
    if (value.length < minLength) {
      return '$fieldName must be at least $minLength characters';
    }
    return null;
  }

  /// Confirm password
  static String? confirmPassword({
    required String value,
    required String original,
    required String fieldName,
    required BuildContext context,
  }) {
    if (value.trim().isEmpty) {
      return '$fieldName is required';
    }
    if (value != original) {
      return '$fieldName does not match';
    }
    return null;
  }

  /// Name validation (min 3 letters)
  static String? name({
    required String value,
    required String fieldName,
    required BuildContext context,
    int minLength = 3,
  }) {
    if (value.trim().isEmpty) {
      return '$fieldName is required';
    }
    if (value.length < minLength) {
      return '$fieldName must be at least $minLength characters';
    }
    return null;
  }

  /// Number only check (for age, amount etc.)
  static String? number({
    required String value,
    required String fieldName,
    required BuildContext context,
  }) {
    if (value.trim().isEmpty) {
      return '$fieldName is required';
    }
    if (double.tryParse(value) == null) {
      return '$fieldName must be a number';
    }
    return null;
  }
}
