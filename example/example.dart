import 'package:slacky/slacky.dart';

void main(List<String> arguments) async{
  String token = 'xoxb-6165272769665-7013680916947-SKlOKCVWdMZY9BR65396LZ3P';

  final slack = SlackNotifer();

  // var results = slack.sendScheduledMessage(
  //     messageText: 'One Body',
  //     token: token,
  //     timeStamp: 1714947365,
  //     channelId: 'C064V80QN5P');

  var results = await slack.updateMessage(
        token: token,
         channelId: 'C064V80QN5P', 
      messageText: 'hellos',
      timeStamp: '1714864116.787879'
  );

  // var results = await slack.deleteMessage(
  //       token: token,
  //        channelId: 'C064V80QN5P', 
  //     timeStamp: '1714863056.082819'
  // );
 

  print(results);
}
