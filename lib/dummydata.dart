import 'package:flutter/material.dart';

class Data {
  final String batchtext;
  final String url;
  final String seattext;
  final String daystext;
  final String title;

  Data({
    required this.batchtext,
    required this.url,
    required this.seattext,
    required this.daystext,
    required this.title,
  });
}

List<Data> dummyData = [
  Data(
    batchtext: 'ব্যাচ ১১',
    url:
        'https://cdn.ostad.app/course/cover/2024-12-17T11-35-19.890Z-Course%20Thumbnail%2012.jpg',
    seattext: '৬ সিট বাকী ',
    daystext: '৬ দিন বাকী',
    title: 'Full Stack Web Development with JavaScript (MERN)',
  ),
  Data(
    batchtext: 'ব্যাচ ৬',
    url:
    'https://cdn.ostad.app/course/cover/2024-12-19T15-48-52.487Z-Full-Stack-Web-Development-with-Python,-Django-&-React.jpg',
    seattext: '৮৬ সিট বাকী ',
    daystext: '৪০ দিন বাকী',
    title: 'Full Stack Web Development with Python, Django & React',
  ),
  Data(
    batchtext: 'ব্যাচ ৭',
    url:
    'https://cdn.ostad.app/course/cover/2024-12-18T15-29-34.261Z-Untitled-1%20(23).jpg',
    seattext: '৭৫ সিট বাকী ',
    daystext: '৩৯ দিন বাকী',
    title: 'Full Stack Web Development with ASP.Net Core',
  ),
  Data(
    batchtext: 'ব্যাচ ১৩',
    url:
    'https://cdn.ostad.app/course/cover/2024-12-18T15-24-44.114Z-Untitled-1%20(21).jpg',
    seattext: '৬৫ সিট বাকী ',
    daystext: '৪১ দিন বাকী',
    title: 'SQA: Manual & Automated Testing',
  ),
];
