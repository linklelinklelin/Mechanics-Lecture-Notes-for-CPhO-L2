#import "format/lib.typ":*
#import "format/utils.typ":*
#import "format/watermark.typ":*

#show: apply-settings
#set page(
  // 如果有图片或深色背景，建议用 foreground
  foreground: watermark([2026.02 济南]),
)

#show: classicthesis.with(
  title: "力学基础讲义",
  subtitle: "动力学与守恒律",
  author: "王舶浩",
  date: "2026.02",
  // Optional: dedication and abstract
  dedication: [献给我的学生与挚友们 . ],
  // abstract: [This is the abstract of your work...],
)

// --- 文档开始 ---

//========================================================================
// Part I
// ==========================================================================
#part(
  "力与运动
  Force and Motion",
  preamble:[
    本部分将建立起经典力学的核心框架 . 
    
    这部分内容旨在回答一个基本问题：物体如何运动，以及为何如此运动？
  ]
)

#pagebreak(to: "odd")

= 运动学基础

#include "chapters/运动学/质点运动学.typ"

#include "chapters/运动学/运动的合成与分解.typ"

#include "chapters/运动学/抛体运动.typ"

#include "chapters/运动学/圆周运动.typ"

#include "chapters/运动学/极坐标下的运动.typ"

#include "chapters/运动学/相对运动.typ"

#include "chapters/运动学/约束.typ"

#include "chapters/运动学/纯滚动.typ"

//#include "chapters/Kinematics.typ"

#pagebreak(to: "odd")

= 静力学基础
//#include "chapters/StaticEquilibrium.typ"

#include "chapters/静力学/力与物体的平衡基础.typ"

#include "chapters/静力学/力矩.typ"

#include "chapters/静力学/势能.typ"

#include "chapters/静力学/虚功原理.typ"

#pagebreak(to: "odd")

= 牛顿运动定律
//#include "chapters/NewtonsLaws.typ"

#include "chapters/动力学/牛顿运动定律.typ"
#include "chapters/动力学/非惯性系.typ"


#part(
  "能量与动量
  Energy and Momentum",
  preamble: [
    本部分将视角转向力在时空中的累积效应 . 

    这部分内容实际上是区别于动力学的另一个力学体系的基础：守恒律 . 
  ]
)

= 功与能
//#include "chapters/WorkAndEnergy.typ"

#include "chapters/功与能/动能定理.typ"
#include "chapters/功与能/物理上的“最小”.typ"

#pagebreak(to: "odd")

= 动量与角动量
//#include "chapters/MomentumAndImpulse.typ"

#include "chapters/动量与角动量/动量与冲量.typ"
#include "chapters/动量与角动量/动量守恒定律.typ"
#include "chapters/动量与角动量/角动量与有心力场.typ"

#pagebreak(to: "odd")

= 碰撞专题
//#include "chapters/Collision.typ"

#include "chapters/质心系与碰撞专题/碰撞.typ"



#part(
  "附录",
  preamble: [
    本部分系统梳理了学习本讲义所需的数学预备知识，涵盖从初等数学到微积分的核心内容 . 它们是理解和表述物理规律不可或缺的工具 . 
  ]
)

#include "chapters/appendixMath.typ"


