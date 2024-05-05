import 'package:slacky/slacky.dart';

void main(List<String> arguments) async{
  String token = 'xoxb-6165272769665-7013680916947-SKlOKCVWdMZY9BR65396LZ3P';

  final slack = SlackNotifer();

  // var results = slack.sendScheduledMessage(
  //     messageText: 'One Body',
  //     token: token,
  //     timeStamp: 1714947365,
  //     channelId: 'C064V80QN5P');

  var results = await slack.postMessage(
        token: token,
         channelId: 'C064V80QN5P', 
      messageText: 'https://medium.com/slack-developer-blog/everything-you-ever-wanted-to-know-about-unfurling-but-were-afraid-to-ask-or-how-to-make-your-e64b4bb9254',
    
     
  );

  // var results = await slack.deleteMessage(
  //       token: token,
  //        channelId: 'C064V80QN5P', 
  //     timeStamp: '1714863056.082819'
  // );

  //  var results = await slack.getPermalink(
  //       token: token,
  //        channelId: 'C064V80QN5P', 
    
  //     timeStamp: '1714864116.787879'
  // );

 

  print(results);
}
