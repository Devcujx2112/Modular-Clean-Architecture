// ignore_for_file: file_names

import 'package:injectable/injectable.dart';
import 'package:datastore/provider/SesstionProvider.dart';

@Injectable(as: SesstionProvider, env: [Environment.prod])
class ProdSessionProviderImpl extends SesstionProvider {
  @override
  String getAccessToken() {
    return "Get Access Token Prod";
  }

  @override
  String getCliendId() {
    return "Get Client Id Prod";
  }

  @override
  String getRefreshToken() {
    return "Get Refresh Token Prod";
  }

  @override
  String getUserId() {
    return "Get User Id Prod";
  }
}

@Injectable(as: SesstionProvider, env: [Environment.dev])
class DevSessionProviderImpl extends SesstionProvider {
  @override
  String getAccessToken() {
    return "Get Access Token Dev";
  }

  @override
  String getCliendId() {
    return "Get Client Id Dev";
  }

  @override
  String getRefreshToken() {
    return "Get Refresh Token Dev";
  }

  @override
  String getUserId() {
    return "Get User Id Dev";
  }
}
