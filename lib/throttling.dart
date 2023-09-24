/*
 * @Author: lipeng 1162423147@qq.com
 * @Date: 2023-08-31 14:41:55
 * @LastEditors: lipeng 1162423147@qq.com
 * @LastEditTime: 2023-09-24 17:45:52
 * @FilePath: /phoenix_guide/lib/throttling.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
part of brn_intro;

///  Throttling
///  Have method [throttle]
class _Throttling {
  late Duration _duration;
  Timer? _timer;

  _Throttling({Duration duration = const Duration(seconds: 1)})
      : assert(!duration.isNegative) {
    _duration = duration;
  }

  void throttle(Function func) {
    if (_timer == null) {
      _timer = Timer(_duration, () {
        Function.apply(func, []);
        _timer = null;
      });
    }
  }
}
