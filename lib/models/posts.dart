
class Post{
  String _username;
  String _location;
  String _image;
  String _post;

  Post([this._username, this._location, this._image, this._post]);

  String get post => _post;

  set post(String value) {
    _post = value;
  }

  String get image => _image;

  set image(String value) {
    _image = value;
  }

  String get location => _location;

  set location(String value) {
    _location = value;
  }

  String get username => _username;

  set username(String value) {
    _username = value;
  }


}