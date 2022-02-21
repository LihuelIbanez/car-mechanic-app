class User {

  String? firstname;
  int? lastname;
  int? id;
  String? email;
  String? adress;
  String? state;
  String? city;
  int? phone;

  User({
    this.firstname,
    this.lastname,
    this.id,
    this.email,
    this.adress,
    this.state,
    this.city,
    this.phone,
  });

  User.fromJson(Map<String, dynamic> json) {
    firstname   = json['Firstname'];
    lastname    = json['Lastname'];
    id          = json['Id'];
    email       = json['Email'];
    adress      = json['Adress'];
    state       = json['State'];
    city        = json['City'];
    phone       = json['Phone'];
  }


  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Firtstname']  = firstname;
    data['Lastname']    = lastname;
    data['Id']          = id;
    data['Email']       = email;
    data['Adress']      = adress;
    data['State']       = state;
    data['City']        = city;
    data['Phone']       = phone;
    return data;
  }
}
