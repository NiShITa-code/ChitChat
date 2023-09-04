// Enum for Message Type
// We can use enum to define the type of message
enum MessageEnum {
  text('text'),
  image('image'),
  audio('audio'),
  video('video'),
  gif('gif');

  const MessageEnum(this.type);
  final String type;
}
// Enhanced Enum

extension ConvertMessage on String {
  MessageEnum toEnum() {
    switch (this) {
      case 'audio':
        return MessageEnum.audio;
      case 'video':
        return MessageEnum.video;
      case 'text':
        return MessageEnum.text;
      case 'image':
        return MessageEnum.image;
      case 'gif':
        return MessageEnum.gif;
      default:
        return MessageEnum.text;
    }
  }
}
