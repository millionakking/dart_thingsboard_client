class SendSMSRequest {
  String phone;
  String code;
  int smsType;

  SendSMSRequest(this.phone, this.code, this.smsType);

  Map<String, dynamic> toJson() {
    return {
      'phone': phone,
      'code': code,
      'smsType': smsType,
    };
  }
}
