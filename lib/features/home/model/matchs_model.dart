// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class MatchesModel {
  String teamA;
  String teamB;
  int teamAScore;
  double the1XbetOddsAvg;
  double betsafeOddsAvg;
  double betssonOddsAvg;
  int likesCount;
  int starsCount;
  int viewsCount;
  int sharesCount;
  String channels;
  String stadium;
  String referee;
  String refereeAvatar;
  String refereeStats;
  String teamAImage;
  String teamBImage;
  double redCardMedia;
  double yellowCardMedia;
  String teamAStats;
  String teamBStats;
  String id;

  MatchesModel({
    required this.teamA,
    required this.teamB,
    required this.teamAScore,
    required this.the1XbetOddsAvg,
    required this.betsafeOddsAvg,
    required this.betssonOddsAvg,
    required this.likesCount,
    required this.starsCount,
    required this.viewsCount,
    required this.sharesCount,
    required this.channels,
    required this.stadium,
    required this.referee,
    required this.refereeAvatar,
    required this.refereeStats,
    required this.teamAImage,
    required this.teamBImage,
    required this.redCardMedia,
    required this.yellowCardMedia,
    required this.teamAStats,
    required this.teamBStats,
    required this.id,
  });

  MatchesModel copyWith({
    String? teamA,
    String? teamB,
    int? teamAScore,
    double? the1XbetOddsAvg,
    double? betsafeOddsAvg,
    double? betssonOddsAvg,
    int? likesCount,
    int? starsCount,
    int? viewsCount,
    int? sharesCount,
    String? channels,
    String? stadium,
    String? referee,
    String? refereeAvatar,
    String? refereeStats,
    String? teamAImage,
    String? teamBImage,
    double? redCardMedia,
    double? yellowCardMedia,
    String? teamAStats,
    String? teamBStats,
    String? id,
  }) {
    return MatchesModel(
      teamA: teamA ?? this.teamA,
      teamB: teamB ?? this.teamB,
      teamAScore: teamAScore ?? this.teamAScore,
      the1XbetOddsAvg: the1XbetOddsAvg ?? this.the1XbetOddsAvg,
      betsafeOddsAvg: betsafeOddsAvg ?? this.betsafeOddsAvg,
      betssonOddsAvg: betssonOddsAvg ?? this.betssonOddsAvg,
      likesCount: likesCount ?? this.likesCount,
      starsCount: starsCount ?? this.starsCount,
      viewsCount: viewsCount ?? this.viewsCount,
      sharesCount: sharesCount ?? this.sharesCount,
      channels: channels ?? this.channels,
      stadium: stadium ?? this.stadium,
      referee: referee ?? this.referee,
      refereeAvatar: refereeAvatar ?? this.refereeAvatar,
      refereeStats: refereeStats ?? this.refereeStats,
      teamAImage: teamAImage ?? this.teamAImage,
      teamBImage: teamBImage ?? this.teamBImage,
      redCardMedia: redCardMedia ?? this.redCardMedia,
      yellowCardMedia: yellowCardMedia ?? this.yellowCardMedia,
      teamAStats: teamAStats ?? this.teamAStats,
      teamBStats: teamBStats ?? this.teamBStats,
      id: id ?? this.id,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'team_a': teamA,
      'team_b': teamB,
      'team_a_score': teamAScore,
      'the1Xbet_odds_avg': the1XbetOddsAvg,
      'betsafe_odds_avg': betsafeOddsAvg,
      'betsson_odds_avg': betssonOddsAvg,
      'likes_count': likesCount,
      'stars_count': starsCount,
      'views_count': viewsCount,
      'shares_count': sharesCount,
      'channels': channels,
      'stadium': stadium,
      'referee': referee,
      'referee_avatar': refereeAvatar,
      'referee_stats': refereeStats,
      'team_a_image': teamAImage,
      'team_b_image': teamBImage,
      'red_card_media': redCardMedia,
      'yellow_card_media': yellowCardMedia,
      'team_a_stats': teamAStats,
      'team_b_stats': teamBStats,
      'id': id,
    };
  }

  factory MatchesModel.fromMap(Map<String, dynamic> map) {
    return MatchesModel(
      teamA: map['team_a'] as String,
      teamB: map['team_b'] as String,
      teamAScore: map['team_a_score'] as int,
      the1XbetOddsAvg: map['1xbet_odds_avg'] as double,
      betsafeOddsAvg: map['betsafe_odds_avg'] as double,
      betssonOddsAvg: map['betsson_odds_avg'] as double,
      likesCount: map['likes_count'] as int,
      starsCount: map['stars_count'] as int,
      viewsCount: map['views_count'] as int,
      sharesCount: map['shares_count'] as int,
      channels: map['channels'] as String,
      stadium: map['stadium'] as String,
      referee: map['referee'] as String,
      refereeAvatar: map['referee_avatar'] as String,
      refereeStats: map['referee_stats'] as String,
      teamAImage: map['team_a_image'] as String,
      teamBImage: map['team_b_image'] as String,
      redCardMedia: map['red_card_media'] as double,
      yellowCardMedia: map['yellow_card_media'] as double,
      teamAStats: map['team_a_stats'] as String,
      teamBStats: map['team_b_stats'] as String,
      id: map['id'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory MatchesModel.fromJson(String source) =>
      MatchesModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'MatchesModel(team_a: $teamA, team_b: $teamB, team_a_score: $teamAScore, 1xbet_odds_avg: $the1XbetOddsAvg, betsafe_odds_avg: $betsafeOddsAvg, betsson_odds_avg: $betssonOddsAvg, likes_count: $likesCount, stars_count: $starsCount, views_count: $viewsCount, shares_count: $sharesCount, channels: $channels, stadium: $stadium, referee: $referee, referee_avatar: $refereeAvatar, referee_stats: $refereeStats, team_a_image: $teamAImage, team_b_image: $teamBImage, red_card_media: $redCardMedia, yellow_card_media: $yellowCardMedia, team_a_stats: $teamAStats, team_b_stats: $teamBStats, id: $id,)';
  }

  @override
  bool operator ==(covariant MatchesModel other) {
    if (identical(this, other)) return true;

    return other.teamA == teamA &&
        other.teamB == teamB &&
        other.teamAScore == teamAScore &&
        other.the1XbetOddsAvg == the1XbetOddsAvg &&
        other.betsafeOddsAvg == betsafeOddsAvg &&
        other.betssonOddsAvg == betssonOddsAvg &&
        other.likesCount == likesCount &&
        other.starsCount == starsCount &&
        other.viewsCount == viewsCount &&
        other.sharesCount == sharesCount &&
        other.channels == channels &&
        other.stadium == stadium &&
        other.referee == referee &&
        other.refereeAvatar == refereeAvatar &&
        other.refereeStats == refereeStats &&
        other.teamAImage == teamAImage &&
        other.teamBImage == teamBImage &&
        other.redCardMedia == redCardMedia &&
        other.yellowCardMedia == yellowCardMedia &&
        other.teamAStats == teamAStats &&
        other.teamBStats == teamBStats &&
        other.id == id;
  }

  @override
  int get hashCode {
    return teamA.hashCode ^
        teamB.hashCode ^
        teamAScore.hashCode ^
        the1XbetOddsAvg.hashCode ^
        betsafeOddsAvg.hashCode ^
        betssonOddsAvg.hashCode ^
        likesCount.hashCode ^
        starsCount.hashCode ^
        viewsCount.hashCode ^
        sharesCount.hashCode ^
        channels.hashCode ^
        stadium.hashCode ^
        referee.hashCode ^
        refereeAvatar.hashCode ^
        refereeStats.hashCode ^
        teamAImage.hashCode ^
        teamBImage.hashCode ^
        redCardMedia.hashCode ^
        yellowCardMedia.hashCode ^
        teamAStats.hashCode ^
        teamBStats.hashCode ^
        id.hashCode;
  }
}
