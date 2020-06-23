# One Piece —— Prolog项目

### Author：Roser Han

#### Location：Shandong Linyi

[TOC]

## Prolog基础

### .pl文件

我们通过加载`.pl`文件就可以在`Prolog`中使用我们定义的规则和数据库，在`.pl`中保存我们的数据库和一些规则。

### 工具的选择

在Windows中可以使用`SWI-Prolog`来加载我们的`.pl`文件，通过菜单`file->consult`就可以选择需要加载的文件。

在CentOS7中可以使用`GNU Prolog`来加载，通过`yum search prolog`就可以找到可以下载的`GNU Prolog`，安装即可用。

通过`gprolog`命令就可以打开运行，然后输入`consult('xxx.pl')`就可以加载当前文件目录下的`.pl`文件。

### 简单查询

`Prolog`查找是找到一个就可以输出一个，所以当我们进行查询时通过`;`就可以一个一个的查看输出内容。

如果按下`Enter`键结束查询，返回最终结果。

### 混合查询

我们可以通过变量来完成混合查询。

比如

````
door(kitchen, R), location(T, R).
````

它先匹配第一个子句，找到R，然后R就变为找到的内容，比如`office`，此时第一个子句结束，开始调用第二条子句，此时第二条子句中的R变为了`office`，然后根据这个R来找到匹配的T，如果找到了，就将找到的两个变量输出，然后继续调用第二个子句。

如果第二条子句找不到内容时，会回溯到第一条子句，第一条子句继续查找，然后重复上面的过程。

只有当第一条子句无法找到其他内容时，才会调用FAIL然后返回no。

如果我们对某一个变量不关心，就可以用空变量`_`。

### 规则

规则就好像将查询子句放到了`.pl`文件中。

`Prolog`可以利用知识库中的规则进行推理。

````
eats(john, Y):-food(Y), sweet(Y).
````

他的执行就好像是将查询包装起来成为一个函数，我们只需要调用这个接口就可以完成查询。

规则由三部分组成：

* 规则头
* 符号`:-`
* 规则题

#### 规则的工作原理

`Prolog`将目标和规则的子句的头部进行匹配，如果匹配成功，则将此规则的body部分作为新的目标进行搜索。

当进行查询时是一层一层的，头部是第一层，如果匹配则开始查询规则体的第一条子句作为第二层。

如果规则体的所有目标都成功，则第一层的目标也成功。

成功之后第一层REDO，然后从第二层的**最后一个子句**进行REDO（这一点很重要，在之后的递归中涉及到这个，为什么出错），如果FAIL，则第一个子句进行REDO，如果成功，继续查询第二条子句；如果失败，并不表示规则头失败。此会继续查找是否有匹配的规则头，如果还有，则对这个新的规则头进行新的匹配。

当我们的在一个规则体中用逗号分隔子句时，两个子句是**与**的关系，而如果使用两个相同的规则，则两个规则之中的子句是**或**的关系。

### 算数

`Prolog`利用`is`来计算数学表达式，相当于`=`。

注意`>=`和`=<`的表示方式。

### 内部谓词

* `write(str)`

  将str输出到屏幕。

* `nl`

  输出回车。

* `tab(n)`

  输出n个空格，n作为参数。
  
* `not`

  对于参数子句，如果为no，返回yes，如果为yes，返回no。

内部谓词是在`Prolog`中定义好的谓词，也叫做非逻辑谓词。

它们也是用四个端口：`Call`、`Redo`、`Fail`和`Exit`。

另外使用`write`与前面不同，前面的查询都是一个一个输出，而`write`将所有查询结果都输出。

另外这些内部谓词回溯的时候永远都是`Fail`，不会重复输出。

### 数据管理

`Prolog`本质上是谓词的数据库，我们可以通过内部谓词将子句动态写入数据库或从数据库删除。

* `asserta(X)`

  其中X作为一个子句，将其加入到动态数据库。

  这个动作回溯时失败，不会取消所完成的工作。

  注意这里的X不用在后面加上`.`。

  插入的位置为数据中最开头的位置。

* `retract(X)`

  将子句X从动态数据库中删除。

  与`asserta(X)`类似。

`Prolog`子句中的变量全部都是局部变量，在`Prolog`中没有全局变量，只有一个数据库，所有`Prolog`子句都能够共享信息。

我们也可以不使用`asserta(X)`和`retarct(X)`，将信息作为参数在子句中传递，这种信息并不是一个事实，可能会让整个规则非常复杂。

### 递归

* 边界条件
* 递归

### 数据结构

`Prolog`中的表用方括号括起来，表头为表中的第一个元素，表尾为除了表头之后的剩余元素组成的表。

### 截断

有些时候回溯是不需要的，可以通过截断来提高运行效率。

控制回溯水平可以通过符号`!`来表示。

````
example:-a, b, c, !, d, e, f.
````

比如这个例子中，在子句查询到`!`之前，可以在abc之间回溯，当查询到`!`之后，就只能在def之间回溯，不能从d回溯到c。

## 实现内容



## 游戏规则

### 基本规则

* 开始游戏

  `start`

* 查看自己的属性

  `look_me`

* 训练

  在练功房的时候可以训练

  `train`

* 移动

  `goto(Place)`

* 查看周围

  `look`

* 攻击怪物

  `hit(Monster)`

* 射击怪物

  `shoot(Monster)`

* 挖宝

  如果有土堆并且手里有铁锹就可以挖掘。

  `dig`

* 购买商品

  ````
  buy_armor(Armor)
  buy_weapon(Weapon)
  buy_fruit(Fruit)
  buy_drug(Drug)
  // 买子弹说明数量
  buy_bullet(Quan)
  ````

* 拾取物品

  ````
  equip(Armor)
  hold(Weapon)
  carry(Gun)
  eat(Fruit)
  drink(Drug)
  ````

## 地图

### Global Map

![Global Map](E:\Catalog\VitalFiles\Study\Projects\Prolog\design\map\Global Map.jpg)

### Basaltic Town Map

![Basaltic Town Map](E:\Catalog\VitalFiles\Study\Projects\Prolog\design\map\Basaltic Town Map.jpg)

### Rosefinch Town Map

![Rosefinch Town Map](E:\Catalog\VitalFiles\Study\Projects\Prolog\design\map\Rosefinch Town Map.jpg)

### Tsing lung Town Map

![Tsing lung Town](E:\Catalog\VitalFiles\Study\Projects\Prolog\design\map\Tsing lung Town.jpg)

### White tiger Town Map

![White tiger Town Map](E:\Catalog\VitalFiles\Study\Projects\Prolog\design\map\White tiger Town Map.jpg)

### The Black Dragon Mountain Map

![The Black Dragon Mountain Map](E:\Catalog\VitalFiles\Study\Projects\Prolog\design\map\The Black Dragon Mountain Map.jpg)

### The Treasure Mountain Map

![The Treasure Mountain Map](E:\Catalog\VitalFiles\Study\Projects\Prolog\design\map\The Treasure Mountain Map.jpg)



### 代码解释

#### 数据库

````
// 物品，地点
location(Thing, Place).

// 动态数据库的物品，地点
t_location(Thing, Place).
// 初始化
init_things:-asserta(t_location(Thing, Place)).

// 房间1，房间2
hole(Place1, Place2).
path(Place1, Place2).
door(Place1, Place2).

// 连接的地点
connect(X, Y):-door(X, Y).
connect(X, Y):-door(Y, X).
connect(X, Y):-path(X, Y).
connect(X, Y):-path(Y, X).
connect(X, Y):-hole(X, Y).
connect(X, Y):-hole(Y, X).
````

#### 前往某地

````
// 判断是否能到达某个地点
can_go(Place):-here(Here), connect(Here, Place).
can_go(Place):-write('You can not go to '), write(Place), write('.'), nl, fail.

// 移动到某个地点，修改数据库内容
move(Place):-retract(here(X)), asserta(here(Place)).

// 前往某处，包括判断能否到达某个地点，到达地点后还要看一下四周
goto(Place):-can_go(Place), move(Place), look.
````

首先判断是否相连，如果相连说明可以前往，然后通过`move`从动态数据库删除原来的`here`，加入新的`here`。

#### 查看四周

````
// 列出相连接的地点
list_connections(Place):-connect(Place, X), tab(2), write(X), nl, fail.
list_connections(_).

// 列出可拿取的物品
list_things(Place):-location(Thing, Place), tab(2), write(Thing), nl, fail.
list_things(Place):-t_location(Thing, Place), tab(2), write(Thing), nl, fail.
list_things(_).

// 查看四周
look:-here(Here), write('You are now at '), write(Here), write('.'), nl, write('You can see: '), nl, list_things(Here), write('You can go to: '), nl, list_connections(Here).
````

先找相连的房间，然后列出当前房间有的内容，然后输出即可。

## 人物能力

小骑士初始属性：

* 血量：200
* 初始攻击力：力量值
* 初始防御力：5
* 力量：1
* 金钱：20
* 武器：生锈的长剑 攻击力加成10
* 盔甲：破旧的布甲 防御力加成5

### 代码解释

#### 数据库

````
// 血量
hp().
// 力量
str().
// 武器
weapon().
// 大枪
gun().
// 弹药
ammu().
// 盔甲
armor().
// 攻击力
atk().
// 防御力
def().
// 金币
coin().
````

#### 诞生

````
// 开始游戏
start:-born,
    init_things.

// 诞生
born:-write('You born.'), nl,
    asserta(here(bcave9)), here(Here), write('You are now at '), write(Here), write('.'), nl,
    asserta(hp(200)), write('Your HP is 200.'), nl,
    asserta(str(100)), write('Your Strength is 1'), nl,
    asserta(weapon('Rusted Short Sword')), weapon(Weapon), write('You are holding a Weapon: '), write(Weapon), write('.'), nl,
    asserta(gun('Fire Gun')), gun(Gun), write('Your Gun is: '), write(Gun), write('.'), nl,
    asserta(ammu(5)), ammu(Ammu), write('You have '), write(Ammu), write(' Bullet.'), nl,
    asserta(armor('Quilted Armor')), armor(Armor), write('You are wearing an Armor: '), write(Armor), write('.'), nl,
    calAtk(ATK), asserta(atk(ATK)),
    calDef(DEF), asserta(def(DEF)),
    asserta(coin(20)), coin(Money), write('You have '), write(Money), write(' coins.'), nl.
````

从`Tsing Lung Town`诞生，然后向动态数据库插入基本人物属性，并根据装备计算好攻击力和防御力。

#### 查看自己的能力

````
look_me:-hp(HP), str(STR), weapon(WEA), gun(GUN), ammu(AMMU), armor(ARM), atk(ATK), def(DEF), coin(MONEY),
    write('Your HP is '), write(HP), write('.'), nl,
    write('Your Strength is '), write(STR), write('.'), nl,
    write('Your Weapon is '), write(WEA), write('.'), nl,
    write('Your Gun is '), write(GUN), write('.'), nl,
    write('Your Ammunity has '), write(AMMU), write(' left.'), nl,
    write('Your Armor is '), write(ARM), write('.'), nl,
    write('Your Attack is '), write(ATK), write('.'), nl,
    write('Your Defence is '), write(DEF), write('.'), nl,
    write('Your have '), write(MONEY), write(' coins.'), nl.
````

#### 训练

````
// 通过判断当前位置是否有木人桩来判断是否是练功房，能否训练
// 提高力量
train:-here(Here), location('Wooden Dummy', Here),
    write('You hit the Wooden Dummy.'), nl,
    str(Str), STR is Str + 0.5, retract(str(_)), asserta(str(STR)),
    nl, write('Your Strength now is '), write(STR), write('.'),
    calAtk(ATK), retract(atk(_)), asserta(atk(ATK)).
train:-write('You are not at the Training Room.'), nl, fail.
````

通过训练提高力量，每次提高0.5。

#### 攻击

````
// 判断能否打到怪物
can_hit(Monster):-here(Here), t_location(Monster, Here), weapon(Wea), weapon(Wea, _, _, _).
can_hit(Monster):-write('You can not hit '), write(Monster), write('.'), nl,
    write('You can not see '), write(Monster), write(' or you hold a wrong weapon.'), nl, fail.

// 判断能否射击到怪物，判断子弹是否足够
can_shoot(Monster):-here(Here), t_location(Monster, Here), gun(Gun), weapon(Gun, Atk, _, _), Atk > 0, ammu(Ammu), Ammu > 0.
can_shoot(Monster):-write('You can not shoot '), write(Monster), write('.'), nl,
    write('You can not see '), write(Monster), write(' or your ammunity is not enough or you dont have a gun.'), nl, fail.

// 判断收到的伤害是否为0
judDamage(Damage, RDamage):-Damage > 0, RDamage is Damage.
judDamage(Damage, RDamage):-RDamage is 0.

// 判断怪物是否被打败
judDeath(Monster, HP):-HP =< 0, here(Here), retract(t_location(Monster, Here)),
    write('You defeat '), write(Monster), write('.'), nl,
    write('You find '), coins(Monster, Quan), write(Quan), write(' coins.'), nl,
    coin(Money), MONEY is Money + Quan, retract(coin(_)), asserta(coin(MONEY)),
    nl, write('It has a treasures: '), bonus(Monster, Bonus), asserta(t_location(Bonus, Here)), write(Bonus), nl.
// 未被打败则输出其剩余血量    
judDeath(Monster, HP):-HP > 0, write('Its HP is '), write(HP), write('.'), nl.

// 判断人物是否死亡
judDeath:-hp(HP), HP =< 0, write('You have dead.'), nl, nl, 
    retract(here(_)), retract(hp(_)), retract(str(_)), retract(weapon(_)), retract(gun(_)), retract(ammu(_)), retract(armor(_)), retract(atk(_)), retract(def(_)), retract(coin(_)),
    born.
// 未死亡输出自己的血量
judDeath:-hp(HP), HP > 0, write('Your HP is '), write(HP), write('.'), nl.

// 计算伤害结果
calResult(Monster, ADamage, RDamage):-calAtk(ADamage), calDef(Def), monster_attr(Monster, _, Atk), Damage is Atk - Def, judDamage(Damage, RDamage).
// 计算枪攻击的伤害结果
// 此时怪物攻击伤害为0
calGResult(Monster, ADamage, RDamage):-calGAtk(ADamage), RDamage is 0.

// 攻击怪物
hit(Monster):-can_hit(Monster), calResult(Monster, ADamage, RDamage), monster_attr(Monster, Monsterhp, Monsteratk),
    nl, write('The '), write(Monster), write('s HP is '), write(Monsterhp), write('.'), nl,
    write('Its ATK is '), write(Monsteratk), write('.'), nl,
    nl, write('You attack '), write(Monster), write(': It receive '), write(ADamage), write(' Damage.'), nl,
    write('You receive '), write(RDamage), write(' Damage.'), nl,
    hp(Myhp), MyHP is Myhp - RDamage, retract(hp(_)), asserta(hp(MyHP)), judDeath,
    MonsterHP is Monsterhp - ADamage, judDeath(Monster, MonsterHP),
    retract(monster_attr(Monster, _, _)), asserta(monster_attr(Monster, MonsterHP, Monsteratk)).

// 狙击怪物
shoot(Monster):-can_shoot(Monster), calGResult(Monster, ADamage, RDamage), monster_attr(Monster, Monsterhp, Monsteratk),
    nl, write('The '), write(Monster), write('s HP is '), write(Monsterhp), write('.'), nl,
    write('Its ATK is '), write(Monsteratk), write('.'), nl,
    nl, write('You shoot '), write(Monster), write(': It receive '), write(ADamage), write(' Damage.'), nl,
    write('You receive '), write(RDamage), write(' Damage.'), nl,
    ammu(Ammu),  AMMU is Ammu - 1, retract(ammu(_)), asserta(ammu(AMMU)),
    nl, write('Your ammunition now is '), write(AMMU), write('.'), nl,
    hp(Myhp), MyHP is Myhp - RDamage, retract(hp(_)), asserta(hp(MyHP)), judDeath,
    MonsterHP is Monsterhp - ADamage, judDeath(Monster, MonsterHP),
    retract(monster_attr(Monster, _, _)), asserta(monster_attr(Monster, MonsterHP, Monsteratk)).
````

首先判断能否攻击到怪物，如果能攻击到，就计算伤害结果，然后对人物和怪物的血量做相应的改变，然后判断是否死亡。

人物死亡就应该从重生点重生，怪物死亡从动态数据库删除。

但是死亡这个地方有点难写，我这里人物死亡判断在前，因此死亡之后不应该输出伤害结果，所以我把上海结果的计算放在`judDeath`中。

如果血量`>0`，就输出伤害结果，否则就做相应的改变（人物重生或从动态数据库中删除怪物）。

射击怪物同理，只不过判断方式改为了`gun`。

## 武器

武器有三类：

* 大刀：

  近战武器（攻击时会受到怪物攻击）

  攻击力较高

  需要的力量也比较高

* 长剑：

  近战武器

  攻击力较低

  需要的力量低

* 火炮

  远程武器（攻击时不会受到功击）

  攻击力极高

  需要的力量适中

史诗级装备：

* The Black Dragon Sword

  近战武器

  攻击力极高

* The Black Dragon Gun

### 代码解释

```
// 武器名称，攻击力，所需力量，价值
weapon(name, atk, str, val).

// 火炮名称，攻击力，所需力量，弹药量，价值
gun(name, atk, str, bul, val).
```

## 防具

防具也有三类：

* 布甲

  防御力较低

* 木甲

  防御力较高

* 钢甲

  防御力极高

  需要极高的力量

史诗级防具：

* The Golden Armor

  防御力极高

  需要极高的力量

### 代码解释

````
// 装备名，防御力，所需力量，价值
armor(name, def, str, val).
````

## 消耗品

消耗品有两类：

* 药剂
* 水果

### 代码解释

#### 数据库

````
// 水果名，增加血量，所需力量（重量），增加力量， 价值
fruit(name, addHP, str, addStr, val).
drug(name, addHP, str, addStr, val).
````

#### 增强属性

````
// 物品回复/增强
recover(Fruit):-fruit(Fruit, Addhp, _, _, _), hp(Hp), HP is Hp + Addhp, retract(hp(_)), asserta(hp(HP)).

recover(Drug):-drug(Drug, Addhp, _, _, _), hp(Hp), HP is Hp + Addhp, retract(hp(_)), asserta(hp(HP)).

strengthen(Fruit):-fruit(Fruit, _, _, Addstr, _), str(Str), STR is Str + Addstr, retract(str(_)), asserta(str(STR)).

strengthen(Drug):-drug(Drug, _, _, Addstr, _), str(Str), STR is Str + Addstr, retract(str(_)), asserta(str(STR)).
````

为了统一，每个水果和药剂都有生命值增强和力量增强两个属性，直接加就可以。

## 商店

商店有：

* 武器店

  买一些普通的武器

* 重武器店

  买一些需要高力量的武器

* 服饰店

  买一些普通的盔甲

* 重甲店

  买一些需要高力量的盔甲

* 水果店

  用于买水果

* 药剂店

  用于买药剂

* 练功房

  用于提升力量

* 鉴赏铺子（未实现）

  用于卖东西

武器店的武器和服饰店的盔甲都只有一个，但是武器店的子弹有无限多个，可以买任意多个。

水果店的水果和药剂店的药品也有无限多个。

子弹只能在武器店买到。

### 代码解释

#### 数据库

````
// 标识为商店的地点
store(Store).
````

#### 判断是否在商店

````
// 判断是否在商店，用于防止在外买了东西
item(Item):-here(Here), store(Here).
item(Item):-write('You are not in a store.'), nl, fail.
````

判断是否在商店，通过`store`配合。

## 宝藏

宝藏主要有三类：

* 武器

  一般在怪物身上会掉落，也有可能在某些房间中

* 防具

  一般在怪物身上会掉落，也有可能在某些房间中

* 金币

  金币怪物身上会掉落，但是也可以进行挖宝

### 代码解释

#### 挖宝

````
// 首先判断当前位置是否有土堆，然后判断是否持有铁锹
dig:-here(Here), t_location(mound, Here), weapon(Wea), weapon(Wea, Atk, _, _), Atk = 1,
    write('You digged the mound.'), nl,
    retract(t_location(mound, Here)),
    write('You find 2000 coins!'), nl,
    coin(Money), MONEY is Money + 2000, retract(coin(_)), asserta(coin(MONEY)).
dig:-write('There is nothing to dig or you dont have a Spade.'), nl, fail.
````

如果看到了土堆就可以挖掘，但是必须拿着铁锹才可以挖掘。

## 物品/怪物/物品逻辑

### 代码解释

#### 数据库

````
// 怪物名，血量，攻击力
monster_attr(name, hp, atk).

// 怪物身上的物品
// 怪物名，物品名
bonus(monsterName, bonusName).

noting 表示什么都没有

// 怪物属性
// 怪物名，血量，攻击力
monster_attr(name, HP, ATK).

// 怪物身上的装备
bonus(MonsterName, Equipment).

// 怪物身上的金币数
coins(MonsterName, Quantity).
````

#### 拾取/购买物品

````
// 获取重量
weight(Thing, Weight):-weapon(Thing, _, Weight, _).
weight(Thing, Weight):-armor(Thing, _, Weight, _).
weight(Thing, Weight):-fruit(Thing, _, Weight, _, _).
weight(Thing, Weight):-drug(Thing, _, Weight, _, _).

// 查看能否拿得动
can_take(Thing):-here(Here), t_location(Thing, Here), weight(Thing, W), str(S), W =< S.
can_take(Thing):-write('You can not take '), write(Thing), write('.'), nl, write('Maybe your strength is not high enough or '), write(Thing), write(' is too far.'), fail.

// 看能否买物品，通过判断当前位置是否有商店老板来判断能否买相应的物品
can_buy_armor(Item):-here(Here), location('Boutiques Owner', Here), armor(Item, _, _, Val), coin(Money), Money >= Val.
can_buy_armor(Item):-write('You dont have enough money or you are not at Boutiques.'), nl, fail.

can_buy_weapon(Item):-here(Here), location('Weapon Shop Owner', Here), weapon(Item, _, _, Val), coin(Money), Money >= Val.
can_buy_weapon(Item):-write('You dont have enough money or you are not at Weapon Shop.'), nl, fail.

can_buy_fruit(Item):-here(Here), location('Fruit Store Owner', Here), fruit(Item, _, _, _, Val), coin(Money), Money >= Val.
can_buy_fruit(Item):-write('You dont have enough money or you are not at Fruit Store.'), nl, fail.

can_buy_drug(Item):-here(Here), location('Drug Store Owner', Here), drug(Item, _, _, _, Val), coin(Money), Money >= Val.
can_buy_drug(Item):-write('You dont have enough money or you are not at Drug Store.'), nl, fail.

can_buy_ammu(Quan):-here(Here), location('Weapon Shop Owner', Here), coin(Money), Money >= Quan.
can_buy_ammu(Item):-write('You dont have enough money or you are not at Weapon Shop.'), nl, fail.

// 买盔甲/拿盔甲
buy_armor(Armor):-item(Armor), !, can_buy_armor(Armor), here(Here), can_take(Armor), retract(armor(A)), retract(t_location(Armor, Here)), asserta(armor(Armor)), asserta(t_location(A, Here)),
    write('You equip the '), write(Armor), write('.'), nl,
    calDef(Def), retract(def(_)), asserta(def(Def)),
    coin(Money), armor(Armor, _, _, Val), MONEY is Money - Val, retract(coin(_)), asserta(coin(MONEY)),
    write('Your Money now is '), write(MONEY), write('.'), nl.

equip(Armor):-here(Here), can_take(Armor), retract(armor(A)), retract(t_location(Armor, Here)), asserta(armor(Armor)), asserta(t_location(A, Here)),
    write('You equip the '), write(Armor), write('.'), nl,
    calDef(Def), retract(def(_)), asserta(def(Def)).

// 买武器/拿武器
buy_weapon(Weapon):-item(Weapon), !, can_buy_weapon(Weapon), here(Here), can_take(Weapon), retract(weapon(W)), retract(t_location(Weapon, Here)), asserta(weapon(Weapon)), asserta(t_location(W, Here)),
    write('You hold the '), write(Weapon), write('.'), nl,
    calAtk(Atk), retract(atk(_)), asserta(atk(Atk)),
    coin(Money), weapon(Weapon, _, _, Val), MONEY is Money - Val, retract(coin(_)), asserta(coin(MONEY)),
    write('Your Money now is '), write(MONEY), write('.'), nl.

hold(Weapon):-here(Here), can_take(Weapon), retract(weapon(_)), retract(t_location(Weapon, Here)), asserta(weapon(Weapon)), asserta(t_location(W, Here)),
    write('You hold the '), write(Weapon), write('.'), nl,
    calAtk(Atk), retract(atk(_)), asserta(atk(Atk)).

// 捡起枪
carry(Gun):-here(Here), can_take(Gun), retract(gun(G)), retract(t_location(Gun, Here)), asserta(gun(Gun)), asserta(t_location(G, Here)),
    write('You carry the '), write(Gun), write('.'), nl.

// 买水果/捡水果
buy_fruit(Fruit):-item(Fruit), !, can_buy_fruit(Fruit), here(Here), can_take(Fruit), recover(Fruit), strengthen(Fruit), write('You eat a '), write(Fruit), write('.'), nl,
    hp(HP), write('Your HP now is '), write(HP), write('.'), nl,
    str(STR), write('Your STR now is '), write(STR), write('.'), nl,
    coin(Money), fruit(Fruit, _, _, _, Val), MONEY is Money - Val, retract(coin(_)), asserta(coin(MONEY)),
    write('Your Money now is '), write(MONEY), write('.'), nl.

eat(Fruit):-here(Here), can_take(Fruit), retract(t_location(Fruit, Here)), recover(Fruit), strengthen(Fruit), write('You eat a '), write(Fruit), write('.'), nl,
    hp(HP), write('Your HP now is '), write(HP), write('.'), nl,
    str(STR), write('Your STR now is '), write(STR), write('.'), nl.

// 买药品/捡药品
buy_drug(Drug):-item(Drug), !, can_buy_drug(Drug), here(Here), can_take(Drug), recover(Drug), strengthen(Drug), write('You drink a '), write(Drug), write('.'), nl,
    hp(HP), write('Your HP now is '), write(HP), write('.'), nl,
    str(STR), write('Your STR now is '), write(STR), write('.'), nl,
    coin(Money), drug(Drug, _, _, _, Val), MONEY is Money - Val, retract(coin(_)), asserta(coin(MONEY)),
    write('Your Money now is '), write(MONEY), write('.'), nl.

drink(Drug):-here(Here), can_take(Drug), retract(t_location(Drug, Here)), recover(Drug), strengthen(Drug), write('You drink a '), write(Drug), write('.'), nl,
    hp(HP), write('Your HP now is '), write(HP), write('.'), nl,
    str(STR), write('Your STR now is '), write(STR), write('.'), nl.

// 买子弹
buy_bullet(Quan):-item('Bullets'), !, can_buy_ammu(Quan), ammu(Ammu), AMMU is Ammu + Quan,
    retract(ammu(_)), asserta(ammu(AMMU)),
    write('You buy '), write(Quan), write(' bullets.'),
    coin(Money), MONEY is Money - Quan, retract(coin(_)), asserta(coin(MONEY)),
    write('Your Money now is '), write(MONEY), write('.'), nl.
````

首先判断物品能否拿得动，能否取得到，如果能拿动，能取到，就进行装备。

还要注意更改动态数据库中的内容。

水果和药剂还要增强人物属性。


## Q&A

1. **uncaught exception: error(permission_error(modify,static_procedure,here/1),retract/1)**

   原因是，`retract`不能修改静态文件，它只能修改动态数据库中的子句，因此我们一开始初始化的时候将`here(kitchen)`通过`asserta(here(kitchen))`写入动态数据库即可使用`retract`删除。
   
2. 递归出错

   ![递归;继续执行出错](E:\Catalog\VitalFiles\Study\Projects\Prolog\img\递归;继续执行出错.png)

   这是因为递归到达终止条件时，递归返回输出结果，如果我们此时使用`;`进一步执行，就会跳过我们的终止条件，进一步回溯执行，造成出现`factorial(-1, Fact).`的情况。

   可以通过在终止条件加上截断，终止回溯。
   
3. 买东西需要判断所在地点。

   因为prolog没有分支语句，因此判断地点这个问题我想了很久。

   但是好在想出来了，通过在不同的店设置一个老板，然后寻找`location('Owner', 'Store')`就可以判断是否在正确的商店。

   然后对于不同的物品购买的时候要用不同的规则。

   另外还加了一个`item`用于判断当前是否在商店，不在商店不能买东西。这个因为后来的修改，有些多余。

4. 人物死亡之后数据没有删除，又重新插入了新的数据。

   在人物死亡之后要把原来的人物属性全部删除，然后再调用规则`born`。

5. 判断死亡的时候信息重复输出或者冗余输出。

   比如怪物死亡之后，还是会输出血量，比如输出血量为`-10`，就给人的感觉很奇怪，因为一开始输出的状态放在了`judDeath`之外，后来将`judDeath`分成两个，一个判断`hp >= 0`一个判断`hp < 0`。`>0`的时候输出信息，`<0`的时候输出死亡信息。

6. 总是出现新问题

   因为一开始设计完了之后对整体没有什么把握，导致后面总是会出现新的问题，然后就要把前面的内容进行修改，总是会出很多bug，比如后面添加了拿枪械的功能，又添加了很多，比如弹药，然后对前面重构，这个过程是最麻烦的。