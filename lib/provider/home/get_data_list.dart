import 'package:flutter/material.dart';
import 'package:marketplace/models/cards/card_top_model.dart';

mixin GetDataList on ChangeNotifier {
  List<CardTopModel> _listTop = [];
  List<CardTopModel> get listTop => _listTop;

  getDataTopList() {
    var list = [
      CardTopModel(
        crown: 'assets/icons/crown1.png',
        image: 'assets/images/tv1.png',
        title: '스탠바이미 27ART10AKPL (스탠)',
        merk: 'LG전자',
        subTitle: [
          '화면을 이동할 수 있고 전환도 편리하다는 점이 제일 마음에 들었어요. 배송도 빠르고 친절하게 받을 수 있어서 좋았습니다.',
          '스탠바이미는 사랑입니다!️',
        ],
        stars: '4.89',
        sold: '216',
        category: [
          'LG전자',
          '편리성',
        ],
      ),
      CardTopModel(
        crown: 'assets/icons/crown2.png',
        image: 'assets/images/tv2.png',
        title: '울트라HD 75UP8300KNA (스탠드)',
        merk: 'LG전자',
        subTitle: [
          '화면 잘 나오고... 리모컨 기능 좋습니다.',
          '넷플 아마존 등 버튼하나로 바로 접속 되고디스플레이는 액정문제 없어보이고소리는 살짝 약간 감이 있으나 ^^; 시끄러울까봐 그냥 블루투스 헤드폰 구매 예정이라 문제는 없네요. 아주 만족입니다!!',
        ],
        stars: '4.36',
        sold: '136',
        category: [
          'LG전자',
          '고화질',
        ],
      ),
      CardTopModel(
        crown: 'assets/icons/crown3.png',
        image: 'assets/images/tv3.png',
        title: '스마트 DS4001L NETRANGE (스탠드)GX30K WIN10 (SSD 256GB)',
        merk: '라익미',
        subTitle: [
          '반응속도 및 화질이나 여러면에서도 부족함을  느끼기에는 커녕 이정도에 이 정도 성능이면차고 넘칠만 합니다',
          '중소기업TV 라익미 제품을 사용해보았는데 뛰어난 가성비와 더불어OTT 서비스에 오픈 브라우저 까지 너무 마음에 들게끔 기능들을 사용 가능했고',
        ],
        stars: '3.98',
        sold: '98',
        category: [
          '라익미',
          '가성비',
        ],
      ),
    ];

    _listTop = list;
    notifyListeners();
  }
}
