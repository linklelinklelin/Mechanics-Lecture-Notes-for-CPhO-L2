#import "../../format/lib.typ":*
#import "../../format/utils.typ":*

== 圆周运动

圆周运动是曲线运动的典型代表 . 质点在平面内绕一固定中心（或轴）做半径始终不变的轨迹运动 . 

=== 描述圆周运动的物理量

1. *角位置与角位移*：
质点在 $O x y$ 平面内做半径为 $r$ 的圆周运动 . 角位置 $theta$ 随时间变化的关系 $theta = theta(t)$ 称为角运动方程 . 

#definition(title:"角位移")[
  
  *角位移* $vec(Delta theta)$ 表示在 $Delta t$ 时间内半径转过的角度 . 角位移的方向由右手螺旋定则确定 . 顺时针转动指向纸内方向，逆时针转动指向纸外方向 . 
]


2. *角速度*：
描述角位置随时间变化的快慢 . 

$ vec(omega) = (dif vec(theta)) / (dt) $

3. *角加速度*：

描述角速度随时间变化的率 . 

$ vec(alpha) = (dif vec(omega)) / (dt) = (dif ^2 vec(theta)) / (dt^2) $ . 


=== 匀速圆周运动与变速圆周运动

1. *匀速圆周运动*：

当 $alpha = 0$ 时，$omega = "const"$ . 

- 周期 $T$：质点绕行一周所需的时间，$T = (2 pi) / (omega)$ . 

- 频率 $f$：单位时间内绕行的圈数，$f = (1) / (T) = (omega) / (2 pi)$ . 

2. *变速圆周运动与加速度分解*：

质点的加速度 $vec(a)$ 可分解为切向加速度 $vec(a)_tau$ 和法向加速度 $vec(a)_n$：

- *切向加速度*：$a_tau = (d v) / (dt)$ . 反映速度*大小*的变化快慢 . 

- *法向（向心）加速度*：$a_n = (v^2) / (R) = R omega^2$ . 反映速度*方向*的变化快慢，始终指向圆心 . 

- *全加速度*：$vec(a) = vec(a)_tau + vec(a)_n$，其大小为 $a = sqrt((a_tau)^2 + (a_n)^2)$ . 

=== 角量与线量的关系

- *位置关系*：轨道长度 $s = R theta$ . 

- *速度关系*：$v = (ds) / (dt) = R (dtheta) / (dt) = R omega$ . 
- *加速度关系*：
  - 切向：$a_tau = R alpha$ . 
  - 法向：$a_n = (v^2) / (R) = R omega^2$ . 

=== 矢量表示与重要结论

1. *角速度与线速度矢量关系*：
$ vec(v) = vec(omega) times vec(r) $

2. *角加速度与线加速度矢量关系*：
若用 $vec(beta)$ 表示角加速度矢量，则：
$ vec(a) = vec(beta) times vec(r) + vec(omega) times (vec(omega) times vec(r)) $
其中 $vec(beta) times vec(r)$ 为切向加速度，$vec(omega) times (vec(omega) times vec(r))$ 为法向加速度 . 

3. *匀变速圆周运动公式*（类比匀变速直线运动）：
- $omega = omega_0 + alpha t$

- $theta = theta_0 + omega_0 t + (1) / (2) alpha t^2$
- $omega^2 = omega_0^2 + 2 alpha (theta - theta_0)$

\
\


#example(title:"圆锥摆")[
  
  一长为 $L$ 的不可伸长的轻绳，下端悬挂一小球（可视为质点） . 现使小球在水平面内作匀速圆周运动，且绳与竖直方向的夹角始终保持为 $theta$，此装置称为圆锥摆 . 已知重力加速度为 $g$，忽略空气阻力与绳的质量 . 试求小球运动周期 $T$ 的表达式 . 
]

#pagebreak()

#example()[
  
  圆柱体固定不动，其轴线与水平面垂直 . 很轻的不可伸长的柔软细线全部缠绕在圆柱体上且在同一水平面内，线末端系一小球，紧贴圆柱体表面 . 突然给小球一击，使之具有在水平方向并与圆柱体垂直的初速度 $v$，于是缠绕的细线开始从圆柱体上解开 . 设解开过程中细线与圆柱体之间无相对滑动，且重力可略，即小球始终在水平面内运动 . 试求线解开过程中小球的速率和加速度 . 
]

#pagebreak()