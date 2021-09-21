import 'dart:io';

import 'package:smart_calculator/data_number.dart';
import 'package:smart_calculator/do_operation.dart';
import 'package:smart_calculator/history.dart';

void main(List<String> arguments) {
  var history = <History>[];
  print('''
  SELAMAT DATANG DI KALKULATOR PALING PINTAR
  ******************************************
  ''');

  do {
    print('''
  \n
  Masukkan menu : 
  1. Penjumlahan     4. Pembagian
  2. Pengurangan     5. FPB
  3. Perkalian       6. KPK
          0. History
  ''');

    print('Masukkan pilihan Anda  :');
    var option = int.tryParse(stdin.readLineSync() ?? '0');
    switch (option) {
      case 1:
        var number = inputNumber();
        var result = doOperation(number);
        print('Hasil dari penjumlahan bilangan ${number[0]} dan ${number[1]}');
        print('-->>> ${result.addition()}');
        history.add(History(number, '+', result.addition()));
        break;
      case 2:
        var number = inputNumber();
        var result = doOperation(number);
        print('Hasil dari pengurangan bilangan ${number[0]} dan ${number[1]}');
        print('-->>> ${result.subtraction()}');
        history.add(History(number, '-', result.subtraction()));
        break;
      case 3:
        var number = inputNumber();
        var result = doOperation(number);
        print('Hasil dari perkalian bilangan ${number[0]} dan ${number[1]}');
        print('-->>> ${result.multiplied()}');
        history.add(History(number, '*', result.multiplied()));
        break;
      case 4:
        var number = inputNumber();
        var result = doOperation(number);
        print('Hasil dari pembagian bilangan ${number[0]} dan ${number[1]}');
        print('-->>> ${result.division()}');
        history.add(History(number, '/', result.division()));
        break;
      case 5:
        var number = inputNumber();
        var result = doOperation(number);
        print('Hasil dari FPB bilangan ${number[0]} dan ${number[1]}');
        print('-->>> ${result.highestCommonFactor()}');
        history.add(History(number, 'FPB', result.highestCommonFactor()));
        break;
      case 6:
        var number = inputNumber();
        var result = doOperation(number);
        print('Hasil dari KPK bilangan ${number[0]} dan ${number[1]}');
        print('-->>> ${result.lowestCommonMultiple()}');
        history.add(History(number, 'KPK', result.lowestCommonMultiple()));
        break;
      case 0:
        var listHistory = history
            .map((e) => {
                  'Hasil dari ${e.number[0]} ${e.operator} ${e.number[1]} = ${e.result}'
                })
            .toList();
        print('Daftar Riwayat');
        for (var i = 0; i < history.length; i++) {
          print(listHistory[i].toString());
        }
        break;
      default:
        print('Anda memasukkan pilihan yang salah');
    }
  } while (true);
}

List inputNumber() {
  print('Masukkan angka pertama :');
  var numberA = double.parse(stdin.readLineSync() ?? '0');
  print('Masukkan angka kedua :');
  var numberB = double.parse(stdin.readLineSync() ?? '0');

  return [numberA, numberB];
}

DoOperation doOperation(List number) {
  return DoOperation(DataNumber(number[0], number[1]));
}
