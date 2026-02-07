// --- 数学公式全局设置 ---
#let dx = $upright(d) x$
#let dy = $upright(d) y$
#let dz = $upright(d) z$
#let du = $upright(d) u$
#let dv = $upright(d) v$
#let dt = $upright(d) t$
#let ds = $upright(d) s$
#let dtheta = $upright(d) theta$
// 自动让 cases 内部的所有内容都以 display 模式显示
// 定义一个配置函数，用来统一处理所有的排版规则
#let apply-settings(body) = {
  
  // 1. 方案一：让行间公式的分式不被压缩
  show math.equation.where(block: true): it => {
    show math.frac: math.display
    it
  }

  // 你也可以把之前其他的 set 规则放进来
  // 例如：set par(justify: true)

  body
}