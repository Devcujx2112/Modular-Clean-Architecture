// ignore_for_file: file_names

abstract class SesstionProvider{
  String getCliendId();
  String getUserId();
  String getAccessToken();
  String getRefreshToken();
}