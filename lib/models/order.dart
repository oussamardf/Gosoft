import 'dart:convert';

List<Order> OrderFromJson(String str) => List<Order>.from(json.decode(str).map((x) => Order.fromJson(x)));

String OrderToJson(List<Order> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Order {
  Order({
    this.id,
    this.parentId,
    this.number,
    this.orderKey,
    this.createdVia,
    this.version,
    this.status,
    this.currency,
    this.dateCreated,
    this.dateCreatedGmt,
    this.dateModified,
    this.dateModifiedGmt,
    this.discountTotal,
    this.discountTax,
    this.shippingTotal,
    this.shippingTax,
    this.cartTax,
    this.total,
    this.totalTax,
    this.pricesIncludeTax,
    this.customerId,
    this.customerIpAddress,
    this.customerUserAgent,
    this.customerNote,
    this.billing,
    this.shipping,
    this.paymentMethod,
    this.paymentMethodTitle,
    this.transactionId,
    this.datePaid,
    this.datePaidGmt,
    this.dateCompleted,
    this.dateCompletedGmt,
    this.cartHash,
    this.metaData,
    this.lineItems,
    this.taxLines,
    this.shippingLines,
    this.feeLines,
    this.couponLines,
    this.refunds,
    this.links,
  });

  int id;
  int parentId;
  String number;
  String orderKey;
  String createdVia;
  String version;
  String status;
  String currency;
  DateTime dateCreated;
  DateTime dateCreatedGmt;
  DateTime dateModified;
  DateTime dateModifiedGmt;
  String discountTotal;
  String discountTax;
  String shippingTotal;
  String shippingTax;
  String cartTax;
  String total;
  String totalTax;
  bool pricesIncludeTax;
  int customerId;
  String customerIpAddress;
  String customerUserAgent;
  String customerNote;
  Ing billing;
  Ing shipping;
  String paymentMethod;
  String paymentMethodTitle;
  String transactionId;
  DateTime datePaid;
  DateTime datePaidGmt;
  DateTime dateCompleted;
  DateTime dateCompletedGmt;
  String cartHash;
  List<MetaDatum> metaData;
  List<LineItem> lineItems;
  List<TaxLine> taxLines;
  List<ShippingLine> shippingLines;
  List<dynamic> feeLines;
  List<dynamic> couponLines;
  List<Refund> refunds;
  Links links;

  factory Order.fromJson(Map<String, dynamic> json) => Order(
    id: json["id"],
    parentId: json["parent_id"],
    number: json["number"],
    orderKey: json["order_key"],
    createdVia: json["created_via"],
    version: json["version"],
    status: json["status"],
    currency: json["currency"],
    dateCreated: DateTime.parse(json["date_created"]),
    dateCreatedGmt: DateTime.parse(json["date_created_gmt"]),
    dateModified: DateTime.parse(json["date_modified"]),
    dateModifiedGmt: DateTime.parse(json["date_modified_gmt"]),
    discountTotal: json["discount_total"],
    discountTax: json["discount_tax"],
    shippingTotal: json["shipping_total"],
    shippingTax: json["shipping_tax"],
    cartTax: json["cart_tax"],
    total: json["total"],
    totalTax: json["total_tax"],
    pricesIncludeTax: json["prices_include_tax"],
    customerId: json["customer_id"],
    customerIpAddress: json["customer_ip_address"],
    customerUserAgent: json["customer_user_agent"],
    customerNote: json["customer_note"],
    billing: Ing.fromJson(json["billing"]),
    shipping: Ing.fromJson(json["shipping"]),
    paymentMethod: json["payment_method"],
    paymentMethodTitle: json["payment_method_title"],
    transactionId: json["transaction_id"],
    datePaid: json["date_paid"] == null ? null : DateTime.parse(json["date_paid"]),
    datePaidGmt: json["date_paid_gmt"] == null ? null : DateTime.parse(json["date_paid_gmt"]),
    dateCompleted: json["date_completed"] == null ? null : DateTime.parse(json["date_completed"]),
    dateCompletedGmt: json["date_completed_gmt"] == null ? null : DateTime.parse(json["date_completed_gmt"]),
    cartHash: json["cart_hash"],
    metaData: List<MetaDatum>.from(json["meta_data"].map((x) => MetaDatum.fromJson(x))),
    lineItems: List<LineItem>.from(json["line_items"].map((x) => LineItem.fromJson(x))),
    taxLines: List<TaxLine>.from(json["tax_lines"].map((x) => TaxLine.fromJson(x))),
    shippingLines: List<ShippingLine>.from(json["shipping_lines"].map((x) => ShippingLine.fromJson(x))),
    feeLines: List<dynamic>.from(json["fee_lines"].map((x) => x)),
    couponLines: List<dynamic>.from(json["coupon_lines"].map((x) => x)),
    refunds: List<Refund>.from(json["refunds"].map((x) => Refund.fromJson(x))),
    links: Links.fromJson(json["_links"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "parent_id": parentId,
    "number": number,
    "order_key": orderKey,
    "created_via": createdVia,
    "version": version,
    "status": status,
    "currency": currency,
    "date_created": dateCreated.toIso8601String(),
    "date_created_gmt": dateCreatedGmt.toIso8601String(),
    "date_modified": dateModified.toIso8601String(),
    "date_modified_gmt": dateModifiedGmt.toIso8601String(),
    "discount_total": discountTotal,
    "discount_tax": discountTax,
    "shipping_total": shippingTotal,
    "shipping_tax": shippingTax,
    "cart_tax": cartTax,
    "total": total,
    "total_tax": totalTax,
    "prices_include_tax": pricesIncludeTax,
    "customer_id": customerId,
    "customer_ip_address": customerIpAddress,
    "customer_user_agent": customerUserAgent,
    "customer_note": customerNote,
    "billing": billing.toJson(),
    "shipping": shipping.toJson(),
    "payment_method": paymentMethod,
    "payment_method_title": paymentMethodTitle,
    "transaction_id": transactionId,
    "date_paid": datePaid == null ? null : datePaid.toIso8601String(),
    "date_paid_gmt": datePaidGmt == null ? null : datePaidGmt.toIso8601String(),
    "date_completed": dateCompleted == null ? null : dateCompleted.toIso8601String(),
    "date_completed_gmt": dateCompletedGmt == null ? null : dateCompletedGmt.toIso8601String(),
    "cart_hash": cartHash,
    "meta_data": List<dynamic>.from(metaData.map((x) => x.toJson())),
    "line_items": List<dynamic>.from(lineItems.map((x) => x.toJson())),
    "tax_lines": List<dynamic>.from(taxLines.map((x) => x.toJson())),
    "shipping_lines": List<dynamic>.from(shippingLines.map((x) => x.toJson())),
    "fee_lines": List<dynamic>.from(feeLines.map((x) => x)),
    "coupon_lines": List<dynamic>.from(couponLines.map((x) => x)),
    "refunds": List<dynamic>.from(refunds.map((x) => x.toJson())),
    "_links": links.toJson(),
  };
}

class Ing {
  Ing({
    this.firstName,
    this.lastName,
    this.company,
    this.address1,
    this.address2,
    this.city,
    this.state,
    this.postcode,
    this.country,
    this.email,
    this.phone,
  });

  String firstName;
  String lastName;
  String company;
  String address1;
  String address2;
  String city;
  String state;
  String postcode;
  String country;
  String email;
  String phone;

  factory Ing.fromJson(Map<String, dynamic> json) => Ing(
    firstName: json["first_name"],
    lastName: json["last_name"],
    company: json["company"],
    address1: json["address_1"],
    address2: json["address_2"],
    city: json["city"],
    state: json["state"],
    postcode: json["postcode"],
    country: json["country"],
    email: json["email"] == null ? null : json["email"],
    phone: json["phone"] == null ? null : json["phone"],
  );

  Map<String, dynamic> toJson() => {
    "first_name": firstName,
    "last_name": lastName,
    "company": company,
    "address_1": address1,
    "address_2": address2,
    "city": city,
    "state": state,
    "postcode": postcode,
    "country": country,
    "email": email == null ? null : email,
    "phone": phone == null ? null : phone,
  };
}

class LineItem {
  LineItem({
    this.id,
    this.name,
    this.productId,
    this.variationId,
    this.quantity,
    this.taxClass,
    this.subtotal,
    this.subtotalTax,
    this.total,
    this.totalTax,
    this.taxes,
    this.metaData,
    this.sku,
    this.price,
  });

  int id;
  String name;
  int productId;
  int variationId;
  int quantity;
  String taxClass;
  String subtotal;
  String subtotalTax;
  String total;
  String totalTax;
  List<Tax> taxes;
  List<MetaDatum> metaData;
  String sku;
  int price;

  factory LineItem.fromJson(Map<String, dynamic> json) => LineItem(
    id: json["id"],
    name: json["name"],
    productId: json["product_id"],
    variationId: json["variation_id"],
    quantity: json["quantity"],
    taxClass: json["tax_class"],
    subtotal: json["subtotal"],
    subtotalTax: json["subtotal_tax"],
    total: json["total"],
    totalTax: json["total_tax"],
    taxes: List<Tax>.from(json["taxes"].map((x) => Tax.fromJson(x))),
    metaData: List<MetaDatum>.from(json["meta_data"].map((x) => MetaDatum.fromJson(x))),
    sku: json["sku"],
    price: json["price"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "product_id": productId,
    "variation_id": variationId,
    "quantity": quantity,
    "tax_class": taxClass,
    "subtotal": subtotal,
    "subtotal_tax": subtotalTax,
    "total": total,
    "total_tax": totalTax,
    "taxes": List<dynamic>.from(taxes.map((x) => x.toJson())),
    "meta_data": List<dynamic>.from(metaData.map((x) => x.toJson())),
    "sku": sku,
    "price": price,
  };
}

class MetaDatum {
  MetaDatum({
    this.id,
    this.key,
    this.value,
  });

  int id;
  String key;
  String value;

  factory MetaDatum.fromJson(Map<String, dynamic> json) => MetaDatum(
    id: json["id"],
    key: json["key"],
    value: json["value"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "key": key,
    "value": value,
  };
}

class Tax {
  Tax({
    this.id,
    this.total,
    this.subtotal,
  });

  int id;
  String total;
  String subtotal;

  factory Tax.fromJson(Map<String, dynamic> json) => Tax(
    id: json["id"],
    total: json["total"],
    subtotal: json["subtotal"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "total": total,
    "subtotal": subtotal,
  };
}

class Links {
  Links({
    this.self,
    this.collection,
    this.customer,
  });

  List<Collection> self;
  List<Collection> collection;
  List<Collection> customer;

  factory Links.fromJson(Map<String, dynamic> json) => Links(
    self: List<Collection>.from(json["self"].map((x) => Collection.fromJson(x))),
    collection: List<Collection>.from(json["collection"].map((x) => Collection.fromJson(x))),
    customer: json["customer"] == null ? null : List<Collection>.from(json["customer"].map((x) => Collection.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "self": List<dynamic>.from(self.map((x) => x.toJson())),
    "collection": List<dynamic>.from(collection.map((x) => x.toJson())),
    "customer": customer == null ? null : List<dynamic>.from(customer.map((x) => x.toJson())),
  };
}

class Collection {
  Collection({
    this.href,
  });

  String href;

  factory Collection.fromJson(Map<String, dynamic> json) => Collection(
    href: json["href"],
  );

  Map<String, dynamic> toJson() => {
    "href": href,
  };
}

class Refund {
  Refund({
    this.id,
    this.refund,
    this.total,
  });

  int id;
  String refund;
  String total;

  factory Refund.fromJson(Map<String, dynamic> json) => Refund(
    id: json["id"],
    refund: json["refund"],
    total: json["total"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "refund": refund,
    "total": total,
  };
}

class ShippingLine {
  ShippingLine({
    this.id,
    this.methodTitle,
    this.methodId,
    this.total,
    this.totalTax,
    this.taxes,
    this.metaData,
  });

  int id;
  String methodTitle;
  String methodId;
  String total;
  String totalTax;
  List<dynamic> taxes;
  List<MetaDatum> metaData;

  factory ShippingLine.fromJson(Map<String, dynamic> json) => ShippingLine(
    id: json["id"],
    methodTitle: json["method_title"],
    methodId: json["method_id"],
    total: json["total"],
    totalTax: json["total_tax"],
    taxes: List<dynamic>.from(json["taxes"].map((x) => x)),
    metaData: List<MetaDatum>.from(json["meta_data"].map((x) => MetaDatum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "method_title": methodTitle,
    "method_id": methodId,
    "total": total,
    "total_tax": totalTax,
    "taxes": List<dynamic>.from(taxes.map((x) => x)),
    "meta_data": List<dynamic>.from(metaData.map((x) => x.toJson())),
  };
}

class TaxLine {
  TaxLine({
    this.id,
    this.rateCode,
    this.rateId,
    this.label,
    this.compound,
    this.taxTotal,
    this.shippingTaxTotal,
    this.metaData,
  });

  int id;
  String rateCode;
  int rateId;
  String label;
  bool compound;
  String taxTotal;
  String shippingTaxTotal;
  List<dynamic> metaData;

  factory TaxLine.fromJson(Map<String, dynamic> json) => TaxLine(
    id: json["id"],
    rateCode: json["rate_code"],
    rateId: json["rate_id"],
    label: json["label"],
    compound: json["compound"],
    taxTotal: json["tax_total"],
    shippingTaxTotal: json["shipping_tax_total"],
    metaData: List<dynamic>.from(json["meta_data"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "rate_code": rateCode,
    "rate_id": rateId,
    "label": label,
    "compound": compound,
    "tax_total": taxTotal,
    "shipping_tax_total": shippingTaxTotal,
    "meta_data": List<dynamic>.from(metaData.map((x) => x)),
  };
}
