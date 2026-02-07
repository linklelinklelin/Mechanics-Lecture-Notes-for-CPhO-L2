#import "../../format/lib.typ":*
#import "../../format/utils.typ":*

== 功、势能与势：平衡的能量底座

在引入虚功原理之前，我们必须厘清功与能的深层联系 . 在静力学中，我们不关心过程的快慢，而关心物体位置（构型）改变时所伴随的能量转换 . 

=== 功的定义与路径依赖

功 $W$ 是力在空间上的积累 . 对于一个变力 $arrow(bold(F))$ 沿路径 $L$ 移动微小位移 $upright(d) arrow(bold(r))$. 

#definition(title:"功")[
  功的定义为力与位移标量积的积分：

$ W = integral_L arrow(bold(F)) dot upright(d) arrow(bold(r)) = integral_L (F_x dx + F_y dy + F_z dz) $
]



- *非保守力*：如摩擦力，其作功的大小与路径的长短、形状密切相关 . 路径越长，消耗的能量越多 . 

- *保守力*：如重力、静电力、弹力 . 其作功的大小*仅取决于始末位置*，而与具体路径无关 . 这意味着沿任意闭合路径走一圈，保守力作的功恒等于零（$integral.cont arrow(bold(F)) dot upright(d) arrow(bold(r)) = 0$） . 

#remark[
  功和能量之间的关系到底是什么？我们在后续章节会讨论这个问题 . 
]

=== 势能的诞生

正是由于保守力作功与路径无关，我们才能对空间中每一个点定义一个唯一的标量函数——*势能* $V(arrow(bold(r)))$ . 

#definition(title:"势能")[
  保守力 $arrow(bold(F))$ 作的功等于势能增量的负值 . 
$ upright(d) V = -arrow(bold(F)) dot upright(d) arrow(bold(r)) $

]

- 积分形式为：$V(B) - V(A) = - integral_A^B arrow(bold(F)) dot upright(d) arrow(bold(r))$ . 
  
- *物理直观*：当你克服保守力移动物体时（如举起重物），你所作的功并没有“消失”，而是转化为了系统内禀的“势能” . 

- *微分关系*：力是势能函数的负梯度（势能对空间求导的负值） . 在直角坐标系下：

$ F_x = -(partial V) / (partial x), quad F_y = -(partial V) / (partial y), quad F_z = -(partial V) / (partial z) $
  
  *结论*：如果已知势能随位置的变化图景，我们就能掌握力场的所有细节 . 

=== “势”与 “势能” 的辨析

为了描述力场本身的属性（脱离受力物体），我们引入“势”的概念：

#definition(title:"势")[
  单位荷（质量或电荷）所具有的势能称为势 . 通常记作$Phi$ . 
]



  - 重力势：$Phi_g = (V_g) / (m) =g$
  
  - 静电势：$U = (V_e) / (q)$
  
- *意义*：势描述了空间的“坡度” . 物体总是倾向于从高势处向低势处运动 . 对于虚功原理而言，系统平衡即意味着它在势能的“平坦处”（驻点）停了下来 . 

===  离心势能：转动参考系中的特殊处理

在处理如离心分离机或旋转液体等问题时，在旋转参考系中，离心力 $F_c = m omega^2 r$ 也可以看作一种保守力 . 

- *离心势能*：
  $ V_c = - integral_0^r (m omega^2 r) upright(d) r = -(1) / (2) m omega^2 r^2 $
  
  通过引入这种“虚拟”的势能，我们可以将复杂的动力学转动问题转化为静力学平衡问题 . 

#pagebreak()