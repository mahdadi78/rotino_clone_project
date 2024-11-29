// To parse this JSON data, do
//
//     final time = timeFromJson(jsonString);

import 'dart:convert';

TimeModel timeFromJson(String str) => TimeModel.fromJson(json.decode(str));

String timeToJson(TimeModel data) => json.encode(data.toJson());

class TimeModel {
  Timestamp unix;
  Timestamp timestamp;
  Season timezone;
  Season season;
  Time12 time12;
  Time24 time24;
  Date date;

  TimeModel({
    required this.unix,
    required this.timestamp,
    required this.timezone,
    required this.season,
    required this.time12,
    required this.time24,
    required this.date,
  });

  factory TimeModel.fromJson(Map<String, dynamic> json) => TimeModel(
        unix: Timestamp.fromJson(json["unix"]),
        timestamp: Timestamp.fromJson(json["timestamp"]),
        timezone: Season.fromJson(json["timezone"]),
        season: Season.fromJson(json["season"]),
        time12: Time12.fromJson(json["time12"]),
        time24: Time24.fromJson(json["time24"]),
        date: Date.fromJson(json["date"]),
      );

  Map<String, dynamic> toJson() => {
        "unix": unix.toJson(),
        "timestamp": timestamp.toJson(),
        "timezone": timezone.toJson(),
        "season": season.toJson(),
        "time12": time12.toJson(),
        "time24": time24.toJson(),
        "date": date.toJson(),
      };
}

class Date {
  DateFull full;
  Other other;
  Year year;
  Month month;
  Day day;
  Weekday weekday;

  Date({
    required this.full,
    required this.other,
    required this.year,
    required this.month,
    required this.day,
    required this.weekday,
  });

  factory Date.fromJson(Map<String, dynamic> json) => Date(
        full: DateFull.fromJson(json["full"]),
        other: Other.fromJson(json["other"]),
        year: Year.fromJson(json["year"]),
        month: Month.fromJson(json["month"]),
        day: Day.fromJson(json["day"]),
        weekday: Weekday.fromJson(json["weekday"]),
      );

  Map<String, dynamic> toJson() => {
        "full": full.toJson(),
        "other": other.toJson(),
        "year": year.toJson(),
        "month": month.toJson(),
        "day": day.toJson(),
        "weekday": weekday.toJson(),
      };
}

class Day {
  String name;

  Number number;

  Day({
    required this.name,
    required this.number,
  });

  factory Day.fromJson(Map<String, dynamic> json) => Day(
        name: json["name"],
        number: Number.fromJson(json["number"]),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "number": number.toJson(),
      };
}

class Local {
  String text;
  bool holiday;

  Local({
    required this.text,
    required this.holiday,
  });

  factory Local.fromJson(Map<String, dynamic> json) => Local(
        text: json["text"],
        holiday: json["holiday"],
      );

  Map<String, dynamic> toJson() => {
        "text": text,
        "holiday": holiday,
      };
}

class Number {
  String fa;
  String en;

  Number({
    required this.fa,
    required this.en,
  });

  factory Number.fromJson(Map<String, dynamic> json) => Number(
        fa: json["fa"],
        en: json["en"],
      );

  Map<String, dynamic> toJson() => {
        "fa": fa,
        "en": en,
      };
}

class DateFull {
  Official official;
  Unofficial unofficial;

  DateFull({
    required this.official,
    required this.unofficial,
  });

  factory DateFull.fromJson(Map<String, dynamic> json) => DateFull(
        official: Official.fromJson(json["official"]),
        unofficial: Unofficial.fromJson(json["unofficial"]),
      );

  Map<String, dynamic> toJson() => {
        "official": official.toJson(),
        "unofficial": unofficial.toJson(),
      };
}

class Official {
  Iso iso;
  Number usual;

  Official({
    required this.iso,
    required this.usual,
  });

  factory Official.fromJson(Map<String, dynamic> json) => Official(
        iso: Iso.fromJson(json["iso"]),
        usual: Number.fromJson(json["usual"]),
      );

  Map<String, dynamic> toJson() => {
        "iso": iso.toJson(),
        "usual": usual.toJson(),
      };
}

class Iso {
  String fa;
  DateTime en;

  Iso({
    required this.fa,
    required this.en,
  });

  factory Iso.fromJson(Map<String, dynamic> json) => Iso(
        fa: json["fa"],
        en: DateTime.parse(json["en"]),
      );

  Map<String, dynamic> toJson() => {
        "fa": fa,
        "en":
            "${en.year.toString().padLeft(4, '0')}-${en.month.toString().padLeft(2, '0')}-${en.day.toString().padLeft(2, '0')}",
      };
}

class Unofficial {
  Number iso;
  Number usual;

  Unofficial({
    required this.iso,
    required this.usual,
  });

  factory Unofficial.fromJson(Map<String, dynamic> json) => Unofficial(
        iso: Number.fromJson(json["iso"]),
        usual: Number.fromJson(json["usual"]),
      );

  Map<String, dynamic> toJson() => {
        "iso": iso.toJson(),
        "usual": usual.toJson(),
      };
}

class Month {
  String name;
  String asterism;
  Number number;

  Month({
    required this.name,
    required this.asterism,
    required this.number,
  });

  factory Month.fromJson(Map<String, dynamic> json) => Month(
        name: json["name"],
        asterism: json["asterism"],
        number: Number.fromJson(json["number"]),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "asterism": asterism,
        "number": number.toJson(),
      };
}

class Other {
  Official gregorian;
  Unofficial ghamari;

  Other({
    required this.gregorian,
    required this.ghamari,
  });

  factory Other.fromJson(Map<String, dynamic> json) => Other(
        gregorian: Official.fromJson(json["gregorian"]),
        ghamari: Unofficial.fromJson(json["ghamari"]),
      );

  Map<String, dynamic> toJson() => {
        "gregorian": gregorian.toJson(),
        "ghamari": ghamari.toJson(),
      };
}

class Weekday {
  String name;
  String champ;
  Number number;

  Weekday({
    required this.name,
    required this.champ,
    required this.number,
  });

  factory Weekday.fromJson(Map<String, dynamic> json) => Weekday(
        name: json["name"],
        champ: json["champ"],
        number: Number.fromJson(json["number"]),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "champ": champ,
        "number": number.toJson(),
      };
}

class Year {
  String name;
  String animal;
  String leapyear;
  Agone agone;
  Agone left;
  Number number;

  Year({
    required this.name,
    required this.animal,
    required this.leapyear,
    required this.agone,
    required this.left,
    required this.number,
  });

  factory Year.fromJson(Map<String, dynamic> json) => Year(
        name: json["name"],
        animal: json["animal"],
        leapyear: json["leapyear"],
        agone: Agone.fromJson(json["agone"]),
        left: Agone.fromJson(json["left"]),
        number: Number.fromJson(json["number"]),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "animal": animal,
        "leapyear": leapyear,
        "agone": agone.toJson(),
        "left": left.toJson(),
        "number": number.toJson(),
      };
}

class Agone {
  Number days;
  Number percent;

  Agone({
    required this.days,
    required this.percent,
  });

  factory Agone.fromJson(Map<String, dynamic> json) => Agone(
        days: Number.fromJson(json["days"]),
        percent: Number.fromJson(json["percent"]),
      );

  Map<String, dynamic> toJson() => {
        "days": days.toJson(),
        "percent": percent.toJson(),
      };
}

class Season {
  String name;
  Number number;

  Season({
    required this.name,
    required this.number,
  });

  factory Season.fromJson(Map<String, dynamic> json) => Season(
        name: json["name"],
        number: Number.fromJson(json["number"]),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "number": number.toJson(),
      };
}

class Time12 {
  Time12Full full;
  Number hour;
  Number minute;
  Number second;
  Number microsecond;
  Shift shift;

  Time12({
    required this.full,
    required this.hour,
    required this.minute,
    required this.second,
    required this.microsecond,
    required this.shift,
  });

  factory Time12.fromJson(Map<String, dynamic> json) => Time12(
        full: Time12Full.fromJson(json["full"]),
        hour: Number.fromJson(json["hour"]),
        minute: Number.fromJson(json["minute"]),
        second: Number.fromJson(json["second"]),
        microsecond: Number.fromJson(json["microsecond"]),
        shift: Shift.fromJson(json["shift"]),
      );

  Map<String, dynamic> toJson() => {
        "full": full.toJson(),
        "hour": hour.toJson(),
        "minute": minute.toJson(),
        "second": second.toJson(),
        "microsecond": microsecond.toJson(),
        "shift": shift.toJson(),
      };
}

class Time12Full {
  Number short;
  Number full;

  Time12Full({
    required this.short,
    required this.full,
  });

  factory Time12Full.fromJson(Map<String, dynamic> json) => Time12Full(
        short: Number.fromJson(json["short"]),
        full: Number.fromJson(json["full"]),
      );

  Map<String, dynamic> toJson() => {
        "short": short.toJson(),
        "full": full.toJson(),
      };
}

class Shift {
  String short;
  String full;

  Shift({
    required this.short,
    required this.full,
  });

  factory Shift.fromJson(Map<String, dynamic> json) => Shift(
        short: json["short"],
        full: json["full"],
      );

  Map<String, dynamic> toJson() => {
        "short": short,
        "full": full,
      };
}

class Time24 {
  Number full;
  Number hour;
  Number minute;
  Number second;

  Time24({
    required this.full,
    required this.hour,
    required this.minute,
    required this.second,
  });

  factory Time24.fromJson(Map<String, dynamic> json) => Time24(
        full: Number.fromJson(json["full"]),
        hour: Number.fromJson(json["hour"]),
        minute: Number.fromJson(json["minute"]),
        second: Number.fromJson(json["second"]),
      );

  Map<String, dynamic> toJson() => {
        "full": full.toJson(),
        "hour": hour.toJson(),
        "minute": minute.toJson(),
        "second": second.toJson(),
      };
}

class Timestamp {
  String fa;
  int en;

  Timestamp({
    required this.fa,
    required this.en,
  });

  factory Timestamp.fromJson(Map<String, dynamic> json) => Timestamp(
        fa: json["fa"],
        en: json["en"],
      );

  Map<String, dynamic> toJson() => {
        "fa": fa,
        "en": en,
      };
}
