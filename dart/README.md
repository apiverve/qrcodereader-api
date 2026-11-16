# QR Code Reader API - Dart/Flutter Client

QR Code Reader is a QR code scanner API that decodes text and web links from uploaded QR code images. Send a JPG, PNG, or GIF file up to 10 MB to retrieve the raw encoded payload, with paid plans adding corner coordinates.

[![pub package](https://img.shields.io/pub/v/apiverve_qrcodereader.svg)](https://pub.dev/packages/apiverve_qrcodereader)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [QR Code Reader API](https://apiverve.com/marketplace/qrcodereader?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_qrcodereader: ^1.2.6
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_qrcodereader/apiverve_qrcodereader.dart';

void main() async {
  final client = QrcodereaderClient('YOUR_API_KEY');

  try {
    // This API requires a file upload — a JSON body is rejected with a 400.
    final response = await client.executeWithFile('/path/to/your-file');

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "text": "'Twas brillig",
    "location": {
      "topLeft": {
        "x": 9.927694968294492,
        "y": 9.927694968294492
      },
      "topRight": {
        "x": 215.24999999999997,
        "y": 9.749999999999996
      },
      "bottomLeft": {
        "x": 9.749999999999996,
        "y": 215.24999999999997
      },
      "bottomRight": {
        "x": 216.14779062994094,
        "y": 216.14779062994094
      }
    }
  }
}
```

## API Reference

- **API Home:** [QR Code Reader API](https://apiverve.com/marketplace/qrcodereader?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/qrcodereader](https://docs.apiverve.com/ref/qrcodereader?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)
