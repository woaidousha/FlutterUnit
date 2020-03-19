const nodeData = {
  "Container": [
    {
      "widgetId": 1,
      "name": '可以在区域中放入一个子组件',
      "priority": 1,
      "subtitle": "【padding】 : 内边距   【EdgeInsetsGeometry】\n"
          "【margin】: 外边距   【EdgeInsetsGeometry】\n"
          "【child】: 子组件    【Widget】",
      "code": """class ContainerAlignment extends StatelessWidget {
      @override
      Widget build(BuildContext context) {
        return Container(
          alignment: Alignment.bottomRight,
          width: 200,
          height: 200 * 0.618,
          color: Colors.grey.withAlpha(88),
          child: Icon(
            Icons.android,
            color: Colors.green,
          ),
        );
      }
    }"""
    },
    {
      "widgetId": 1,
      "name": '可对子组件进行对齐定位',
      "priority": 2,
      "subtitle": "【alignment】 : 对齐定位   【AlignmentGeometry】",
      "code": """class ContainerDecoration extends StatelessWidget {
      @override
      Widget build(BuildContext context) {
        var stops = [0.0, 1 / 6, 2 / 6, 3 / 6, 4 / 6, 5 / 6, 1.0]
        return Container(
          //容器
          alignment: Alignment.center,
          width: 200,
          height: 200 * 0.618,
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
    //添加渐变色
    gradient: LinearGradient(
        stops: stops,
        colors: Cons.rainbow.map((e) => Color(e)).toList()),
    borderRadius: BorderRadius.only(
        topLeft: Radius.circular(50),
        bottomRight: Radius.circular(50)),
    boxShadow: [
      BoxShadow(
          color: Colors.grey,
          offset: Offset(1, 1),
          blurRadius: 10,
          spreadRadius: 1),
    ]),
          child: Text(
            "Container",
            style: TextStyle(fontSize: 20),
          ),
        );
      }
    }"""
    },
    {
      "widgetId": 1,
      "name": '可对子组件进行对齐定位',
      "priority": 3,
      "subtitle":
          "【decoration】 : 装饰   【Decoration】\n 可装饰: 边线、圆弧、颜色、渐变色、阴影、图片等内容",
      "code": """class ContainerTransform extends StatelessWidget {
      @override
      Widget build(BuildContext context) {
        return Container(
          //容器
          alignment: Alignment.center,
          color: Colors.cyanAccent,
          width: 150,
          height: 150 * 0.618,
          transform: Matrix4.skew(-pi / 10, 0),
          child: Text(
            "Container",
            style: TextStyle(fontSize: 20),
          ),
        );
      }
    }"""
    },
    {
      "widgetId": 1,
      "name": 'Container还具有变换性',
      "priority": 4,
      "subtitle": "【transform】 : 变换矩阵   【Matrix4】\n 基于Matrix4的矩阵变换，变换详情见线性代数",
      "code": """class ContainerTransform extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //容器
      alignment: Alignment.center,
      color: Colors.cyanAccent,
      width: 150,
      height: 150 * 0.618,
      transform: Matrix4.skew(-pi / 10, 0),
      child: Text(
        "Container",
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}"""
    },
    {
      "widgetId": 1,
      "name": 'Container的约束性',
      "priority": 5,
      "subtitle":
          "【constraints】 : 约束   【BoxConstraints】\n 会约束该区域的尺寸，不会小于指定的最小宽高，也不会大于指定的最大宽高。",
      "code": """class ContainerConstraints extends StatelessWidget {
      @override
      Widget build(BuildContext context) {
        return Container(
          //容器
          color: Colors.blue,
          width: 200,
          height: 200 * 0.618,
          constraints: BoxConstraints(
    minWidth: 100, maxWidth: 150,
    minHeight: 20, maxHeight: 100),
        );
      }
    }"""
    }
  ],
  "Text": [
    {
      "widgetId": 2,
      "priority": 1,
      "name": "文字的基本样式",
      "subtitle": "【入参】 : 文字  【String】\n"
          "【style】: 文字样式   【TextStyle】\n"
          "【color】: 文字样式   【Color】\n"
          "【fontSize】: 文字大小   【double】\n"
          "【fontWeight】: 字重   【FontWeight】\n"
          "【fontStyle】: 字体样式   【fontStyle】\n"
          "【letterSpacing】: 字距   【double】",
      "code": """class CustomText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var style = TextStyle(
      color: Colors.red,
      fontSize: 20,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.italic,
      letterSpacing: 10,
    );
    return Container(
      width: 200,
      color: Colors.cyanAccent.withAlpha(33),
      height: 200 * 0.618* 0.618,
      child: Text("toly-张风捷特烈-1994`", style: style),
    );
  }
}""",
    },
    {
      "widgetId": 2,
      "priority": 2,
      "name": "文字阴影",
      "subtitle": "【shadows】 : 文字  【List<Shadow>】\n"
          "【backgroundColor】: 背景颜色   【Color】",
      "code": """class ShadowText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      "张风捷特烈",
      style: TextStyle(
          fontSize: 50,
          color: Colors.white,
          backgroundColor: Colors.black,
          shadows: [
            Shadow(
                color: Colors.cyanAccent, 
                offset: Offset(1, 1), 
                blurRadius: 10),
            Shadow(
                color: Colors.blue, 
                offset: Offset(-0.1, 0.1), 
                blurRadius: 10),
          ]),
    );
  }
}""",
    },
    {
      "widgetId": 2,
      "priority": 3,
      "name": "文字装饰线",
      "subtitle": "【fontFamily】 : 文字字体  【String】\n"
          "【decoration】: 装饰线   【TextDecoration】\n"
          "【decorationColor】: 装饰线颜色   【Color】\n"
          "【decorationThickness】: 装饰线粗   【double】\n"
          "【decorationStyle】: 装饰线样式   【TextDecorationStyle】",
      "code": """class DecorationText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      "19940328",
      style: TextStyle(
          fontSize: 50,
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.underline,
          decorationThickness: 3,
          decorationStyle: TextDecorationStyle.wavy,
          decorationColor: Colors.blue,
          fontStyle: FontStyle.italic,
          fontFamily: "Menlo",
          letterSpacing: 10),
    );
  }
}"""
    },
    {
      "widgetId": 2,
      "priority": 4,
      "name": "文字对齐方式",
      "subtitle": "【textAlign】: 对齐方式   【TextAlign】\n"
          "下面依次是:left、right、center、justify、start、end ",
      "code": """class TextAlignText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      runSpacing: 10,
      children: TextAlign.values
          .map((e) => Container(
                width: 120,
                color: Colors.cyanAccent.withAlpha(33),
                height: 120 * 0.618,
                child: Text(
                  " 张风捷特烈 toly " * 3,
                  textAlign: e,
                ),
              ))
          .toList(),
    );
  }
}"""
    },
    {
      "widgetId": 2,
      "priority": 5,
      "name": "文字方向与最大行数",
      "subtitle": "【maxLines】 : 最大行数  【int】\n"
          "【【textDirection】 : 文字方向  【TextDirection】\n"
          "下面依次是:rtl、ltr ",
      "code": """class TextDirectionText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 40,
      runSpacing: 10,
      children: TextDirection.values
          .map((e) => Container(
                width: 120,
                color: Colors.cyanAccent.withAlpha(33),
                height: 120 * 0.618,
                child: Text(
                  " 张风捷特烈 toly " * 10,
                  textDirection: e,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ))
          .toList(),
    );
  }
}""",
    },
    {
      "widgetId": 2,
      "priority": 6,
      "name": "是否包裹与越界效果",
      "subtitle": "【softWrap】 : 是否换行  【bool】\n"
          "【overflow】 : 越界效果  【TextOverflow】\n"
          "下面softWrap=false;  overflow依次是:clip、fade、ellipsis、visible ",
      "code": """class SoftWrapText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      runSpacing: 10,
      children: TextOverflow.values
          .map((e) => Container(
                width: 150,
                color: Colors.cyanAccent.withAlpha(33),
                height: 150 * 0.618 * 0.618,
                child: Text(" 张风捷特烈 toly " * 5, 
                    overflow: e, 
                    softWrap: false),
              ))
          .toList(),
    );
  } 
}""",
    },
  ],
  "Card": [
    {
      "widgetId": 3,
      "priority": 1,
      "name": "Card可以让一个组件卡片化",
      "subtitle": "【elevation】 : 影深  【double】\n"
          "【margin】: 外边距   【double】\n"
          "【color】: 颜色   【Color】\n"
          "【child】: 孩子   【Widget】",
      "code": """class CustomCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xffB3FE65),
      elevation: 4,
      margin: EdgeInsets.all(10),
      child: Container(
        alignment: Alignment.topLeft,
        width: 200,
        height: 0.618*200,
        margin: EdgeInsets.all(10),
        child: Text("Card", style: TextStyle(fontSize: 20)),
      ),
    );
  }
}"""
    },
    {
      "widgetId": 3,
      "priority": 2,
      "name": "可以通过shape属性实现裁切效果",
      "subtitle": "【shape】 : 形状  【ShapeBorder】\n"
          "【margin】: 外边距   【double】\n"
          "【color】: 颜色   【Color】\n"
          "【child】: 孩子   【Widget】",
      "code": """class ShapeCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xffB3FE65),
      elevation: 6,
      shape: StarShapeBorder(),
      child: Container(
        alignment: Alignment.center,
        width: 100,
        height: 100,
        child: Text("Card", style: TextStyle(fontSize: 20)),
      ),
    );
  }
}

class StarShapeBorder extends ShapeBorder {
  @override
  EdgeInsetsGeometry get dimensions => null;

  @override
  Path getInnerPath(Rect rect, {TextDirection textDirection}) {
    return null;
  }

  @override
  Path getOuterPath(Rect rect, {TextDirection textDirection}) =>
      Pather.create.nStarPath(9, 50, 40, dx: 50, dy: 50);

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection textDirection}) {
  }

  @override
  ShapeBorder scale(double t) {
    return null;
  }
}
"""
    },
  ],
  "FlutterLogo": [
    {
      "widgetId": 4,
      "priority": 1,
      "name": "用于显示一个FlutterLogo",
      "subtitle": "【size】 : 大小  【double】\n"
          "【colors】: 颜色   【MaterialColor】",
      "code": """class CustomFlutterLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var data = {
      Colors.blue:50.0,
      Colors.red:60.0,
      Colors.green:70.0,
      Colors.yellow:80.0,
    };
    return Wrap(
      children: data.keys
          .map((e) => FlutterLogo(
                size: data[e],
                colors: e,
              ))
          .toList(),
    );
  }
}""",
    },
    {
      "widgetId": 4,
      "priority": 2,
      "name": "样式用于显示文字",
      "subtitle": "【style】 : 样式-3种枚举  【FlutterLogoStyle】\n"
          "【textColor】: 文字颜色   【Color】",
      "code": """class FlutterLogoWithText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var data = {
      FlutterLogoStyle.horizontal:Colors.blue,
      FlutterLogoStyle.markOnly:Colors.red,
      FlutterLogoStyle.stacked:Colors.green,
    };

    return Wrap(
      spacing: 20,
      children: data.keys.map((e) => FlutterLogo(
        size: 80,
        style: e,
        textColor: data[e],
      ))
          .toList(),
    );
  }
}"""
    },
  ],
  "Banner": [
    {
      "widgetId": 5,
      "priority": 1,
      "name": "用于显示一个角标",
      "subtitle": "【message】 : 显示的文字信息  【String】\n"
          "【location】 : 位置*4  【BannerLocation】\n"
          "【color】: 角标颜色   【Color】\n"
          "【child】: 孩子   【Widget】\n"
          "【textStyle】: 文字样式   【TextStyle】",
      "code": """class CustomBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var data = {
      BannerLocation.topStart: Colors.red,
      BannerLocation.topEnd: Colors.blue,
      BannerLocation.bottomStart: Colors.green,
      BannerLocation.bottomEnd: Colors.yellow,
    };
    return Wrap(
        spacing: 10,
        runSpacing: 10,
        children: data.keys.map((e) =>
            Container(
              color: Color(0xffD8F5FF),
              width: 150,
              height: 150 * 0.618,
              child: Banner(
                message: "Flutter 1.12发布",
                location: e,
                color: data[e],
                child: Padding(
                    padding: EdgeInsets.all(20),
                    child: FlutterLogo(colors: Colors.blue,
                      style: FlutterLogoStyle.horizontal,)),
              ),
            )).toList());
  }
}""",
    },
  ],
  "Icon": [
    {
      "widgetId": 6,
      "priority": 1,
      "name": "用于显示一个图标",
      "subtitle": "【入参】 :图标数据 【IconData】\n"
          "【size】 : 大小  【double】\n"
          "【color】: 颜色   【Color】",
      "code": """class CustomIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      children: <Widget>[
        Icon(
          Icons.send,
          color: Colors.orange,
          size: 60,
        ),

        Icon(
          Icons.android,
          color: Colors.green,
          size: 100,
        ),
      ],
    );
  }
}""",
    },
    {
      "widgetId": 6,
      "priority": 2,
      "name": "使用自定义图标",
      "subtitle": "可在iconfont网站中下载图标字体进行使用",
      "code": """class MyIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 20,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        TolyIcon.icon_weichat,
        TolyIcon.icon_go,
        TolyIcon.icon_pc,
        TolyIcon.icon_file
      ]
          .map((e) => Icon(
                e,
                color: Colors.green,
                size: 60,
              ))
          .toList(),
    );
  }
}""",
    },
  ],
  "ImageIcon": [
    {
      "widgetId": 7,
      "priority": 1,
      "name": "用于显示一个纯色图片",
      "subtitle": "【入参】 : 图片资源  【ImageProvider】\n"
          "【size】 : 大小  【double】\n"
          "【color】: 角标颜色   【Color】",
      "code": """class CustomImageIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var data = {
      Colors.blue: 50.0,
      Colors.red: 60.0,
      Colors.green: 70.0,
      Colors.yellow: 80.0,
    };
    return Wrap(
      spacing: 10,
      children: data.keys
          .map((e) => ImageIcon(
                AssetImage("assets/images/leaf.png"),
                color: e,
                size: data[e],
              ))
          .toList(),
    );
  }
}"""
    }
  ],
  "FadeInImage": [
    {
      "widgetId": 8,
      "priority": 1,
      "name": "FadeInImage.assetNetwork加载网络图片",
      "subtitle": "【placeholder】 : 展位图地址  【String】\n"
          "【image】 : 显示图地址  【String】\n"
          "【width】: 宽   【double】\n"
          "【height】: 高   【double】\n"
          "【fadeInDuration】: 淡入时长   【Duration】\n"
          "【fadeOutDuration】: 淡出时长   【Duration】\n"
          "【fadeInCurve】: 淡入曲线   【Cubic】\n"
          "【fadeOutCurve】: 淡出曲线   【Cubic】\n"
          "【fit】: 适应模式   【BoxFit】\n"
          "【alignment】: 对齐模式   【Alignment】\n"
          "【repeat】: 重复模式   【ImageRepeat】\n",
      "code": """class CustomFadeImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var placeholder = "assets/images/icon_head.png";
    var img =
        "https://user-gold-cdn.xitu.io/2017/8/24/"
        "d324efef8cbee6468a018aad7ab2ba6b?imageView2/"
        "1/w/180/h/180/q/85/format/webp/interlace/1";
    return FadeInImage.assetNetwork(
        placeholder: placeholder,
        image: img,
      width: 100,
      height: 100,
      fit: BoxFit.cover,
      repeat:ImageRepeat.noRepeat,
      alignment: Alignment.center,
      fadeInDuration: Duration(seconds: 5),
      fadeInCurve: Curves.easeInCubic,
    );
  }
}"""
    }
  ],
  "CircleAvatar": [
    {
      "widgetId": 9,
      "priority": 1,
      "name": "CircleAvatar的表现",
      "subtitle": "【radius】 : 半径  【double】\n"
          "【backgroundImage】 : 图片资源  【ImageProvider】\n"
          "【foregroundColor】: 前景色   【Color】\n"
          "【backgroundColor】: 背景色   【Color】\n"
          "【minRadius】: 最小半径   【double】\n"
          "【maxRadius】: 最大半径   【double】\n"
          "【child】: 孩子组件   【Child】",
      "code": """class CustomCircleAvatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 50,
      backgroundImage: AssetImage("assets/images/wy_200x300.jpg"),
      foregroundColor: Colors.white,
      child: Icon(
        Icons.check,
        size: 50,
      ),
    );
  }
}"""
    }
  ],
  "Visibility": [
    {
      "widgetId": 10,
      "priority": 1,
      "name": "根据visible控制内部子组件的显隐情况",
      "subtitle": "【visible】 : 是否显示  【bool】\n"
          "【child】: 孩子   【Widget】\n"
          "默认孩子隐藏时会失去原来所在区域。",
      "code": """class CustomVisibility extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      children: <Widget>[
        _buildVisibility(true),
        _buildVisibility(false),
      ],
    );
  }

  _buildVisibility(bool visible) {
    var box = Container(
      height: 30,
      width: 30,
      color: Colors.blue,
    );
    return Container(
      width: 150,
      height: 150 * 0.618,
      color: Colors.cyanAccent.withAlpha(33),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          box,
          Visibility(
              visible: visible,
              child: Container(
                alignment: Alignment.center,
                height: 80 * 0.618,
                width: 80,
                color: Colors.red,
                child: Text(
                  "visible\ntrue",
                  style: TextStyle(fontSize: 20),
                ),
              )),
          box,
        ],
      ),
    );
  }
}"""
    },
    {
      "widgetId": 10,
      "priority": 2,
      "name": "replacement可在隐藏时进行占位",
      "subtitle": "【replacement】 : 隐藏时的占位组件  【Widget】",
      "code": """class ReplacementVisibility extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      children: <Widget>[
        _buildVisibility(true),
        _buildVisibility(false),
      ],
    );
  }

  _buildVisibility(bool visible) {
    var box = Container(
      height: 30,
      width: 30,
      color: Colors.blue,
    );
    return Container(
      width: 150,
      height: 150 * 0.618,
      color: Colors.cyanAccent.withAlpha(33),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          box,
          Visibility(
              visible: visible,
              replacement: Container(
                alignment: Alignment.center,
                height: 80 * 0.618,
                width: 80,
              ),
              child: Container(
                alignment: Alignment.center,
                height: 80 * 0.618,
                width: 80,
                color: Colors.red,
                child: Text(
                  "visible\\ntrue",
                  style: TextStyle(fontSize: 20),
                ),
              )),
          box,
        ],
      ),
    );
  }
}"""
    },
  ],
  "Chip": [
    {
      "widgetId": 11,
      "priority": 1,
      "name": "Chip的普通表现如下",
      "subtitle": "【avatar】: 左侧组件   【Widget】\n"
          "【label】: 中间组件   【Widget】\n"
          "【padding】 : 内边距  【EdgeInsetsGeometry】\n"
          "【labelPadding】: label边距   【EdgeInsetsGeometry】",
      "code": """class CustomChip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 20,
      children: <Widget>[
        Chip(
          avatar: Image.asset("assets/images/icon_head.png"),
          label: Text("张风捷特烈"),
          padding: EdgeInsets.all(5),
          labelPadding: EdgeInsets.all(5),
        ),
        Chip(
          avatar: CircleAvatar(
              backgroundImage: 
              AssetImage("assets/images/wy_200x300.jpg")),
          label: Text("百里巫缨"),
          padding: EdgeInsets.all(8),
          labelPadding: EdgeInsets.all(6),
        ),
      ],
    );
  }
}"""
    },
    {
      "widgetId": 11,
      "priority": 2,
      "name": "可以设置颜色和阴影",
      "subtitle": "【backgroundColor】: 背景色   【Color】\n"
          "【shadowColor】: 阴影色   【Color】\n"
          "【elevation】: 影深   【double】",
      "code": """class ColorOfChip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 20,
      children: <Widget>[
        Chip(
          avatar: Image.asset("assets/images/icon_head.png"),
          label: Text("张风捷特烈"),
          padding: EdgeInsets.all(5),
          labelPadding: EdgeInsets.all(5),
          backgroundColor: Colors.grey.withAlpha(66),
          shadowColor: Colors.orangeAccent,
          elevation: 3,
        ),
        Chip(
          avatar: Image.asset("assets/images/icon_head.png"),
          label: Text("张风捷特烈"),
          padding: EdgeInsets.all(5),
          labelPadding: EdgeInsets.all(5),
          backgroundColor: Colors.cyanAccent.withAlpha(11),
          shadowColor: Colors.blue.withAlpha(88),
          elevation: 4,
        ),
      ],
    );
  }
}"""
    },
    {
      "widgetId": 11,
      "priority": 3,
      "name": "可以设置右侧点击按钮",
      "subtitle": "【deleteIcon】: 右侧组件(通常为Icon)   【Widget】\n"
          "【deleteIconColor】: 右侧组件颜色   【Color】\n"
          "【onDeleted】: 右侧组件点击事件   【Function】",
      "code": """class DeleteOfChip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Chip(
      avatar: Image.asset("assets/images/icon_head.png"),
      label: Text("张风捷特烈"),
      padding: EdgeInsets.all(5),
      labelPadding: EdgeInsets.all(3),
      backgroundColor: Colors.grey.withAlpha(66),
      shadowColor: Colors.orangeAccent,
//      deleteIcon: Icon(Icons.close,size: 18),
      deleteIconColor: Colors.red,
      onDeleted: () => DialogAbout.show(context),
      elevation: 3,
    );
  }
}"""
    },
  ],
  "ChoiceChip": [
    {
      "widgetId": 12,
      "priority": 1,
      "name": "ChoiceChip的普通表现如下",
      "subtitle": "【selectedColor】: 选中时颜色   【Color】\n"
          "【selectedShadowColor】: 选中时阴影颜色   【Color】\n"
          "【onSelected】: 选中事件   【Fuction(bool)】\n"
          "    其他属性同Chip组件，无右侧组件。",
      "code": """class CustomChoiceChip extends StatefulWidget {
  @override
  _CustomChoiceChipState createState() => _CustomChoiceChipState();
}

class _CustomChoiceChipState extends State<CustomChoiceChip> {
  bool _select = false;

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      selected: _select,
      padding: EdgeInsets.all(5),
      labelPadding: EdgeInsets.all(5),
      label: Text(
        _select ? 
        "You are selected it." :
        "This is a ChoiceChip.",
        style: TextStyle(fontSize: 16),
      ),
      backgroundColor: Colors.grey.withAlpha(66),
      avatar: Image.asset("assets/images/icon_head.png"),
      selectedColor: Colors.orangeAccent.withAlpha(44),
      selectedShadowColor: Colors.blue,
      shadowColor: Colors.orangeAccent,
      elevation: 3,
      onSelected: (value) => setState(() => _select = value),
    );
  }
}"""
    },
  ],
  "ActionChip": [
    {
      "widgetId": 13,
      "priority": 1,
      "name": "ActionChip的普通表现如下",
      "subtitle": "【onPressed】: 点击事件   【Function】\n"
          "【pressElevation】: 按下时影深   【double】\n"
          "其他属性同Chip组件，无右侧组件。",
      "code": """class CustomActionChip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ActionChip(
      padding: EdgeInsets.all(5),
      labelPadding: EdgeInsets.all(3),
      label: Text("This is a ActionChip."),
      backgroundColor: Colors.grey.withAlpha(66),
      avatar: Image.asset("assets/images/icon_head.png"),
      shadowColor: Colors.orangeAccent,
      elevation: 3,
      pressElevation: 5,
      onPressed: ()=> DialogAbout.show(context),
    );
  }
}"""
    },
  ],
  "InputChip": [
    {
      "widgetId": 14,
      "priority": 1,
      "name": "可以接受点击、删除事件",
      "subtitle": "【onPressed】: 点击事件   【Function()】\n"
          "【onDeleted】: 删除事件   【Function()】",
      "code": """class PressInputChip extends StatefulWidget {
  @override
  _PressInputChipState createState() => _PressInputChipState();
}

class _PressInputChipState extends State<PressInputChip> {
  bool _delete = false;

  @override
  Widget build(BuildContext context) {
    return InputChip(
        padding: EdgeInsets.all(5),
        labelPadding: EdgeInsets.all(3),
        label: Text(
            !_delete ? 
            "This is a InputChip." : 
            "You are clicked delete icon."),
        backgroundColor: Colors.grey.withAlpha(66),
        avatar: Image.asset("assets/images/icon_head.png"),
        selectedColor: Colors.orangeAccent.withAlpha(88),
        selectedShadowColor: Colors.blue,
        shadowColor: Colors.orangeAccent,
        elevation: 3,
        onPressed: () => DialogAbout.show(context),
        onDeleted: () => setState(() => _delete = !_delete));
  }
}"""
    },
    {
      "widgetId": 14,
      "priority": 2,
      "name": "可以接受选中事件",
      "subtitle": "【selected】: 是否选中   【bool】\n"
          "【onSelected】: 选中事件   【Function(bool)】",
      "code": """class SelectInputChip extends StatefulWidget {
  @override
  _SelectInputChipState createState() => _SelectInputChipState();
}

class _SelectInputChipState extends State<SelectInputChip> {
  bool _select = false;

  @override
  Widget build(BuildContext context) {
    return InputChip(
      selected: _select,
      padding: EdgeInsets.all(5),
      labelPadding: EdgeInsets.all(3),
      label: Text("This is a InputChip."),
      backgroundColor: Colors.grey.withAlpha(66),
      avatar: Image.asset("assets/images/icon_head.png"),
      selectedColor: Colors.orangeAccent.withAlpha(88),
      selectedShadowColor: Colors.blue,
      shadowColor: Colors.orangeAccent,
      elevation: 3,
      onDeleted: () => DialogAbout.show(context),
      onSelected: (bool value) {
        setState(() {
          _select = value;
        });
        print("onSelected");
      },
    );
  }
}"""
    },
  ],
  "FilterChip": [
    {
      "widgetId": 15,
      "priority": 1,
      "name": "FilterChip可接受选择事件",
      "subtitle": "【selected】: 是否选择   【bool】\n"
          "【onSelected】: 选择事件   【Function(bool)】\n"
          "【selectedColor】: 选择后的颜色   【Color】\n"
          "【selectedShadowColor】: 选择后的阴影颜色   【Color】\n",
      "code": """class CustomFilterChip extends StatefulWidget {
  @override
  _CustomFilterChipState createState() => _CustomFilterChipState();
}

class _CustomFilterChipState extends State<CustomFilterChip> {
  final Map<String, String> map = {
    'A': 'Ant',
    'B': 'Bug',
    'C': 'Cat',
    'D': 'Dog',
  };
  List<String> _selected = <String>[];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Wrap(
          children: map.keys.map((key) => 
              _buildChild(key)).toList(),
        ),
        Container(
            padding: EdgeInsets.all(10),
            child: Text("您已选择: \${_selected.join(', ')}')),
      ],
    );
  }

  Padding _buildChild(String key) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: FilterChip(
        selectedColor: Colors.orange.withAlpha(55),
        selectedShadowColor: Colors.blue,
        shadowColor: Colors.orangeAccent,
        pressElevation: 5,
        elevation: 3,
        avatar: CircleAvatar(child: Text(key)),
        label: Text(map[key]),
        selected: _selected.contains(map[key]),
        onSelected: (bool value) {
          setState(() {
            if (value) {
              _selected.add(map[key]);
            } else {
              _selected.removeWhere((name) => name == map[key]);
            }
          });
        },
      ),
    );
  }
}"""
    },
  ],
  "ListTile": [
    {
      "widgetId": 16,
      "priority": 1,
      "name": "ListTile的基本表现如下",
      "subtitle": "【leading】: 左侧组件   【Widget】\n"
          "【title】: 中间上组件   【Widget】\n"
          "【subtitle】: 中间下组件   【Widget】\n"
          "【trailing】: 尾组件   【Widget】\n"
          "【contentPadding】: 内边距   【EdgeInsetsGeometry】\n"
          "【onLongPress】: 点击事件   【Function()】",
      "code": """
class CustomListTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      color: Colors.grey.withAlpha(22),
      child: ListTile(
        leading: Image.asset("assets/images/icon_head.png"),
        title: Text("以梦为马"),
        subtitle: Text("海子"),
        contentPadding: EdgeInsets.all(5),
        trailing: Icon(Icons.more_vert),
        onLongPress: () => DialogAbout.show(context),
      ),
    );
  }
}"""
    },
    {
      "widgetId": 16,
      "priority": 2,
      "name": "ListTile选中效果和长按事件",
      "subtitle": "【selected】: 是否选中   【bool】\n"
          "【onTap】: 点击事件   【Function()】",
      "code": """
class SelectListTile extends StatefulWidget {
  @override
  _SelectListTileState createState() => _SelectListTileState();
}

class _SelectListTileState extends State<SelectListTile> {
  bool _selected = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      color: Colors.grey.withAlpha(22),
      child: ListTile(
        leading: Image.asset("assets/images/icon_head.png"),
        selected: _selected,
        title: Text("以梦为马"),
        subtitle: Text("海子"),
        contentPadding: EdgeInsets.all(5),
        trailing: Icon(Icons.more_vert),
        onTap: () => setState(() => _selected = !_selected),
      ),
    );
  }
}"""
    },
    {
      "widgetId": 16,
      "priority": 3,
      "name": "ListTile的密排属性",
      "subtitle": "【dense】: 是否密排   【bool】",
      "code": """class DenseListTile extends StatefulWidget {
  @override
  _DenseListTileState createState() => _DenseListTileState();
}

class _DenseListTileState extends State<DenseListTile> {
  bool _dense = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      color: Colors.grey.withAlpha(22),
      child: ListTile(
        leading: Image.asset("assets/images/icon_head.png"),
        title: Text("以梦为马"),
        subtitle: Text("海子"),
        selected: false,
        contentPadding: EdgeInsets.all(5),
        trailing: Icon(Icons.more_vert),
        dense: _dense,
        onTap: () => setState(() => _dense = !_dense),
      ),
    );
  }
}"""
    },
  ],
  "CheckboxListTile": [
    {
      "widgetId": 17,
      "priority": 1,
      "name": "CheckBoxListTile的基本表现如下",
      "subtitle": "【secondary】: 左侧组件   【Widget】\n"
          "【checkColor】: ✔️颜色   【Color】\n"
          "【activeColor】: 选中时外框颜色   【Color】\n"
          "【title】: 中间上组件   【Widget】\n"
          "【subtitle】: 中间下组件   【Widget】\n"
          "【onChanged】: 选中事件   【Function(bool)】",
      "code": """class CustomCheckBoxListTile extends StatefulWidget {
  @override
  _CustomCheckBoxListTileState createState() => _CustomCheckBoxListTileState();
}

class _CustomCheckBoxListTileState extends State<CustomCheckBoxListTile> {
  var _selected = false;

  @override 
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      color: Colors.grey.withAlpha(22),
      child: CheckboxListTile(
        value: _selected,
        checkColor: Colors.yellow,
        activeColor: Colors.orangeAccent,
        secondary: Image.asset("assets/images/icon_head.png"),
        title: Text("张风捷特烈"),
        subtitle: Text("@万花过尽知无物"),
        onChanged: (v) => setState(() =>
        _selected = !_selected),
      ),
    );
  }
}"""
    },
    {
      "widgetId": 17,
      "priority": 2,
      "name": "CheckBoxListTile的选中效果",
      "subtitle": "【selected】: 是否选中   【bool】",
      "code": """
class SelectCheckBoxListTile extends StatefulWidget {
  @override
  _SelectCheckBoxListTileState createState() => _SelectCheckBoxListTileState();
}

class _SelectCheckBoxListTileState extends State<SelectCheckBoxListTile> {
  var _selected = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      color: Colors.grey.withAlpha(22),
      child: CheckboxListTile(
        value: _selected,
        selected: _selected,
        checkColor: Colors.yellow,
        activeColor: Colors.orangeAccent,
        secondary: Image.asset("assets/images/icon_head.png"),
        title: Text("张风捷特烈"),
        subtitle: Text("@万花过尽知无物"),
        onChanged: (v) => setState(() =>
        _selected = !_selected),
      ),
    );
  }
}"""
    },
    {
      "widgetId": 17,
      "priority": 3,
      "name": "CheckBoxListTile的密排属性",
      "subtitle": "【dense】: 是否密排   【bool】",
      "code": """class DenseCheckBoxListTile extends StatefulWidget {
  @override
  _DenseCheckBoxListTileState createState() => _DenseCheckBoxListTileState();
}

class _DenseCheckBoxListTileState extends State<DenseCheckBoxListTile> {
  var _selected = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      color: Colors.grey.withAlpha(22),
      child: CheckboxListTile(
        value: _selected,
        dense: true,
        checkColor: Colors.yellow,
        activeColor: Colors.orangeAccent,
        secondary: Image.asset("assets/images/icon_head.png"),
        title: Text("张风捷特烈"),
        subtitle: Text("@万花过尽知无物"),
        onChanged: (v) => setState(() => _selected = !_selected),
      ),
    );
  }
}"""
    },
  ],
  "SwitchListTile": [
    {
      "widgetId": 18,
      "priority": 1,
      "name": "SwitchListTile的基本表现如下",
      "subtitle": "【secondary】: 左侧组件   【Widget】\n"
          "【title】: 中间上组件   【Widget】\n"
          "【subtitle】: 中间下组件   【Widget】\n"
          "【inactiveThumbColor】: 未选中时圆圈颜色   【Color】\n"
          "【inactiveTrackColor】: 未选中滑槽颜色   【Color】\n"
          "【activeColor】: 选中时圆圈颜色   【Color】\n"
          "【activeTrackColor】: 选中滑槽颜色   【Color】\n"
          "【onChanged】: 选中事件   【Function(bool)】",
      "code": """class CustomSwitchListTile extends StatefulWidget {
  @override
  _CustomSwitchListTileState createState() => _CustomSwitchListTileState();
}

class _CustomSwitchListTileState extends State<CustomSwitchListTile> {
  var _value=false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      color: Colors.grey.withAlpha(22),
      child: SwitchListTile(
        value: _value,
        inactiveThumbColor:Colors.cyanAccent ,
        inactiveTrackColor: Colors.blue.withAlpha(88),
        activeColor: Colors.orangeAccent,
        activeTrackColor: Colors.orange,
        secondary: Image.asset("assets/images/icon_head.png"),
        title: Text("张风捷特烈"),
        subtitle: Text("@万花过尽知无物"),
        onChanged: (v) => setState(() => _value = !_value),
      ),
    );
  }
}"""
    },
    {
      "widgetId": 18,
      "priority": 2,
      "name": "SwitchListTile的选中效果",
      "subtitle": "【selected】: 是否选中   【bool】\n"
          "【inactiveThumbImage】: 未选中时圆圈图片   【ImageProvider】\n"
          "【activeThumbImage】: 选中时圆圈图片   【ImageProvider】",
      "code": """class SelectSwitchListTile extends StatefulWidget {
  @override
  _SelectSwitchListTileState createState() => _SelectSwitchListTileState();
}

class _SelectSwitchListTileState extends State<SelectSwitchListTile> {
  var _value=false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      color: Colors.grey.withAlpha(22),
      child: SwitchListTile(
        value: _value,
        selected: _value,
        activeColor: Colors.orangeAccent,
        secondary: Image.asset("assets/images/icon_head.png"),
        title: Text("张风捷特烈"),
        subtitle: Text("@万花过尽知无物"),
        onChanged: (v) => setState(() => _value = !_value),
      ),
    );
  }
}"""
    },
    {
      "widgetId": 18,
      "priority": 3,
      "name": "SwitchListTile的密排属性",
      "subtitle": "【dense】: 是否密排   【bool】",
      "code": """class DenseSwitchListTile extends StatefulWidget {
  @override
  _DenseSwitchListTileState createState() => _DenseSwitchListTileState();
}

class _DenseSwitchListTileState extends State<DenseSwitchListTile> {
  var _value=false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      color: Colors.grey.withAlpha(22),
      child: SwitchListTile(
        value: _value,
        dense: true,
        selected: _value,
        activeColor: Colors.orangeAccent,
        secondary: Image.asset("assets/images/icon_head.png"),
        title: Text("张风捷特烈"),
        subtitle: Text("@万花过尽知无物"),
        onChanged: (v) => setState(() => _value = !_value),
      ),
    );
  }
}"""
    },
  ],
  "RadioListTile": [
    {
      "widgetId": 19,
      "priority": 1,
      "name": "RadioListTile需要一个泛型T",
      "subtitle": "【value】 : 条目对象  【T】\n"
          "【groupValue】 : 选中对象  【T】\n"
          "【selected】: 是否选中   【bool】\n"
          "【secondary】: 右侧组件   【Widget】\n"
          "【title】: 中间上组件   【Widget】\n"
          "【subtitle】: 中间下组件   【Widget】\n"
          "【onChanged】: 切换事件   【Function(T)】",
      "code": """enum ItemType { java, kotlin, dart }

class ItemBean {
  final String title;
  final String subTitle;
  final String imgUrl;

  ItemBean(this.title, this.subTitle, this.imgUrl);
}

class CustomRadioListTile extends StatefulWidget {
  @override
  _CustomRadioListTileState createState() => _CustomRadioListTileState();
}

class _CustomRadioListTileState extends State<CustomRadioListTile> {
  final Map<ItemType, ItemBean> languages = {
    ItemType.java: 
    ItemBean("Java", "曾经世界上最流行的语言", "assets/images/java.jpeg"),
    ItemType.kotlin:
    ItemBean("Kotlin", "未来世界上最流行的语言", "assets/images/kotlin.jpg"),
    ItemType.dart: 
    ItemBean("Dart", "世界上最优雅的语言", "assets/images/dart.jpg"),
  };
  var _type = ItemType.java;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.withAlpha(11),
      child: Column(
          mainAxisSize: MainAxisSize.min,
          children: languages.keys
              .map((type) => RadioListTile<ItemType>(
                    value: type,
                    groupValue: _type,
                    title: Text(languages[type].title),
                    subtitle: Text(languages[type].subTitle),
                    selected: _type == type,
                    secondary: CircleAvatar(
                      backgroundImage: AssetImage(languages[type].imgUrl),
                    ),
                    onChanged: (type) => setState(() => _type = type),
                  ))
              .toList()),
    );
  }
}"""
    },
    {
      "widgetId": 19,
      "priority": 2,
      "name": "RadioListTile选中色和密排",
      "subtitle": "【activeColor】 : 选中时颜色  【Color】\n"
          "【dense】: 是否密排   【bool】",
      "code": """enum ItemType { java, kotlin, dart }

class ItemBean {
  final String title;
  final String subTitle;
  final String imgUrl;

  ItemBean(this.title, this.subTitle, this.imgUrl);
}

class DenseRadioListTile extends StatefulWidget {
  @override
  _DenseRadioListTileState createState() => _DenseRadioListTileState();
}

class _DenseRadioListTileState extends State<DenseRadioListTile> {
  final Map<ItemType, ItemBean> languages = {
    ItemType.java:
    ItemBean("Java", "曾经世界上最流行的语言", "assets/images/java.jpeg"),
    ItemType.kotlin:
    ItemBean("Kotlin", "未来世界上最流行的语言", "assets/images/kotlin.jpg"),
    ItemType.dart:
    ItemBean("Dart", "世界上最优雅的语言", "assets/images/dart.jpg"),
  };
  var _type = ItemType.java;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.withAlpha(11),
      child: Column(
          mainAxisSize: MainAxisSize.min,
          children: languages.keys
              .map((type) => RadioListTile<ItemType>(
            value: type,
            groupValue: _type,
            title: Text(languages[type].title),
            activeColor: Colors.orangeAccent,
            dense: true,
            subtitle: Text(languages[type].subTitle),
            selected: _type == type,
            secondary: CircleAvatar(
              backgroundImage: AssetImage(languages[type].imgUrl),
            ),
            onChanged: (type) => setState(() => _type = type),
          ))
              .toList()),
    );
  }
}"""
    },
  ],
  "GridTileBar": [
    {
      "widgetId": 20,
      "priority": 1,
      "name": "GridTileBar的基本表现如下",
      "subtitle": "【value】 : 条目对象  【T】\n"
          "【leading】: 左侧组件   【Widget】\n"
          "【trailing】: 尾组件   【Widget】\n"
          "【title】: 中间上组件   【Widget】\n"
          "【subtitle】: 中间下组件   【Widget】\n"
          "【backgroundColor】: 背景色   【Color】",
      "code": """
class CustomGridTileBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridTileBar(
      backgroundColor: Colors.blue.withAlpha(120),
      trailing: Icon(
        Icons.star,
        color: Colors.red,
      ),
      leading: CircleAvatar(
        backgroundImage: AssetImage("assets/images/wy_200x300.jpg"),
      ),
      title: Text("百里·巫缨"),
      subtitle: Text("倾国必倾城"),
    );
  }
}"""
    },
  ],
  "GridTile": [
    {
      "widgetId": 21,
      "priority": 1,
      "name": "GridTile的基本表现如下",
      "subtitle": "【header】: 头组件   【Widget】\n"
          "【child】: 子组件   【Widget】\n"
          "【footer】: 脚组件   【Widget】",
      "code": """
class CustomGridTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200, height: 200,
      child: GridTile(
        header: GridTileBar(
          backgroundColor: Colors.blue.withAlpha(120),
          trailing: Icon(
            Icons.star,
            color: Colors.red,
          ),
          leading: CircleAvatar(
            backgroundImage: AssetImage("assets/images/wy_200x300.jpg"),
          ),
          title: Text("百里·巫缨"),
          subtitle: Text("倾国必倾城"),
        ),
        child: Opacity(
          opacity: 0.5,
          child: Image.asset(
            "assets/images/sabar.jpg",
            fit: BoxFit.cover,
          ),
        ),
        footer: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "ID:z\$ySX32&29",
            style: TextStyle(shadows: [
              Shadow(
                  color: Colors.blue,
                  offset: Offset(.1, .1),
                  blurRadius: 2),
            ]),
          ),
        ),
      ),
    );
  }
}"""
    },
  ],
  "UserAccountsDrawerHeader": [
    {
      "widgetId": 22,
      "priority": 1,
      "name": "该组件的基本表现如下",
      "subtitle": "【currentAccountPicture】: 上组件   【Widget】\n"
          "【accountName】: 中组件   【Widget】\n"
          "【accountEmail】: 下组件   【Widget】\n"
          "【decoration】: 装饰   【Decoration】",
      "code": """
class CustomUAGHP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 3 * 2,
      child: UserAccountsDrawerHeader(
        accountName: Container(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "张风捷特烈",
            style:
                TextStyle(color: Colors.orangeAccent, fontSize: 22, shadows: [
              Shadow(
                  color: Colors.black, offset: Offset(.5, .5), blurRadius: 2),
            ]),
          ),
        ),
        accountEmail: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("1981462002@qq.com",
              style: TextStyle(color: Colors.white, fontSize: 14, shadows: [
                Shadow(
                    color: Colors.orangeAccent,
                    offset: Offset(.5, .5),
                    blurRadius: 2),
              ])),
        ),
        currentAccountPicture: Container(
          padding: const EdgeInsets.all(15.0),
          child: CircleAvatar(
            backgroundImage: AssetImage("assets/images/icon_head.png"),
          ),
        ),
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/caver.jpeg")),
        ),
      ),
    );
  }
}"""
    },
    {
      "widgetId": 22,
      "priority": 2,
      "name": "右上角和底部",
      "subtitle": "【otherAccountsPictures】: 右上组件   【List<Widget>】\n"
          "【onDetailsPressed】: 右下角点击事件   【Function()】\n"
          "【arrowColor】: 右下角按钮颜色   【Color】\n"
          "【margin】: 外边距   【EdgeInsetsGeometry】",
      "code": """
class ProUAGHP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 3 * 2,
      child: UserAccountsDrawerHeader(
        margin: EdgeInsets.all(10),
        accountName: Container(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "张风捷特烈",
            style:
                TextStyle(color: Colors.orangeAccent, fontSize: 22, 
                    shadows: [
              Shadow(
                  color: Colors.black, 
                  offset: Offset(.5, .5),
                  blurRadius: 2),
            ]),
          ),
        ),
        accountEmail: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("1981462002@qq.com",
              style: TextStyle(
                  color: Colors.white, fontSize: 14, 
                  shadows: [
                Shadow(
                    color: Colors.orangeAccent,
                    offset: Offset(.5, .5),
                    blurRadius: 2),
              ])),
        ),
        currentAccountPicture: Container(
          padding: const EdgeInsets.all(15.0),
          child: CircleAvatar(
            backgroundImage: AssetImage("assets/images/icon_head.png"),
          ),
        ),
        otherAccountsPictures: <Widget>[
          FlutterLogo(colors: Colors.orange),
          FlutterLogo(colors: Colors.green),
          FlutterLogo(colors: Colors.yellow),
        ],
        onDetailsPressed: () {

        },
        arrowColor: Colors.white,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/caver.jpeg")),
        ),
      ),
    );
  }
}"""
    },
  ],
  "MaterialButton": [
    {
      "widgetId": 23,
      "priority": 1,
      "name": "MaterialButton点击事件",
      "subtitle": "【color】: 颜色   【Color】\n"
          "【splashColor】: 水波纹颜色   【Color】\n"
          "【height】: 高   【double】\n"
          "【elevation】: 影深   【double】\n"
          "【child】: 子组件   【Widget】\n"
          "【textColor】: 子组件文字颜色   【Color】\n"
          "【highlightColor】: 长按高亮色   【Color】\n"
          "【padding】: 内边距   【EdgeInsetsGeometry】\n"
          "【onPressed】: 点击事件   【Function】",
      "code": """
class CustomMaterialButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 40,
        elevation: 5,
        color: Colors.orangeAccent,
        textColor: Colors.white,
        padding: EdgeInsets.all(8),
        child: Text("MaterialButton"),
        onPressed: () => DialogAbout.show(context));
  }
}"""
    },
    {
      "widgetId": 23,
      "priority": 2,
      "name": "MaterialButton长按事件",
      "subtitle": "【highlightColor】: 长按高亮色   【Color】\n"
          "【onLongPress】: 长按事件   【Function】",
      "code": """
class LongPressMaterialButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialButton(
        height: 40,
        elevation: 5,
        color: Colors.blue,
        highlightColor: Colors.green,
        textColor: Colors.white,
        padding: EdgeInsets.all(8),
        child: Text("MaterialButton"),
        onLongPress: () => DialogAbout.show(context),
        onPressed: () => DialogAbout.show(context));
  }
}"""
    },
  ],
  "CupertinoButton": [
    {
      "widgetId": 24,
      "priority": 1,
      "name": "CupertinoButton点击事件",
      "subtitle": "【color】: 颜色   【Color】\n"
          "【pressedOpacity】: 按下时透明度   【double】\n"
          "【child】: 子组件   【Widget】\n"
          "【padding】: 内边距   【EdgeInsetsGeometry】\n"
          "【borderRadius】: 圆角半径   【BorderRadius】\n"
          "【onPressed】: 点击事件   【Function】",
      "code": """class CustomCupertinoButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var data = {
      CupertinoColors.activeBlue:4.0,
      Colors.blue:6.0,
      CupertinoColors.activeOrange:8.0,
    };
    return Wrap(
      spacing: 20,
      children:data.keys.map((e)=> CupertinoButton(
        padding: EdgeInsets.zero,
        onPressed: () => DialogAbout.show(context),
        color: e,
        pressedOpacity: 0.4,
        borderRadius:  BorderRadius.all(Radius.circular(data[e])),
        child: Text("iOS"),
      )).toList()
    );
  }
}"""
    }
  ],
  "FlatButton": [
    {
      "widgetId": 25,
      "priority": 1,
      "name": "FlatButton点击事件",
      "subtitle": "【color】: 颜色   【Color】\n"
          "【splashColor】: 水波纹颜色   【Color】\n"
          "【child】: 子组件   【Widget】\n"
          "【textColor】: 子组件文字颜色   【Color】\n"
          "【highlightColor】: 长按高亮色   【Color】\n"
          "【padding】: 内边距   【EdgeInsetsGeometry】\n"
          "【onPressed】: 点击事件   【Function】",
      "code": """class CustomFlatButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: ()=>{},
      padding: EdgeInsets.all(8),
      splashColor: Colors.green,
      child: Text("FlatButton"),
      textColor: Color(0xffFfffff),
      color: Colors.blue,
      highlightColor: Color(0xffF88B0A),
    );
  }
}"""
    }
  ],
  "RaisedButton": [
    {
      "widgetId": 26,
      "priority": 1,
      "name": "RaisedButton点击事件",
      "subtitle": "【color】: 颜色   【Color】\n"
          "【splashColor】: 水波纹颜色   【Color】\n"
          "【elevation】: 影深   【double】\n"
          "【child】: 子组件   【Widget】\n"
          "【textColor】: 子组件文字颜色   【Color】\n"
          "【highlightColor】: 长按高亮色   【Color】\n"
          "【padding】: 内边距   【EdgeInsetsGeometry】\n"
          "【onPressed】: 点击事件   【Function】",
      "code": """class CustomRaisedButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Colors.blue,
      splashColor: Colors.green,
      onPressed: () {},
      child: Text("RaisedButton"),
      textColor: Color(0xffFfffff),
      padding: EdgeInsets.all(8),
      elevation: 5,
      highlightColor: Color(0xffF88B0A),
    );
  }
}"""
    }
  ],
  "OutlineButton": [
    {
      "widgetId": 27,
      "priority": 1,
      "name": "OutlineButton点击事件",
      "subtitle": "【textColor】: 子组件文字颜色   【Color】\n"
          "【splashColor】: 水波纹颜色   【Color】\n"
          "【highlightColor】: 长按高亮色   【Color】\n"
          "【highlightedBorderColor】: 高亮时框色   【Color】\n"
          "【child】: 子组件   【Widget】\n"
          "【padding】: 内边距   【EdgeInsetsGeometry】\n"
          "【borderSide】: 边线   【BorderSide】\n"
          "【onPressed】: 点击事件   【Function】",
      "code": """class CustomOutlineButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OutlineButton(//边线按钮
      onPressed: () {},
      child: Text("OutlineButton"),
      padding: EdgeInsets.all(8),
      splashColor: Colors.green,
      highlightColor: Colors.orangeAccent,
      highlightedBorderColor: Colors.grey,
      textColor: Color(0xff000000),
      borderSide: BorderSide(color: Color(0xff0A66F8), width: 2),
    );
  }
}"""
    }
  ],
  "FloatingActionButton": [
    {
      "widgetId": 28,
      "priority": 1,
      "name": "FloatingActionButton点击事件",
      "subtitle": "【child】: 子组件   【Widget】\n"
          "【tooltip】: 长按时提示文字   【String】\n"
          "【backgroundColor】: 背景色   【Color】\n"
          "【foregroundColor】: 前景色   【Color】\n"
          "【elevation】: 影深   【double】\n"
          "【onPressed】: 点击事件   【Function】",
      "code": """class CustomFAB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var data = {
      Colors.red: Icons.add,
      Colors.blue: Icons.bluetooth,
      Colors.green: Icons.android,
    };
    return Wrap(
        spacing: 20,
        children: data.keys
            .map((e) => FloatingActionButton(
                  heroTag: e.toString()+"a",
                  onPressed: () {},
                  backgroundColor: e,
                  foregroundColor: Colors.white,
                  child: Icon(data[e]),
                  tooltip: "android",
                  elevation: 5, //z-阴影盖度
                ))
            .toList());
  }
}"""
    },
    {
      "widgetId": 28,
      "priority": 2,
      "name": "mini属性",
      "subtitle": "【mini】: 是否是迷你   【bool】",
      "code": """class MiniFAB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var data = {
      Colors.red: Icons.add,
      Colors.blue: Icons.bluetooth,
      Colors.green: Icons.android,
    };
    return Wrap(
        spacing: 20,
        children: data.keys
            .map((e) => FloatingActionButton(
                  heroTag: e.toString()+"b",
                  onPressed: () {},
                  backgroundColor: e,
                  mini: true,
                  foregroundColor: Colors.white,
                  child: Icon(data[e]),
                  tooltip: "android",
                  elevation: 5, //z-阴影盖度
                ))
            .toList());
  }
}"""
    },
    {
      "widgetId": 28,
      "priority": 3,
      "name": "shape属性",
      "subtitle": "【shape】: 形状   【ShapeBorder】",
      "code": """class ShapeFAB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var data = {
      Colors.red: Icons.add,
      Colors.blue: Icons.bluetooth,
      Colors.green: Icons.android,
    };
    return Wrap(
        spacing: 20,
        children: data.keys
            .map((e) => FloatingActionButton(
                  heroTag: e.toString()+"c",
                  onPressed: () {},
                  backgroundColor: e,
                  shape: StarBorder(),
                  foregroundColor: Colors.white,
                  child: Icon(data[e]),
                  tooltip: "android",
                  elevation: 5,
                ))
            .toList());
  }
}

/// 边线形状类
class StarBorder extends ShapeBorder {
  @override
  EdgeInsetsGeometry get dimensions => null;

  @override
  Path getInnerPath(Rect rect, {TextDirection textDirection}) {
    return null;
  }

  @override
  Path getOuterPath(Rect rect, {TextDirection textDirection}) {
    print(rect.right);
    return Pather.create.nStarPath(20, 25, 25 * cos((360 / 9 / 2) * pi / 180),
        dx: rect.height / 2, dy: rect.width / 2);
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection textDirection}) {}

  @override
  ShapeBorder scale(double t) {
    return null;
  }
}"""
    },
  ],
  "ButtonBar": [
    {
      "widgetId": 29,
      "priority": 1,
      "name": "ButtonBar对齐方式",
      "subtitle": "【alignment】: 对齐方式   【MainAxisAlignment】\n"
          "【children】: 子组件集   【List<Widget>】",
      "code": """class CustomButtonBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ButtonBar(
      alignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
            color: Colors.blue,
            child: Text("Raised"),
            onPressed: () => DialogAbout.show(context)),
        OutlineButton(
            child: Text("Outline"),
            onPressed: () => DialogAbout.show(context)),
        FlatButton(
          color: Colors.blue,
          onPressed: () => DialogAbout.show(context),
          child: Text("Flat"),
        )
      ],
    );
  }
}"""
    },
    {
      "widgetId": 29,
      "priority": 2,
      "name": "ButtonBar边距和高",
      "subtitle": "【buttonPadding】: 内边距   【EdgeInsetsGeometry】\n"
          "【buttonHeight】: 高   【double】",
      "code": """class PaddingButtonBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ButtonBar(
      alignment: MainAxisAlignment.center,
      buttonHeight: 40,
      buttonPadding: EdgeInsets.only(left: 15,right: 15),
      children: <Widget>[
        RaisedButton(
            color: Colors.blue,
            child: Text("Raised"),
            onPressed: () => DialogAbout.show(context)),
        OutlineButton(
            child: Text("Outline"),
            onPressed: () => DialogAbout.show(context)),
        FlatButton(
          color: Colors.blue,
          onPressed: () => DialogAbout.show(context),
          child: Text("Flat"),
        )
      ],
    );
  }
}"""
    },
  ],
  "IconButton": [
    {
      "widgetId": 30,
      "priority": 1,
      "name": "IconButton属性",
      "subtitle": "【child】: 子组件   【Widget】\n"
          "【icon】: 内边距   【Widget】\n"
          "【tooltip】: 长按提示文字   【String】\n"
          "【highlightColor】: 长按高亮色   【Color】\n"
          "【splashColor】: 水波纹色   【Color】\n"
          "【onPressed】: 点击事件   【Function】",
      "code": """class CustomIconButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: IconButton(
        padding: EdgeInsets.only(),
        onPressed: () {},
        icon: Icon(Icons.android, size: 40, color: Colors.green),
        tooltip: "android",
        highlightColor: Colors.orangeAccent, 
        splashColor: Colors.blue, 
      ),
    );
  }
}"""
    },
  ],
  "BackButton": [
    {
      "widgetId": 31,
      "priority": 1,
      "name": "BackButton属性",
      "subtitle": "【color】: 颜色   【Color】\n"
          "【onPressed】: 点击事件   【Function】\n"
          "   onPressed为空会退出当前栈",
      "code": """class CustomBackButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var data = [Colors.red,Colors.yellow,Colors.blue,Colors.green];
    return Wrap(
      spacing: 10,
      children: data.map((e)=>BackButton(
        color: e,
      )).toList()
    );
  }
}"""
    },
  ],
  "CloseButton": [
    {
      "widgetId": 32,
      "priority": 1,
      "name": "CloseButton点击事件",
      "subtitle": "     点击时会退出当前栈",
      "code": """class CustomCloseButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CloseButton();
  }"""
    },
  ],
  "ToggleButtons": [
    {
      "widgetId": 33,
      "priority": 1,
      "name": "ToggleButtons单选切换",
      "subtitle": "【children】: 子组件集   【List<Widget>】\n"
          "【borderWidth】: 边线宽   【double】\n"
          "【borderRadius】: 圆角   【BorderRadius】\n"
          "【isSelected】: 是否选中集   【List<bool>】\n"
          "【onPressed】: 点击事件   【Function(int)】",
      "code": """class CustomToggleButtons extends StatefulWidget {
  @override
  _CustomToggleButtonsState createState() => _CustomToggleButtonsState();
}

class _CustomToggleButtonsState extends State<CustomToggleButtons> {
  var _isSelected = [true, false, false];

  @override
  Widget build(BuildContext context) {
    return ToggleButtons(
      children: <Widget>[
        Icon(Icons.skip_previous),
        Icon(Icons.pause),
        Icon(Icons.skip_next),
      ],
      borderWidth: 1,
      borderRadius: BorderRadius.circular(10),
      isSelected: _isSelected,
      onPressed: (value) => setState(() {
        _isSelected = _isSelected.map((e) => false).toList();
        _isSelected[value] = true;
      }),
    );

  }
}"""
    },
    {
      "widgetId": 33,
      "priority": 2,
      "name": "ToggleButtons颜色属性",
      "subtitle": "【borderColor】: 边线色   【Color】\n"
          "【selectedBorderColor】: 选中边线色   【Color】\n"
          "【selectedColor】: 选中时组件色   【Color】\n"
          "【fillColor】: 选中时填充色   【Color】\n"
          "【splashColor】: 水波纹色   【Color】",
      "code": """class ColorToggleButtons extends StatefulWidget {
  @override
  _ColorToggleButtonsState createState() => _ColorToggleButtonsState();
}

class _ColorToggleButtonsState extends State<ColorToggleButtons> {
  var _isSelected = [true, false, false];
  @override
  Widget build(BuildContext context) {
    return ToggleButtons(
      children: <Widget>[
        Icon(Icons.skip_previous),
        Icon(Icons.pause),
        Icon(Icons.skip_next),
      ],
      borderWidth: 1,
      borderColor: Colors.orangeAccent,
      selectedBorderColor: Colors.blue,
      splashColor: Colors.purple.withAlpha(66),
      borderRadius: BorderRadius.circular(10),
      selectedColor: Colors.red,
      fillColor: Colors.green.withAlpha(11),
      isSelected: _isSelected,
      onPressed: (value) => setState(() {
        _isSelected = _isSelected.map((e) => false).toList();
        _isSelected[value] = true;
      }),
    );
  }
}"""
    },
    {
      "widgetId": 33,
      "priority": 3,
      "name": "ToggleButtons多选切换",
      "subtitle": "    可以控制状态转化的逻辑来形成不同的效果。",
      "code": """class ProToggleButtons extends StatefulWidget {
  @override
  _ProToggleButtonsState createState() => _ProToggleButtonsState();
}

class _ProToggleButtonsState extends State<ProToggleButtons> {
  var _isSelected = [false, false, false];
  @override
  Widget build(BuildContext context) {
    return ToggleButtons(
      children: <Widget>[
        Icon(Icons.skip_previous),
        Icon(Icons.pause),
        Icon(Icons.skip_next),
      ],
      borderWidth: 1,
      borderColor: Colors.blue,
      selectedBorderColor: Colors.orangeAccent,
      splashColor: Colors.purple.withAlpha(66),
      borderRadius: BorderRadius.circular(10),
      selectedColor: Colors.red,
      fillColor: Colors.green.withAlpha(11),
      isSelected: _isSelected,
      onPressed: (value) => setState(() {
        _isSelected[value] = !_isSelected[value];
      }),
    );
  }
}"""
    },
  ],
  "Divider": [
    {
      "widgetId": 34,
      "priority": 1,
      "name": "Divider颜色和粗细",
      "subtitle": "【color】: 颜色   【Color】\n"
          "【thickness】: 线粗细   【double】",
      "code": """class CustomDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var dataColor = [
      Colors.red, Colors.yellow,
      Colors.blue, Colors.green];
    var dataThickness = [1.0, 2.0, 4.0, 6.0];
    var data = Map.fromIterables(dataColor, dataThickness);
    return Column(
      children: dataColor
          .map((e) => Divider(
                color: e,
                thickness: data[e],
              ))
          .toList(),
    );
  }
}"""
    },
    {
      "widgetId": 34,
      "priority": 2,
      "name": "Divider高度和空缺",
      "subtitle": "【indent】: 前面空缺长度   【double】\n"
          "【endIndent】: 后面空缺长度   【double】\n"
          "【height】: 占位高   【double】",
      "code": """class HeightDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var dataColor = [
      Colors.red, Colors.yellow,
      Colors.blue, Colors.green];
    var dataThickness = [10.0, 20.0, 30.0, 40.0];
    var data = Map.fromIterables(dataColor, dataThickness);
    return Column(
      children: dataColor
          .map((e) => Divider(
        color: e,
        indent:data[e],
        height: data[e],
        thickness: 2,
      ))
          .toList(),
    );
  }
}"""
    }
  ],
  "VerticalDivider": [
    {
      "widgetId": 35,
      "priority": 1,
      "name": "VerticalDivider颜色和粗细",
      "subtitle": "【color】: 颜色   【Color】\n"
          "【thickness】: 线粗细   【double】",
      "code": """class CustomVerticalDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var dataColor = [
      Colors.red, Colors.yellow,
      Colors.blue, Colors.green];
    var dataThickness = [1.0, 2.0, 4.0, 6.0];
    var data = Map.fromIterables(dataColor, dataThickness);
    return Container(
      height: 150,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: dataColor
            .map((e) => VerticalDivider(
          color: e,
          thickness: data[e],
        ))
            .toList(),
      ),
    );
  }
}"""
    },
    {
      "widgetId": 35,
      "priority": 2,
      "name": "VerticalDivider宽度和空缺",
      "subtitle": "【indent】: 前面空缺长度   【double】\n"
          "【endIndent】: 后面空缺长度   【double】\n"
          "【height】: 占位高   【double】",
      "code": """class HeightVerticalDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var dataColor = [
      Colors.red, Colors.yellow,
      Colors.blue, Colors.green];
    var dataThickness = [10.0, 20.0, 30.0, 40.0];
    var data = Map.fromIterables(dataColor, dataThickness);
    return Container(
      height: 150,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: dataColor
            .map((e) => VerticalDivider(
          color: e,
          indent:data[e],
          endIndent: data[e]*2,
          width: data[e],
          thickness: data[e]/10,
        ))
            .toList(),
      ),
    );
  }
}"""
    }
  ],
  "Placeholder": [
    {
      "widgetId": 36,
      "priority": 1,
      "name": "Placeholder基础属性",
      "subtitle": "【color】: 颜色   【Color】\n"
          "【strokeWidth】: 线粗   【double】",
      "code": """class CustomPlaceholder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100*0.618,
      child:  Placeholder(
          color: Colors.blue,
          strokeWidth: 2,
        ),
    );
  }
}"""
    },
    {
      "widgetId": 36,
      "priority": 2,
      "name": "Placeholder的fallback属性",
      "subtitle": "    当所在区域无宽高约束时，占位组件的宽高。"
          "【fallbackHeight】: 高   【double】\n"
          "【fallbackWidth】: 宽   【double】",
      "code": """class FallbackPlaceholder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      child:  Placeholder(
        color: Colors.blue,
        strokeWidth: 2,
          fallbackHeight: 100,
          fallbackWidth: 150,
      ),
    );
  }
}"""
    }
  ],
  "GridPager": [
    {
      "widgetId": 37,
      "priority": 1,
      "name": "GridPage基础属性",
      "subtitle": "【child】: 子组件   【Widget】\n"
          "【color】: 颜色   【Color】\n"
          "【interval】: 小块边长   【double】",
      "code": """class CustomGridPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 200,
        height: 100,
        child: GridPaper(
            color: Colors.red,
            interval: 50,
            child: Image.asset(
              "assets/images/wy_300x200.jpg",
              fit: BoxFit.cover,
            )));
  }
}"""
    },
    {
      "widgetId": 37,
      "priority": 2,
      "name": "GridPage再分割",
      "subtitle": "【child】: 子组件   【Widget】\n"
          "【color】: 颜色   【Color】\n"
          "【subdivisions】: 小块中子块个数   【int】\n"
          "【divisions】: 小块中子块的分割数   【int】",
      "code": """class DivisionsGridPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 200,
        height: 100,
        child: GridPaper(
            color: Colors.red,
            interval: 50,
            divisions: 4,
            subdivisions: 4,
            child: Image.asset(
              "assets/images/wy_300x200.jpg",
              fit: BoxFit.cover,
            )));
  }
}"""
    },
  ],
  "Image": [
    {
      "widgetId": 38,
      "name": '可从资源文件和网络加载图片',
      "priority": 1,
      "subtitle": "Image.asset加载资源图片,指定路径;\n"
          "Image.network加载资源网络图片，指定链接。\n"
          "Image.file加载资源文件图片，指定路径。\n"
          "Image.memory加载内存图片，指定字节数组。\n"
          "【height】 : 宽   【double】\n"
          "【width】: 高 【double】",
      "code": """class LoadImage extends StatelessWidget {
  final assetsImagePath = "assets/images/icon_head.png";
  final assetsGif = "assets/images/pica.gif";
  final netImageUrl = "https://user-gold-cdn.xitu.io"
      "/2019/7/24/16c225e78234ec26?"
      "imageView2/1/w/1304/h/734/q/85/format/webp/interlace/1";

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      children: <Widget>[
        _loadFromAssets(),
        _loadFromNet(),
      ],
    );
  }
  
  Widget _loadFromAssets() =>
      Wrap(
        spacing: 10,
        children: <Widget>[
          Image.asset(assetsImagePath, height: 80, width: 80),
          Image.asset(assetsGif, height: 80, width: 80),
        ],
      );

  Widget _loadFromNet() => 
      Image.network(netImageUrl, height: 80);
}"""
    },
    {
      "widgetId": 38,
      "name": '图片的适应模式',
      "priority": 2,
      "subtitle": "【fit】 : 适应模式*7   【BoxFit】",
      "code": """class FitImage extends StatefulWidget {
  @override
  _FitImageState createState() => _FitImageState();
}

class _FitImageState extends State<FitImage> {
  bool _smallImage = false;

  @override
  Widget build(BuildContext context) {
    var imageLi = BoxFit.values
        .toList()
        .map((mode) => Column(children: <Widget>[
              Container(
                  margin: EdgeInsets.all(5),
                  width: 100,
                  height: 80,
                  color: Colors.grey.withAlpha(88),
                  child: Image(
                      image: AssetImage(!_smallImage
                          ? "assets/images/wy_300x200.jpg"
                          : "assets/images/wy_30x20.jpg"),
                      fit: mode)),
              Text(mode.toString().split(".")[1])
            ]))
        .toList();

    return Wrap(
      children: [
        ...imageLi,
        _buildSwitch()
      ],
    );
  }

  Widget _buildSwitch() {
    return Container(
      alignment: Alignment.center,
      width: 200,
      height: 100,
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        children: <Widget>[
          Text("使用小图"),
          Switch(
                value: _smallImage,
                onChanged: (b) => 
                    setState(() => _smallImage = b)),
        ],
      ),
    );
  }
}"""
    },
    {
      "widgetId": 38,
      "name": '图片对齐模式',
      "priority": 3,
      "subtitle": "【alignment】 : 颜色   【AlignmentGeometry】\n"
          "    常用Alignment类的九个静态常量，但也可定制位置",
      "code": """class FitImage extends StatefulWidget {
  @override
  _FitImageState createState() => _FitImageState();
}

class _FitImageState extends State<FitImage> {
  bool _smallImage = false;

  @override
  Widget build(BuildContext context) {
    var imageLi = BoxFit.values
        .toList()
        .map((mode) => Column(children: <Widget>[
              Container(
                  margin: EdgeInsets.all(5),
                  width: 100,
                  height: 80,
                  color: Colors.grey.withAlpha(88),
                  child: Image(
                      image: AssetImage(!_smallImage
                          ? "assets/images/wy_300x200.jpg"
                          : "assets/images/wy_30x20.jpg"),
                      fit: mode)),
              Text(mode.toString().split(".")[1])
            ]))
        .toList();

    return Wrap(
      children: [...imageLi, _buildSwitch()],
    );
  }

  Widget _buildSwitch() {
    return Container(
      alignment: Alignment.center,
      width: 200,
      height: 100,
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        children: <Widget>[
          Text("使用小图"),
          Switch(
              value: _smallImage,
              onChanged: (b) => setState(() => _smallImage = b)),
        ],
      ),
    );
  }
}"""
    },
    {
      "widgetId": 38,
      "name": '图片颜色及混合模式',
      "priority": 4,
      "subtitle": "【color】 : 颜色   【Color】\n"
          "【colorBlendMode】: 混合模式*29 【BlendMode】",
      "code": """class BlendModeImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: BlendMode.values
          .toList()
          .map((mode) => Column(children: <Widget>[
                Container(
                    margin: EdgeInsets.all(5),
                    width: 60,
                    height: 60,
                    color: Colors.red,
                    child: Image(
                        image: AssetImage("assets/images/icon_head.png"),
                        color: Colors.blue.withAlpha(88),
                        colorBlendMode: mode)),
                Text(mode.toString().split(".")[1])
              ]))
          .toList(),
    );
  }
}"""
    },
    {
      "widgetId": 38,
      "name": '图片重复模式',
      "priority": 5,
      "subtitle": "【repeat】 : 重复模式*4   【ImageRepeat】",
      "code": """class RepeatImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: ImageRepeat.values
          .toList()
          .map((mode) => Column(children: <Widget>[
        Container(
            margin: EdgeInsets.all(5),
            width: 100,
            height: 60,
            color: Colors.red,
            child: Image(
                image: AssetImage("assets/images/wy_30x20.jpg"),
                repeat: mode)),
        Text(mode.toString().split(".")[1])
      ]))
          .toList(),
    );
  }
}"""
    },
    {
      "widgetId": 38,
      "name": '图片实现局部放大',
      "priority": 6,
      "subtitle": "【centerSlice】 : 保留的区域   【Rect】"
    },
  ],
  "Checkbox": [
    {
      "widgetId": 39,
      "name": 'Checkbox基础用法',
      "priority": 1,
      "subtitle": "【value】 : 是否选中   【double】\n"
          "【checkColor】: 选中时✔️gou颜色 【Color】\n"
          "【activeColor】: 选中时框内颜色 【Color】\n"
          "【onChanged】: 状态改变事件 【Function(bool)】\n",
      "code": """class CustomCheckbox extends StatefulWidget {
  @override
  _CustomCheckboxState createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  bool _checked = false;
  final colors = [Colors.red, Colors.yellow, Colors.blue, Colors.green];

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      children: colors
          .map((e) =>
          Checkbox(
              value: _checked,
              checkColor: Colors.white,
              activeColor: e,
              onChanged: (v) =>
                  setState(() => _checked = v)))
          .toList(),
    );
  }
}"""
    },
    {
      "widgetId": 39,
      "name": 'Checkbox的三态',
      "priority": 2,
      "subtitle": "【tristate】 : 是否是三态   【double】\n"
          "  onChanged时,回调true、null、false三种状态",
      "code": """class TristateCheckBok extends StatefulWidget {
  @override
  _TristateCheckBokState createState() => _TristateCheckBokState();
}

class _TristateCheckBokState extends State<TristateCheckBok> {
  bool _checked = false;
  final colors = [Colors.red, Colors.yellow, Colors.blue, Colors.green];
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      children: colors
          .map((e) =>
          Checkbox(
              value: _checked,
              tristate: true,
              checkColor: Colors.white,
              activeColor: e,
              onChanged: (v) {
                print(v);
                setState(() => _checked = v);
              }))
          .toList(),
    );
  }
}"""
    }
  ],
  "Switch": [
    {
      "widgetId": 40,
      "name": 'Switch基础语法',
      "priority": 1,
      "subtitle": "【inactiveThumbColor】 : 未选中小圈颜色   【Color】\n"
          "【inactiveTrackColor】 : 未选中滑槽颜色   【Color】\n"
          "【activeColor】 : 选中时小圈颜色   【Color】\n"
          "【activeTrackColor】 : 选中时滑槽颜色   【Color】\n"
          "【onChanged】 : 切换回调   【Function(double)】"
          "  onChanged时,回调true、null、false三种状态",
      "code": """class CustomSwitch extends StatefulWidget {
  @override
  _CustomSwitchState createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  final colors = [Colors.red, Colors.yellow, Colors.blue, Colors.green];
  bool _checked = false;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      children: colors
          .map((e) => Switch(
              value: _checked,
              inactiveThumbColor: e,
              inactiveTrackColor: Colors.grey.withAlpha(88),
              activeColor: Colors.green,
              activeTrackColor: Colors.orange,
              onChanged: (v) {
                setState(() => _checked = v);
              }))
          .toList(),
    );
  }
}"""
    },
    {
      "widgetId": 40,
      "name": 'Switch图片',
      "priority": 2,
      "subtitle": "【inactiveThumbImage】 : 未选中小圈图片   【ImageProvider】\n"
          "【activeThumbImage】 : 选中时滑槽颜色   【ImageProvider】",
      "code": """class ImageSwitch extends StatefulWidget {
  @override
  _ImageSwitchState createState() => _ImageSwitchState();
}

class _ImageSwitchState extends State<ImageSwitch> {
  final imgs = [
    "assets/images/head_icon/icon_5.jpg",
    "assets/images/head_icon/icon_6.jpg",
    "assets/images/head_icon/icon_7.jpg",
    "assets/images/head_icon/icon_8.jpg"
  ];
  bool _checked = false;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      children: imgs
          .map((e) => Switch(
              value: _checked,
              inactiveThumbImage: AssetImage(e),
              activeThumbImage: AssetImage('assets/images/pica.gif'),
              onChanged: (v) {
                setState(() => _checked = v);
              }))
          .toList(),
    );
  }
}"""
    }
  ],
  "CupertinoSwitch": [
    {
      "widgetId": 41,
      "name": 'CupertinoSwitch基本使用',
      "priority": 1,
      "subtitle": "【value】 : 是否选中   【double】\n"
          "【activeColor】 : 激活态颜色   【Color】\n"
          "【onChanged】 : 切换回调   【Function(double)】",
      "code": """class CustomCupertinoSwitch extends StatefulWidget {
  @override
  _CustomCupertinoSwitchState createState() => _CustomCupertinoSwitchState();
}

class _CustomCupertinoSwitchState extends State<CustomCupertinoSwitch> {
  final colors = [Colors.red, Colors.yellow, Colors.blue, Colors.green];

  bool _checked = false;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      children: colors
          .map((e) => CupertinoSwitch(
          value: _checked,
          activeColor: e,
          onChanged: (v) {
            setState(() => _checked = v);
          }))
          .toList(),
    );
  }
}"""
    }
  ],
  "Slider": [
    {
      "widgetId": 42,
      "name": 'Slider基本使用',
      "priority": 1,
      "subtitle": "【value】 : 数值   【double】\n"
          "【min】 : 最小值   【double】\n"
          "【max】 : 最大值   【double】\n"
          "【activeColor】 : 激活颜色   【Color】\n"
          "【inactiveColor】 : 非激活颜色   【Color】\n"
          "【onChanged】 : 改变时回调   【Function(double)】",
      "code": """class _CustomSliderState extends State<CustomSlider> {
  double _value = 0.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text('当前值:\${_value.toStringAsFixed(1)}'),
        Slider(
            value: _value,
            min: 0.0,
            max: 360.0,
            activeColor: Colors.orangeAccent,
            inactiveColor: Colors.green.withAlpha(99),
            onChanged: (value) {
              setState(() {
                _value = value;
              });
            }),
      ],
    );
  }
}"""
    },
    {
      "widgetId": 42,
      "name": 'Slider的分段与标签',
      "priority": 2,
      "subtitle": "【divisions】 : 分段数   【int】\n"
          "【label】 : 提示气泡文字   【String】\n"
          "【onChangeStart】 : 开始滑动时监听   【Function(double)】\n"
          "【onChangeEnd】 : 滑动结束时监听   【Function(double)】",
      "code": """class DivisionsSlider extends StatefulWidget {
  @override
  _DivisionsSliderState createState() => _DivisionsSliderState();
}

class _DivisionsSliderState extends State<DivisionsSlider> {
  double _value = 0.0;

  @override
  Widget build(BuildContext context) {
    return Slider(
        value: _value,
        min: 0.0,
        max: 360.0,
        divisions: 10,
        label: '\${_value.toStringAsFixed(1)}',
        activeColor: Colors.orangeAccent,
        inactiveColor: Colors.green.withAlpha(99),
        onChangeStart: (value) {
          print('开始滑动:\$value');
        },
        onChangeEnd: (value) {
          print('滑动结束:\$value');
        },
        onChanged: (value) {
          setState(() {
            _value = value;
          });
        });
  }
}"""
    }
  ],
  "CupertinoSlider": [
    {
      "widgetId": 43,
      "name": 'CupertinoSlider基本使用',
      "priority": 1,
      "subtitle": "【value】 : 数值   【double】\n"
          "【min】 : 最小值   【double】\n"
          "【max】 : 最大值   【double】\n"
          "【activeColor】 : 激活颜色   【Color】\n"
          "【thumbColor】 : 圆形颜色   【Color】\n"
          "【divisions】 : 分段数   【int】\n"
          "【onChangeStart】 : 开始滑动回调   【Function(double)】\n"
          "【onChangeEnd】 : 滑动结束回调   【Function(double)】\n"
          "【onChanged】 : 改变时回调   【Function(double)】",
      "code": """class CustomCupertinoSlider extends StatefulWidget {
  @override
  _CustomCupertinoSliderState createState() => _CustomCupertinoSliderState();
}

class _CustomCupertinoSliderState extends State<CustomCupertinoSlider> {
  double _value = 0.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,

      children: <Widget>[
        Text('当前值:\${_value.toStringAsFixed(1)}'),
        CupertinoSlider(
            value: _value,
            divisions: 180,
            min: 0.0,
            max: 360.0,
            activeColor: Colors.green,
            thumbColor: Colors.orange,
            onChangeStart: (value) {
              print('开始滑动:\$value');
            },
            onChangeEnd: (value) {
              print('滑动结束:\$value');
            },
            onChanged: (value) {
              setState(() {
                _value = value;
              });
            }),
      ],
    );
  }
}"""
    },
  ],
  "RangeSlider": [
    {
      "widgetId": 44,
      "name": 'Slider基本使用',
      "priority": 1,
      "subtitle": "【values】 : 数值   【RangeValues】\n"
          "【min】 : 最小值   【double】\n"
          "【max】 : 最大值   【double】\n"
          "【divisions】 : 分段数   【int】\n"
          "【label】 : 提示气泡文字   【String】\n"
          "【activeColor】 : 激活颜色   【Color】\n"
          "【inactiveColor】 : 非激活颜色   【Color】\n"
          "【onChangeStart】 : 开始滑动时监听   【Function(RangeValues)】\n"
          "【onChangeEnd】 : 滑动结束时监听   【Function(RangeValues)】\n"
          "【onChanged】 : 改变时回调   【Function(RangeValues)】",
      "code": """class CustomRangeSlider extends StatefulWidget {
  @override
  _CustomRangeSliderState createState() => _CustomRangeSliderState();
}

class _CustomRangeSliderState extends State<CustomRangeSlider> {
  RangeValues _rangeValues = RangeValues(90, 270);

  @override
  Widget build(BuildContext context) {
    return RangeSlider(
        values: _rangeValues,
        divisions: 180,
        min: 0.0,
        max: 360.0,
        labels: RangeLabels("\${_rangeValues.start.toStringAsFixed(1)}",
            "\${_rangeValues.end.toStringAsFixed(1)}"),
        activeColor: Colors.orangeAccent,
        inactiveColor: Colors.green.withAlpha(99),
        onChangeStart: (value) {
          print('开始滑动:\$value');
        },
        onChangeEnd: (value) {
          print('滑动结束:\$value');
        },
        onChanged: (value) {
          setState(() {
            _rangeValues = value;
          });
        });
  }
}"""
    },
  ],
  "Radio": [
    {
      "widgetId": 45,
      "name": 'Radio基本使用',
      "priority": 1,
      "subtitle": "【value】 : 选钮值   【T】\n"
          "【groupValue】 : 当前匹配值   【T】\n"
          "【activeColor】 : 激活颜色   【Color】\n"
          "【onChanged】 : 改变时回调   【Function(T)】",
      "code": """class CustomRadio extends StatefulWidget {
  @override
  _CustomRadioState createState() => _CustomRadioState();
}

class _CustomRadioState extends State<CustomRadio> {
  var data = <double>[1, 2, 3, 4, 5];
  double _value = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: data
          .map((e) => Radio<double>(
          activeColor: Colors.orangeAccent,
          value: e,
          groupValue: _value,
          onChanged: (v) => setState(() => _value = v)))
          .toList(),
    );
  }
}"""
    },
  ],
  "CircularProgressIndicator": [
    {
      "widgetId": 46,
      "name": 'CircularProgressIndicator基本使用',
      "priority": 1,
      "subtitle": "【value】 : 进度   【double】\n"
          "【backgroundColor】 : 背景色   【Color】\n"
          "【valueColor】 : 进度颜色   【Animation<Color>】\n"
          "【strokeWidth】 : 线宽   【double】\n"
          "    value为null时会不停旋转",
      "code": """class CustomCircularProgressIndicator extends StatefulWidget {
  @override
  _CustomCircularProgressIndicatorState createState() =>
      _CustomCircularProgressIndicatorState();
}

class _CustomCircularProgressIndicatorState
    extends State<CustomCircularProgressIndicator> {

  var data = <double>[0.2,0.4,0.6,0.8,null];

  @override
  Widget build(BuildContext context) {

    return Wrap(
      spacing: 10,
      children:data.map((e)=>Container(
        width: 50,
        height: 50,
        child: CircularProgressIndicator(
          value: e,
          backgroundColor: Colors.grey.withAlpha(33),
          valueColor: AlwaysStoppedAnimation(Colors.orange),
          strokeWidth: 5,
        ),
      )).toList(),
    );
  }
}"""
    },
  ],
  "LinearProgressIndicator": [
    {
      "widgetId": 47,
      "name": 'LinearProgressIndicator基本使用',
      "priority": 1,
      "subtitle": "【value】 : 进度   【double】\n"
          "【backgroundColor】 : 背景色   【Color】\n"
          "【valueColor】 : 进度颜色   【Animation<Color>】\n"
          "    value为null时会不停循环",
      "code": """class CustomLinearProgressIndicator extends StatefulWidget {
  @override
  _CustomLinearProgressIndicatorState createState() =>
      _CustomLinearProgressIndicatorState();
}

class _CustomLinearProgressIndicatorState
    extends State<CustomLinearProgressIndicator> {
  var data = <double>[0.2, 0.4, 0.6, 0.8, null];

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      children: data
          .map((e) => Container(
        width: 50,
        height: 3,
        child:LinearProgressIndicator(
          value: e,
          backgroundColor: Colors.grey.withAlpha(33),
          valueColor: AlwaysStoppedAnimation(Colors.orange),
        ),
      ))
          .toList(),
    );
  }
}"""
    },
  ],
  "CupertinoActivityIndicator": [
    {
      "widgetId": 48,
      "name": 'CupertinoActivityIndicator基本使用',
      "priority": 1,
      "subtitle": "【animating】 : 是否loading动画   【bool】\n"
          "【radius】 : 半径   【double】",
      "code":
          """class CustomCupertinoActivityIndicator extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Wrap(
      spacing: 20,
      children: <Widget>[
        CupertinoActivityIndicator(
          animating: true,
          radius: 25,
        ),
        CupertinoActivityIndicator(
          animating: false,
          radius: 25,
        )
      ],
    );
  }
}"""
    },
  ],
  "RefreshIndicator": [
    {
      "widgetId": 49,
      "name": 'RefreshIndicator基本使用',
      "priority": 1,
      "subtitle": "【child】 : 孩子(可滑动)   【Widget】\n"
          "【displacement】 : 指示器悬浮高度   【double】\n"
          "【color】 : 指示器颜色   【Color】\n"
          "【backgroundColor】 : 指示器背景色   【Color】\n"
          "【onRefresh】: 异步函数   【Future<void> Function()】",
      "code": """class CustomRefreshIndicator extends StatefulWidget {
  @override
  _CustomRefreshIndicatorState createState() => _CustomRefreshIndicatorState();
}

class _CustomRefreshIndicatorState extends State<CustomRefreshIndicator> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {

    return Container(
      height: 200,
      width: 200,
      child: RefreshIndicator(
        onRefresh: _increment,
        displacement: 20,
        color: Colors.orange,
        backgroundColor: Colors.white,
        child: SingleChildScrollView(
          child: Container(
            alignment: Alignment.center,
            width: 200,
            height: 300,
            color: Colors.blue,
            child: Text('\$_count',style: TextStyle(color: Colors.white,fontSize: 40)),
          ),
        ),
      ),
    );
  }

  Future<void> _increment() async {
    await Future.delayed(Duration(seconds: 2));
    setState(() {
      _count++;
    });
  }
}"""
    },
  ],
  "Tooltip": [
    {
      "widgetId": 50,
      "name": 'Tooltip基本使用',
      "priority": 1,
      "subtitle": "【preferBelow】 : 是否首选下方   【bool】\n"
          "【padding】 : 内边距   【EdgeInsetsGeometry】\n"
          "【margin】 : 外边距   【EdgeInsetsGeometry】\n"
          "【message】 : 消息内容   【String】\n"
          "【showDuration】 : 展示时间   【Duration】\n"
          "【waitDuration】 : 悬浮出现时间   【Duration】\n"
          "【child】 : 孩子   【Widget】",
      "code": """class CustomTooltip extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Tooltip(
      preferBelow: true,
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.all(5),
      message: "天王盖地虎",
      showDuration: Duration(seconds: 3),
      waitDuration: Duration(milliseconds: 200),
      child: Icon(Icons.info_outline),
    );
  }
}"""
    },
    {
      "widgetId": 50,
      "name": 'Tooltip的装饰',
      "priority": 2,
      "subtitle": "【decoration】 : 装饰对象 【Decoration】\n"
          "【textStyle】 : 文字样式   【double】",
      "code": """class DecorationTooltip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Tooltip(
        preferBelow: false,
        padding: EdgeInsets.all(5),
        margin: EdgeInsets.all(2),
        message: "宝塔镇河妖",
        textStyle: TextStyle(
            color: Colors.red,
            shadows: [Shadow(color: Colors.white, 
                offset: Offset(1, 1))]),
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              color: Colors.orangeAccent, 
              offset: Offset(1, 1), blurRadius: 8)
        ]),
        child: Icon(Icons.info_outline));
  }
}"""
    },
  ],
  "ExpandIcon": [
    {
      "widgetId": 51,
      "name": 'ExpandIcon基本使用',
      "priority": 1,
      "subtitle": "【isExpanded】 : 是否展开   【bool】\n"
          "【padding】 : 内边距   【EdgeInsetsGeometry】\n"
          "【size】 : 图标大小   【double】\n"
          "【color】 : 不展开时颜色   【Color】\n"
          "【expandedColor】 : 展开时颜色   【Color】\n"
          "【onPressed】 : 点击事件   【Function(bool)】",
      "code": """class CustomExpandIcon extends StatefulWidget {
  @override
  _CustomExpandIconState createState() => _CustomExpandIconState();
}

class _CustomExpandIconState extends State<CustomExpandIcon> {
  var _closed = true;

  @override
  Widget build(BuildContext context) {
    return ExpandIcon(
      isExpanded: _closed,
      padding: EdgeInsets.all(5),
      size: 30,
      color: Colors.blue,
      expandedColor: Colors.orangeAccent,
      onPressed: (value) => setState(() => _closed = !_closed),
    );
  }
}"""
    }
  ],
  "ExpansionTile": [
    {
      "widgetId": 52,
      "name": 'ExpansionTile基本使用',
      "priority": 1,
      "subtitle": "【children】 : 展开内容   【List<Widget>】\n"
          "【leading】 : 头左组件   【Widget】\n"
          "【title】 : 头中组件   【Widget】\n"
          "【trailing】 : 头尾组件   【Widget】\n"
          "【backgroundColor】 : 背景色   【Color】\n"
          "【onExpansionChanged】 : 折叠事件   【Function(bool)】\n"
          "【initiallyExpanded】 : 是否初始时展开   【bool】",
      "code": """class CustomExpansionTile extends StatefulWidget {
  @override
  _CustomExpansionTileState createState() => _CustomExpansionTileState();
}

class _CustomExpansionTileState extends State<CustomExpansionTile> {

  @override
  Widget build(BuildContext context) {

    return ExpansionTile(
      leading: Icon(Icons.star),
      title: Text("选择语言"),
      backgroundColor: Colors.grey.withAlpha(6),
      onExpansionChanged: (value){
        print('\$value');
      },
      initiallyExpanded: false,
      children: <Widget>[
        CustomRadioListTile()
      ],
    );
  }
}"""
    }
  ],
  "SelectableText": [
    {
      "widgetId": 53,
      "name": 'SelectableText基本使用',
      "priority": 1,
      "subtitle": "【入参】 : 显示文字   【String】\n"
          "【style】 : 文字样式   【TextStyle】\n"
          "【cursorRadius】 : 光标半径   【Radius】\n"
          "【cursorColor】 : 光标颜色   【Color】\n"
          "【cursorWidth】 : 光标宽度   【double】\n"
          "【showCursor】 : 是否显示光标   【bool】\n"
          "【autofocus】 : 自动聚焦   【bool】",
      "code": """class CustomSelectableText extends StatelessWidget {
  final text = "        始臣之解牛之时，所见无非牛者。三年之后，未尝见全牛也。方今之时，"
      "臣以神遇而不以目视，官知止而神欲行。依乎天理，批大郤，导大窾，因其固然，"
      "技经肯綮之未尝，而况大軱乎！良庖岁更刀，割也；族庖月更刀，折也。"
      "今臣之刀十九年矣，所解数千牛矣，而刀刃若新发于硎。彼节者有间，而刀刃者无厚；"
      "以无厚入有间，恢恢乎其于游刃必有余地矣，是以十九年而刀刃若新发于硎。"
      "虽然，每至于族，吾见其难为，怵然为戒，视为止，行为迟。动刀甚微，謋然已解，如土委地。"
      "提刀而立，为之四顾，为之踌躇满志，善刀而藏之.";

  @override
  Widget build(BuildContext context) {
    return SelectableText(
      text,
      style: TextStyle(fontSize: 18, color: Colors.orange),
      cursorColor: Colors.green,
      cursorRadius: Radius.circular(3),
      cursorWidth: 5,
      showCursor: true,
      autofocus: false,
    );
  }
}"""
    },
    {
      "widgetId": 53,
      "name": 'SelectableText对齐属性',
      "priority": 2,
      "subtitle": "【textAlign】 : 对齐方式*6   【textAlign】\n"
          "【textDirection】 : 文字方向*2   【TextDirection】",
      "code": """class AlignSelectableText extends StatefulWidget {
  @override
  _AlignSelectableTextState createState() => _AlignSelectableTextState();
}

class _AlignSelectableTextState extends State<AlignSelectableText> {
  final text =
      "The [SelectableText] widget displays a string of text with a single style."
      "The string might break across multiple lines or might all be displayed on"
      "the same line depending on the layout constraints.";
  var _textAlign = TextAlign.left;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        _buildSelector(),
        SelectableText(
          text,
          style: TextStyle(fontSize: 18, color: Colors.red),
          cursorColor: Colors.green,
          cursorRadius: Radius.circular(3),
          textAlign: _textAlign,
          textDirection: TextDirection.ltr,
          cursorWidth: 5,
          showCursor: true,
          autofocus: false,
        ),
      ],
    );
  }

  Widget _buildSelector() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Text(
          "textAlign属性选择:",
          style: TextStyle(
              fontSize: 16, color: Colors.blue, fontWeight: FontWeight.bold),
        ),
        DropdownButton<TextAlign>(
            underline: Container(),
            value: _textAlign,
            items: TextAlign.values
                .map((e) => DropdownMenuItem<TextAlign>(
                      value: e,
                      child: Text(e.toString()),
                    ))
                .toList(),
            onChanged: (e) {
              setState(() {
                _textAlign = e;
              });
            }),
      ],
    );
  }
}"""
    },
  ],
  "TextField": [
    {
      "widgetId": 54,
      "name": 'TextField基本语法',
      "priority": 1,
      "subtitle": "【controller】 : 控制器   【TextEditingController】\n"
          "【style】 : 文字样式   【TextStyle】\n"
          "【decoration】 : 装饰线   【InputDecoration】\n"
          "【onEditingComplete】 : 输入完成事件   【Function()】\n"
          "【onSubmitted】 : 提交事件   【Function(String)】\n"
          "【onChanged】 : 输入事件   【Function(String)】",
      "code": """class CustomTextField extends StatefulWidget {
  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  final FocusNode _focusNode = FocusNode();
  TextEditingController _controller;

  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 300,
        child: TextField(
          controller: _controller,
          style: TextStyle(color: Colors.blue),
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'username',
          ),
          onEditingComplete: () {
            print('onEditingComplete');
          },
          onChanged: (v) {
            print('onChanged:' + v);
          },
          onSubmitted: (v) {
            FocusScope.of(context).requestFocus(_focusNode);
            print('onSubmitted:' + v);
            _controller.clear();
          },
        ));
  }
}"""
    },
    {
      "widgetId": 54,
      "name": 'TextField基本语法',
      "priority": 2,
      "subtitle": "【minLines】 : 最小行数   【int】\n"
          "【maxLines】 : 最大行数   【int】\n"
          "【cursorRadius】 : 光标半径   【Radius】\n"
          "【cursorColor】 : 光标颜色   【Color】\n"
          "【cursorWidth】 : 光标宽度   【double】\n"
          "【showCursor】 : 是否显示光标   【bool】\n"
          "【autofocus】 : 自动聚焦   【bool】",
      "code": """class CursorTextField extends StatefulWidget {
  @override
  _CursorTextFieldState createState() => _CursorTextFieldState();
}

class _CursorTextFieldState extends State<CursorTextField> {
  final FocusNode _focusNode = FocusNode();

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        _buildSubmitBtn(),
        _buildTextField(context),
      ],
    );
  }

  Container _buildTextField(BuildContext context) {
    return Container(
      width: 300,
      child: TextField(
        style: TextStyle(color: Colors.blue),
        minLines: 3,
        maxLines: 5,
        cursorColor: Colors.green,
        cursorRadius: Radius.circular(3),
        cursorWidth: 5,
        showCursor: true,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(10),
          hintText: "请输入...",
          border: OutlineInputBorder(),
        ),
        onChanged: (v) {},
      ),
    );
  }

  _buildSubmitBtn() => FlatButton(
      color: Colors.blue,
      child: Text(
        "提交",
        style: TextStyle(color: Colors.white, fontSize: 16),
      ),
      onPressed: () => FocusScope.of(context).requestFocus(_focusNode));
}"""
    },
    {
      "widgetId": 54,
      "name": 'decoration的复杂装饰',
      "priority": 3,
      "subtitle": "InputDecoration有非常多的装饰点,对应点缀见代码:\n"
          "border: 边线相关\n"
          "helper: 左下角相关提示\n"
          "counter: 右下角相关提示\n"
          "prefix: 输入框内部最左侧\n"
          "suffix: 输入框内部最右侧\n"
          "label: 无焦点时文字\n"
          "label: 无焦点时文字\n"
          "hint: 提示文字相关\n"
          "border: 边线相关",
      "code": """class ComplexTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
        decoration: InputDecoration(
      border: OutlineInputBorder(),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), bottomLeft: Radius.circular(10))),
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.deepPurpleAccent),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), bottomLeft: Radius.circular(10))),
      labelText: 'username',
      labelStyle: TextStyle(color: Colors.purple),
      helperText: "help me",
      helperStyle: TextStyle(color: Colors.blue),

      suffixText: "suffix",
      suffixIcon: Icon(Icons.done),
      suffixStyle: TextStyle(color: Colors.green),

      counterText: "counter",
      counterStyle: TextStyle(color: Colors.orange),

      prefixText: "ID  ",
      prefixStyle: TextStyle(color: Colors.blue),
      prefixIcon: Icon(Icons.language),

      fillColor: Color(0x110099ee),
      filled: true,

      //  errorText: "error",
      //  errorMaxLines: 1,
      //  errorStyle: TextStyle(color: Colors.red),
      //  errorBorder: UnderlineInputBorder(),

      hintText: "请输入用户名",
      hintMaxLines: 1,
      hintStyle: TextStyle(color: Colors.black38),
      icon: Icon(Icons.assignment_ind),
    ));
  }
}"""
    },
  ],
  "DropdownButton": [
    {
      "widgetId": 55,
      "name": 'DropdownButton基本语法',
      "priority": 1,
      "subtitle": "【value】 : 当前值   【T】\n"
          "【items】 : 下拉选框   【List<DropdownMenuItem<T>>】\n"
          "【icon】 : 图标   【Widget】\n"
          "【elevation】 : 影深   【double】\n"
          "【onChanged】 : 选择条目事件   【Function(T)】\n"
          "【backgroundColor】 : 背景色   【Color】",
      "code": """class CustomDropDownButton extends StatefulWidget {
  @override
  _CustomDropDownButtonState createState() => _CustomDropDownButtonState();
}

class _CustomDropDownButtonState extends State<CustomDropDownButton> {
  Color _color = Colors.red;
  final _colors = [Colors.red, Colors.yellow, Colors.blue, Colors.green];
  final _info = ["红色", "黄色", "蓝色", "绿色"];

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          width: 50,
          height: 50,
          color: _color,
        ),
        DropdownButton<Color>(
            value: _color,
            elevation: 1,
            icon: Icon(
              Icons.expand_more,
              size: 20,
              color: _color,
            ),
            items: _buildItems(),
            onChanged: (v) => setState(() => _color = v)),
      ],
    );
  }

  List<DropdownMenuItem<Color>> _buildItems() => _colors
      .map((e) => DropdownMenuItem<Color>(
          value: e,
          child: Text(
            _info[_colors.indexOf(e)],
            style: TextStyle(color: e),
          )))
      .toList();
}"""
    },
    {
      "widgetId": 55,
      "name": 'DropdownButton基本语法',
      "priority": 2,
      "subtitle": "【isDense】 : 是否紧排   【bool】\n"
          "【iconSize】 : 图标大小   【double】\n"
          "【hint】 : 提示组件   【Widget】\n"
          "【iconEnabledColor】 : 图标颜色   【Color】",
      "code": """class StyleDropDownButton extends StatefulWidget {
  @override
  _StyleDropDownButtonState createState() => _StyleDropDownButtonState();
}

class _StyleDropDownButtonState extends State<StyleDropDownButton> {
  Color _color;
  final _colors = [Colors.red, Colors.yellow, Colors.blue, Colors.green];
  final _info = ["红色", "黄色", "蓝色", "绿色"];

  @override
  Widget build(BuildContext context) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      children: <Widget>[
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          width: 50,
          height: 50,
          color: _color??Colors.transparent,
        ),
        DropdownButton<Color>(
            hint: Text('请选择'),
            isDense: true,
            iconSize:20,
            iconEnabledColor:_color??Colors.orange,
            value: _color,
            items: _buildItems(),
            onChanged: (v) => setState(() => _color = v)),
      ],
    );
  }

  List<DropdownMenuItem<Color>> _buildItems() => _colors
      .map((e) => DropdownMenuItem<Color>(
          value: e,
          child: Text(
            _info[_colors.indexOf(e)],
            style: TextStyle(color: e),
          )))
      .toList();
}"""
    },
  ],
  "PopupMenuButton": [
    {
      "widgetId": 56,
      "name": 'PopupMenuButton基本使用',
      "priority": 1,
      "subtitle": "【itemBuilder】 : 构造器   【PopupMenuItemBuilder<T>】\n"
          "【offset】 : 偏移   【Offset】\n"
          "【color】 : 背景颜色   【Color】\n"
          "【shape】 : 形状   【ShapeBorder】\n"
          "【elevation】 : 影深   【double】\n"
          "【showCursor】 : 是否显示光标   【bool】\n"
          "【onCanceled】 : 取消事件   【Function()】\n"
          "【onSelected】 : 选择事件   【Function(T)】",
      "code":
          """class _CustomPopupMenuButtonState extends State<CustomPopupMenuButton> {
  final map = {
    "关于": Icons.info_outline,
    "帮助": Icons.help_outline,
    "问题反馈": Icons.add_comment,
  };

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      itemBuilder: (context) => buildItems(),
      offset: Offset(0, 50),
      color: Color(0xffF4FFFA),
      elevation: 1,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        bottomRight: Radius.circular(20),
        topRight: Radius.circular(5),
        bottomLeft: Radius.circular(5),
      )),
      onSelected: (e) {
        print(e);
        if (e == '关于') {
          DialogAbout.show(context);
        }
      },
      onCanceled: () => print('onCanceled'),
    );
  }

  List<PopupMenuItem<String>> buildItems() {
    return map.keys
        .toList()
        .map((e) => PopupMenuItem<String>(
            value: e,
            child: Wrap(
              spacing: 10,
              children: <Widget>[
                Icon(
                  map[e],
                  color: Colors.blue,
                ),
                Text(e),
              ],
            )))
        .toList();
  }
}"""
    },
  ],
  "AppBar": [
    {
      "widgetId": 57,
      "name": 'AppBar基本使用',
      "priority": 1,
      "subtitle": "【leading】 : 左侧组件   【Widget】\n"
          "【title】 : 中间组件   【Widget】\n"
          "【actions】 : 右侧组件   【List<Widget>】\n"
          "【elevation】 : 影深   【double】\n"
          "【shape】 : 形状   【ShapeBorder】\n"
          "【backgroundColor】 : 影深   【背景色】\n"
          "【centerTitle】 : 中间是否居中   【bool】",
      "code": """class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('风雅六社'),
      leading: BackButton(),
      backgroundColor: Colors.amber[500],
      elevation: 2,
      centerTitle: true,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        bottomRight: Radius.circular(20),
        topRight: Radius.circular(5),
        bottomLeft: Radius.circular(5),
      )),
      actions: <Widget>[
        IconButton(
            icon: Icon(Icons.star),
            tooltip: 'like',
            onPressed: () {
              // do nothing
            }),
        CustomPopupMenuButton()
      ],
    );
  }
}"""
    },
    {
      "widgetId": 57,
      "name": 'AppBar与TabBar、TabBarView联用',
      "priority": 2,
      "subtitle": "【bottom】 : 底部组件   【PreferredSizeWidget】",
      "code": """class TabAppBar extends StatefulWidget {
  @override
  _TabAppBarState createState() => _TabAppBarState();
}

class _TabAppBarState extends State<TabAppBar>
    with SingleTickerProviderStateMixin {
  final tabs = ['风画庭', '雨韵舍', '雷鸣殿', '电疾堂', '霜寒阁', '雪月楼'];
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: tabs.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 180,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    "assets/images/sabar.jpg",
                  ),
                  fit: BoxFit.cover)),
          child: _buildAppBar(),
        ),
        Container(
            height: 50, color: Color(0xff916BF0), child: _buildTableBarView())
      ],
    );
  }

  Widget _buildAppBar() => AppBar(
        title: Text('风雅六社'),
        elevation: 1,
        leading: BackButton(),
        backgroundColor: Colors.amber[500].withAlpha(33),
        centerTitle: true,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        )),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.star),
              tooltip: 'like',
              onPressed: () {
                // do nothing
              }),
          CustomPopupMenuButton()
        ],
        bottom: TabBar(
          isScrollable: true,
          controller: _tabController,
          indicatorColor: Colors.orangeAccent,
          tabs: tabs.map((e) => Tab(text: e)).toList(),
        ),
      );

  Widget _buildTableBarView() => TabBarView(
      controller: _tabController,
      children: tabs
          .map((e) => Center(
                  child: Text(
                e,
                style: TextStyle(color: Colors.white, fontSize: 20),
              )))
          .toList());
}"""
    },
  ],
  "TabBar": [
    {
      "widgetId": 58,
      "name": 'TabBar基本使用',
      "priority": 1,
      "subtitle": "【controller】 : 控制器   【TabController】\n"
          "【indicatorColor】 : 指示器颜色   【指示器颜色】\n"
          "【indicatorWeight】 : 指示器高   【double】\n"
          "【indicatorPadding】 : 指示器边距   【EdgeInsetsGeometry】\n"
          "【labelStyle】 : 选中文字样式   【TextStyle】\n"
          "【unselectedLabelStyle】 : 未选中文字样式   【TextStyle】\n"
          "【isScrollable】 : 是否可滑动   【bool】\n"
          "【onTap】 : 页签点击回调   【Function(int)】\n"
          "【tabs】 : 标签组件   【List<Widget>】",
      "code": """class CustomTabBar extends StatefulWidget {
  @override
  _CustomTabBarState createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar>
    with SingleTickerProviderStateMixin {
  final tabs = ['风画庭', '雨韵舍', '雷鸣殿', '电疾堂', '霜寒阁', '雪月楼'];
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: tabs.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TabBar(
      onTap: (tab) {
        print(tab);
      },
      labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      unselectedLabelStyle: TextStyle(fontSize: 16),
      isScrollable: true,
      controller: _tabController,
      labelColor: Colors.blue,
      indicatorWeight: 3,
      indicatorPadding: EdgeInsets.symmetric(horizontal: 10),
      unselectedLabelColor: Colors.grey,
      indicatorColor: Colors.orangeAccent,
      tabs: tabs.map((e) => Tab(text: e)).toList(),
    );
  }
}"""
    },
    {
      "widgetId": 58,
      "name": '通过修改源码可实现无水波纹',
      "priority": 1,
      "subtitle": "详见:components/flutter/no_shadow_tab_bar.dart",
      "code": """class NoShadowTabBarDemo extends StatefulWidget {
  @override
  _NSTabBarState createState() => _NSTabBarState();
}

class _NSTabBarState extends State<NoShadowTabBarDemo>
    with SingleTickerProviderStateMixin {
  final tabs = ['风画庭', '雨韵舍', '雷鸣殿', '电疾堂', '霜寒阁', '雪月楼'];
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: tabs.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return NoShadowTabBar(
      onTap: (tab) {
        print(tab);
      },
      labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      unselectedLabelStyle: TextStyle(fontSize: 16),
      isScrollable: true,
      controller: _tabController,
      labelColor: Colors.blue,
      indicatorWeight: 3,
      indicatorPadding: EdgeInsets.symmetric(horizontal: 10),
      unselectedLabelColor: Colors.grey,
      indicatorColor: Colors.orangeAccent,
      tabs: tabs.map((e) => Tab(text: e)).toList(),
    );
  }
}"""
    },
  ],
  "TabBarView": [
    {
      "widgetId": 58,
      "name": 'TabBarView需要与TabBar联用',
      "priority": 1,
      "subtitle": "【controller】 : 控制器   【TabController】\n"
          "【children】 : 孩子们   【指示器颜色】\n"
          "【physics】 : 表现   【ScrollPhysics】",
      "code": """class CustomTabBarView extends StatefulWidget {
  @override
  _CustomTabBarViewState createState() => _CustomTabBarViewState();
}

class _CustomTabBarViewState extends State<CustomTabBarView> with SingleTickerProviderStateMixin {
  final tabs = ['风画庭', '雨韵舍', '雷鸣殿', '电疾堂', '霜寒阁', '雪月楼'];
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: tabs.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          _buildTabBar(),
          Container(
              color: Colors.purple,
              width: MediaQuery.of(context).size.width,
              height: 200,
              child: _buildTableBarView())
        ],
      ),
    );
  }

  Widget _buildTabBar() => TabBar(
      onTap: (tab) => print(tab),
      labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      unselectedLabelStyle: TextStyle(fontSize: 16),
      isScrollable: true,
      controller: _tabController,
      labelColor: Colors.blue,
      indicatorWeight: 3,
      indicatorPadding: EdgeInsets.symmetric(horizontal: 10),
      unselectedLabelColor: Colors.grey,
      indicatorColor: Colors.orangeAccent,
      tabs: tabs.map((e) => Tab(text: e)).toList(),
    );

  Widget _buildTableBarView() => TabBarView(
      controller: _tabController,
      children: tabs.map((e) => Center(
                  child: Text(e, style: TextStyle(color: Colors.white, fontSize: 20),
              ))).toList());
}"""
    },
  ],
  "BottomNavigationBar": [
    {
      "widgetId": 60,
      "name": 'BottomNavigationBar基本使用',
      "priority": 1,
      "subtitle": "【currentIndex】 : 当前索引   【int】\n"
          "【elevation】 : 影深   【double】\n"
          "【type】 : 类型*2   【BottomNavigationBarType】\n"
          "【fixedColor】 : type为fix的颜色   【Color】\n"
          "【backgroundColor】 : 背景色   【Color】\n"
          "【iconSize】 : 图标大小   【double】\n"
          "【selectedLabelStyle】 : 选中文字样式   【TextStyle】\n"
          "【unselectedLabelStyle】 : 未选中文字样式   【TextStyle】\n"
          "【showUnselectedLabels】 : 显示未选中标签   【bool】\n"
          "【showSelectedLabels】 : 显示选中标签   【bool】\n"
          "【items】 : 条目   【List<BottomNavigationBarItem>】\n"
          "【onTap】 : 点击事件   【Function(int)】",
      "code": """class CustomBottomNavigationBar extends StatefulWidget {
  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  var _position = 0;
  BottomNavigationBarType _type = BottomNavigationBarType.shifting;
  final iconsMap = {
    //底栏图标
    "图鉴": Icons.home, "动态": Icons.toys,
    "喜欢": Icons.favorite, "手册": Icons.class_,
    "我的": Icons.account_circle,
  };
  final _colors = [
    Colors.red,
    Colors.yellow,
    Colors.blue,
    Colors.green,
    Colors.purple,
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        _buildOp(),
        _buildBottomNavigationBar(),
      ],
    );
  }

  bool get isShifting => _type == BottomNavigationBarType.shifting;

  BottomNavigationBar _buildBottomNavigationBar() {
    return BottomNavigationBar(
      onTap: (position) => setState(() => _position = position),
      currentIndex: _position,
      elevation: 1,
      type: _type,
      fixedColor: isShifting ? Colors.white : _colors[_position],
      backgroundColor: Colors.white,
      iconSize: 25,
      selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
      showUnselectedLabels: false,
      showSelectedLabels: true,
      items: iconsMap.keys
          .map((key) => BottomNavigationBarItem(
              title: Text(
                key,
              ),
              icon: Icon(Cons.ICONS_MAP[key]),
              backgroundColor: _colors[_position]))
          .toList(),
    );
  }

  Widget _buildOp() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Text(
          _type.toString(),
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
        ),
        Switch(
            value: _type == BottomNavigationBarType.shifting,
            onChanged: (b) {
              setState(() => _type = b
                  ? BottomNavigationBarType.shifting
                  : BottomNavigationBarType.fixed);
            }),
      ],
    );
  }
}
"""
    },
    {
      "widgetId": 60,
      "name": '可结合PageView进行切页',
      "priority": 2,
      "subtitle": "在onTap时进行使用控制器进行切页",
      "code": """class BottomNavigationBarWithPageView extends StatefulWidget {
  @override
  _BottomNavigationBarWithPageViewState createState() =>
      _BottomNavigationBarWithPageViewState();
}

class _BottomNavigationBarWithPageViewState
    extends State<BottomNavigationBarWithPageView> {
  var _position = 0;
  final iconsMap = {
    //底栏图标
    "图鉴": Icons.home, "动态": Icons.toys,
    "喜欢": Icons.favorite, "手册": Icons.class_,
    "我的": Icons.account_circle,
  };
  final _colors = [
    Colors.red,
    Colors.yellow,
    Colors.blue,
    Colors.green,
    Colors.purple,
  ];
  PageController _controller; //页面控制器，初始0

  @override
  void initState() {
    _controller = PageController(
      initialPage: _position,
    );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            color: Colors.orange.withAlpha(88),
            width: MediaQuery.of(context).size.width,
            height: 150,
            child: PageView(
              controller: _controller,
              children: iconsMap.keys
                  .map((e) => Center(
                        child: Text(
                          e,
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ))
                  .toList(),
            ),
          ),
          _buildBottomNavigationBar()
        ],
      ),
    );
  }

  BottomNavigationBar _buildBottomNavigationBar() {
    return BottomNavigationBar(
      onTap: (position) {
        _controller.jumpToPage(position);
        setState(() => _position = position);
      },
      currentIndex: _position,
      elevation: 1,
      type: BottomNavigationBarType.shifting,
      fixedColor: Colors.white,
      backgroundColor: Colors.white,
      iconSize: 25,
      selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
      showUnselectedLabels: false,
      showSelectedLabels: true,
      items: iconsMap.keys
          .map((key) => BottomNavigationBarItem(
              title: Text(
                key,
              ),
              icon: Icon(Cons.ICONS_MAP[key]),
              backgroundColor: _colors[_position]))
          .toList(),
    );
  }
}
"""
    },
  ],
  "BottomAppBar": [
    {
      "widgetId": 61,
      "name": 'BottomAppBar基本用法',
      "priority": 1,
      "subtitle": "【elevation】 : 影深   【double】\n"
          "【shape】 : 形状   【NotchedShape】\n"
          "【notchMargin】 : 间隔距离   【double】\n"
          "【color】 : 颜色   【Color】\n"
          "【child】 : 孩子   【Widget】",
      "code": """class CustomBottomAppBar extends StatefulWidget {
  @override
  _CustomBottomAppBarState createState() => _CustomBottomAppBarState();
}

class _CustomBottomAppBarState extends State<CustomBottomAppBar> {
  var _position = 0;
  var _location = FloatingActionButtonLocation.centerDocked;
  final iconsMap = {
    "图鉴": Icons.home,
    "动态": Icons.toys,
    "喜欢": Icons.favorite,
    "手册": Icons.class_,
  };
  var activeColor = Colors.blue.withAlpha(240);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 180,
      child: Scaffold(
        backgroundColor: Colors.purple.withAlpha(22),
        floatingActionButton: FloatingActionButton(
          onPressed: () => DialogAbout.show(context),
          child: Icon(Icons.add),
        ),
        bottomNavigationBar: _buildBottomAppBar(),
        floatingActionButtonLocation: _location,
        body: _buildContent(),
      ),
    );
  }

  Widget _buildBottomAppBar() {
    return BottomAppBar(
      elevation: 1,
      shape: CircularNotchedRectangle(),
      notchMargin: 5,
      color: Colors.red,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: info.asMap().keys.map((i) => _buildChild(i)).toList()
            ..insertAll(isCenter ? 2 : 4, [SizedBox(width: 30)])),
    );
  }

  Container _buildContent() {
    return Container(
      alignment: Alignment.center,
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        children: <Widget>[
          Text(
            '当前页索引:\$_position',
            style: TextStyle(color: Colors.blue, fontSize: 18),
          ),
          Switch(
              value: isCenter,
              onChanged: (v) {
                setState(() {
                  _location = v
                      ? FloatingActionButtonLocation.centerDocked
                      : FloatingActionButtonLocation.endDocked;
                });
              }),
        ],
      ),
    );
  }

  List<String> get info => iconsMap.keys.toList();

  bool get isCenter => _location == FloatingActionButtonLocation.centerDocked;

  Widget _buildChild(int i) {
    var active = i == _position;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () => setState(() => _position = i),
        child: Wrap(
          direction: Axis.vertical,
          alignment: WrapAlignment.center,
          children: <Widget>[
            Icon(
              iconsMap[info[i]],
              color: active ? activeColor : Colors.white,
              size: 30,
            ),
            Text(info[i],
                style: TextStyle(
                    color: active ? activeColor : Colors.white, fontSize: 14)),
          ],
        ),
      ),
    );
  }
}"""
    },
  ],
  "CupertinoNavigationBar": [
    {
      "widgetId": 62,
      "name": 'CupertinoNavigationBar基本用法',
      "priority": 1,
      "subtitle": "【leading】 : 左侧组件   【Widget】\n"
          "【middle】 : 中间组件   【Widget】\n"
          "【trailing】 : 尾部组件   【Widget】\n"
          "【backgroundColor】 : 背景色   【Color】\n"
          "【padding】 : 内边距   【EdgeInsetsDirectional】\n"
          "【border】 : 边线   【Border】",
      "code": """class CustomCupertinoNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoNavigationBar(
      leading: Icon(
        CupertinoIcons.back,
        color: Colors.blue,
      ),
      middle: Text("风雪雅舍"),
      trailing: Image.asset(
        "assets/images/icon_head.png",
        width: 25.0,
        height: 25.0,
      ),
      backgroundColor: Color(0xfff1f1f1),
      padding: EdgeInsetsDirectional.only(start: 10,end: 20),
      border: Border.all(color: Colors.transparent),
    );
  }
}"""
    },
  ],
  "CupertinoTabBar": [
    {
      "widgetId": 63,
      "name": 'CupertinoNavigationBar基本用法',
      "priority": 1,
      "subtitle": "【currentIndex】 : 当前激活索引   【Widget】\n"
          "【items】 : 条目组件   【Widget】\n"
          "【trailing】 : 尾部组件   【Widget】\n"
          "【backgroundColor】 : 背景色   【Color】\n"
          "【inactiveColor】 : 非激活色   【Color】\n"
          "【activeColor】 : 激活色   【Color】\n"
          "【iconSize】 : 图标大小    【double】\n"
          "【border】 : 边线   【Border】\n"
          "【onTap】 : 点击事件   【Function(int)】",
      "code": """class CustomCupertinoTabBar extends StatefulWidget {
  @override
  _CustomCupertinoTabBarState createState() => _CustomCupertinoTabBarState();
}

class _CustomCupertinoTabBarState extends State<CustomCupertinoTabBar> {
  var _position = 0;
  final iconsMap = {
    //底栏图标
    "图鉴": Icons.home, "动态": Icons.toys,
    "喜欢": Icons.favorite, "手册": Icons.class_,
    "我的": Icons.account_circle,
  };

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        _buildContent(context),
        _buildTabBar(),
      ],
    );
  }

  Widget _buildTabBar() {
    return CupertinoTabBar(
      currentIndex: _position,
      onTap: (value) => setState(() => _position = value),
      items: iconsMap.keys
          .map((e) => BottomNavigationBarItem(
                icon: Icon(
                  iconsMap[e],
                ),
                title: Text(e),
              ))
          .toList(),
      activeColor: Colors.blue,
      inactiveColor: Color(0xff333333),
      backgroundColor: Color(0xfff1f1f1),
      iconSize: 25.0,
    );
  }

  Widget _buildContent(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width,
      height: 150,
      color: Color(0xffE7F3FC),
      child: Text(
        iconsMap.keys.toList()[_position],
        style: TextStyle(color: Colors.blue, fontSize: 24),
      ),
    );
  }
}"""
    },
  ],
  "Scaffold": [
    {
      "widgetId": 64,
      "name": 'Scaffold基本用法',
      "priority": 1,
      "subtitle": "【appBar】 : 头部组件   【PreferredSizeWidget】\n"
          "【bottomNavigationBar】 : 底部组件   【Widget】\n"
          "【drawer】 : 左侧滑组件   【Widget】\n"
          "【endDrawer】 : 右侧滑组件   【Widget】\n"
          "【body】 : 内容组件   【Widget】\n"
          "【backgroundColor】 : 背景色   【Color】\n"
          "【floatingActionButton】 : 浮动按钮   【Widget】\n"
          "【floatingActionButtonLocation】 : 浮动按钮位置   【FloatingActionButtonLocation】",
      "code": """class CustomScaffold extends StatefulWidget {
  CustomScaffold({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _CustomScaffoldState();
}

// AppBar 默认的实例,有状态
class _CustomScaffoldState extends State with SingleTickerProviderStateMixin {
  final tabs = ['风画庭', '雨韵舍', '雷鸣殿', '电疾堂', '霜寒阁', '雪月楼'];
  var _position = 0;
  final iconsMap = {
    "图鉴": Icons.home,
    "动态": Icons.toys,
    "喜欢": Icons.favorite,
    "手册": Icons.class_,
    "我的": Icons.account_circle,
  };
  final _colors = [
    Colors.blue,
    Colors.red,
    Colors.yellow,
    Colors.green,
    Colors.purple,
  ];

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: tabs.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height - 300,
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {},
        ),
        drawer: _buildLeftDrawer(),
        endDrawer: _buildLeftDrawer(),
        appBar: AppBar(
          title: Text('风雅六社'),
          backgroundColor: Colors.blue,
          centerTitle: true,
          actions: <Widget>[Icon(Icons.star), CustomPopupMenuButton()],
          bottom: _buildTabBar(),
        ),
        body: _buildTableBarView(),
        bottomNavigationBar: _buildBottomNavigationBar(),
      ),
    );
  }

  Drawer _buildLeftDrawer() => Drawer(
        elevation: 1,
        child: Image.asset(
          'assets/images/sabar.jpg',
          fit: BoxFit.cover,
        ),
      );

  Widget _buildTabBar() => TabBar(
        isScrollable: true,
        controller: _tabController,
        indicatorColor: Colors.orangeAccent,
        tabs: tabs.map((e) => Tab(text: e)).toList(),
      );

  Widget _buildBottomNavigationBar() => BottomNavigationBar(
        onTap: (position) => setState(() => _position = position),
        currentIndex: _position,
        elevation: 1,
        backgroundColor: Colors.white,
        iconSize: 25,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        showUnselectedLabels: false,
        showSelectedLabels: true,
        items: iconsMap.keys
            .map((key) => BottomNavigationBarItem(
                title: Text(
                  key,
                ),
                icon: Icon(iconsMap[key]),
                backgroundColor: _colors[_position]))
            .toList(),
      );

  Widget _buildTableBarView() => TabBarView(
      controller: _tabController,
      children: tabs
          .map((e) => Center(
                  child: Text(
                e,
                style: TextStyle(color: Colors.blue, fontSize: 20),
              )))
          .toList());
}"""
    },
  ],
  "MaterialApp": [
    {
      "widgetId": 65,
      "name": 'MaterialApp基本用法',
      "priority": 1,
      "subtitle": "【theme】 : 主题   【ThemeData】\n"
          "【title】 : 底部组件   【任务栏标题】\n"
          "【onGenerateRoute】 : 路由生成器   【RouteFactory】\n"
          "【home】 : 主页   【Widget】",
      "code": """class CustomMaterialApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height - 200,
      child: MaterialApp(
        title: 'Flutter Demo',
        onGenerateRoute: Router.generateRoute,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: NavPage(),
      ),
    );
  }
}"""
    },
  ],
  "ClipOval": [
    {
      "widgetId": 66,
      "name": 'ClipOval基本使用',
      "priority": 1,
      "subtitle": "【child】 : 子组件   【Widget】\n"
          "【clipBehavior】 : 裁剪行为   【Clip】\n"
          "【clipper】 : 裁剪器   【CustomClipper<Rect>】",
      "code": """class CustomClipOval extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 20,
      children: <Widget>[
        ClipOval(
          child: Image.asset(
            "assets/images/wy_300x200.jpg",
            width: 150,
            height: 100,
          ),
        ),
        ClipOval(
          child: Image.asset(
            "assets/images/wy_300x200.jpg",
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}"""
    },
  ],
  "ClipRect": [
    {
      "widgetId": 67,
      "name": 'ClipRect基本使用',
      "priority": 1,
      "subtitle": "【child】 : 子组件   【Widget】\n"
          "【clipBehavior】 : 裁剪行为   【Clip】\n"
          "【clipper】 : 裁剪器   【CustomClipper<Rect>】",
      "code": """"""
    },
  ],
  "ClipRRect": [
    {
      "widgetId": 68,
      "name": 'ClipRRect基本使用',
      "priority": 1,
      "subtitle": "【child】 : 子组件   【Widget】\n"
          "【borderRadius】 : 边线半径   【BorderRadius】\n"
          "【clipBehavior】 : 裁剪行为   【Clip】\n"
          "【clipper】 : 裁剪器   【CustomClipper<Rect>】",
      "code": """class CustomClipRRect extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.elliptical(35, 30)),
      child: Image.asset(
        "assets/images/wy_300x200.jpg",
        width: 150,
        height: 100,
      ),
    );
  }
}"""
    },
  ],
  "ClipPath": [
    {
      "widgetId": 69,
      "name": 'ClipPath基本使用',
      "priority": 1,
      "subtitle": "【child】 : 子组件   【Widget】\n"
          "【clipBehavior】 : 裁剪行为   【Clip】\n"
          "【clipper】 : 裁剪器   【CustomClipper<Path>】",
      "code": """class CustomClipPath extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: ShapeBorderClipper(shape: _StarShapeBorder()),
      child: Image.asset(
        "assets/images/wy_300x200.jpg",
        width: 150,
        height: 100,
        fit: BoxFit.cover,
      ),
    );
  }
}

class _StarShapeBorder extends ShapeBorder {
  final Path _path = Path();

  @override
  EdgeInsetsGeometry get dimensions => null;

  @override
  Path getInnerPath(Rect rect, {TextDirection textDirection}) {
    return null;
  }

  @override
  Path getOuterPath(Rect rect, {TextDirection textDirection}) =>
      nStarPath(20, rect.height / 2, rect.height / 2 * 0.85,
          dx: rect.width / 2, dy: rect.height / 2);

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection textDirection}) {}

  Path nStarPath(int num, double R, double r, {dx = 0, dy = 0}) {
    double perRad = 2 * pi / num;
    double radA = perRad / 2 / 2;
    double radB = 2 * pi / (num - 1) / 2 - radA / 2 + radA;
    _path.moveTo(cos(radA) * R + dx, -sin(radA) * R + dy);
    for (int i = 0; i < num; i++) {
      _path.lineTo(
          cos(radA + perRad * i) * R + dx, -sin(radA + perRad * i) * R + dy);
      _path.lineTo(
          cos(radB + perRad * i) * r + dx, -sin(radB + perRad * i) * r + dy);
    }
    _path.close();
    return _path;
  }

  @override
  ShapeBorder scale(double t) {
    return null;
  }
}"""
    },
  ],
  "DecoratedBox": [
    {
      "widgetId": 70,
      "name": 'DecoratedBox基本使用',
      "priority": 1,
      "subtitle": "【child】 : 孩子组件   【Widget】\n"
          "【decoration】 : 装饰对象   【Decoration】\n"
          "【decoration】 : 裁剪行为   【Clip】\n"
          "【position】 : 前景色(左)/后景色(右)   【DecorationPosition】",
      "code": """class CustomDecoratedBox extends StatelessWidget {
  final rainbow = <int>[
    0xffff0000,
    0xffFF7F00,
    0xffFFFF00,
    0xff00FF00,
    0xff00FFFF,
    0xff0000FF,
    0xff8B00FF
  ];

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 30,
      children: <Widget>[_buildDecoratedBox1(), _buildDecoratedBox2()],
    );
  }

  Widget _buildDecoratedBox2() {
    return DecoratedBox(
      position: DecorationPosition.foreground,
      decoration: BoxDecoration(
          border: Border(left: BorderSide(color: Colors.black, width: 2)),
          //添加渐变色
          gradient: LinearGradient(
              stops: <double>[0.0, 1 / 6, 2 / 6, 3 / 6, 4 / 6, 5 / 6, 1.0],
              colors: rainbow.map((e) => Color(e)).toList()),
          boxShadow: [
            BoxShadow(
                color: Colors.orangeAccent,
                offset: Offset(1, 1),
                blurRadius: 10,
                spreadRadius: 1),
          ]),
      child: Icon(
        Icons.android,
        size: 80,
        color: Colors.black.withAlpha(123),
      ),
    );
  }

  Widget _buildDecoratedBox1() {
    return DecoratedBox(
      position: DecorationPosition.background,
      decoration: BoxDecoration(
          //添加渐变色
          gradient: LinearGradient(
              stops: <double>[0.0, 1 / 6, 2 / 6, 3 / 6, 4 / 6, 5 / 6, 1.0],
              colors: rainbow.map((e) => Color(e)).toList()),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), bottomRight: Radius.circular(40)),
          boxShadow: [
            BoxShadow(
                color: Colors.orangeAccent,
                offset: Offset(1, 1),
                blurRadius: 10,
                spreadRadius: 1),
          ]),
      child: Icon(
        Icons.android,
        size: 80,
        color: Colors.black.withAlpha(123),
      ),
    );
  }
}"""
    },
  ],
  "Offstage": [
    {
      "widgetId": 71,
      "name": 'Offstage基本使用',
      "priority": 1,
      "subtitle": "【child】 : 孩子组件   【Widget】\n"
          "【offstage】 : 是否消失   【bool】",
      "code": """class CustomOffstage extends StatefulWidget {
  @override
  _CustomOffstageState createState() => _CustomOffstageState();
}

class _CustomOffstageState extends State<CustomOffstage> {
  bool _off = false;

  @override
  Widget build(BuildContext context) {
    var radBox = Container(
      height: 50,
      width: 60,
      color: Colors.red,
      child: Switch(
          value: _off, 
          onChanged: (v) => setState(() => _off = v)),
    );

    return Container(
      width: 250,
      height: 200,
      child: Row(
        children: <Widget>[radBox, _buildOffStage(), radBox],
      ),
    );
  }

  Widget _buildOffStage() => Offstage(
      offstage: _off,
      child: Container(
        alignment: Alignment.center,
        height: 100,
        width: 100,
        color: Colors.blue,
        child: Text(
          "Offstage",
          style: TextStyle(fontSize: 20),
        ),
      ));
}"""
    },
  ],
  "RotatedBox": [
    {
      "widgetId": 72,
      "name": 'RotatedBox基本使用',
      "priority": 1,
      "subtitle": "【child】 : 孩子组件   【Widget】\n"
          "【quarterTurns】 : 旋转多少个90°   【int】",
      "code": """class CustomRotatedBox extends StatefulWidget {
  @override
  _CustomRotatedBoxState createState() => _CustomRotatedBoxState();
}

class _CustomRotatedBoxState extends State<CustomRotatedBox> {
  int _quarterTurns = 0;

  @override
  Widget build(BuildContext context) {
    return RotatedBox(
      quarterTurns: _quarterTurns,
      child: GestureDetector(
          onTap: () => setState(() => _quarterTurns++),
          child: Icon(
            Icons.android,
            size: 60,
            color: Colors.blue,
          )),
    );
  }
}"""
    },
  ],
  "Opacity": [
    {
      "widgetId": 73,
      "name": 'Opacity基本使用',
      "priority": 1,
      "subtitle": "【child】 : 孩子组件   【Widget】\n"
          "【opacity】 : 透明度0~1   【double】",
      "code": """class CustomOpacity extends StatefulWidget {
  @override
  _CustomOpacityState createState() => _CustomOpacityState();
}

class _CustomOpacityState extends State<CustomOpacity> {
  var _opacity = 0.2;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[_buildSlider(), _buildOpacity()],
    );
  }
  
  Widget _buildOpacity() => Opacity(
        opacity: _opacity,
        child: Image.asset(
          'assets/images/icon_head.png',
          width: 100,
        ),
    
      );
  Widget _buildSlider() => Slider(
      divisions: 20,
      label: _opacity.toString(),
      value: _opacity,
      onChanged: (v) => setState(() => _opacity = v));
}"""
    },
  ],
  "Padding": [
    {
      "widgetId": 74,
      "name": 'Padding基本使用',
      "priority": 1,
      "subtitle": "【child】 : 孩子组件   【Widget】\n"
          "【padding】 : 内四边距   【EdgeInsetsGeometry】",
      "code": """"""
    },
  ],
  "Baseline": [
    {
      "widgetId": 75,
      "name": 'Baseline基本使用',
      "priority": 1,
      "subtitle": "【child】 : 孩子组件   【Widget】\n"
          "【baseline】 : 基线位置   【double】\n"
          "【baselineType】 : 基线类型   【TextBaseline】",
      "code": """class CustomBaseline extends StatefulWidget {
  @override
  _CustomBaselineState createState() => _CustomBaselineState();
}

class _CustomBaselineState extends State<CustomBaseline> {
  double _baseline=20;

  @override
  Widget build(BuildContext context) {

    var childBox = Text(//孩子组件
      '你好,Flutter',
      style: TextStyle(fontSize: 20,fontFamily: "Menlo"),
    );


    var baseline = Baseline(
        child: childBox,
        baseline: _baseline,
        baselineType: TextBaseline.alphabetic
    );

    return Column(
      children: <Widget>[
        _buildSlider(),
        Container(
          width: 100/0.618,
          height: 100,
          color: Colors.grey.withAlpha(22),
          child: baseline,
        ),
      ],
    );
  }

  Widget _buildSlider() => Slider(
      divisions: 20,
      min: 0,
      max: 60,
      label: _baseline.toString(),
      value: _baseline,
      onChanged: (v) => setState(() => _baseline = v));
}"""
    },
  ],
  "SizedBox": [
    {
      "widgetId": 76,
      "name": 'SizedBox基本使用',
      "priority": 1,
      "subtitle": "【child】 : 孩子组件   【Widget】\n"
          "【width】 : 宽   【double】\n"
          "【height】 : 高   【double】",
      "code": """class CustomSizedBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var child = Container(
      alignment: Alignment.center,
      color: Colors.cyanAccent,
      width: 50,
      height: 50,
      child: Text("Static"),
    );

    var box = SizedBox(
      width: 80,
      height: 40,
      child: Container(
          color: Colors.orange,
          child: Icon(
            Icons.android,
            color: Colors.white,
          )),
    );

    return Container(
      color: Colors.grey.withAlpha(22),
      width: 200,
      height: 100,
      child: Row(
        children: <Widget>[child, box, child],
      ),
    );
  }
}"""
    },
  ],
  "AspectRatio": [
    {
      "widgetId": 77,
      "name": 'AspectRatio基本使用',
      "priority": 1,
      "subtitle": "【child】 : 孩子组件   【Widget】\n"
          "【aspectRatio】 : 宽高比例   【double】",
      "code": """class CustomAspectRatio extends StatefulWidget {
  @override
  _CustomAspectRatioState createState() => _CustomAspectRatioState();
}

class _CustomAspectRatioState extends State<CustomAspectRatio> {
  var _ratio = 0.75;

  @override
  Widget build(BuildContext context) {
    var child = Container(
      alignment: Alignment.center,
      color: Colors.cyanAccent,
      width: 50,
      height: 50,
      child: Text("Static"),
    );

    var box = AspectRatio(
      aspectRatio: _ratio,
      child: Container(
          color: Colors.orange,
          child: Icon(
            Icons.android,
            color: Colors.white,
          )),
    );

    return Column(
      children: <Widget>[
        _buildSlider(),
        Container(
          color: Colors.grey.withAlpha(22),
          width: 300,
          height: 100,
          child: Row(
            children: <Widget>[child, box, child],
          ),
        ),
      ],
    );
  }

  Widget _buildSlider() => Slider(
      divisions: 20,
      min: 0.1,
      max: 2.0,
      label: _ratio.toStringAsFixed(2),
      value: _ratio,
      onChanged: (v) => setState(() => _ratio = v));
}"""
    },
  ],
  "Transform": [
    {
      "widgetId": 78,
      "name": '斜切变换skew',
      "priority": 1,
      "subtitle": "斜切x由R0C1数控制,入参为弧度值,表示斜切角度\n"
          "斜切y由R1C0数控制,入参为弧度值,表示斜切角度",
      "code": """class SkewTransform extends StatefulWidget {
  @override
  _SkewTransformState createState() => _SkewTransformState();
}

class _SkewTransformState extends State<SkewTransform> {
  Matrix4 _m4;
  double _alpha = 0;
  double _beta = 0;

  @override
  void initState() {
    _m4 = Matrix4.identity();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[_buildTransform(), Matrix4Shower(_m4)],
        ),
        _buildSliders()
      ],
    );
  }

  Widget _buildTransform() {
    _m4 = Matrix4.skew(_alpha, _beta);
    return Transform(
      transform: _m4,
      child: Container(
          color: Colors.cyanAccent,
          width: 100,
          height: 100,
          child: Image.asset(
            'assets/images/wy_300x200.jpg',
            fit: BoxFit.cover,
          )),
    );
  }

  Widget _buildSliders() => Column(
        children: <Widget>[
          Slider(
              min: -pi,
              max: pi,
              value: _alpha,
              divisions: 360,
              label: 'alpha:' + (_alpha * 180 / pi).toStringAsFixed(1) + "°",
              onChanged: (v) {
                setState(() {
                  _alpha = v;
                });
              }),
          Slider(
              min: -pi,
              max: pi,
              value: _beta,
              divisions: 360,
              label: 'beta:' + (_beta * 180 / pi).toStringAsFixed(1) + "°",
              onChanged: (v) {
                setState(() {
                  _beta = v;
                });
              })
        ],
      );
}

class Matrix4Shower extends StatelessWidget {
  final Matrix4 matrix4;

  Matrix4Shower(this.matrix4);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        '\${matrix4.entry(0, 0).toStringAsFixed(1)},\${matrix4.entry(0, 1).toStringAsFixed(1)},\${matrix4.entry(0, 2).toStringAsFixed(1)},\${matrix4.entry(0, 3).toStringAsFixed(1)},\n'
        '\${matrix4.entry(1, 0).toStringAsFixed(1)},\${matrix4.entry(1, 1).toStringAsFixed(1)},\${matrix4.entry(1, 2).toStringAsFixed(1)},\${matrix4.entry(1, 3).toStringAsFixed(1)},\n'
        '\${matrix4.entry(2, 0).toStringAsFixed(1)},\${matrix4.entry(2, 1).toStringAsFixed(1)},\${matrix4.entry(2, 2).toStringAsFixed(1)},\${matrix4.entry(2, 3).toStringAsFixed(1)},\n'
        '\${matrix4.entry(3, 0).toStringAsFixed(1)},\${matrix4.entry(3, 1).toStringAsFixed(1)},\${matrix4.entry(3, 2).toStringAsFixed(1)},\${matrix4.entry(3, 3).toStringAsFixed(1)}',
        style: TextStyle(fontSize: 20, color: Colors.blue),
      ),
    );
  }
}
"""
    },
    {
      "widgetId": 78,
      "name": '平移变换translationValues',
      "priority": 2,
      "subtitle": "平移x由R0C3数控制,入参为数值,表示平移长度\n"
          "平移y由R1C3数控制,入参为数值,表示平移长度\n"
          "平移z由R2C3数控制,入参为数值,表示平移长度",
      "code": """class TranslationTransform extends StatefulWidget {
  @override
  _TranslationTransformState createState() => _TranslationTransformState();
}

class _TranslationTransformState extends State<TranslationTransform> {
  Matrix4 _m4;
  double _x = 0;
  double _y = 0;
  double _z = 0;

  @override
  void initState() {
    _m4 = Matrix4.identity();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[_buildTransform(), Matrix4Shower(_m4)],
        ),
        _buildSliders()
      ],
    );
  }

  Widget _buildTransform() {
    _m4 = Matrix4.translationValues(_x, _y, _z);
    return Transform(
      transform: _m4,
      child: Container(
          color: Colors.cyanAccent,
          width: 100,
          height: 100,
          child: Image.asset(
            'assets/images/wy_300x200.jpg',
            fit: BoxFit.cover,
          )),
    );
  }

  Widget _buildSliders() => Column(
        children: <Widget>[
          Slider(
              min: -100,
              max: 100,
              value: _x,
              divisions: 360,
              label: 'x:\${_x.toStringAsFixed(1)}',
              onChanged: (v) {
                setState(() {
                  _x = v;
                });
              }),
          Slider(
              min: -100,
              max: 100,
              value: _y,
              divisions: 360,
              label: 'y:\${_y.toStringAsFixed(1)}',
              onChanged: (v) {
                setState(() {
                  _y = v;
                });
              }),
          Slider(
              min: -100,
              max: 100,
              value: _z,
              divisions: 360,
              label: 'z:\${_z.toStringAsFixed(1)}',
              onChanged: (v) {
                setState(() {
                  _z = v;
                });
              })
        ],
      );
}"""
    },
    {
      "widgetId": 78,
      "name": '缩放变换diagonal3Values',
      "priority": 3,
      "subtitle": "缩放x由R0C0数控制,入参为数值,表示缩放分率\n"
          "缩放y由R1C2数控制,入参为数值,表示缩放分率\n"
          "缩放z由R2C2数控制,入参为数值,表示缩放分率",
      "code": """class ScaleTransform extends StatefulWidget {
  @override
  _ScaleTransformState createState() => _ScaleTransformState();
}

class _ScaleTransformState extends State<ScaleTransform> {
  Matrix4 _m4;
  double _x = 1.0;
  double _y = 1.0;
  double _z = 1.0;

  @override
  void initState() {
    _m4 = Matrix4.identity();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[_buildTransform(), Matrix4Shower(_m4)],
        ),
        _buildSliders()
      ],
    );
  }

  Widget _buildTransform() {
    _m4 = Matrix4.diagonal3Values(_x, _y, _z);
    return Transform(
      transform: _m4,
      child: Container(
          color: Colors.cyanAccent,
          width: 100,
          height: 100,
          child: Image.asset(
            'assets/images/wy_300x200.jpg',
            fit: BoxFit.cover,
          )),
    );
  }

  Widget _buildSliders() => Column(
        children: <Widget>[
          Slider(
              min: -2,
              max: 2,
              value: _x,
              divisions: 360,
              label: 'x:\${_x.toStringAsFixed(1)}',
              onChanged: (v) {
                setState(() {
                  _x = v;
                });
              }),
          Slider(
              min: -2,
              max: 2,
              value: _y,
              divisions: 360,
              label: 'y:\${_y.toStringAsFixed(1)}',
              onChanged: (v) {
                setState(() {
                  _y = v;
                });
              }),
          Slider(
              min: -2,
              max: 2,
              value: _z,
              divisions: 360,
              label: 'z:\${_z.toStringAsFixed(1)}',
              onChanged: (v) {
                setState(() {
                  _z = v;
                });
              })
        ],
      );
}"""
    },
    {
      "widgetId": 78,
      "name": '旋转变换rotation',
      "priority": 4,
      "subtitle": "x旋转由R1C1、R1C2、R2C1、R2C2控制,入参表示弧度\n"
          "y旋转由R0C0、R0C2、R2C0、R2C2控制,入参表示弧度\n"
          "z旋转由R0C0、R0C1、R1C0、R1C1控制,入参表示弧度",
      "code": """class RotateTransform extends StatefulWidget {
  @override
  _RotateTransformState createState() => _RotateTransformState();
}

class _RotateTransformState extends State<RotateTransform> {
  Matrix4 _m4;
  double _x = 0;
  int _rotateFlag = 1;

  @override
  void initState() {
    _m4 = Matrix4.identity();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[_buildTransform(), Matrix4Shower(_m4)],
        ),
        _buildSliders()
      ],
    );
  }

  Widget _buildTransform() {
    if (_rotateFlag == 1) {
      _m4 = Matrix4.rotationX(_x);
    } else if (_rotateFlag == 2) {
      _m4 = Matrix4.rotationY(_x);
    } else {
      _m4 = Matrix4.rotationZ(_x);
    }

    return Transform(
      transform: _m4,
      child: Container(
          color: Colors.cyanAccent,
          width: 100,
          height: 100,
          child: Image.asset(
            'assets/images/wy_300x200.jpg',
            fit: BoxFit.cover,
          )),
    );
  }

  final Map<int, String> map = {
    1: 'rotationX',
    2: 'rotationY',
    3: 'rotationZ',
  };

  Widget _buildSliders() => Column(
        children: <Widget>[
          Wrap(
            children: map.keys.map((key) => _buildChild(key)).toList(),
          ),
          Slider(
              min: -pi,
              max: pi,
              value: _x,
              divisions: 360,
              label: 'x:\${_x.toStringAsFixed(1)}',
              onChanged: (v) {
                setState(() {
                  _x = v;
                });
              }),
        ],
      );

  Padding _buildChild(int key) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: FilterChip(
        selectedColor: Colors.orange.withAlpha(55),
        selectedShadowColor: Colors.blue,
        shadowColor: Colors.orangeAccent,
        pressElevation: 5,
        elevation: 3,
        avatar: CircleAvatar(child: Text(key.toString())),
        label: Text(map[key]),
        selected: _rotateFlag == key,
        onSelected: (bool value) {
          print(map[key]);
          setState(() {
            _x = 0;
            if (value) {
              _rotateFlag = key;
            }
          });
        },
      ),
    );
  }
}"""
    },
    {
      "widgetId": 78,
      "name": '透视变换rotation',
      "priority": 5,
      "subtitle": "由R3C1、R3C2、R3C3控制透视",
      "code": """class R3C2 extends StatefulWidget {
  @override
  _R3C2State createState() => _R3C2State();
}

class _R3C2State extends State<R3C2> {
  Matrix4 _m4;
  double _value = 0;
  double _rad = 0;

  @override
  Widget build(BuildContext context) {
    _m4 = Matrix4.identity()
//      ..setEntry(3, 0, _value) // x
//      ..setEntry(3, 1, _value)//   y
          ..setEntry(3, 2, _value) // z
          ..rotateY(_rad)
//      ..rotateX(_rad)
        ;
    return Column(
      children: <Widget>[
        Transform(
          transform: _m4,
          child: Container(
              color: Colors.cyanAccent,
              width: 100,
              height: 100,
              child: Image.asset(
                'assets/images/wy_300x200.jpg',
                fit: BoxFit.cover,
              )),
        ),
        _buildSliders()
      ],
    );
  }

  Widget _buildSliders() => Column(
        children: <Widget>[
          Slider(
              min: -0.01,
              max: 0.01,
              value: _value,
              divisions: 360,
              label: 'x:\${_value.toStringAsFixed(5)}',
              onChanged: (v) {
                setState(() {
                  _value = v;
                });
              }),
          Slider(
              min: -pi,
              max: pi,
              value: _rad,
              divisions: 360,
              label: '角度:' + (_rad * 180 / pi).toStringAsFixed(1) + "°",
              onChanged: (v) {
                setState(() {
                  _rad = v;
                });
              }),
        ],
      );
}"""
    },
  ],
  "LimitedBox": [
    {
      "widgetId": 79,
      "name": 'LimitedBox基本使用',
      "priority": 1,
      "subtitle": "【child】 : 孩子组件   【Widget】\n"
          "【maxHeight】 : 最大高   【double】\n"
          "【maxWidth】 : 最大宽   【double】",
      "code": """class CustomLimitedBox extends StatefulWidget {
  @override
  _CustomLimitedBoxState createState() => _CustomLimitedBoxState();
}

class _CustomLimitedBoxState extends State<CustomLimitedBox> {
  var _text = '';

  @override
  Widget build(BuildContext context) {
    var child = Container(
      alignment: Alignment.center,
      color: Colors.cyanAccent,
      width: 50,
      height: 50,
      child: Text("Static"),
    );

    var box = LimitedBox(
      maxHeight: 60,
      maxWidth: 100,
      child: Container(color: Colors.orange, child: Text(_text)),
    );
    return Column(
      children: <Widget>[
        Container(
          color: Colors.grey.withAlpha(22),
          width: 300,
          height: 100,
          child: Row(
            children: <Widget>[child, UnconstrainedBox(child: box), child],
          ),
        ),
        _buildInput()
      ],
    );
  }

  Widget _buildInput() {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: '请输入',
        ),
        onChanged: (v) {
          setState(() {
            _text = v;
          });
        },
      ),
    );
  }
}"""
    },
  ],
  "ConstrainedBox": [
    {
      "widgetId": 80,
      "name": 'BoxConstraints基本使用',
      "priority": 1,
      "subtitle": "【child】 : 孩子组件   【Widget】\n"
          "【minWidth】 : 最小宽   【double】\n"
          "【minHeight】 : 最小高   【double】\n"
          "【maxHeight】 : 最大高   【double】\n"
          "【maxWidth】 : 最大宽   【double】",
      "code": """"class CustomConstrainedBox extends StatefulWidget {
  @override
  _CustomConstrainedBoxState createState() => _CustomConstrainedBoxState();
}

class _CustomConstrainedBoxState extends State<CustomConstrainedBox> {
  var _text = '';

  @override
  Widget build(BuildContext context) {
    var child = Container(
      alignment: Alignment.center,
      color: Colors.cyanAccent,
      width: 40,
      height: 40,
      child: Text("Static"),
    );

    var box = ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: 50,
        minWidth: 20,
        maxHeight: 100,
        maxWidth: 150,
      ),
      child: Container(color: Colors.orange, child: Text(_text)),
    );
    return Column(
      children: <Widget>[
        Container(
          color: Colors.grey.withAlpha(22),
          width: 300,
          height: 100,
          child: Row(
            children: <Widget>[child, UnconstrainedBox(child: box), child],
          ),
        ),
        _buildInput(),
      ],
    );
  }

  Widget _buildInput() {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: '请输入',
        ),
        onChanged: (v) {
          setState(() {
            _text = v;
          });
        },
      ),
    );
  }
}"""
    },
  ],
  "UnconstrainedBox": [
    {
      "widgetId": 81,
      "name": 'UnConstrainedBox基本使用',
      "priority": 1,
      "subtitle": "【child】 : 孩子组件   【Widget】\n"
          "【constrainedAxis】 : 仍受约束的轴*2   【Axis】\n"
          "【alignment】 : 对齐方式   【AlignmentGeometry】",
      "code": """class CustomUnConstrainedBox extends StatefulWidget {
  @override
  _CustomUnConstrainedBoxState createState() => _CustomUnConstrainedBoxState();
}

class _CustomUnConstrainedBoxState extends State<CustomUnConstrainedBox> {
  var _value = false;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 20,
      children: <Widget>[_buildUnconstrainedBox(), _buildConstrainedAxis()],
    );
  }

  Widget _buildUnconstrainedBox() {
    var child = Container(
      color: Colors.cyanAccent,
      width: 60,
      height: 60,
      child: Switch(
        value: _value,
        onChanged: (v) {
          setState(() {
            _value = v;
          });
        },
      ),
    );

    return Column(
      children: <Widget>[
        Container(
          color: Colors.grey.withAlpha(22),
          width: 150,
          height: 100,
          child: _value
              ? UnconstrainedBox(alignment: Alignment.center, child: child)
              : child,
        ),
        Text(_value ? "已解除约束" : "子组件受约束")
      ],
    );
  }

  Widget _buildConstrainedAxis() {
    return Column(
      children: <Widget>[
        Container(
          color: Colors.grey.withAlpha(22),
          width: 150,
          height: 100,
          child: UnconstrainedBox(
              alignment: Alignment.center,
              constrainedAxis: Axis.vertical,
              child: Container(
                color: Colors.cyanAccent,
                width: 60,
                height: 60,
              )),
        ),
        Text("竖直方向仍约束")
      ],
    );
  }
}"""
    },
  ],
  "FractionallySizedBox": [
    {
      "widgetId": 81,
      "name": 'FractionallySizedBox基本使用',
      "priority": 1,
      "subtitle": "【child】 : 孩子组件   【Widget】\n"
          "【widthFactor】 : 宽分率   【double】\n"
          "【heightFactor】 : 高分率   【double】\n"
          "【alignment】 : 对齐方式   【AlignmentGeometry】",
      "code": """class CustomFractionallySizedBox extends StatefulWidget {
  @override
  _CustomFractionallySizedBoxState createState() =>
      _CustomFractionallySizedBoxState();
}

class _CustomFractionallySizedBoxState
    extends State<CustomFractionallySizedBox> {
  var _hf = 0.5;
  var _wf = 0.4;

  @override
  Widget build(BuildContext context) {
    var box = FractionallySizedBox(
      widthFactor: _wf,
      heightFactor: _hf,
      alignment: Alignment.center,
      child: Container(color: Colors.orange),
    );
    return Column(
      children: <Widget>[
        Container(
            color: Colors.grey.withAlpha(22),
            width: 200,
            height: 100,
            child: box),
        _buildSlider()
      ],
    );
  }

  Widget _buildSlider() => Column(
    children: <Widget>[
      Slider(
          divisions: 20,
          min: 0.0,
          max: 2,
          label: '宽分率:' + _wf.toStringAsFixed(1),
          value: _wf,
          onChanged: (v) => setState(() => _wf = v)),
      Slider(
          divisions: 20,
          min: 0.0,
          max: 2,
          label: '高分率:' + _hf.toStringAsFixed(1),
          value: _hf,
          onChanged: (v) => setState(() => _hf = v)),
    ],
  );
}"""
    },
  ],
  "OverflowBox": [
    {
      "widgetId": 83,
      "name": 'OverflowBox基本使用',
      "priority": 1,
      "subtitle": "【child】 : 孩子组件   【Widget】\n"
          "【minWidth】 : 最小宽   【double】\n"
          "【minHeight】 : 最小高   【double】\n"
          "【maxHeight】 : 最大高   【double】\n"
          "【maxWidth】 : 最大宽   【double】\n"
          "【alignment】 : 对齐方式   【AlignmentGeometry】",
      "code": """class CustomOverflowBox extends StatefulWidget {
  @override
  _CustomOverflowBoxState createState() => _CustomOverflowBoxState();
}

class _CustomOverflowBoxState extends State<CustomOverflowBox> {
  var _text = '';

  @override
  Widget build(BuildContext context) {
    var box = OverflowBox(
      alignment: Alignment.center,
      minHeight: 50,
      minWidth: 50,
      maxWidth: 200,
      maxHeight: 120,
      child: Container(
        color: Colors.orange,
        child: Text(_text),
      ),
    );
    return Column(
      children: <Widget>[
        Container(
            color: Colors.grey.withAlpha(33),
            width: 100,
            height: 100,
            child: box),
        _buildInput()
      ],
    );
  }

  Widget _buildInput() {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: '请输入',
        ),
        onChanged: (v) {
          setState(() {
            _text = v;
          });
        },
      ),
    );
  }
}"""
    },
  ],
  "SizedOverflowBox": [
    {
      "widgetId": 84,
      "name": 'SizedOverflowBox基本使用',
      "priority": 1,
      "subtitle": "【child】 : 孩子组件   【Widget】\n"
          "【size】 : 尺寸偏移   【Size】\n"
          "【alignment】 : 对齐方式   【AlignmentGeometry】",
      "code": """class CustomSizedOverflowBox extends StatefulWidget {

  @override
  _CustomSizedOverflowBoxState createState() => _CustomSizedOverflowBoxState();
}

class _CustomSizedOverflowBoxState extends State<CustomSizedOverflowBox> {
  double _x = 50;
  double _y = 44;

  @override
  Widget build(BuildContext context) {
    var box = SizedOverflowBox(
      alignment: Alignment.bottomRight,
      size: Size(_x, _y),
      child: Container(width: 30, height: 50, color: Colors.orange),
    );
    return Column(
      children: <Widget>[
        Container(
            alignment: Alignment.topLeft,
            color: Colors.grey.withAlpha(88),
            width: 250,
            height: 60,
            child: box),
        _buildSlider()
      ],
    );
  }

  Widget _buildSlider() =>
      Column(
        children: <Widget>[
          Slider(
              divisions: 100,
              min: 0,
              max: 250,
              label: 'x:' + _x.toStringAsFixed(1),
              value: _x,
              onChanged: (v) => setState(() => _x = v)),
          Slider(
              divisions: 100,
              min: 0,
              max: 100,
              label: 'y:' + _y.toStringAsFixed(1),
              value: _y,
              onChanged: (v) => setState(() => _y = v)),

        ],
      );
}"""
    },
  ],
  "Align": [
    {
      "widgetId": 85,
      "name": 'Align基本使用',
      "priority": 1,
      "subtitle": "【child】 : 孩子组件   【Widget】\n"
          "【alignment】 : 对齐方式   【AlignmentGeometry】",
      "code": """class CustomAlign extends StatelessWidget {
  final alignments = [
    Alignment.topLeft,
    Alignment.topCenter,
    Alignment.topRight,
    Alignment.centerLeft,
    Alignment.center,
    Alignment.centerRight,
    Alignment.bottomLeft,
    Alignment.bottomCenter,
    Alignment.bottomRight,
  ];

  final alignmentsInfo = [
    "topLeft",
    "topCenter",
    "topRight",
    "centerLeft",
    "center",
    "centerRight",
    "bottomLeft",
    "bottomCenter",
    "bottomRight",
  ];

  @override
  Widget build(BuildContext context) {
    return Wrap(
        children: alignments
            .toList()
            .map((mode) => Column(children: <Widget>[
                  Container(
                      margin: EdgeInsets.all(5),
                      width: 100,
                      height: 60,
                      color: Colors.grey.withAlpha(88),
                      child: Align(
                          child: Container(
                            width: 30,
                            height: 30,
                            color: Colors.cyanAccent,
                          ),
                          alignment: mode)),
                  Text(alignmentsInfo[alignments.indexOf(mode)])
                ]))
            .toList());
  }

}"""
    },
    {
      "widgetId": 85,
      "name": 'Align其他用法',
      "priority": 2,
      "subtitle": "由于Alignment对象可指定在父容器中宽高的分率位置\n"
          "可以使用Align实现一些复杂的排布需求，比如按指定的数学方程变化位置",
      "code": """class Ball extends StatelessWidget {
  Ball({
    Key key,
    this.radius = 15,
    this.color = Colors.blue,
  }) : super(key: key);
  final double radius; //半径
  final Color color; //颜色

  @override
  Widget build(BuildContext context) {
    return Container(
      width: radius * 2,
      height: radius * 2,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
    );
  }
}

class SinLayout extends StatefulWidget {
  SinLayout({
    Key key,
  }) : super(key: key);

  @override
  _SinLayoutState createState() => _SinLayoutState();
}

class _SinLayoutState extends State<SinLayout> {
  var _x = 0.0; //Alignment坐标系上的x坐标

  @override
  Widget build(BuildContext context) {
    var item = Container(
      width: 300,
      height: 120,
      color: Colors.black.withAlpha(10),
      child: Align(
        child: Ball(
          color: Colors.orangeAccent,
        ),
        alignment: Alignment(_x, f(_x * pi)),
      ),
    );

    var slider = Slider(
        max: 180,
        min: -180,
        divisions: 360,
        label: "\${_x.toStringAsFixed(2)}π",
        value: _x * 180,
        onChanged: (v) => setState(() => _x = v / 180));
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[slider, item],
    );
  }

  double f(x) {
    //映射函数 -- 可随意指定
    double y = sin(x);
    return y;
  }
}"""
    },
  ],
  "Center": [
    {
      "widgetId": 86,
      "name": 'Center基本使用',
      "priority": 1,
      "subtitle": "【child】 : 孩子组件   【Widget】",
      "code": """class CustomCenter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(5),
        width: 200,
        height: 100,
        color: Colors.grey.withAlpha(88),
        child: Center(
            child: Container(
          width: 80,
          height: 60,
          color: Colors.cyanAccent,
        )));
  }
}"""
    },
  ],
  "FittedBox": [
    {
      "widgetId": 87,
      "name": 'FittedBox基本使用',
      "priority": 1,
      "subtitle": "【child】 : 孩子组件   【Widget】\n"
          "【fit】 : 适应模式   【BoxFit】\n"
          "【alignment】 : 对齐方式   【AlignmentGeometry】",
      "code": """class CustomFittedBox extends StatefulWidget {
  @override
  _CustomFittedBoxState createState() => _CustomFittedBoxState();
}

class _CustomFittedBoxState extends State<CustomFittedBox> {
  double _childW = 20;
  double _childH = 30;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Wrap(
            spacing: 10,
            runSpacing: 10,
            children: BoxFit.values
                .map((mode) => Column(
                      children: <Widget>[
                        _buildChild(mode),
                        SizedBox(
                          height: 10,
                        ),
                        Text(mode.toString().split('.')[1])
                      ],
                    ))
                .toList()),
        _buildSlider()
      ],
    );
  }

  Widget _buildChild(BoxFit m) {
    return Container(
      color: Colors.grey.withAlpha(44),
      width: 80,
      height: 60,
      child: FittedBox(
        fit: m,
        child: Container(
          width: _childW,
          height: _childH,
          decoration: BoxDecoration(
            //添加渐变色
            gradient: LinearGradient(
                stops: <double>[0.0, 1 / 6, 2 / 6, 3 / 6, 4 / 6, 5 / 6, 1.0],
                colors: Cons.rainbow.map((e) => Color(e)).toList()),
          ),
        ),
      ),
    );
  }

  Widget _buildSlider() => Column(
        children: <Widget>[
          Slider(
              min: 10,
              max: 150,
              divisions: 100,
              label: '子宽度:' + _childW.toStringAsFixed(1),
              value: _childW,
              onChanged: (v) => setState(() => _childW = v)),
          Slider(
              min: 10,
              max: 150,
              divisions: 100,
              label: '子高度:' + _childH.toStringAsFixed(1),
              value: _childH,
              onChanged: (v) => setState(() => _childH = v)),
        ],
      );
}"""
    },
  ],
  "ColorFiltered": [
    {
      "widgetId": 88,
      "name": 'FittedBox基本使用',
      "priority": 1,
      "subtitle": "【child】 : 孩子组件   【Widget】\n"
          "【colorFilter】 : 滤色器   【ColorFilter】",
      "code": """class CustomColorFiltered extends StatefulWidget {
  @override
  _CustomColorFilteredState createState() => _CustomColorFilteredState();
}

class _CustomColorFilteredState extends State<CustomColorFiltered> {
  Color _color = Colors.blue.withAlpha(88);

  @override
  Widget build(BuildContext context) {
    _color = ColorUtils.randomColor();
    return Column(
      children: <Widget>[
        Wrap(spacing: 10, runSpacing: 10, children: [
          _buildRandomColor(),
          ...BlendMode.values
              .map((mode) => Column(
                    children: <Widget>[
                      _buildChild(mode),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        mode.toString().split('.')[1],
                        style: TextStyle(fontSize: 10),
                      )
                    ],
                  ))
              .toList()
        ]),
      ],
    );
    ;
  }

  Widget _buildChild(m) => Container(
        width: 58,
        height: 58,
        child: ColorFiltered(
            child: Image(image: AssetImage("assets/images/icon_head.png")),
            colorFilter: ColorFilter.mode(_color, m)),
      );

  Widget _buildRandomColor() => GestureDetector(
        onTap: () => setState(() {}),
        child: Container(
          alignment: Alignment.center,
          width: 60,
          height: 60,
          decoration: BoxDecoration(color: _color, shape: BoxShape.circle),
          child: Text('点我'),
        ),
      );
}"""
    },
  ],
  "FadeTransition": [
    {
      "widgetId": 89,
      "name": 'FadeTransition基本使用',
      "priority": 1,
      "subtitle": "【child】 : 孩子组件   【Widget】\n"
          "【opacity】 : 动画   【Animation<double>】",
      "code": """class CustomFadeTransition extends StatefulWidget {
  @override
  _CustomFadeTransitionState createState() => _CustomFadeTransitionState();
}

class _CustomFadeTransitionState extends State<CustomFadeTransition>
    with SingleTickerProviderStateMixin {
  AnimationController _ctrl;

  @override
  void initState() {
    _ctrl = AnimationController(vsync: this, duration: Duration(seconds: 2));
    _ctrl.forward();
    super.initState();
  }

  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _ctrl.reset();
          _ctrl.forward();
        });
      },
      child: Container(
        color: Colors.grey.withAlpha(22),
        width: 100,
        height: 100,
        child: FadeTransition(
          opacity: CurvedAnimation(parent: _ctrl, curve: Curves.linear),
          child: Icon(Icons.android, color: Colors.green, size: 60),
        ),
      ),
    );
  }
}"""
    },
  ],
  "RotationTransition": [
    {
      "widgetId": 90,
      "name": 'RotationTransition基本使用',
      "priority": 1,
      "subtitle": "【child】 : 孩子组件   【Widget】\n"
          "【turns】 : 动画   【Animation<double>】",
      "code": """class CustomRotationTransition extends StatefulWidget {
  @override
  _CustomRotationTransitionState createState() => _CustomRotationTransitionState();
}

class _CustomRotationTransitionState extends State<CustomRotationTransition> with SingleTickerProviderStateMixin{

  AnimationController _ctrl;

  @override
  void initState() {
     _ctrl= AnimationController(vsync: this,duration: Duration(seconds: 2));
     _ctrl.forward();
    super.initState();
  }
@override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: () {
        setState(() {
          _ctrl.reset();
          _ctrl.forward();
        });
      },
      child: Container(
        color: Colors.grey.withAlpha(22),
        width: 100,
        height: 100,
        child: RotationTransition(
          turns: CurvedAnimation(parent: _ctrl, curve: Curves.linear),
          child: Icon(Icons.android,color: Colors.green,size: 60),
        ),
      ),
    );
  }
}"""
    },
  ],
  "ScaleTransition": [
    {
      "widgetId": 91,
      "name": 'ScaleTransition基本使用',
      "priority": 1,
      "subtitle": "【child】 : 孩子组件   【Widget】\n"
          "【scale】 : 动画   【Animation<double>】",
      "code": """class CustomScaleTransition extends StatefulWidget {
  @override
  _CustomScaleTransitionState createState() => _CustomScaleTransitionState();
}

class _CustomScaleTransitionState extends State<CustomScaleTransition>
    with SingleTickerProviderStateMixin {
  AnimationController _ctrl;

  @override
  void initState() {
    _ctrl = AnimationController(vsync: this, duration: Duration(seconds: 2))
      ..addListener(() {
        print(_ctrl.value);
      });
    _ctrl.forward();
    super.initState();
  }

  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          setState(() {
            _ctrl.reset();
            _ctrl.forward();
          });
        },
        child: Container(
          color: Colors.grey.withAlpha(22),
          width: 100,
          height: 100,
          child: ScaleTransition(
            scale: CurvedAnimation(parent: _ctrl, curve: Curves.linear),
            child: Icon(Icons.android, color: Colors.green, size: 60),
          ),
        ));
  }
}"""
    },
  ],
  "SizeTransition": [
    {
      "widgetId": 92,
      "name": 'FadeTransition基本使用',
      "priority": 1,
      "subtitle": "【child】 : 孩子组件   【Widget】\n"
          "【axis】 : 轴向*2   【Axis】\n"
          "【sizeFactor】 : 动画   【Animation<double>】",
      "code": """class CustomSizeTransition extends StatefulWidget {
  @override
  _CustomSizeTransitionState createState() => _CustomSizeTransitionState();
}

class _CustomSizeTransitionState extends State<CustomSizeTransition>
    with SingleTickerProviderStateMixin {
  AnimationController _ctrl;

  @override
  void initState() {
    _ctrl = AnimationController(vsync: this, duration: Duration(seconds: 1))
      ..addListener(() {
        print(_ctrl.value);
      });
    _ctrl.forward();
    super.initState();
  }

  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _ctrl.reset();
          _ctrl.forward();
        });
      },
      child: Wrap(
        runSpacing: 20,
        children: <Widget>[
          SizeTransition(
            axis: Axis.horizontal,
            sizeFactor: CurvedAnimation(parent: _ctrl, curve: Curves.linear),
            child: Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.orange,
                child: Icon(Icons.android, color: Colors.green, size: 80)),
          ),
          SizeTransition(
            axis: Axis.vertical,
            sizeFactor: CurvedAnimation(parent: _ctrl, curve: Curves.linear),
            child: Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.orange,
                child: Icon(Icons.android, color: Colors.green, size: 80)),
          ),
        ],
      ),
    );
  }
}"""
    },
  ],
  "PositionedTransition": [
    {
      "widgetId": 92,
      "name": 'PositionedTransition基本使用',
      "priority": 1,
      "subtitle": "【child】 : 孩子组件   【Widget】\n"
          "【rect】 : 动画   【Animation<RelativeRect>】\n"
          "    PositionedTransition组件只能在Stack内起作用",
      "code": """class CustomPositionedTransition extends StatefulWidget {
  @override
  _CustomPositionedTransitionState createState() =>
      _CustomPositionedTransitionState();
}

class _CustomPositionedTransitionState extends State<CustomPositionedTransition>
    with SingleTickerProviderStateMixin {
  AnimationController _ctrl;

  @override
  void initState() {
    _ctrl = AnimationController(vsync: this, duration: Duration(seconds: 2));
    _ctrl.forward();
    super.initState();
  }

  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          setState(() {
            _ctrl.reset();
            _ctrl.forward();
          });
        },
        child: Container(
          color: Colors.grey.withAlpha(33),
          width: 200,
          height: 100,
          child: Stack(
            children: <Widget>[
              PositionedTransition(
                rect: RelativeRectTween(
                  begin: RelativeRect.fromLTRB(0, 50, 150, 100),
                  end: RelativeRect.fromLTRB(60, 0, 150, -50),
                ).animate(_ctrl),
                child: Icon(
                  Icons.android,
                  color: Colors.green,
                  size: 50,
                ),
              )
            ],
          ),
        ));
  }
}"""
    },
  ],
  "Flex": [
    {
      "widgetId": 94,
      "name": 'Flex基本使用',
      "priority": 1,
      "subtitle": "【children】 : 组件列表   【List<Widget>】\n"
          "【direction】 : 方向   【Axis】\n"
          "【mainAxisAlignment】 : 主轴对齐   【MainAxisAlignment】\n"
          "【crossAxisAlignment】 : 交叉轴对齐   【CrossAxisAlignment】\n"
          "【textBaseline】 : 文字基线   【TextBaseline】\n"
          "【verticalDirection】 : 竖直方向   【VerticalDirection】\n"
          "【mainAxisSize】 : 主轴尺寸   【MainAxisSize】",
      "code": """class CustomFlex extends StatefulWidget {
  @override
  _CustomFlexState createState() => _CustomFlexState();
}

class _CustomFlexState extends State<CustomFlex> {
  final redBox = Container(
    color: Colors.red,
    height: 50,
    width: 50,
  );
  final blueBox = Container(
    color: Colors.blue,
    width: 60,
    height: 60,
  );
  final yellowBox = Container(
    color: Colors.yellow,
    height: 10,
    width: 10,
  );
  final greenBox = Container(
    color: Colors.green,
    height: 30,
    width: 20,
  );
  var _direction = Axis.horizontal;
  var _mainAxisAlignment = MainAxisAlignment.start;
  var _crossAxisAlignment = CrossAxisAlignment.center;
  var _verticalDirection = VerticalDirection.up;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        _buildDirectionSelector(),
        _buildMainAxisAlignmentSelector(),
        _buildCrossAxisAlignmentSelector(),
        _buildVerticalDirectionSelector(),
        Container(
          width: 300,
          height: 300 * 0.618,
          color: Colors.grey.withAlpha(33),
          child: Flex(
            textBaseline: TextBaseline.alphabetic,
            direction: _direction,
            mainAxisAlignment: _mainAxisAlignment,
            crossAxisAlignment: _crossAxisAlignment,
            verticalDirection: _verticalDirection,
            children: <Widget>[redBox, blueBox, yellowBox, greenBox],
          ),
        ),
      ],
    );
  }

  Widget _buildDirectionSelector() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            "direction",
            style: TextStyle(
                fontSize: 16, color: Colors.blue, fontWeight: FontWeight.bold),
          ),
          DropdownButton<Axis>(
              elevation: 1,
              underline: Container(),
              value: _direction,
              items: Axis.values
                  .map((e) => DropdownMenuItem<Axis>(
                        value: e,
                        child: Text(e.toString()),
                      ))
                  .toList(),
              onChanged: (e) {
                setState(() {
                  _direction = e;
                });
              }),
        ],
      ),
    );
  }

  Widget _buildMainAxisAlignmentSelector() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            "mainAxisAlignment",
            style: TextStyle(
                fontSize: 16, color: Colors.blue, fontWeight: FontWeight.bold),
          ),
          DropdownButton<MainAxisAlignment>(
              elevation: 1,
              underline: Container(),
              value: _mainAxisAlignment,
              items: MainAxisAlignment.values
                  .map((e) => DropdownMenuItem<MainAxisAlignment>(
                        value: e,
                        child: Text(e.toString().split('.')[1]),
                      ))
                  .toList(),
              onChanged: (e) {
                setState(() {
                  _mainAxisAlignment = e;
                });
              }),
        ],
      ),
    );
  }

  Widget _buildCrossAxisAlignmentSelector() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            "crossAxisAlignment",
            style: TextStyle(
                fontSize: 16, color: Colors.blue, fontWeight: FontWeight.bold),
          ),
          DropdownButton<CrossAxisAlignment>(
              elevation: 1,
              underline: Container(),
              value: _crossAxisAlignment,
              items: CrossAxisAlignment.values
                  .map((e) => DropdownMenuItem<CrossAxisAlignment>(
                        value: e,
                        child: Text(e.toString().split('.')[1]),
                      ))
                  .toList(),
              onChanged: (e) {
                setState(() {
                  _crossAxisAlignment = e;
                });
              }),
        ],
      ),
    );
  }

  Widget _buildVerticalDirectionSelector() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            "MainAxisSize",
            style: TextStyle(
                fontSize: 16, color: Colors.blue, fontWeight: FontWeight.bold),
          ),
          DropdownButton<VerticalDirection>(
              elevation: 1,
              underline: Container(),
              value: _verticalDirection,
              items: VerticalDirection.values
                  .map((e) => DropdownMenuItem<VerticalDirection>(
                        value: e,
                        child: Text(e.toString().split('.')[1]),
                      ))
                  .toList(),
              onChanged: (e) {
                setState(() {
                  _verticalDirection = e;
                });
              }),
        ],
      ),
    );
  }
}"""
    },
  ],
  "Row": [
    {
      "widgetId": 95,
      "name": 'Row基本使用',
      "priority": 1,
      "subtitle": "【children】 : 组件列表   【List<Widget>】\n"
          "【mainAxisAlignment】 : 主轴对齐   【MainAxisAlignment】\n"
          "【crossAxisAlignment】 : 交叉轴对齐   【CrossAxisAlignment】\n"
          "【textBaseline】 : 文字基线   【TextBaseline】\n"
          "【verticalDirection】 : 竖直方向   【VerticalDirection】\n"
          "【mainAxisSize】 : 主轴尺寸   【MainAxisSize】",
      "code": """class CustomRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 70,
        color: Color(0x4484FFFF),
        child: Row(
          children: <Widget>[
            Padding(
              child: Icon(
                Icons.add_location,
                size: 30,
                color: Colors.pink,
              ),
              padding: EdgeInsets.only(left: 25, right: 20),
            ),
            Expanded(
              child: Text(
                "附近",
                style: TextStyle(fontSize: 18),
              ),
            ),
            Padding(
              child: Icon(Icons.keyboard_arrow_right, color: Colors.black38),
              padding: EdgeInsets.only(right: 25),
            ),
          ],
        ));
  }
}"""
    },
  ],
  "Column": [
    {
      "widgetId": 95,
      "name": 'Column基本使用',
      "priority": 1,
      "subtitle": "【children】 : 组件列表   【List<Widget>】\n"
          "【mainAxisAlignment】 : 主轴对齐   【MainAxisAlignment】\n"
          "【crossAxisAlignment】 : 交叉轴对齐   【CrossAxisAlignment】\n"
          "【textBaseline】 : 文字基线   【TextBaseline】\n"
          "【verticalDirection】 : 竖直方向   【VerticalDirection】\n"
          "【mainAxisSize】 : 主轴尺寸   【MainAxisSize】",
      "code": """class CustomColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        _buildTitle(),
        _buildContent(context),
      ],
    );
  }

  Widget _buildTitle() {
    return Container(
        height: 70,
        color: Color(0x4484FFFF),
        child: Row(
          children: <Widget>[
            Padding(
              child: Icon(
                Icons.add_location,
                size: 30,
                color: Colors.pink,
              ),
              padding: EdgeInsets.only(left: 25, right: 20),
            ),
            Expanded(
              child: Text(
                "附近",
                style: TextStyle(fontSize: 18),
              ),
            ),
            Padding(
              child: Icon(Icons.keyboard_arrow_right, color: Colors.black38),
              padding: EdgeInsets.only(right: 25),
            ),
          ],
        ));
  }

  Widget _buildContent(ctx) => Container(
        width: MediaQuery.of(ctx).size.width,
        color: Colors.purple,
        height: 100,
        child: Icon(
          Icons.android,
          size: 50,
          color: Colors.white,
        ),
      );
}"""
    },
  ],
  "Stack": [
    {
      "widgetId": 97,
      "name": 'Stack基本使用',
      "priority": 1,
      "subtitle": "【children】 : 组件列表   【List<Widget>】\n"
          "【textDirection】 : 孩子排布方向   【MainAxisAlignment】\n"
          "【alignment】 : 对齐方式   【AlignmentGeometry】\n"
          "【overflow】 : 溢出模式   【Overflow】\n"
          "【fit】 : 适应模式   【StackFit】",
      "code": """class CustomStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var yellowBox = Container(
      color: Colors.yellow,
      height: 100,
      width: 100,
    );

    var redBox = Container(
      color: Colors.red,
      height: 90,
      width: 90,
    );

    var greenBox = Container(
      color: Colors.green,
      height: 80,
      width: 80,
    );

    var cyanBox = Container(
      color: Colors.cyanAccent,
      height: 70,
      width: 70,
    );

    return Container(
      width: 200,
      height: 120,
      color: Colors.grey.withAlpha(33),
      child: Stack(
        textDirection: TextDirection.rtl,
        fit: StackFit.loose,
        alignment: Alignment.topRight,
        overflow: Overflow.clip,
        children: <Widget>[yellowBox, redBox, greenBox, cyanBox],
      ),
    );
  }
}"""
    },
    {
      "widgetId": 97,
      "name": 'Stack和Positioned结合使用基本使用',
      "priority": 2,
      "subtitle": "Positioned组件只能用与Stack中，可以指定左上右下的距离对某个组件进行位置精确安放。",
      "code": """class PositionedStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var yellowBox = Container(
      color: Colors.yellow,
      height: 100,
      width: 100,
    );

    var redBox = Container(
      color: Colors.red,
      height: 90,
      width: 90,
    );

    var greenBox = Container(
      color: Colors.green,
      height: 80,
      width: 80,
    );

    var cyanBox = Container(
      color: Colors.cyanAccent,
      height: 70,
      width: 70,
    );

    return Container(
        width: 200,
        height: 120,
        color: Colors.grey.withAlpha(33),
        child: Stack(
          children: <Widget>[yellowBox, redBox, greenBox,
            Positioned(
              child: cyanBox,
              bottom: 10,
              right: 10,
            )
          ],
        ));
  }
"""
    },
  ],
  "Wrap": [
    {
      "widgetId": 98,
      "name": 'Wrap的基础用法',
      "priority": 1,
      "subtitle": "【children】 : 组件列表   【List<Widget>】\n"
          "【spacing】 : 主轴条目间距   【double】\n"
          "【runSpacing】 : 交叉轴条目间距   【double】\n"
          "【direction】 : 主轴对齐   【Axis】",
      "code": """class DirectionWrap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
        children: Axis.values
            .map((mode) => Column(children: <Widget>[
          Container(
              margin: EdgeInsets.all(5),
              width: 160,
              height: 100,
              color: Colors.grey.withAlpha(33),
              child: _buildItem(mode)),
          Text(mode.toString().split('.')[1])
        ]))
            .toList());;
  }
  final yellowBox = Container(
    color: Colors.yellow,
    height: 30,
    width: 50,
  );

  final redBox = Container(
    color: Colors.red,
    height: 40,
    width: 40,
  );
  final greenBox = Container(
    color: Colors.green,
    height: 40,
    width: 20,
  );
  final blackBox = Container(
    color: Colors.black,
    height: 10,
    width: 10,
  );
  final purpleBox = Container(
    color: Colors.purple,
    height: 20,
    width: 20,
  );
  final orangeBox = Container(
    color: Colors.orange,
    height: 80,
    width: 20,
  );
  final cyanBox = Container(
    color: Colors.cyanAccent,
    height: 10,
    width: 20,
  );

  _buildItem(mode) => Wrap(
    direction: mode,
    runSpacing: 10,
    spacing: 10,
    children: <Widget>[
      yellowBox, redBox, greenBox, cyanBox,
      blackBox, purpleBox, orangeBox,
    ],
  );
}"""
    },
    {
      "widgetId": 98,
      "name": 'Wrap的alignment属性',
      "priority": 2,
      "subtitle": "【alignment】 : 主轴对齐   【WrapAlignment】",
      "code": """class CustomWrap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
        children: WrapAlignment.values
            .map((mode) => Column(children: <Widget>[
          Container(
              margin: EdgeInsets.all(5),
              width: 160,
              height: 100,
              color: Colors.grey.withAlpha(88),
              child: _buildItem(mode)),
          Text(mode.toString().split('.')[1])
        ]))
            .toList());;
  }

  final yellowBox = Container(
    color: Colors.yellow,
    height: 30,
    width: 50,
  );

  final redBox = Container(
    color: Colors.red,
    height: 40,
    width: 40,
  );
  final greenBox = Container(
    color: Colors.green,
    height: 40,
    width: 20,
  );
  final blackBox = Container(
    color: Colors.black,
    height: 10,
    width: 10,
  );
  final purpleBox = Container(
    color: Colors.purple,
    height: 20,
    width: 20,
  );
  final orangeBox = Container(
    color: Colors.orange,
    height: 80,
    width: 20,
  );
  final cyanBox = Container(
    color: Colors.cyanAccent,
    height: 10,
    width: 20,
  );

  _buildItem(mode) => Wrap(
        alignment: mode,
        runSpacing: 10,
        spacing: 10,
        children: <Widget>[
          yellowBox, redBox,
          greenBox, cyanBox,
          blackBox, purpleBox,
          orangeBox,
        ],
    );
}"""
    },

    {
      "widgetId": 98,
      "name": 'Wrap的crossAxisAlignment属性',
      "priority": 3,
      "subtitle": "【crossAxisAlignment】 : 交叉轴对齐   【CrossAxisAlignment】",
      "code": """class CrossAxisAlignmentWrap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
        children: WrapCrossAlignment.values
            .map((mode) => Column(children: <Widget>[
          Container(
              margin: EdgeInsets.all(5),
              width: 160,
              height: 100,
              color: Colors.grey.withAlpha(88),
              child: _buildItem(mode)),
          Text(mode.toString().split('.')[1])
        ]))
            .toList());
  }

  final yellowBox = Container(
    color: Colors.yellow,
    height: 30,
    width: 50,
  );

  final redBox = Container(
    color: Colors.red,
    height: 40,
    width: 40,
  );
  final greenBox = Container(
    color: Colors.green,
    height: 40,
    width: 20,
  );
  final blackBox = Container(
    color: Colors.black,
    height: 10,
    width: 10,
  );
  final purpleBox = Container(
    color: Colors.purple,
    height: 20,
    width: 20,
  );
  final orangeBox = Container(
    color: Colors.orange,
    height: 80,
    width: 20,
  );
  final cyanBox = Container(
    color: Colors.cyanAccent,
    height: 10,
    width: 20,
  );

  _buildItem(mode) => Wrap(
    crossAxisAlignment: mode,
    runSpacing: 10,
    spacing: 10,
    children: <Widget>[
      yellowBox, redBox,
      greenBox, cyanBox,
      blackBox, purpleBox,
      orangeBox,
    ],
  );
}"""
    },
    {
      "widgetId": 98,
      "name": 'Wrap的textDirection属性',
      "priority": 4,
      "subtitle": "【textDirection】 : 文字方向   【TextDirection】",
      "code": """class TextDirectionWrap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
        children: TextDirection.values
            .map((mode) => Column(children: <Widget>[
          Container(
              margin: EdgeInsets.all(5),
              width: 160,
              height: 100,
              color: Colors.grey.withAlpha(88),
              child: _buildItem(mode)),
          Text(mode.toString().split('.')[1])
        ]))
            .toList());
  }

  final yellowBox = Container(
    color: Colors.yellow,
    height: 30,
    width: 50,
  );

  final redBox = Container(
    color: Colors.red,
    height: 40,
    width: 40,
  );
  final greenBox = Container(
    color: Colors.green,
    height: 40,
    width: 20,
  );
  final blackBox = Container(
    color: Colors.black,
    height: 10,
    width: 10,
  );
  final purpleBox = Container(
    color: Colors.purple,
    height: 20,
    width: 20,
  );
  final orangeBox = Container(
    color: Colors.orange,
    height: 80,
    width: 20,
  );
  final cyanBox = Container(
    color: Colors.cyanAccent,
    height: 10,
    width: 20,
  );

  _buildItem(mode) => Wrap(
    textDirection: mode,
    runSpacing: 10,
    spacing: 10,
    children: <Widget>[
      yellowBox, redBox, greenBox, cyanBox,
      blackBox, purpleBox, orangeBox,
    ],
  );
}"""
    },
    {
      "widgetId": 98,
      "name": 'Wrap的textDirection属性',
      "priority": 5,
      "subtitle": "【verticalDirection】 : 竖直方向  【VerticalDirection】",
      "code": """class VerticalDirectionWrap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
        children: VerticalDirection.values
            .map((mode) => Column(children: <Widget>[
          Container(
              margin: EdgeInsets.all(5),
              width: 160,
              height: 100,
              color: Colors.grey.withAlpha(88),
              child: _buildItem(mode)),
          Text(mode.toString().split('.')[1])
        ]))
            .toList());
  }

  final yellowBox = Container(
    color: Colors.yellow,
    height: 30,
    width: 50,
  );

  final redBox = Container(
    color: Colors.red,
    height: 40,
    width: 40,
  );
  final greenBox = Container(
    color: Colors.green,
    height: 40,
    width: 20,
  );
  final blackBox = Container(
    color: Colors.black,
    height: 10,
    width: 10,
  );
  final purpleBox = Container(
    color: Colors.purple,
    height: 20,
    width: 20,
  );
  final orangeBox = Container(
    color: Colors.orange,
    height: 80,
    width: 20,
  );
  final cyanBox = Container(
    color: Colors.cyanAccent,
    height: 10,
    width: 20,
  );

  _buildItem(mode) => Wrap(
    verticalDirection: mode,
    direction: Axis.vertical,
    runSpacing: 10,
    spacing: 10,
    children: <Widget>[
      yellowBox, redBox, greenBox, cyanBox,
      blackBox, purpleBox, orangeBox,
    ],
  );
}"""
    },
//    {"code": """"""},
  ],
  "Flow": [
    {"widgetId": 99,
"name": 'Flow圆形排布',
"priority": 1,
"subtitle":
"【children】 : 组件列表   【List<Widget>】\n"
"【delegate】 : 代理   【FlowDelegate】",
"code": """class CircleFlow extends StatelessWidget {
  final data = List.generate(
      16,
      (index) => index.isEven
          ? "assets/images/icon_head.png"
          : "assets/images/wy_300x200.jpg");

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      alignment: Alignment.center,
      child: Flow(
        delegate: _CircleFlowDelegate(),
        children: data
            .map((e) => CircleAvatar(backgroundImage: AssetImage(e)))
            .toList(),
      ),
    );
  }
}

class _CircleFlowDelegate extends FlowDelegate {
  @override //绘制孩子的方法
  void paintChildren(FlowPaintingContext context) {
    double radius = context.size.shortestSide / 2;
    print(context.getChildSize(0));
    var count = context.childCount;
    var perRad = 2 * pi / count;
    for (int i = 0; i < count; i++) {
      var cSizeX = context.getChildSize(i).width / 2;
      var cSizeY = context.getChildSize(i).height / 2;

      var offsetX = (radius - cSizeX) * cos(i * perRad) + radius;
      var offsetY = (radius - cSizeY) * sin(i * perRad) + radius;
      context.paintChild(i,
          transform: Matrix4.translationValues(
              offsetX - cSizeX, offsetY - cSizeY, 0.0));
    }
  }

  @override
  bool shouldRepaint(FlowDelegate oldDelegate) {
    return true;
  }
}"""},

    {"widgetId": 99,
      "name": 'Flow圆形与动画结合',
      "priority": 2,
      "subtitle":
      "通过动画来更改周围组件的位置实现效果",
      "code": """class BurstFlow extends StatefulWidget {
  static final data = List.generate(
      16,
      (index) => index.isEven
          ? "assets/images/icon_head.png"
          : "assets/images/wy_300x200.jpg");
  static final show = Container(
      width: 300,
      height: 300,
      alignment: Alignment.center,
      child: BurstFlow(
          children: data
              .map((e) => CircleAvatar(backgroundImage: AssetImage(e)))
              .toList(),
          menu: CircleAvatar(
            backgroundImage: AssetImage('assets/images/icon_head.png'),
          )));

  final List<Widget> children;
  final Widget menu;

  BurstFlow({@required this.children, @required this.menu});

  @override
  _BurstFlowState createState() => _BurstFlowState();
}

class _BurstFlowState extends State<BurstFlow>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  double _rad = 0.0;
  bool _closed = true;

  @override
  void initState() {
    _controller = AnimationController(
        duration: Duration(milliseconds: 1000), vsync: this)
      ..addListener(() => setState(
          () => _rad = (_closed ? (_controller.value) : 1 - _controller.value)))
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          _closed = !_closed;
        }
      });

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Flow(
      delegate: _BurstFlowDelegate(_rad),
      children: [
        ...widget.children,
        InkWell(
            onTap: () {
              _controller.reset();
              _controller.forward();
            },
            child: widget.menu)
      ],
    );
  }
}

class _BurstFlowDelegate extends FlowDelegate {
  final double rad;

  _BurstFlowDelegate(this.rad);

  @override //绘制孩子的方法
  void paintChildren(FlowPaintingContext context) {
    double radius = context.size.shortestSide / 2;
    var count = context.childCount - 1;
    var perRad = 2 * pi / count;
    for (int i = 0; i < count; i++) {
      print(i);
      var cSizeX = context.getChildSize(i).width / 2;
      var cSizeY = context.getChildSize(i).height / 2;
      var offsetX = rad * (radius - cSizeX) * cos(i * perRad) + radius;
      var offsetY = rad * (radius - cSizeY) * sin(i * perRad) + radius;
      context.paintChild(i,
          transform: Matrix4.translationValues(
              offsetX - cSizeX, offsetY - cSizeY, 0.0));
    }
    context.paintChild(context.childCount - 1,
        transform: Matrix4.translationValues(
            radius - context.getChildSize(context.childCount - 1).width / 2,
            radius - context.getChildSize(context.childCount - 1).height / 2,
            0.0));
  }

  @override
  bool shouldRepaint(FlowDelegate oldDelegate) {
    return true;
  }
}"""},
  ],  "x": [
    {"code": """"""},
  ],
};

//  "ExpansionTile": [
//    {
//      "widgetId": 52,
//      "name": 'ExpansionTile基本使用',
//      "priority": 1,
//      "subtitle": "【children】 : 展开内容   【List<Widget>】\n"
//          "【leading】 : 头左组件   【Widget】\n"
//          "【title】 : 头中组件   【Widget】\n"
//          "【trailing】 : 头尾组件   【Widget】\n"
//          "【backgroundColor】 : 背景色   【Color】\n"
//          "【onExpansionChanged】 : 折叠事件   【Function(bool)】\n"
//          "【initiallyExpanded】 : 是否初始时展开   【bool】",
//      "code": """class CustomExpansionTile extends StatefulWidget {
//  @override
//  _CustomExpansionTileState createState() => _CustomExpansionTileState();
//}
//
//class _CustomExpansionTileState extends State<CustomExpansionTile> {
//
//  @override
//  Widget build(BuildContext context) {
//
//    return ExpansionTile(
//      leading: Icon(Icons.star),
//      title: Text("选择语言"),
//      backgroundColor: Colors.grey.withAlpha(6),
//      onExpansionChanged: (value){
//        print('\$value');
//      },
//      initiallyExpanded: false,
//      children: <Widget>[
//        CustomRadioListTile()
//      ],
//    );
//  }
//}"""
//    }
//  ],