[![Buy Me A Coffee](https://img.shields.io/badge/Donate-Buy%20Me%20A%20Coffee-yellow.svg)](https://www.buymeacoffee.com/nuache)

# slacky

Access slack apis with bot

## Start

A Flutter package for accessing slack chat apis.

> Feedback and Pull Requests are most welcome!

## Installation

Add to pubspec.yaml.

```yaml
dependencies:
  ...
  slacky: ^0.0.1
```





## Usage Example

import Slacky

```dart
import 'package:slacky/slacky.dart';
```

## Samples
```dart
    const token = 'xoxb-xxxxxxx-xxxxx-xxxxxxx';
    const channelId = 'channelId';
    var message = 'some message';
```

```dart
    
   var results = await slack.postMessage(
        token: token,
        channelId: channelId, 
        messageText: message,
    );

    print(results);
```