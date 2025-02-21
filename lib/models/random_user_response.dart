class RandomUserResponse {
  final List<User> results;

  RandomUserResponse({
    required this.results,
  });

  factory RandomUserResponse.fromJson(dynamic json) {
    final resultsJson = json['results'] as List<dynamic>;
    return RandomUserResponse(
      results: resultsJson.map((e) => User.fromJson(e)).toList(),
    );
  }

  Map<String, dynamic> toJson() => {
        'results': results.map((user) => user.toJson()).toList(),
      };
}

class User {
  final String gender;
  final Name name;
  final Location location;
  final String email;
  final Login login;
  final Dob dob;
  final Registered registered;
  final String phone;
  final String cell;
  final Id id;
  final Picture picture;
  final String nat;

  User({
    required this.gender,
    required this.name,
    required this.location,
    required this.email,
    required this.login,
    required this.dob,
    required this.registered,
    required this.phone,
    required this.cell,
    required this.id,
    required this.picture,
    required this.nat,
  });

  factory User.fromJson(dynamic json) {
    return User(
      gender: json['gender'] as String,
      name: Name.fromJson(json['name']),
      location: Location.fromJson(json['location']),
      email: json['email'] as String,
      login: Login.fromJson(json['login']),
      dob: Dob.fromJson(json['dob']),
      registered: Registered.fromJson(json['registered']),
      phone: json['phone'] as String,
      cell: json['cell'] as String,
      id: Id.fromJson(json['id']),
      picture: Picture.fromJson(json['picture']),
      nat: json['nat'] as String,
    );
  }

  Map<String, dynamic> toJson() => {
        'gender': gender,
        'name': name.toJson(),
        'location': location.toJson(),
        'email': email,
        'login': login.toJson(),
        'dob': dob.toJson(),
        'registered': registered.toJson(),
        'phone': phone,
        'cell': cell,
        'id': id.toJson(),
        'picture': picture.toJson(),
        'nat': nat,
      };
}

// Nested classes for User

class Name {
  final String title;
  final String first;
  final String last;

  Name({required this.title, required this.first, required this.last});

  factory Name.fromJson(dynamic json) {
    return Name(
      title: json['title'] as String,
      first: json['first'] as String,
      last: json['last'] as String,
    );
  }

  Map<String, dynamic> toJson() => {
        'title': title,
        'first': first,
        'last': last,
      };
}

class Location {
  final Street street;
  final String city;
  final String state;
  final String country;
  final dynamic postcode;
  final Coordinates coordinates;
  final TimeZone timezone;

  Location({
    required this.street,
    required this.city,
    required this.state,
    required this.country,
    required this.postcode,
    required this.coordinates,
    required this.timezone,
  });

  factory Location.fromJson(dynamic json) {
    return Location(
      street: Street.fromJson(json['street'] as Map<String, dynamic>),
      city: json['city'] as String,
      state: json['state'] as String,
      country: json['country'] as String,
      postcode: json['postcode'],
      // keep it dynamic
      coordinates:
          Coordinates.fromJson(json['coordinates'] as Map<String, dynamic>),
      timezone: TimeZone.fromJson(json['timezone'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() => {
        'street': street.toJson(),
        'city': city,
        'state': state,
        'country': country,
        'postcode': postcode,
        'coordinates': coordinates.toJson(),
        'timezone': timezone.toJson(),
      };
}

class Street {
  final int number;
  final String name;

  Street({required this.number, required this.name});

  factory Street.fromJson(Map<String, dynamic> json) {
    return Street(
      number: json['number'] as int,
      name: json['name'] as String,
    );
  }

  Map<String, dynamic> toJson() => {
        'number': number,
        'name': name,
      };
}

class Coordinates {
  final String latitude;
  final String longitude;

  Coordinates({required this.latitude, required this.longitude});

  factory Coordinates.fromJson(Map<String, dynamic> json) {
    return Coordinates(
      latitude: json['latitude'] as String,
      longitude: json['longitude'] as String,
    );
  }

  Map<String, dynamic> toJson() => {
        'latitude': latitude,
        'longitude': longitude,
      };
}

class TimeZone {
  final String offset;
  final String description;

  TimeZone({required this.offset, required this.description});

  factory TimeZone.fromJson(Map<String, dynamic> json) {
    return TimeZone(
      offset: json['offset'] as String,
      description: json['description'] as String,
    );
  }

  Map<String, dynamic> toJson() => {
        'offset': offset,
        'description': description,
      };
}

class Login {
  final String uuid;
  final String username;
  final String password;
  final String salt;
  final String md5;
  final String sha1;
  final String sha256;

  Login({
    required this.uuid,
    required this.username,
    required this.password,
    required this.salt,
    required this.md5,
    required this.sha1,
    required this.sha256,
  });

  factory Login.fromJson(dynamic json) {
    return Login(
      uuid: json['uuid'] as String,
      username: json['username'] as String,
      password: json['password'] as String,
      salt: json['salt'] as String,
      md5: json['md5'] as String,
      sha1: json['sha1'] as String,
      sha256: json['sha256'] as String,
    );
  }

  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'username': username,
        'password': password,
        'salt': salt,
        'md5': md5,
        'sha1': sha1,
        'sha256': sha256,
      };
}

class Dob {
  final String date;
  final int age;

  Dob({required this.date, required this.age});

  factory Dob.fromJson(dynamic json) {
    return Dob(
      date: json['date'] as String,
      age: json['age'] as int,
    );
  }

  Map<String, dynamic> toJson() => {
        'date': date,
        'age': age,
      };
}

class Registered {
  final String date;
  final int age;

  Registered({required this.date, required this.age});

  factory Registered.fromJson(dynamic json) {
    return Registered(
      date: json['date'] as String,
      age: json['age'] as int,
    );
  }

  Map<String, dynamic> toJson() => {
        'date': date,
        'age': age,
      };
}

class Id {
  final String name;
  final String? value;

  Id({required this.name, this.value});

  factory Id.fromJson(dynamic json) {
    return Id(
      name: json['name'] as String,
      value: json['value'] == null ? null : json['value'] as String,
    );
  }

  Map<String, dynamic> toJson() => {
        'name': name,
        'value': value,
      };
}

class Picture {
  final String large;
  final String medium;
  final String thumbnail;

  Picture({
    required this.large,
    required this.medium,
    required this.thumbnail,
  });

  factory Picture.fromJson(dynamic json) {
    return Picture(
      large: json['large'] as String,
      medium: json['medium'] as String,
      thumbnail: json['thumbnail'] as String,
    );
  }

  Map<String, dynamic> toJson() => {
        'large': large,
        'medium': medium,
        'thumbnail': thumbnail,
      };
}
