
class Services {
  
  bool?  oil;
  bool?  airFilter;
  bool?  strarpChange;
  bool?  generalReview;
  bool?  carPaint;
  String? carNewColor;
  bool?  other;
  String? ifOther;

  Services({ 
    this.oil, 
    this.airFilter, 
    this.strarpChange,
    this.generalReview,
    this.carPaint,
    this.carNewColor,
    this.other,
    this.ifOther,
  });

  Services.fromJson(Map<String, dynamic> json) {
    oil           = json['Oil'];
    airFilter     = json['AirFilter'];
    strarpChange  = json['StrarpChange'];
    generalReview = json['GeneralReview'];
    carPaint      = json['CarPaint'];
    carNewColor   = json['CarNewColor'];
    other         = json['Other'];
    ifOther       = json['IfOther'];
  }


  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Oil']           = oil;
    data['AirFilter']     = airFilter;
    data['StrarpChange']  = strarpChange;
    data['CarPaint']      = carPaint;
    data['CarNewColor']   = carNewColor;
    data['Other']         = other;
    data['IfOther']       = ifOther;
    return data;
}
}