# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "apiverve_qrcodereader"
  spec.version       = "1.2.3"
  spec.authors       = ["APIVerve"]
  spec.email         = ["hello@apiverve.com"]

  spec.summary       = "QR Code Reader API - Ruby Client"
  spec.description   = "QR Code Reader is a QR code scanner API that decodes text and web links from uploaded QR code images. Send a JPG, PNG, or GIF file up to 10 MB to retrieve the raw encoded payload, with paid plans adding corner coordinates."
  spec.homepage      = "https://apiverve.com/marketplace/qrcodereader?utm_source=ruby&utm_medium=referral&utm_content=homepage"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.7.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/apiverve/qrcodereader-API/tree/main/ruby"
  spec.metadata["changelog_uri"] = "https://apiverve.com/changelog"
  spec.metadata["documentation_uri"] = "https://docs.apiverve.com/ref/qrcodereader"

  spec.files = Dir.glob("{lib}/**/*") + %w[README.md LICENSE]
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday", ">= 1.0", "< 3.0"
  spec.add_dependency "faraday-multipart", "~> 1.0"
  spec.add_dependency "json", "~> 2.0"
end
