class AccountResponse {
  String? status;
  String? memberSince;
  Contact? contact;
  String? name;
  String? provider;
  Agent? agent;
  CreditLimit? creditLimit;
  Debit? debit;
  AutomaticPayment? automaticPayment;
  String? language;
  List<Services>? services;
  List<dynamic>? sipTrunks;

  AccountResponse(
      {this.status,
      this.memberSince,
      this.contact,
      this.name,
      this.provider,
      this.agent,
      this.creditLimit,
      this.debit,
      this.automaticPayment,
      this.language,
      this.services,
      this.sipTrunks});

  AccountResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    memberSince = json['memberSince'];
    contact =
        json['contact'] != null ? Contact.fromJson(json['contact']) : null;
    name = json['name'];
    provider = json['provider'];
    agent = json['agent'] != null ? Agent.fromJson(json['agent']) : null;
    creditLimit = json['creditLimit'] != null
        ? CreditLimit.fromJson(json['creditLimit'])
        : null;
    debit = json['debit'] != null ? Debit.fromJson(json['debit']) : null;
    automaticPayment = json['automaticPayment'] != null
        ? AutomaticPayment.fromJson(json['automaticPayment'])
        : null;
    language = json['language'];
    if (json['services'] != null) {
      services = <Services>[];
      json['services'].forEach((v) {
        services!.add(Services.fromJson(v));
      });
    }
    if (json['sipTrunks'] != null) {
      sipTrunks = <Null>[];
      json['sipTrunks'].forEach((v) {
        sipTrunks!.add(v);
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['memberSince'] = memberSince;
    if (contact != null) {
      data['contact'] = contact!.toJson();
    }
    data['name'] = name;
    data['provider'] = provider;
    if (agent != null) {
      data['agent'] = agent!.toJson();
    }
    if (creditLimit != null) {
      data['creditLimit'] = creditLimit!.toJson();
    }
    if (debit != null) {
      data['debit'] = debit!.toJson();
    }
    if (automaticPayment != null) {
      data['automaticPayment'] = automaticPayment!.toJson();
    }
    data['language'] = language;
    if (services != null) {
      data['services'] = services!.map((v) => v.toJson()).toList();
    }
    if (sipTrunks != null) {
      data['sipTrunks'] = sipTrunks!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Contact {
  String? fname;
  String? lname;
  String? address1;
  String? address2;
  String? address3;
  String? city;
  String? province;
  String? postalCode;
  String? country;
  String? emailAddress;
  Phone? phone;

  Contact(
      {this.fname,
      this.lname,
      this.address1,
      this.address2,
      this.address3,
      this.city,
      this.province,
      this.postalCode,
      this.country,
      this.emailAddress,
      this.phone});

  Contact.fromJson(Map<String, dynamic> json) {
    fname = json['fname'];
    lname = json['lname'];
    address1 = json['address1'];
    address2 = json['address2'];
    address3 = json['address3'];
    city = json['city'];
    province = json['province'];
    postalCode = json['postalCode'];
    country = json['country'];
    emailAddress = json['emailAddress'];
    phone = json['phone'] != null ? Phone.fromJson(json['phone']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['fname'] = fname;
    data['lname'] = lname;
    data['address1'] = address1;
    data['address2'] = address2;
    data['address3'] = address3;
    data['city'] = city;
    data['province'] = province;
    data['postalCode'] = postalCode;
    data['country'] = country;
    data['emailAddress'] = emailAddress;
    if (phone != null) {
      data['phone'] = phone!.toJson();
    }
    return data;
  }
}

class Phone {
  String? home;
  String? business;
  String? mobile;

  Phone({this.home, this.business, this.mobile});

  Phone.fromJson(Map<String, dynamic> json) {
    home = json['home'];
    business = json['business'];
    mobile = json['mobile'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['home'] = home;
    data['business'] = business;
    data['mobile'] = mobile;
    return data;
  }
}

class Agent {
  dynamic agentId;
  dynamic commissionCode;

  Agent({this.agentId, this.commissionCode});

  Agent.fromJson(Map<String, dynamic> json) {
    agentId = json['agentId'];
    commissionCode = json['commissionCode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['agentId'] = agentId;
    data['commissionCode'] = commissionCode;
    return data;
  }
}

class CreditLimit {
  dynamic limitedCreditType;

  CreditLimit({this.limitedCreditType});

  CreditLimit.fromJson(Map<String, dynamic> json) {
    limitedCreditType = json['limitedCreditType'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['limitedCreditType'] = limitedCreditType;
    return data;
  }
}

class Debit {
  dynamic expirationDate;
  dynamic paidUntilDate;

  Debit({this.expirationDate, this.paidUntilDate});

  Debit.fromJson(Map<String, dynamic> json) {
    expirationDate = json['expirationDate'];
    paidUntilDate = json['paidUntilDate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['expirationDate'] = expirationDate;
    data['paidUntilDate'] = paidUntilDate;
    return data;
  }
}

class AutomaticPayment {
  bool? enabled;
  String? paymentType;
  bool? onDeclineSuspend;
  CreditCard? creditCard;
  OnDaysAvailable? onDaysAvailable;
  OnDaysAvailable? onDayOfMonth;
  OnDaysAvailable? onBalanceBelow;

  AutomaticPayment(
      {this.enabled,
      this.paymentType,
      this.onDeclineSuspend,
      this.creditCard,
      this.onDaysAvailable,
      this.onDayOfMonth,
      this.onBalanceBelow});

  AutomaticPayment.fromJson(Map<String, dynamic> json) {
    enabled = json['enabled'];
    paymentType = json['paymentType'];
    onDeclineSuspend = json['onDeclineSuspend'];
    creditCard = json['creditCard'] != null
        ? CreditCard.fromJson(json['creditCard'])
        : null;
    onDaysAvailable = json['onDaysAvailable'] != null
        ? OnDaysAvailable.fromJson(json['onDaysAvailable'])
        : null;
    onDayOfMonth = json['onDayOfMonth'] != null
        ? OnDaysAvailable.fromJson(json['onDayOfMonth'])
        : null;
    onBalanceBelow = json['onBalanceBelow'] != null
        ? OnDaysAvailable.fromJson(json['onBalanceBelow'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['enabled'] = enabled;
    data['paymentType'] = paymentType;
    data['onDeclineSuspend'] = onDeclineSuspend;
    if (creditCard != null) {
      data['creditCard'] = creditCard!.toJson();
    }
    if (onDaysAvailable != null) {
      data['onDaysAvailable'] = onDaysAvailable!.toJson();
    }
    if (onDayOfMonth != null) {
      data['onDayOfMonth'] = onDayOfMonth!.toJson();
    }
    if (onBalanceBelow != null) {
      data['onBalanceBelow'] = onBalanceBelow!.toJson();
    }
    return data;
  }
}

class CreditCard {
  String? cardType;
  String? last4digits;
  String? holder;
  String? expMonth;
  String? expYear;

  CreditCard(
      {this.cardType,
      this.last4digits,
      this.holder,
      this.expMonth,
      this.expYear});

  CreditCard.fromJson(Map<String, dynamic> json) {
    cardType = json['cardType'];
    last4digits = json['last4digits'];
    holder = json['holder'];
    expMonth = json['expMonth'];
    expYear = json['expYear'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['cardType'] = cardType;
    data['last4digits'] = last4digits;
    data['holder'] = holder;
    data['expMonth'] = expMonth;
    data['expYear'] = expYear;
    return data;
  }
}

class OnDaysAvailable {
  bool? enabled;
  dynamic trigger;
  dynamic amount;

  OnDaysAvailable({this.enabled, this.trigger, this.amount});

  OnDaysAvailable.fromJson(Map<String, dynamic> json) {
    enabled = json['enabled'];
    trigger = json['trigger'];
    amount = json['amount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['enabled'] = enabled;
    data['trigger'] = trigger;
    data['amount'] = amount;
    return data;
  }
}

class Services {
  String? name;
  String? serviceId;
  String? accountId;
  String? createdOn;
  String? updatedOn;
  Contact? contact;
  Agent? agent;
  Provisioning? provisioning;
  bool? legacy;
  dynamic sim;
  dynamic imei;
  String? telephoneNumber;
  String? planCode;
  String? status;
  String? provider;
  Billing? billing;

  Services({
    this.name,
    this.serviceId,
    this.accountId,
    this.createdOn,
    this.updatedOn,
    this.contact,
    this.agent,
    this.provisioning,
    this.legacy,
    this.sim,
    this.imei,
    this.telephoneNumber,
    this.planCode,
    this.status,
    this.provider,
    this.billing,
  });

  Services.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    serviceId = json['serviceId'];
    accountId = json['accountId'];
    createdOn = json['createdOn'];
    updatedOn = json['updatedOn'];
    contact =
        json['contact'] != null ? Contact.fromJson(json['contact']) : null;
    agent = json['agent'] != null ? Agent.fromJson(json['agent']) : null;
    provisioning = json['provisioning'] != null
        ? Provisioning.fromJson(json['provisioning'])
        : null;
    legacy = json['legacy'];
    sim = json['sim'];
    imei = json['imei'];
    telephoneNumber = json['telephoneNumber'];
    planCode = json['planCode'];
    status = json['status'];
    provider = json['provider'];
    billing =
        json['billing'] != null ? Billing.fromJson(json['billing']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['serviceId'] = serviceId;
    data['accountId'] = accountId;
    data['createdOn'] = createdOn;
    data['updatedOn'] = updatedOn;
    if (contact != null) {
      data['contact'] = contact!.toJson();
    }
    if (agent != null) {
      data['agent'] = agent!.toJson();
    }
    if (provisioning != null) {
      data['provisioning'] = provisioning!.toJson();
    }
    data['legacy'] = legacy;
    data['sim'] = sim;
    data['imei'] = imei;
    data['telephoneNumber'] = telephoneNumber;
    data['planCode'] = planCode;
    data['status'] = status;
    data['provider'] = provider;
    if (billing != null) {
      data['billing'] = billing!.toJson();
    }

    return data;
  }
}

class Provisioning {
  String? planCode;
  dynamic sIM;
  dynamic sim;
  String? telephoneNumber;
  dynamic iMSI;
  dynamic imsi;
  dynamic iMEI;
  dynamic imei;
  Plan? plan;

  Provisioning(
      {this.planCode,
      this.sIM,
      this.sim,
      this.telephoneNumber,
      this.iMSI,
      this.imsi,
      this.iMEI,
      this.imei,
      this.plan});

  Provisioning.fromJson(Map<String, dynamic> json) {
    planCode = json['planCode'];
    sIM = json['SIM'];
    sim = json['sim'];
    telephoneNumber = json['telephoneNumber'];
    iMSI = json['IMSI'];
    imsi = json['imsi'];
    iMEI = json['IMEI'];
    imei = json['imei'];
    plan = json['plan'] != null ? Plan.fromJson(json['plan']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['planCode'] = planCode;
    data['SIM'] = sIM;
    data['sim'] = sim;
    data['telephoneNumber'] = telephoneNumber;
    data['IMSI'] = iMSI;
    data['imsi'] = imsi;
    data['IMEI'] = iMEI;
    data['imei'] = imei;
    if (plan != null) {
      data['plan'] = plan!.toJson();
    }
    return data;
  }
}

class Plan {
  String? planCode;
  String? planType;
  int? recurringCharge;
  String? billingCycle;
  String? billingType;

  Plan(
      {this.planCode,
      this.planType,
      this.recurringCharge,
      this.billingCycle,
      this.billingType});

  Plan.fromJson(Map<String, dynamic> json) {
    planCode = json['planCode'];
    planType = json['planType'];
    recurringCharge = json['recurringCharge'];
    billingCycle = json['billingCycle'];
    billingType = json['billingType'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['planCode'] = planCode;
    data['planType'] = planType;
    data['recurringCharge'] = recurringCharge;
    data['billingCycle'] = billingCycle;
    data['billingType'] = billingType;
    return data;
  }
}

class Billing {
  bool? billParentAccount;
  String? billingType;

  Billing({this.billParentAccount, this.billingType});

  Billing.fromJson(Map<String, dynamic> json) {
    billParentAccount = json['billParentAccount'];
    billingType = json['billingType'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['billParentAccount'] = billParentAccount;
    data['billingType'] = billingType;
    return data;
  }
}
