/// Response models for the QR Code Reader API.

/// API Response wrapper.
class QrcodereaderResponse {
  final String status;
  final dynamic error;
  final QrcodereaderData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  QrcodereaderResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory QrcodereaderResponse.fromJson(Map<String, dynamic> json) => QrcodereaderResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? QrcodereaderData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the QR Code Reader API.

class QrcodereaderData {
  String? text;
  QrcodereaderDataLocation? location;

  QrcodereaderData({
    this.text,
    this.location,
  });

  factory QrcodereaderData.fromJson(Map<String, dynamic> json) => QrcodereaderData(
      text: json['text'],
      location: json['location'] != null ? QrcodereaderDataLocation.fromJson(json['location']) : null,
    );
}

class QrcodereaderDataLocation {
  QrcodereaderDataLocationTopleft? topLeft;
  QrcodereaderDataLocationTopright? topRight;
  QrcodereaderDataLocationBottomleft? bottomLeft;
  QrcodereaderDataLocationBottomright? bottomRight;

  QrcodereaderDataLocation({
    this.topLeft,
    this.topRight,
    this.bottomLeft,
    this.bottomRight,
  });

  factory QrcodereaderDataLocation.fromJson(Map<String, dynamic> json) => QrcodereaderDataLocation(
      topLeft: json['topLeft'] != null ? QrcodereaderDataLocationTopleft.fromJson(json['topLeft']) : null,
      topRight: json['topRight'] != null ? QrcodereaderDataLocationTopright.fromJson(json['topRight']) : null,
      bottomLeft: json['bottomLeft'] != null ? QrcodereaderDataLocationBottomleft.fromJson(json['bottomLeft']) : null,
      bottomRight: json['bottomRight'] != null ? QrcodereaderDataLocationBottomright.fromJson(json['bottomRight']) : null,
    );
}

class QrcodereaderDataLocationTopleft {
  num? x;
  num? y;

  QrcodereaderDataLocationTopleft({
    this.x,
    this.y,
  });

  factory QrcodereaderDataLocationTopleft.fromJson(Map<String, dynamic> json) => QrcodereaderDataLocationTopleft(
      x: json['x'],
      y: json['y'],
    );
}

class QrcodereaderDataLocationTopright {
  num? x;
  num? y;

  QrcodereaderDataLocationTopright({
    this.x,
    this.y,
  });

  factory QrcodereaderDataLocationTopright.fromJson(Map<String, dynamic> json) => QrcodereaderDataLocationTopright(
      x: json['x'],
      y: json['y'],
    );
}

class QrcodereaderDataLocationBottomleft {
  num? x;
  num? y;

  QrcodereaderDataLocationBottomleft({
    this.x,
    this.y,
  });

  factory QrcodereaderDataLocationBottomleft.fromJson(Map<String, dynamic> json) => QrcodereaderDataLocationBottomleft(
      x: json['x'],
      y: json['y'],
    );
}

class QrcodereaderDataLocationBottomright {
  num? x;
  num? y;

  QrcodereaderDataLocationBottomright({
    this.x,
    this.y,
  });

  factory QrcodereaderDataLocationBottomright.fromJson(Map<String, dynamic> json) => QrcodereaderDataLocationBottomright(
      x: json['x'],
      y: json['y'],
    );
}

class QrcodereaderRequest {
  String? image;

  QrcodereaderRequest({
    this.image,
  });

  Map<String, dynamic> toJson() => {
      if (image != null) 'image': image,
    };
}
