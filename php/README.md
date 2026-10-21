# Text Summarizer API - PHP Package

Text Summarizer condenses raw text into concise summaries of a specified sentence count. Pass up to 5,000 characters to extract key points into readable summaries, with paid plans adding word counts and reduction metrics.

## Installation

Install via Composer:

```bash
composer require apiverve/textsummarizer
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Textsummarizer\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute([
    'text' => 'A news article can include accounts of eyewitnesses to the happening event. It can contain photographs, accounts, statistics, graphs, recollections, interviews, polls, debates on the topic, etc. Headlines can be used to focus the reader\'s attention on a particular (or main) part of the article. The writer can also give facts and detailed information following answers to general questions like who, what, when, where, why and how.',
    'sentences' => 2
]);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Textsummarizer\Client;
use APIVerve\Textsummarizer\Exceptions\APIException;
use APIVerve\Textsummarizer\Exceptions\ValidationException;

try {
    $response = $client->execute(['text' => 'A news article can include accounts of eyewitnesses to the happening event. It can contain photographs, accounts, statistics, graphs, recollections, interviews, polls, debates on the topic, etc. Headlines can be used to focus the reader\'s attention on a particular (or main) part of the article. The writer can also give facts and detailed information following answers to general questions like who, what, when, where, why and how.', 'sentences' => 2]);
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
    "originalWords": 67,
    "summaryWords": 30,
    "percentDifference": 44.78,
    "summary": "Headlines can be used to focus the reader's attention on a particular (or main) part of the article. A news article can include accounts of eyewitnesses to the happening event."
  }
}
```

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/textsummarizer?utm_source=packagist&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/textsummarizer?utm_source=php&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/textsummarizer?utm_source=php&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
