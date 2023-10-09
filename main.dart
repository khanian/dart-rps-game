import 'dart:convert';
import 'dart:io';
import 'dart:math';

void main() {
  /// 1. 유저에게 무엇을 낼 지 물어본다.
  print('가위, 바위, 보 중 하나를 입력하세요.');
  // String? userInput = stdin.readLineSync(encoding: utf8);
  final String userInput = stdin.readLineSync(encoding: utf8) ?? 'Error';
  print(userInput);

  /// 2. 컴퓨터가 무엇을 낼 지 결정한다.
  const selectList = ['가위', '바위', '보'];
  final cpuInput = selectList[Random().nextInt(3)];
  print(cpuInput);

  /// 3. 승패 결과를 계산한다.
  final result = getResult(userInput, cpuInput);
  print(result);
}

String getResult(String userInput, String cpuInput) {
  const CpuWin = 'CPU가 이겼다.';
  const PlayWin = 'Player가 이겼다.';
  const draw = '비겼다.';
  String result = draw;

  switch (userInput) {
    case '가위':
      // if(cpuInput == '가위') {
      //   result = draw;
      // }
      if (cpuInput == '바위') {
        result = CpuWin;
      }
      if (cpuInput == '보') {
        result = PlayWin;
      }
    case '바위':
      if (cpuInput == '가위') {
        result = PlayWin;
      }
      // if(cpuInput == '바위') {
      //   result = draw;
      // }
      if (cpuInput == '보') {
        result = CpuWin;
      }
    case '보':
      if (cpuInput == '가위') {
        result = CpuWin;
      }
      if (cpuInput == '바위') {
        result = PlayWin;
      }
    // if(cpuInput == '보') {
    //   result = draw;
    // }
    default :
      result = '올바른 값을 입력해주세요.';
  }

  return result;
}
