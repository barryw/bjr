//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:BJR/api.dart';
import 'package:BJR/api/users_api.dart';
import 'package:test/test.dart';


/// tests for UsersApi
void main() {
  final instance = BJR().getUsersApi();

  group(UsersApi, () {
    // Creates a user
    //
    // Create a new user. Only root users are allowed to create new users.
    //
    //Future<SingleUserMessage> createUser({ UserNewIn userNewIn }) async
    test('test createUser', () async {
      // TODO
    });

    // Deletes a user
    //
    // Deletes a user. Only root users can delete other users.
    //
    //Future<SingleUserMessage> deleteUser(int id) async
    test('test deleteUser', () async {
      // TODO
    });

    // Retrieve a single user
    //
    // Retrieve a single user. If you're a non-root user, then you can only retrieve your own user.
    //
    //Future<SingleUserMessage> getUser(int id) async
    test('test getUser', () async {
      // TODO
    });

    // Retrieves users
    //
    // Get a list of users
    //
    //Future<UserArrayMessage> getUsers({ int perPage, int page }) async
    test('test getUsers', () async {
      // TODO
    });

    // Update a single user
    //
    // Update a single user. If you're a non-root users, then you can only update your own user.
    //
    //Future<SingleUserMessage> updateUser(int id, { UserUpdateIn userUpdateIn }) async
    test('test updateUser', () async {
      // TODO
    });

  });
}
