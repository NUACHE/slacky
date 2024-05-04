library slacky;

import 'dart:convert';
import 'package:http/http.dart' as http;

class SlackNotifer {
  /// Sends a scheduled message
  ///
  /// Timestamp is your preferred date in Unix format
  sendScheduledMessage(
      {required String messageText,
      required String token,
      required String channelId,
      required int timeStamp}) async {
    //slack api
    var url = Uri.parse('https://slack.com/api/chat.scheduleMessage');

    //Makes request headers
    Map<String, String> requestHeader = {
      'Content-type': 'application/json',
      'Authorization': 'Bearer $token'
    };

    var request = {
      "channel": channelId,
      "text": messageText,
      "post_at": timeStamp,
    };

    var result = await http.post(url,
        body: json.encode(request), headers: requestHeader);

    return result.body;
  }

  /// Returns a list of scheduled messages.
  ///
  scheduledMessageList(
      {required String token,


      /// The channel of the scheduled messages
      String? channelId,

      /// For pagination purposes, this is the cursor value returned from a previous call to chat.scheduledmessages.list indicating where you want to start this call from.
      String? cursor,

      /// A Unix timestamp of the latest value in the time range
      String? latest,

      /// A Unix timestamp of the oldest value in the time range
      String? oldest,

      /// Maximum number of original entries to return.
      int? limit}) async {
    /// slack api
    var url = Uri.parse('https://slack.com/api/chat.scheduledMessages.list');

    /// Makes request headers
    Map<String, String> requestHeader = {
      'Content-type': 'application/json',
      'Authorization': 'Bearer $token'
    };

    var request = {
      if (channelId != null) "channel": channelId,
      if (latest != null) "latest": latest,
      if (oldest != null) "oldest": oldest,
      if (limit != null) "limit": limit,
      if (cursor != null) "cursor": cursor,
    };

    var result = await http.post(url,
        body: json.encode(request), headers: requestHeader);

    return result.body;
  }

  postMessage(
      {required String messageText,
      required String token,
      required String channelId}) async {
    //slack api
    var url = Uri.parse('https://slack.com/api/chat.postMessage');

    //Makes request headers
    Map<String, String> requestHeader = {
      'Content-type': 'application/json',
      'Authorization': 'Bearer $token'
    };

    var request = {
      "channel": channelId,
      "text": messageText,
    };

    var result = await http.post(url,
        body: json.encode(request), headers: requestHeader);

    return result.body;
  }
  deleteMessage(
      {required String timeStamp,
      required String token,
      required String channelId,
      bool? asUser
      }) async {
    //slack api
    var url = Uri.parse('https://slack.com/api/chat.delete');

    //Makes request headers
    Map<String, String> requestHeader = {
      'Content-type': 'application/json',
      'Authorization': 'Bearer $token'
    };

    var request = {
      "channel": channelId,
      "ts": timeStamp,
      if(asUser != null) "as_user": asUser
    };

    var result = await http.post(url,
        body: json.encode(request), headers: requestHeader);

    return result.body;
  }
  updateMessage(
      {required String timeStamp,
      required String token,
      required String channelId,
      required String messageText,

      bool? asUser
      }) async {
    //slack api
    var url = Uri.parse('https://slack.com/api/chat.update');

    //Makes request headers
    Map<String, String> requestHeader = {
      'Content-type': 'application/json',
      'Authorization': 'Bearer $token'
    };

    var request = {
      "channel": channelId,
      "ts": timeStamp,
      "text": messageText,
      if(asUser != null) "as_user": asUser
    };

    var result = await http.post(url,
        body: json.encode(request), headers: requestHeader);

    return result.body;
  }
}
