# QR Code Reader API - PHP Package

QR Code Reader is a QR code scanner API that decodes text and web links from uploaded QR code images. Send a JPG, PNG, or GIF file up to 10 MB to retrieve the raw encoded payload, with paid plans adding corner coordinates.

## Installation

Install via Composer:

```bash
composer require apiverve/qrcodereader
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Qrcodereader\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute(['image' => 'https://upload.wikimedia.org/wikipedia/commons/d/d7/Commons_QR_code.png']);

// Print the response
print_r($response);
```

### File Upload

```php
// Upload a file
$response = $client->executeWithFile('/path/to/file.jpg');

// Or use a URL
$response = $client->executeWithUrl('https://example.com/image.jpg');
```

### Error Handling

```php
use APIVerve\Qrcodereader\Client;
use APIVerve\Qrcodereader\Exceptions\APIException;
use APIVerve\Qrcodereader\Exceptions\ValidationException;

try {
    $response = $client->execute(['image' => 'https://upload.wikimedia.org/wikipedia/commons/d/d7/Commons_QR_code.png']);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
```

## Example Response

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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/qrcodereader?utm_source=packagist&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/qrcodereader?utm_source=php&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/qrcodereader?utm_source=php&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
