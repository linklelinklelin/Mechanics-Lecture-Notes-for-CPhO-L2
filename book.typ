#import "@preview/shiroa-mdbook:0.3.0": *

#let meta = (
  title: "Mechanics Lecture Notes for CPhO L2",
  description: "给非一轮的冲击 CPhO 复赛的同学准备的力学讲义，内容涵盖了运动学、动力学、功与能、动量与角动量、质心系与碰撞专题、静力学等章节，并附有数学工具的附录。",
  repository: "https://github.com/linklelinklelin/Mechanics-Lecture-Notes-for-CPhO-L2",
  author: "Linkle",
  lang: "zh",
)

// 一级标题 = 物理大章节
// 二级标题 = 具体小节（对应各个 typ 文件）

#let chapters = (

  // 运动学
  (
    "一、运动学",
    [
      include "chapters/运动学/质点运动学.typ"
      include "chapters/运动学/运动的合成与分解.typ"
      include "chapters/运动学/相对运动.typ"
      include "chapters/运动学/抛体运动.typ"
      include "chapters/运动学/圆周运动.typ"
      include "chapters/运动学/极坐标下的运动.typ"
      include "chapters/运动学/约束.typ"
      include "chapters/运动学/纯滚动.typ"
    ],
  ),

  // 动力学
  (
    "二、动力学",
    [
      include "chapters/动力学/牛顿运动定律.typ"
      include "chapters/动力学/非惯性系.typ"
    ],
  ),

  // 功与能
  (
    "三、功与能",
    [
      include "chapters/功与能/动能定理.typ"
      include "chapters/功与能/物理上的“最小”.typ"
    ],
  ),

  // 动量与角动量
  (
    "四、动量与角动量",
    [
      include "chapters/动量与角动量/动量与冲量.typ"
      include "chapters/动量与角动量/动量守恒定律.typ"
      include "chapters/动量与角动量/角动量与有心力场.typ"
    ],
  ),

  // 质心系与碰撞专题
  (
    "五、质心系与碰撞专题",
    [
      include "chapters/质心系与碰撞专题/碰撞.typ"
    ],
  ),

  // 静力学（看你的仓库是在 chapters 根目录下的单文件）
  (
    "六、静力学",
    [
      include "chapters/静力学.typ"
    ],
  ),

  // 数学附录
  (
    "附录：数学工具",
    [
      include "appendixMath.typ"
    ],
  ),
)

#book(meta: meta, chapters: chapters)
