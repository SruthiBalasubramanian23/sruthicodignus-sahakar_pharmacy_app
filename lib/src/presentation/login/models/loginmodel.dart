class LoginModel {
  int? ids;
  int? localid;
  String? name;
  String? alias;
  String? add1;
  String? add2;
  String? add3;
  String? add4;
  String? city;
  String? vatRegNo;
  String? companyRegNo;
  String? phone;
  String? email;
  String? mobile;
  String? contactPerson;
  String? dlNo;
  String? gstNo;
  int? aTaxType;
  int? state;
  int? isVatRegistered;
  int? issyinc;
  String? userid;

  LoginModel({
    this.ids,
    this.localid,
    this.name,
    this.alias,
    this.add1,
    this.add2,
    this.add3,
    this.add4,
    this.city,
    this.vatRegNo,
    this.companyRegNo,
    this.phone,
    this.email,
    this.mobile,
    this.contactPerson,
    this.dlNo,
    this.gstNo,
    this.aTaxType,
    this.state,
    this.isVatRegistered,
    this.issyinc,
    this.userid,
  });

  factory LoginModel.fromJson(List<dynamic> json) {
    if (json.isNotEmpty && json[0] is Map<String, dynamic>) {
      final Map<String, dynamic> jsonData = json[0];
      return LoginModel(
        ids: jsonData['ids'],
        localid: jsonData['localid'],
        name: jsonData['name'],
        alias: jsonData['alias'],
        add1: jsonData['add1'],
        add2: jsonData['add2'],
        add3: jsonData['add3'],
        add4: jsonData['add4'],
        city: jsonData['city'],
        vatRegNo: jsonData['vatRegNo'],
        companyRegNo: jsonData['companyRegNo'],
        phone: jsonData['phone'],
        email: jsonData['email'],
        mobile: jsonData['mobile'],
        contactPerson: jsonData['contactPerson'],
        dlNo: jsonData['dlNo'],
        gstNo: jsonData['gstNo'],
        aTaxType: jsonData['a_tax_type'],
        state: jsonData['state'],
        isVatRegistered: jsonData['isVatRegistered'],
        issyinc: jsonData['issyinc'],
        userid: jsonData['userid'],
      );
    } else {
      throw FormatException("Unexpected JSON type: $json");
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['ids'] = ids;
    data['localid'] = localid;
    data['name'] = name;
    data['alias'] = alias;
    data['add1'] = add1;
    data['add2'] = add2;
    data['add3'] = add3;
    data['add4'] = add4;
    data['city'] = city;
    data['vatRegNo'] = vatRegNo;
    data['companyRegNo'] = companyRegNo;
    data['phone'] = phone;
    data['email'] = email;
    data['mobile'] = mobile;
    data['contactPerson'] = contactPerson;
    data['dlNo'] = dlNo;
    data['gstNo'] = gstNo;
    data['a_tax_type'] = aTaxType;
    data['state'] = state;
    data['isVatRegistered'] = isVatRegistered;
    data['issyinc'] = issyinc;
    data['userid'] = userid;
    return data;
  }
}
