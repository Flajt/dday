import 'package:dday/features/map/models/MeetingModel.dart';

class RequestModel {
  final List<dynamic> messages;
  final bool? success;
  final int count;
  final int itemsPerPage;
  final List<MeetingModel> index;
  final List<dynamic> item;

  RequestModel(this.messages, this.success, this.count, this.itemsPerPage,
      this.index, this.item);

  RequestModel.fromJson(Map<String, dynamic> json)
      : messages = json['messages']["messages"],
        success = json['messages']["success"],
        count = json["results"]['count'],
        itemsPerPage = json["results"]['items_per_page'],
        index = json['index']
            .map<MeetingModel>((element) => MeetingModel.fromJson(element))
            .toList(),
        item = json['item'];
}
