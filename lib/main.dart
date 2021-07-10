import 'package:flutter/material.dart';

void main () {
  // 所谓的width或者 height 都是在给上层建议， 如果不符合约束的条件就不会被采纳
  // 比如 手机屏幕是 400 × 400
  // 如果你的container 要求 200 × 200 但是又不和他说你要摆在哪 就不会被采纳 因为上级约束是 400 × 400
  runApp(Center(
    child: Container(
      width: 400,
      height: 400,
      color: Colors.orange,
      alignment: Alignment.center,
      child: Container(
        color: Colors.white,
        width: 200,
        height: 200,
        alignment: Alignment.center, // 如果加了约束， child可设置的范围就在0 ～ 200
        child: FlutterLogo(
          size: 150,
        ),
      ),
    ),
  ));
}
