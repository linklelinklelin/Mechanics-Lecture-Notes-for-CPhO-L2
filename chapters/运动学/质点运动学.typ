#import "../../format/lib.typ":*
#import "../../format/utils.typ":*

== 质点运动学

=== 基本概念

经典力学是研究物体的机械运动的规律的 . 力学中描述物体运动的内容叫做*运动学* . 

1. *质点*：

实际的物体结构复杂，大小各异 . 为了简化研究，引进质点模型 . 任何物体都有一定的大小和形状，且物体在运动时，内部各个点的位置变化也各不相同 . 

#definition(title: "质点")[
  用来代替物体的有质量的点 . 
]

- *适用情形*：
  - 当物体做非旋转的平动时，可以用一个点代表整个物体的运动 . 
  
  - 当物体的几何尺寸与所关注的空间尺度相比很小时 . 
  - *注意*：一个物体能否抽象为质点，应当根据问题的实际情况而定 . 

2. *坐标系*：
为了定量说明质点相对于参考物的空间位置，需建立坐标系 . 最常用的是*笛卡尔直角坐标系* . 
- 由原点 $O$ 和相互垂直的 $x, y, z$ 轴组成 . 质点位置用坐标 $(x, y, z)$ 表示 . 

=== 位矢、位移和运动方程

1. *位置矢量*：

#definition(title: "位矢")[
  从坐标原点 $O$ 到 $t$ 时刻质点位置 $P$ 引出的矢量 $arrow(bold(r))$ . 
]


- *分量式*：$arrow(bold(r)) = x bold(hat(i)) + y bold(hat(j)) + z bold(hat(k))$

- *大小*：$r = |arrow(bold(r))| = sqrt(x^2 + y^2 + z^2)$
- *方向*：由方向余弦确定，满足 $cos^2 alpha + cos^2 beta + cos^2 gamma = 1$ . 

#figure(
  image("image/位矢.png", width: 25%),
  caption: [位矢]
)

2. *运动学方程*：
$ arrow(bold(r)) = arrow(bold(r))(t) $
- 分量形式为：$x = x(t), y = y(t), z = z(t)$ . 

- 消去参数 $t$ 可得*轨迹方程* . 

3. *位移*：

#definition(title: "位移")[
  
  描述质点位置变化的矢量 . 从始点 $A$ 指向终点 $B$ 的有向线段 . 记作 $Delta arrow(bold(r))$ . 

  $ Delta arrow(bold(r)) = arrow(bold(r))_B - arrow(bold(r))_A = (x_B - x_A)bold(hat(i)) + (y_B - y_A)bold(hat(j)) + (z_B - z_A)bold(hat(k)) $
]

- *注意*：
  - 位矢与原点选取有关，位移与原点选取无关 . 
  
  - 位移不同于路程 $Delta s$ . 位移是矢量，取决于始末位置；路程是标量，是实际路径长度 . 
  - 仅当 $Delta t -> 0$ 或单向直线运动时，位移大小等于路程 . 

#figure(
  image("image/位移.png", width: 25%),
  caption: [位置矢量与位移矢量关系图]
)

=== 速度和加速度

1. *速度*：

- *平均速度*：$arrow(bold(v))_(a v g) = (Delta arrow(bold(r))) / (Delta t)$ . 方向与 $Delta arrow(bold(r))$ 相同 . 

- *瞬时速度*：$arrow(bold(v)) = lim_(Delta t -> 0) (Delta arrow(bold(r))) / (Delta t) = (upright(d) arrow(bold(r))) / (dt)$ . 方向为轨迹的切线方向 . 
- *速率*：瞬时速度的大小，$v = |arrow(bold(v))| = (ds) / (dt)$ . 是标量 . 

2. *加速度*：

- *平均加速度*：$arrow(bold(a))_(a v g) = (Delta arrow(bold(v)) ) / (Delta t)$ . 

- *瞬时加速度*：$arrow(bold(a)) = lim_(Delta t -> 0) (Delta arrow(bold(v))) / (Delta t) = (upright(d) arrow(bold(v))) / (dt) = (d^2 arrow(bold(r))) / (dt^2)$ . 方向是速度增量的极限方向 . 

3. *重要关系式*

- 积分关系（已知加速度求速度和位移）：$arrow(bold(v))(t) = arrow(bold(v))_0 + integral_0^t arrow(bold(a)) dt$ ，$arrow(bold(r))(t) = arrow(bold(r))_0 + integral_0^t arrow(bold(v)) dt$

- 链式法则（加速度的另一种表示）：$a=dv/dt=dv/dx⋅dx/dt=v dv/dx$

4. *自然坐标系*

$ arrow(bold(a)) = dv / dt bold(hat(tau)) + (v^2) / rho bold(hat(n)) $

- 即加速度可以分解为切向加速度与法向加速度 . 

#pagebreak()

#example()[
  
  如图所示，湖中有一小岛 A，A 与湖岸（为直线）相距为 $d$，湖岸边有一点 B，B 沿湖岸方向与 A 点的距离为 $l$ . 一人自 A 点出发，要到达 B 点 . 已知他在水中游泳的速度为 $v_1$，在岸上行走的速度为 $v_2$，且 $v_1 < v_2$，要求他由 A 点至 B 点所用的时间最短，问此人应如何选择运动路线？

  #remark[
    学过高中物理课内课程的同学，是否对这个结论感到眼熟呢？
  ]

  #align(right)[
   #block(width: 30%)[
    #figure(
      image("image/人上岸.png", width: 100%),
    )
  ]
  ]

]

#pagebreak()