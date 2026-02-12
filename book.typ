#import "@preview/shiroa:0.3.1": *
#show: book
#book-meta(
  title: "Mechanics Lecture Notes for CPhO L2",
  authors: ("Linkle",),
  repository:"https://github.com/linklelinklelin/Mechanics-Lecture-Notes-for-CPhO-L2",
  description: "这是为中国物理奥林匹克竞赛（CPhO）二轮准备的力学讲义，涵盖了运动学、动力学、功与能、动量与角动量、质心系与碰撞专题以及静力学等内容。每个章节都配有详细的理论分析和丰富的例题，旨在帮助学生深入理解力学的基本概念和应用技巧，为CPhO复赛做好充分准备。",
  summary: [

    // Part I 力与运动
    = 运动学基础
    - #chapter("chapters/运动学/质点运动学.typ", section: "1.1")[质点运动学]
    - #chapter("chapters/运动学/运动的合成与分解.typ", section: "1.2")[运动的合成与分解]
    - #chapter("chapters/运动学/抛体运动.typ", section: "1.3")[抛体运动]
    - #chapter("chapters/运动学/圆周运动.typ", section: "1.4")[圆周运动]
    - #chapter("chapters/运动学/极坐标下的运动.typ", section: "1.5")[极坐标下的运动]
    - #chapter("chapters/运动学/相对运动.typ", section: "1.6")[相对运动]
    - #chapter("chapters/运动学/约束.typ", section: "1.7")[约束]
    - #chapter("chapters/运动学/纯滚动.typ", section: "1.8")[纯滚动]

    = 静力学基础
    - #chapter("chapters/静力学/力与物体的平衡基础.typ", section: "2.1")[力与物体的平衡基础]
    - #chapter("chapters/静力学/力矩.typ", section: "2.2")[力矩]
    - #chapter("chapters/静力学/势能.typ", section: "2.3")[势能]
    - #chapter("chapters/静力学/虚功原理.typ", section: "2.4")[虚功原理]

    = 牛顿运动定律
    - #chapter("chapters/动力学/牛顿运动定律.typ", section: "3.1")[牛顿运动定律]
    - #chapter("chapters/动力学/非惯性系.typ", section: "3.2")[非惯性系]

    // Part II 能量与动量
    = 功与能
    - #chapter("chapters/功与能/动能定理.typ", section: "4.1")[动能定理]
    - #chapter("chapters/功与能/物理上的“最小”.typ", section: "4.2")[物理上的“最小”]

    = 动量与角动量
    - #chapter("chapters/动量与角动量/动量与冲量.typ", section: "5.1")[动量与冲量]
    - #chapter("chapters/动量与角动量/动量守恒定律.typ", section: "5.2")[动量守恒定律]
    - #chapter("chapters/动量与角动量/角动量与有心力场.typ", section: "5.3")[角动量与有心力场]

    = 碰撞专题
    - #chapter("chapters/质心系与碰撞专题/碰撞.typ", section: "6.1")[碰撞专题]

    // 附录
    = 附录
    - #chapter("chapters/appendixMath.typ", section: "A")[数学附录]
  ],
)

#build-meta(dest-dir: "dist")
