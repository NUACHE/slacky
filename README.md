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
    final slacky = SlackNotifer();
    const token = 'xoxb-xxxxxxx-xxxxx-xxxxxxx';
    const channelId = 'channelId';
    var message = 'some message';
```

```dart
    
   var results = await slacky.postMessage(
        token: token,
        channelId: channelId, 
        messageText: message,
    );

    print(results);
```

| Scheme | Action |
|:---|:---|
| `slacky.postMessage`| Sends a message to a channel. |
| `slacky.deleteMessage` | Deletes a message. |
| `slacky.meMessage`  | Share a me message into a channel. |
| `slacky.updateMessage` | Updates a message. |
| `slacky.sendScheduledMessage` | Returns a list of scheduled messages. |
| `slacky.postEphemeral` | Sends an ephemeral message to a user in a channel. |
| `slacky.deleteScheduledMessage` | Deletes a pending scheduled message from the queue. |
| `slacky.getPermalink` | Retrieve a permalink URL for a specific extant message. |
| `slacky.scheduledMessageList` | Returns a list of scheduled messages. |
| `slacky.unfurl` | Provide custom unfurl behavior for user-posted URLs. |
