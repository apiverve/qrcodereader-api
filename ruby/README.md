# QR Code Reader API - Ruby Gem

QR Code Reader is a QR code scanner API that decodes text and web links from uploaded QR code images. Send a JPG, PNG, or GIF file up to 10 MB to retrieve the raw encoded payload, with paid plans adding corner coordinates.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_qrcodereader'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_qrcodereader
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_qrcodereader'

# Initialize the client
client = APIVerve::Qrcodereader::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({ image: "https://upload.wikimedia.org/wikipedia/commons/d/d7/Commons_QR_code.png" })

# Print the response
puts response
```

### File Upload

```ruby
# Upload a file
response = client.execute_with_file("/path/to/file.jpg")

# Or use a URL
response = client.execute_with_url("https://example.com/image.jpg")
```

### Error Handling

```ruby
begin
  response = client.execute({ image: "https://upload.wikimedia.org/wikipedia/commons/d/d7/Commons_QR_code.png" })
  puts response["data"]
rescue APIVerve::Qrcodereader::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Qrcodereader::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Qrcodereader::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
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

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/qrcodereader?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/qrcodereader?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/qrcodereader?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
