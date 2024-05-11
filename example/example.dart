import 'package:flutter/foundation.dart';
import 'package:slacky/slacky.dart';

void main(List<String> arguments) async {
  final slack = SlackNotifer();
  const token = 'xoxb-xxxxxxx-xxxxx-xxxxxxx';
  const channelId = 'channelId';
  var message = 'some message';

  var results = await slack.postMessage(
    token: token,
    channelId: channelId,
    messageText: message,
  );

  debugPrint(results);
}
