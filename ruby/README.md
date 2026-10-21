# Text Summarizer API - Ruby Gem

Text Summarizer condenses raw text into concise summaries of a specified sentence count. Pass up to 5,000 characters to extract key points into readable summaries, with paid plans adding word counts and reduction metrics.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_textsummarizer'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_textsummarizer
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_textsummarizer'

# Initialize the client
client = APIVerve::Textsummarizer::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({
  text: "A news article can include accounts of eyewitnesses to the happening event. It can contain photographs, accounts, statistics, graphs, recollections, interviews, polls, debates on the topic, etc. Headlines can be used to focus the reader's attention on a particular (or main) part of the article. The writer can also give facts and detailed information following answers to general questions like who, what, when, where, why and how.",
  sentences: 2
})

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ text: "A news article can include accounts of eyewitnesses to the happening event. It can contain photographs, accounts, statistics, graphs, recollections, interviews, polls, debates on the topic, etc. Headlines can be used to focus the reader's attention on a particular (or main) part of the article. The writer can also give facts and detailed information following answers to general questions like who, what, when, where, why and how.", sentences: 2 })
  puts response["data"]
rescue APIVerve::Textsummarizer::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Textsummarizer::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Textsummarizer::Client.new(
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
    "originalWords": 67,
    "summaryWords": 30,
    "percentDifference": 44.78,
    "summary": "Headlines can be used to focus the reader's attention on a particular (or main) part of the article. A news article can include accounts of eyewitnesses to the happening event."
  }
}
```

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/textsummarizer?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/textsummarizer?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/textsummarizer?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
