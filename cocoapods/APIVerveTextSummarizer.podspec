Pod::Spec.new do |s|
  s.name             = 'APIVerveTextSummarizer'
  s.version          = '1.2.3'
  s.summary          = 'Text Summarizer condenses raw text into concise summaries of a specified sentence count.'
  s.description      = <<-'DESC'
Text Summarizer condenses raw text into concise summaries of a specified sentence count. Pass up to 5,000 characters to extract key points into readable summaries, with paid plans adding word counts and reduction metrics.

This iOS/macOS SDK provides a convenient way to access the Text Summarizer from APIVerve.
Supports both callback-based and async/await patterns.
                       DESC

  s.homepage         = 'https://apiverve.com/marketplace/textsummarizer?utm_source=cocoapods&utm_medium=referral&utm_content=homepage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'APIVerve' => 'hello@apiverve.com' }
  # The SDK repo holds every language; the pod lives under cocoapods/ with its own tag.
  s.source           = { :git => 'https://github.com/apiverve/textsummarizer-api.git', :tag => "cocoapods/v#{s.version}" }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.swift_version = '5.0'

  s.source_files = 'cocoapods/Sources/APIVerveTextSummarizer/**/*.swift'

  s.frameworks = 'Foundation'

  # APIResponse, APIVerveError and the request plumbing, shared by every APIVerve pod.
  s.dependency 'APIVerveCore', '~> 1.2'
end
