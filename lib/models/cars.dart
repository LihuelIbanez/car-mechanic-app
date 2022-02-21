class Cars {
  
  String? mark;
  int? model;
  String? patent;
  int? year;
  String? color;

  Cars({ 
    this.mark, 
    this.model, 
    this.patent,
    this.year,
    this.color,
  });

  Cars.fromJson(Map<String, dynamic> json) {
    mark    = json['Mark'];
    model   = json['Model'];
    patent  = json['Patent'];
    year    = json['Year'];
    color   = json['Color'];
  }


  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Mark']   = mark;
    data['Model']  = model;
    data['Patent'] = patent;
    data['Year']   = year;
    data['Color']  = color;
    return data;
  }

}