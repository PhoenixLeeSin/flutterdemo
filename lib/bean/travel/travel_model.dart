// To parse this JSON data, do
//
//     final travelModel = travelModelFromJson(jsonString);

import 'dart:convert';

TravelModel travelModelFromJson(String str) =>
    TravelModel.fromJson(json.decode(str));

String travelModelToJson(TravelModel data) => json.encode(data.toJson());

class TravelModel {
  TravelModel({
    this.responseStatus,
    this.resultList,
    this.totalCount,
  });

  ResponseStatus responseStatus;
  List<ResultList> resultList;
  int totalCount;

  factory TravelModel.fromJson(Map<String, dynamic> json) => TravelModel(
        responseStatus: ResponseStatus.fromJson(json["ResponseStatus"]),
        resultList: List<ResultList>.from(
            json["resultList"].map((x) => ResultList.fromJson(x))),
        totalCount: json["totalCount"],
      );

  Map<String, dynamic> toJson() => {
        "ResponseStatus": responseStatus.toJson(),
        "resultList": List<dynamic>.from(resultList.map((x) => x.toJson())),
        "totalCount": totalCount,
      };
}

class ResponseStatus {
  ResponseStatus({
    this.ack,
    this.errors,
    this.extension,
    this.timestamp,
  });

  String ack;
  List<dynamic> errors;
  List<Extension> extension;
  String timestamp;

  factory ResponseStatus.fromJson(Map<String, dynamic> json) => ResponseStatus(
        ack: json["Ack"],
        errors: List<dynamic>.from(json["Errors"].map((x) => x)),
        extension: List<Extension>.from(
            json["Extension"].map((x) => Extension.fromJson(x))),
        timestamp: json["Timestamp"],
      );

  Map<String, dynamic> toJson() => {
        "Ack": ack,
        "Errors": List<dynamic>.from(errors.map((x) => x)),
        "Extension": List<dynamic>.from(extension.map((x) => x.toJson())),
        "Timestamp": timestamp,
      };
}

class Extension {
  Extension({
    this.id,
    this.value,
  });

  String id;
  String value;

  factory Extension.fromJson(Map<String, dynamic> json) => Extension(
        id: json["Id"],
        value: json["Value"],
      );

  Map<String, dynamic> toJson() => {
        "Id": id,
        "Value": value,
      };
}

class ResultList {
  ResultList({
    this.article,
    this.type,
  });

  Article article;
  int type;

  factory ResultList.fromJson(Map<String, dynamic> json) => ResultList(
        article: Article.fromJson(json["article"]),
        type: json["type"],
      );

  Map<String, dynamic> toJson() => {
        "article": article.toJson(),
        "type": type,
      };
}

class Article {
  Article({
    this.articleId,
    this.articleStatus,
    this.articleTitle,
    this.author,
    this.collectCount,
    this.combinateContent,
    this.commentCount,
    this.content,
    this.currentDate,
    this.distanceText,
    this.hasVideo,
    this.imageCounts,
    this.images,
    this.isCollected,
    this.isLike,
    this.level,
    this.likeCount,
    this.poiName,
    this.pois,
    this.productType,
    this.publishTime,
    this.publishTimeDisplay,
    this.readCount,
    this.relatedTopics,
    this.shareCount,
    this.shareInfo,
    this.shootTime,
    this.shootTimeDisplay,
    this.sourceId,
    this.sourceType,
    this.tags,
    this.topics,
    this.urls,
    this.videoAutoplayNet,
    this.coverGif,
    this.video,
  });

  int articleId;
  int articleStatus;
  String articleTitle;
  Author author;
  int collectCount;
  String combinateContent;
  int commentCount;
  String content;
  CurrentDate currentDate;
  String distanceText;
  bool hasVideo;
  int imageCounts;
  List<ImageData> images;
  bool isCollected;
  bool isLike;
  int level;
  int likeCount;
  String poiName;
  List<Pois> pois;
  int productType;
  DateTime publishTime;
  DateTime publishTimeDisplay;
  int readCount;
  List<RelatedTopic> relatedTopics;
  int shareCount;
  ShareInfo shareInfo;
  DateTime shootTime;
  DateTime shootTimeDisplay;
  int sourceId;
  int sourceType;
  List<Tag> tags;
  List<Topic> topics;
  List<Url> urls;
  VideoAutoplayNet videoAutoplayNet;
  CoverGif coverGif;
  Video video;

  factory Article.fromJson(Map<String, dynamic> json) => Article(
        articleId: json["articleId"],
        articleStatus: json["articleStatus"],
        articleTitle: json["articleTitle"],
        author: Author.fromJson(json["author"]),
        collectCount: json["collectCount"],
        combinateContent: json["combinateContent"],
        commentCount: json["commentCount"],
        content: json["content"],
        currentDate: currentDateValues.map[json["currentDate"]],
        distanceText: json["distanceText"],
        hasVideo: json["hasVideo"],
        imageCounts: json["imageCounts"],
        images: List<ImageData>.from(
            json["images"].map((x) => ImageData.fromJson(x))),
        isCollected: json["isCollected"],
        isLike: json["isLike"],
        level: json["level"],
        likeCount: json["likeCount"],
        poiName: json["poiName"],
        pois: List<Pois>.from(json["pois"].map((x) => Pois.fromJson(x))),
        productType: json["productType"],
        publishTime: DateTime.parse(json["publishTime"]),
        publishTimeDisplay: DateTime.parse(json["publishTimeDisplay"]),
        readCount: json["readCount"],
        relatedTopics: List<RelatedTopic>.from(
            json["relatedTopics"].map((x) => RelatedTopic.fromJson(x))),
        shareCount: json["shareCount"],
        shareInfo: ShareInfo.fromJson(json["shareInfo"]),
        shootTime: DateTime.parse(json["shootTime"]),
        shootTimeDisplay: DateTime.parse(json["shootTimeDisplay"]),
        sourceId: json["sourceId"],
        sourceType: json["sourceType"],
        tags: List<Tag>.from(json["tags"].map((x) => Tag.fromJson(x))),
        topics: List<Topic>.from(json["topics"].map((x) => Topic.fromJson(x))),
        urls: List<Url>.from(json["urls"].map((x) => Url.fromJson(x))),
        videoAutoplayNet: videoAutoplayNetValues.map[json["videoAutoplayNet"]],
        coverGif: json["coverGIF"] == null
            ? null
            : CoverGif.fromJson(json["coverGIF"]),
        video: json["video"] == null ? null : Video.fromJson(json["video"]),
      );

  Map<String, dynamic> toJson() => {
        "articleId": articleId,
        "articleStatus": articleStatus,
        "articleTitle": articleTitle,
        "author": author.toJson(),
        "collectCount": collectCount,
        "combinateContent": combinateContent,
        "commentCount": commentCount,
        "content": content,
        "currentDate": currentDateValues.reverse[currentDate],
        "distanceText": distanceText,
        "hasVideo": hasVideo,
        "imageCounts": imageCounts,
        "images": List<dynamic>.from(images.map((x) => x.toJson())),
        "isCollected": isCollected,
        "isLike": isLike,
        "level": level,
        "likeCount": likeCount,
        "poiName": poiName,
        "pois": List<dynamic>.from(pois.map((x) => x.toJson())),
        "productType": productType,
        "publishTime": publishTime.toIso8601String(),
        "publishTimeDisplay":
            "${publishTimeDisplay.year.toString().padLeft(4, '0')}-${publishTimeDisplay.month.toString().padLeft(2, '0')}-${publishTimeDisplay.day.toString().padLeft(2, '0')}",
        "readCount": readCount,
        "relatedTopics":
            List<dynamic>.from(relatedTopics.map((x) => x.toJson())),
        "shareCount": shareCount,
        "shareInfo": shareInfo.toJson(),
        "shootTime": shootTime.toIso8601String(),
        "shootTimeDisplay":
            "${shootTimeDisplay.year.toString().padLeft(4, '0')}-${shootTimeDisplay.month.toString().padLeft(2, '0')}-${shootTimeDisplay.day.toString().padLeft(2, '0')}",
        "sourceId": sourceId,
        "sourceType": sourceType,
        "tags": List<dynamic>.from(tags.map((x) => x.toJson())),
        "topics": List<dynamic>.from(topics.map((x) => x.toJson())),
        "urls": List<dynamic>.from(urls.map((x) => x.toJson())),
        "videoAutoplayNet": videoAutoplayNetValues.reverse[videoAutoplayNet],
        "coverGIF": coverGif == null ? null : coverGif.toJson(),
        "video": video == null ? null : video.toJson(),
      };
}

class Author {
  Author({
    this.authorId,
    this.clientAuth,
    this.coverImage,
    this.followCount,
    this.identityDesc,
    this.identityType,
    this.identityTypeName,
    this.jumpUrl,
    this.levelValue,
    this.levelValueText,
    this.nickName,
    this.showTagList,
    this.tag,
    this.userUrl,
    this.vIcon,
    this.describe,
  });

  int authorId;
  String clientAuth;
  CoverImage coverImage;
  int followCount;
  String identityDesc;
  int identityType;
  String identityTypeName;
  String jumpUrl;
  int levelValue;
  LevelValueText levelValueText;
  String nickName;
  List<ShowTagList> showTagList;
  String tag;
  String userUrl;
  String vIcon;
  String describe;

  factory Author.fromJson(Map<String, dynamic> json) => Author(
        authorId: json["authorId"],
        clientAuth: json["clientAuth"],
        coverImage: CoverImage.fromJson(json["coverImage"]),
        followCount: json["followCount"],
        identityDesc: json["identityDesc"],
        identityType:
            json["identityType"] == null ? null : json["identityType"],
        identityTypeName:
            json["identityTypeName"] == null ? null : json["identityTypeName"],
        jumpUrl: json["jumpUrl"],
        levelValue: json["levelValue"],
        levelValueText: levelValueTextValues.map[json["levelValueText"]],
        nickName: json["nickName"],
        showTagList: json["showTagList"] == null
            ? null
            : List<ShowTagList>.from(
                json["showTagList"].map((x) => ShowTagList.fromJson(x))),
        tag: json["tag"],
        userUrl: json["userUrl"],
        vIcon: json["vIcon"],
        describe: json["describe"] == null ? null : json["describe"],
      );

  Map<String, dynamic> toJson() => {
        "authorId": authorId,
        "clientAuth": clientAuth,
        "coverImage": coverImage.toJson(),
        "followCount": followCount,
        "identityDesc": identityDesc,
        "identityType": identityType == null ? null : identityType,
        "identityTypeName": identityTypeName == null ? null : identityTypeName,
        "jumpUrl": jumpUrl,
        "levelValue": levelValue,
        "levelValueText": levelValueTextValues.reverse[levelValueText],
        "nickName": nickName,
        "showTagList": showTagList == null
            ? null
            : List<dynamic>.from(showTagList.map((x) => x.toJson())),
        "tag": tag,
        "userUrl": userUrl,
        "vIcon": vIcon,
        "describe": describe == null ? null : describe,
      };
}

class CoverImage {
  CoverImage({
    this.dynamicUrl,
    this.originalUrl,
  });

  String dynamicUrl;
  String originalUrl;

  factory CoverImage.fromJson(Map<String, dynamic> json) => CoverImage(
        dynamicUrl: json["dynamicUrl"],
        originalUrl: json["originalUrl"],
      );

  Map<String, dynamic> toJson() => {
        "dynamicUrl": dynamicUrl,
        "originalUrl": originalUrl,
      };
}

enum LevelValueText { LV5, LV6, LV4 }

final levelValueTextValues = EnumValues({
  "LV4": LevelValueText.LV4,
  "LV5": LevelValueText.LV5,
  "LV6": LevelValueText.LV6
});

class ShowTagList {
  ShowTagList({
    this.tagName,
    this.tagShortName,
    this.tagStyle,
    this.tagType,
  });

  String tagName;
  String tagShortName;
  int tagStyle;
  int tagType;

  factory ShowTagList.fromJson(Map<String, dynamic> json) => ShowTagList(
        tagName: json["tagName"],
        tagShortName: json["tagShortName"],
        tagStyle: json["tagStyle"],
        tagType: json["tagType"],
      );

  Map<String, dynamic> toJson() => {
        "tagName": tagName,
        "tagShortName": tagShortName,
        "tagStyle": tagStyle,
        "tagType": tagType,
      };
}

class CoverGif {
  CoverGif({
    this.originalUrl,
  });

  String originalUrl;

  factory CoverGif.fromJson(Map<String, dynamic> json) => CoverGif(
        originalUrl: json["originalUrl"],
      );

  Map<String, dynamic> toJson() => {
        "originalUrl": originalUrl,
      };
}

enum CurrentDate { THE_20210317 }

final currentDateValues = EnumValues({"2021.03.17": CurrentDate.THE_20210317});

class ImageData {
  ImageData({
    this.dynamicUrl,
    this.height,
    this.imageId,
    this.lat,
    this.lon,
    this.mediaType,
    this.originalUrl,
    this.width,
    this.isWaterMarked,
  });

  String dynamicUrl;
  double height;
  int imageId;
  double lat;
  double lon;
  int mediaType;
  String originalUrl;
  double width;
  bool isWaterMarked;

  factory ImageData.fromJson(Map<String, dynamic> json) => ImageData(
        dynamicUrl: json["dynamicUrl"],
        height: json["height"],
        imageId: json["imageId"],
        lat: json["lat"].toDouble(),
        lon: json["lon"].toDouble(),
        mediaType: json["mediaType"],
        originalUrl: json["originalUrl"],
        width: json["width"],
        isWaterMarked:
            json["isWaterMarked"] == null ? null : json["isWaterMarked"],
      );

  Map<String, dynamic> toJson() => {
        "dynamicUrl": dynamicUrl,
        "height": height,
        "imageId": imageId,
        "lat": lat,
        "lon": lon,
        "mediaType": mediaType,
        "originalUrl": originalUrl,
        "width": width,
        "isWaterMarked": isWaterMarked == null ? null : isWaterMarked,
      };
}

class Pois {
  Pois({
    this.businessId,
    this.countryName,
    this.districtId,
    this.districtName,
    this.isInChina,
    this.isMain,
    this.poiExt,
    this.poiId,
    this.poiName,
    this.poiType,
    this.source,
    this.districtEnName,
  });

  int businessId;
  String countryName;
  int districtId;
  String districtName;
  bool isInChina;
  int isMain;
  PoiExt poiExt;
  int poiId;
  String poiName;
  int poiType;
  int source;
  String districtEnName;

  factory Pois.fromJson(Map<String, dynamic> json) => Pois(
        businessId: json["businessId"] == null ? null : json["businessId"],
        countryName: json["countryName"] == null ? null : json["countryName"],
        districtId: json["districtId"],
        districtName: json["districtName"],
        isInChina: json["isInChina"],
        isMain: json["isMain"],
        poiExt: PoiExt.fromJson(json["poiExt"]),
        poiId: json["poiId"],
        poiName: json["poiName"],
        poiType: json["poiType"],
        source: json["source"],
        districtEnName:
            json["districtENName"] == null ? null : json["districtENName"],
      );

  Map<String, dynamic> toJson() => {
        "businessId": businessId == null ? null : businessId,
        "countryName": countryName == null ? null : countryName,
        "districtId": districtId,
        "districtName": districtName,
        "isInChina": isInChina,
        "isMain": isMain,
        "poiExt": poiExt.toJson(),
        "poiId": poiId,
        "poiName": poiName,
        "poiType": poiType,
        "source": source,
        "districtENName": districtEnName == null ? null : districtEnName,
      };
}

class PoiExt {
  PoiExt({
    this.appUrl,
    this.h5Url,
  });

  String appUrl;
  String h5Url;

  factory PoiExt.fromJson(Map<String, dynamic> json) => PoiExt(
        appUrl: json["appUrl"],
        h5Url: json["h5Url"],
      );

  Map<String, dynamic> toJson() => {
        "appUrl": appUrl,
        "h5Url": h5Url,
      };
}

class RelatedTopic {
  RelatedTopic({
    this.topicId,
    this.topicName,
    this.type,
  });

  int topicId;
  String topicName;
  int type;

  factory RelatedTopic.fromJson(Map<String, dynamic> json) => RelatedTopic(
        topicId: json["topicId"],
        topicName: json["topicName"],
        type: json["type"],
      );

  Map<String, dynamic> toJson() => {
        "topicId": topicId,
        "topicName": topicName,
        "type": type,
      };
}

class ShareInfo {
  ShareInfo({
    this.imageUrl,
    this.platForm,
    this.shareContent,
    this.shareTitle,
    this.token,
  });

  String imageUrl;
  PlatForm platForm;
  String shareContent;
  String shareTitle;
  String token;

  factory ShareInfo.fromJson(Map<String, dynamic> json) => ShareInfo(
        imageUrl: json["imageUrl"],
        platForm: platFormValues.map[json["platForm"]],
        shareContent: json["shareContent"],
        shareTitle: json["shareTitle"],
        token: json["token"],
      );

  Map<String, dynamic> toJson() => {
        "imageUrl": imageUrl,
        "platForm": platFormValues.reverse[platForm],
        "shareContent": shareContent,
        "shareTitle": shareTitle,
        "token": token,
      };
}

enum PlatForm { ALL }

final platFormValues = EnumValues({"all": PlatForm.ALL});

class Tag {
  Tag({
    this.parentTagId,
    this.sortIndex,
    this.source,
    this.tagId,
    this.tagLevel,
    this.tagName,
  });

  int parentTagId;
  int sortIndex;
  int source;
  int tagId;
  int tagLevel;
  String tagName;

  factory Tag.fromJson(Map<String, dynamic> json) => Tag(
        parentTagId: json["parentTagId"],
        sortIndex: json["sortIndex"],
        source: json["source"],
        tagId: json["tagId"],
        tagLevel: json["tagLevel"],
        tagName: json["tagName"],
      );

  Map<String, dynamic> toJson() => {
        "parentTagId": parentTagId,
        "sortIndex": sortIndex,
        "source": source,
        "tagId": tagId,
        "tagLevel": tagLevel,
        "tagName": tagName,
      };
}

class Topic {
  Topic({
    this.image,
    this.level,
    this.topicId,
    this.topicName,
    this.iconImage,
  });

  ImageData image;
  int level;
  int topicId;
  String topicName;
  ImageData iconImage;

  factory Topic.fromJson(Map<String, dynamic> json) => Topic(
        image: json["image"] == null ? null : ImageData.fromJson(json["image"]),
        level: json["level"],
        topicId: json["topicId"],
        topicName: json["topicName"],
        iconImage: json["iconImage"] == null
            ? null
            : ImageData.fromJson(json["iconImage"]),
      );

  Map<String, dynamic> toJson() => {
        "image": image == null ? null : image.toJson(),
        "level": level,
        "topicId": topicId,
        "topicName": topicName,
        "iconImage": iconImage == null ? null : iconImage.toJson(),
      };
}

class Url {
  Url({
    this.appUrl,
    this.h5Url,
    this.version,
    this.wxUrl,
  });

  String appUrl;
  String h5Url;
  Version version;
  String wxUrl;

  factory Url.fromJson(Map<String, dynamic> json) => Url(
        appUrl: json["appUrl"],
        h5Url: json["h5Url"],
        version: versionValues.map[json["version"]],
        wxUrl: json["wxUrl"],
      );

  Map<String, dynamic> toJson() => {
        "appUrl": appUrl,
        "h5Url": h5Url,
        "version": versionValues.reverse[version],
        "wxUrl": wxUrl,
      };
}

enum Version { ARTICLE, TRIP_SHOOT, TRIP_SHOOT2 }

final versionValues = EnumValues({
  "article": Version.ARTICLE,
  "tripShoot": Version.TRIP_SHOOT,
  "tripShoot2": Version.TRIP_SHOOT2
});

class Video {
  Video({
    this.coverImageUrl,
    this.durationSeconds,
    this.height,
    this.mediaType,
    this.videoId,
    this.videoUrl,
    this.width,
  });

  String coverImageUrl;
  int durationSeconds;
  double height;
  int mediaType;
  int videoId;
  String videoUrl;
  double width;

  factory Video.fromJson(Map<String, dynamic> json) => Video(
        coverImageUrl: json["coverImageUrl"],
        durationSeconds: json["durationSeconds"],
        height: json["height"],
        mediaType: json["mediaType"],
        videoId: json["videoId"],
        videoUrl: json["videoUrl"],
        width: json["width"],
      );

  Map<String, dynamic> toJson() => {
        "coverImageUrl": coverImageUrl,
        "durationSeconds": durationSeconds,
        "height": height,
        "mediaType": mediaType,
        "videoId": videoId,
        "videoUrl": videoUrl,
        "width": width,
      };
}

enum VideoAutoplayNet { WIFI_4_G_5_G }

final videoAutoplayNetValues =
    EnumValues({"\"wifi,4g,5g\"": VideoAutoplayNet.WIFI_4_G_5_G});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
