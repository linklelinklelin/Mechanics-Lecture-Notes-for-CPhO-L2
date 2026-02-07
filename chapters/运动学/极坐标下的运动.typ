#import "../../format/lib.typ":*
#import "../../format/utils.typ":*


== 极坐标下的运动

在处理具有旋转对称性或绕固定点运动问题时，使用极坐标系往往比直角坐标系更加简洁 . 

=== 极坐标系的建立

1. *坐标定义*：

  - *极径 $r$*：质点到原点（极点）的距离 . 
  
  - *极角 $theta$*：极径与极轴（通常为 $x$ 轴正方向）的夹角 . 

2. *与直角坐标的关系*：

$ cases(
    x = r cos theta,
    y = r sin theta
  ) $
  
  $ cases(
    r = sqrt((x^2 + y^2)),
    theta = arctan((y) / (x))
  ) $

=== 单位矢量及其对时间的导数

1. *单位矢量定义*：

  - *径向单位矢量 $hat(r)$*：指向 $r$ 增加的方向 . 
  
  - *横向单位矢量 $hat(theta)$*：指向 $theta$ 增加的方向（与 $hat(r)$ 垂直） . 
  $ cases(
    hat(r) = (cos theta) hat(i) + (sin theta) hat(j),
    hat(theta) = (-sin theta) hat(i) + (cos theta) hat(j)
  ) $

2. *单位矢量对时间的导数*：
  由于单位矢量的方向随质点运动而改变，它们对时间的导数不为零：
  $ (upright(d) hat(r)) / (dt) = (dot(theta)) hat(theta) $
  $ (upright(d) hat(theta)) / (dt) = (-dot(theta)) hat(r) $
  *物理意义*：单位矢量的变化率与其转动角速度有关，方向指向其变化的方向 . 

=== 位矢、速度与加速度的表达式

1. *位矢*：
$ arrow(bold(r)) = r hat(r) $

2. *速度*：
  对位矢求一阶导数：
$ arrow(bold(v)) = (upright(d) arrow(bold(r))) / (dt) = (dot(r)) hat(r) + (r dot(theta)) hat(theta) $
  - $(dot(r)) hat(r)$ 称为*径向速度*；$(r dot(theta)) hat(theta)$ 称为*横向速度* . 

3. *加速度*：
  对速度求一阶导数：
$ arrow(bold(a)) = (upright(d) arrow(bold(v))) / (dt) = (dot.double(r) - r dot(theta)^2) hat(r) + (r dot.double(theta) + 2 dot(r) dot(theta)) hat(theta) $
  - $(dot.double(r) - r dot(theta)^2)$ 为*径向加速度*（含向心加速度项） . 
  
  - $(r dot.double(theta) + 2 dot(r) dot(theta))$ 为*横向加速度*（含科里奥利加速度项） . 

=== 特殊运动：圆周运动

当质点做圆周运动时，极径 $r = R$（常数），则 $dot(r) = 0, dot.double(r) = 0$ . 
- *速度*：$arrow(bold(v)) = (R dot(theta)) hat(theta)$

- *加速度*：$arrow(bold(a)) = (-R dot(theta)^2) hat(r) + (R dot.double(theta)) hat(theta)$

\
\


#example(title:"经典狐狸狗1")[
  
  一只狐狸沿半径为 $R$ 的圆形岛边缘以速率 $v$ 匀速率奔跑，一只猎犬以相同的速率 $v$ 从圆形岛中心 O 出发追击狐狸 . 设猎犬在追击过程中狐狸、猎犬和圆心 O 三者始终在同一直线上 . 

（1）猎犬应沿什么轨道追击？在何处可以追上狐狸？

（2）求猎犬未追上狐狸时，在 $t$ 时刻加速度的大小 . 

]

#pagebreak()

#example(title:"螺线的运动学意义")[
  
  一根细杆绕其端点 $O$ 在平面内以匀角速度 $omega$ 旋转 . 杆上有一个可视为质点的小环，相对于杆以恒定速度 $v$ 沿杆向外作匀速运动 . 设 $t = 0$ 时刻小环位于杆的端点 $O$，此时杆与极轴重合 . 

1. 试求小环的运动轨迹 .  

2. 试求小环在任意时刻的速度和加速度 . 
]

#pagebreak()