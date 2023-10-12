/*
 * @Author: lipeng 1162423147@qq.com
 * @Date: 2022-04-29 17:06:50
 * @LastEditors: lipeng 1162423147@qq.com
 * @LastEditTime: 2023-10-12 09:03:54
 * @FilePath: /phoenix_guide/example/lib/guide_entry_page.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
import 'package:flutter/material.dart';

import 'force_guide_example.dart';
import 'list_item.dart';
import 'soft_intro_example.dart';

class GuideEntryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("引导示例"),
      ),
      body: ListView(
        children: [
          ListItem(
            title: "强引导组件",
            isShowLine: false,
            describe: '强引导组件example',
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (BuildContext context) {
                  return ForceGuideExample();
                },
              ));
            },
          ),
          ListItem(
            title: "弱引导组件",
            isSupportTheme: true,
            describe: '弱引导组件example',
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (BuildContext context) {
                  return SoftGuideExample();
                },
              ));
            },
          ),
        ],
      ),
    );
  }
}
