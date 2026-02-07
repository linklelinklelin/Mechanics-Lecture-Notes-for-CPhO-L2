#import "../../format/lib.typ":*
#import "../../format/utils.typ":*

== 力矩

对于刚体而言，合外力为零仅能保证其不产生平动加速度，若要物体保持彻底的平衡，还必须引入描述转动效应的物理量——力矩 . 

=== 力矩的矢量定义

#definition(title:"力矩")[
  力对某参考点 $O$ 的力矩 $arrow(bold(M))$ 定义为作用点位矢 $arrow(bold(r))$ 与力 $arrow(bold(F))$ 的矢量积：
  
$ arrow(bold(M)) = arrow(bold(r)) times arrow(bold(F)) $
]


- *大小*：$M = r F sin theta = F d$，其中 $d$ 是从转动中心到力作用线的垂直距离，称为*力臂* . 

- *方向*：根据右手螺旋定则判定，垂直于 $arrow(bold(r))$ 与 $arrow(bold(F))$ 确定的平面 . 

=== 力矩由来的动力学推导

力矩的概念并非人为的主观设定，而是牛顿第二定律在转动体系下的必然延伸 . 
考虑一个质量为 $m$ 的质点绕 $O$ 点运动，根据牛顿第二定律：
$ arrow(bold(F)) = (upright(d) arrow(bold(p))) / (upright(d) t) = (upright(d) (m arrow(bold(v)))) / (upright(d) t) $
为了描述该力产生的绕 $O$ 点的转动效应，我们对式子两边左叉乘位矢 $arrow(bold(r))$：
$ arrow(bold(r)) times arrow(bold(F)) = arrow(bold(r)) times (upright(d) (m arrow(bold(v)))) / (upright(d) t) $
根据矢量导数运算法则：
$ (upright(d) (arrow(bold(r)) times m arrow(bold(v)))) / (upright(d) t) = ((upright(d) arrow(bold(r))) / (upright(d) t) times m arrow(bold(v))) + (arrow(bold(r)) times (upright(d) (m arrow(bold(v)))) / (upright(d) t)) $
由于 $(upright(d) arrow(bold(r))) / (upright(d) t) = arrow(bold(v))$，且 $arrow(bold(v)) times m arrow(bold(v)) = 0$（同向矢量叉乘为零），上述方程简化为：
$ arrow(bold(r)) times arrow(bold(F)) = (upright(d) (arrow(bold(r)) times arrow(bold(p)))) / (upright(d) t) $
我们定义 $arrow(bold(L)) = arrow(bold(r)) times arrow(bold(p))$ 为角动量，则有：
$ arrow(bold(M)) = (upright(d) arrow(bold(L))) / (upright(d) t) $

这说明：*力矩是物体角动量随时间变化的原因* . 在静力学中，当物体角动量保持不变（如静止）时，其合外力矩必然为零 . 

#remark[
  简述为什么有心力下角动量守恒 . 
]

=== 力矩的物理意义与力偶

- *物理意义*：力矩是力对物体产生转动倾向的量度 . 一个力能否有效改变物体的转动状态，不仅取决于力的大小，更取决于力臂的长短 . 

- *力偶 (Couple)*：一对等大、反向但不共线的力 . 
    - 力偶的合力为零，但对任意点的合力矩不为零 . 
    
    - *重要性质*：力偶矩 $M = F d$（$d$ 为两力线间垂直距离）与参考点的选择无关 . 力偶只能有力偶来平衡 . 
    
- *刚体平衡的充要条件*：

  $ sum arrow(bold(F)) = 0, quad sum arrow(bold(M)) = 0 $
  
  在实际解题中，矩心的选择极其重要 . 通常选择多个未知力的交点作为矩心，可以简化方程 . 

#remark[
  如果一个物体只受2或3个力，其平衡条件能否简化？
]

#theorem()[
  三力平衡的充要条件是三力共点且合力为0. 
]

\


#example(title: "互相垂直斜面上的杆平衡")[
  
  在互相垂直的斜面上放置一匀质杆 $A B$，如图所示，设各接触面的摩擦角均为 $phi$，求平衡时杆 $A B$ 与斜面 $A O$ 的交角 $theta$ . 已知斜面 $B O$ 和水平面交角 $alpha$ . 

  \
  \
  
  #align(right)[
    #block(width: 40%)[
      #figure(
        image("image/互相垂直斜面上的杆平衡.png", width: 100%),
      )
    ]
  ]
]

#pagebreak()

#example(title:"圆筒不翻倒的条件")[
  
  有一个半径为 $a$，高为 $4a$，重为 $Q$ 的两端开口的圆筒，现将圆筒竖直放在光滑表面的水平面上，之后将半径为 $r$ ，重为 $P$ 的两个完全相同的光滑圆球放进筒内而呈叠放状，当 $a < 2 r <2 a$时，求圆筒不翻倒的条件 . 

  \
  
  #align(right)[
   #block(width: 45%)[
    #figure(
      image("image/圆筒翻倒平衡.png", width: 100%),
      //caption: [圆筒翻倒临界分析]
    )
  ]
  ]
]

#pagebreak()

#example(title: "橡皮筋约束的小球平衡与运动")[
  
  三个半径同为 $R$，质量相同的匀质光滑小球放在光滑水平桌面上，用一根不可伸长的均匀橡皮筋把它们约束起来，如图所示 . 再将一个半径也为 $R$，质量是上述各小球质量 3 倍的匀质光滑小球放在上述三个小球中间正上方，因受橡皮筋约束，下面三个小球并未分离 . 试求：

  （1）放置上面的小球后，橡皮筋的张力增量 $Delta T$；\
  （2）将橡皮筋剪断后，上面的小球碰到桌面时的速度 $u$ . 

  \
  #align(right)[
    #block(width: 40%)[
      #figure(
        image("image/橡皮筋1.png", width: 100%),
      )
    ]
  ]
]

#pagebreak()

#example(title: "双圆柱体的平衡条件")[
  
  有一半径为 $R$ 的圆柱 $A$，静止在水平地面上，并与竖直墙面相接触 . 现有另一质量与 $A$ 相同，半径为 $r$ 的较细圆柱 $B$，用手扶着圆柱 $B$，将 $B$ 放在 $A$ 的上面，并使之与墙面相接触，如图所示，然后放手 . 

  已知圆柱 $A$ 与地面的静摩擦系数为 0.20，两圆柱之间的静摩擦系数为 0.30 . 若放手后，两圆柱体能保持图示的平衡，问圆柱 $B$ 与墙面间的静摩擦系数和圆柱 $B$ 的半径 $r$ 的值各应满足什么条件？

  #align(right)[
    #block(width: 30%)[
      #figure(
        image("image/双圆柱不倒.png", width: 100%),
      )
    ]
  ]
]

#pagebreak()

#example(title: "水平面与斜面间圆柱的受力分析")[
  
  有一重为 $G$ 的圆柱位于可动的水平平面与固定的倾角为 $alpha$ 的斜面之间，如图所示，圆柱体与水平面间的动摩擦因数和静摩擦因数均为 $mu_1$，圆柱体与斜面间的动摩擦因数和静摩擦因数均为 $mu_2$ . 为使水平面能向左匀速运动，至少要对他施以多大的力？（不考虑圆柱以外的物体施于水平面的阻力 . ）

  #align(right)[
    #block(width: 45%)[
      #figure(
        image("image/小车圆柱.png", width: 100%),
      )
    ]
  ]
]

#pagebreak()

#example(title: "碗口上薄片相互作用分析")[
  
  有 6 个完全相同的刚性长条薄片 $A_i B_i (i=1, 2, dots, 6)$，其两端下方各有一个小突起，薄片及突起的重量均可以不计 . 现将此 6 个薄片架在一只水平的碗口上，使每个薄片一端的小突起 $B_i$ 恰在碗口上，另一端小突起 $A_i$ 位于其下方薄片的正中，由正上方俯视如图所示 . 若将一质量为 $m$ 的质点放在薄片 $A_6 B_6$ 上一点，这一点与此薄片中点的距离等于它与小突起 $A_6$ 的距离（如图所示），求薄片 $A_6 B_6$ 中点所受的（由另一薄片的小突起 $A_1$ 所施的）压力 . 

  #align(right)[
    #block(width: 35%)[
      #figure(
        image("image/薄片.png", width: 100%),
      )
    ]
  ]
]

#pagebreak()

#example(title: "屋架结构的杆件内力计算")[
  
  如图所示，屋架由同一竖直面内的多根无重杆铰接而成，各铰接点依次为 $1, 2, dots, 9$，其中，铰接点 $8, 2, 5, 7, 9$ 位于同一水平直线上，且 $9$ 可以无摩擦地水平滑动 . 各铰接点间沿水平方向上的间距和沿竖直方向上的间距如图所示 . 铰接点 $3$ 承受有竖直向下的压力 $P/2$，点 $1$ 承受有竖直向下的压力 $P$，求铰接点 $3$ 和 $4$ 间杆的内力 . 

  \
  #align(right)[
    #block(width: 50%)[
      #figure(
        image("image/屋架.png", width: 100%),
      )
    ]
  ]
]

#pagebreak()
