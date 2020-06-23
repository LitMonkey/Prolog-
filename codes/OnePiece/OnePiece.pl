location('Basaltic Heavy Armor Shop', 'Basaltic Town').
location('Armor Shop Owner', 'Basaltic Heavy Armor Shop').
location('Basaltic Training Room', 'Basaltic Town').
location('Wooden Dummy', 'Basaltic Training Room').
location('Basaltic Heavy Weapon Shop', 'Basaltic Town').
location('Weapon Shop Owner', 'Basaltic Heavy Weapon Shop').
location('Basaltic Drug Store', 'Basaltic Town').
location('Drug Store Owner', 'Basaltic Drug Store').

location('Rosefinch Treasure Appreciation Shop', 'Rosefinch Town').
location('Connoisseurs', 'Rosefinch Treasure Appreciation Shop').
location('Rosefinch Boutiques', 'Rosefinch Town').
location('Boutiques Owner', 'Rosefinch Boutiques').
location('Rosefinch Drug Store', 'Rosefinch Town').
location('Drug Store Owner', 'Rosefinch Drug Store').
location('Rosefinch Fruit Store', 'Rosefinch Town').
location('Fruit Store Owner', 'Rosefinch Fruit Store').

location('Tsing Lung Weapon Shop', 'Tsing Lung Town').
location('Weapon Shop Owner', 'Tsing Lung Weapon Shop').
location('Tsing Lung Boutiques', 'Tsing Lung Town').
location('Boutiques Owner', 'Tsing Lung Boutiques').
location('Tsing Lung Treasure Appreciation Shop', 'Tsing Lung Town').
location('Connoisseurs', 'Tsing Lung Treasure Appreciation Shop').
location('Tsing Lung Drug Store', 'Tsing Lung Town').
location('Drug Store Owner', 'Tsing Lung Drug Store').
location('Tsing Lung Fruit Store', 'Tsing Lung Town').
location('Fruit Store Owner', 'Tsing Lung Fruit Store').

location('White Tiger Weapon Shop', 'White Tiger Town').
location('Weapon Shop Owner', 'White Tiger Weapon Sho').
location('White Tiger Fruit Store', 'White Tiger Town').
location('Fruit Store Owner', 'White Tiger Fruit Store').
location('White Tiger Boutiques', 'White Tiger Town').
location('Boutiques Owner', 'White Tiger Boutiques').
location('White Tiger Drug Store', 'White Tiger Town').
location('Drug Store Owner', 'White Tiger Drug Store').

store('Tsing Lung Weapon Shop').
store('Tsing Lung Drug Store').
store('Tsing Lung Fruit Store').
store('Tsing Lung Boutiques').

store('Basaltic Weapon Shop').
store('Basaltic Drug Store').
store('Basaltic Heavy Armor Shop').

store('Rosefinch Drug Store').
store('Rosefinch Fruit Store').
store('Rosefinch Boutiques').

store('White Tiger Weapon Shop').
store('White Tiger Drug Store').
store('White Tiger Fruit Store').
store('White Tiger Boutiques').

door('Basaltic Heavy Armor Shop', 'Basaltic Town').
door('Basaltic Training Room', 'Basaltic Town').
door('Basaltic Heavy Weapon Shop', 'Basaltic Town').
door('Basaltic Drug Store', 'Basaltic Town').

door('Rosefinch Treasure Appreciation Shop', 'Rosefinch Town').
door('Rosefinch Boutiques', 'Rosefinch Town').
door('Rosefinch Drug Store', 'Rosefinch Town').
door('Rosefinch Fruit Store', 'Rosefinch Town').

door('Tsing Lung Weapon Shop', 'Tsing Lung Town').
door('Tsing Lung Boutiques', 'Tsing Lung Town').
door('Tsing Lung Treasure Appreciation Shop', 'Tsing Lung Town').
door('Tsing Lung Drug Store', 'Tsing Lung Town').
door('Tsing Lung Fruit Store', 'Tsing Lung Town').

door('White Tiger Weapon Shop', 'White Tiger Town').
door('White Tiger Fruit Store', 'White Tiger Town').
door('White Tiger Boutiques', 'White Tiger Town').
door('White Tiger Drug Store', 'White Tiger Town').

path('Tsing Lung Town', 'Basaltic Town').
path('Tsing Lung Town', 'White Tiger Town').
path('Tsing Lung Town', 'Rosefinch Town').
path('Basaltic Town', 'Roserfinch Town').
path('Basaltic Town', tcave1).
path('White Tiger Town', tcave8).
path('White Tiger Town', bcave1).
path('Rosefinch Town', bcave10).

hole(bcave1, bcave2).
hole(bcave2, bcave3).
hole(bcave2, bcave4).
hole(bcave4, bcave6).
hole(bcave4, bcave10).
hole(bcave6, bcave5).
hole(bcave10, bcave7).
hole(bcave7, bcave8).
hole(bcave8, bcave9).

hole(tcave1, tcave2).
hole(tcave2, tcave3).
hole(tcave2, tcave7).
hole(tcave3, tcave4).
hole(tcave3, tcave5).
hole(tcave4, tcave8).
hole(tcave5, tcave6).

init_things:-asserta(t_location(monster1, bcave1)),
    asserta(t_location(monster2, bcave2)),
    asserta(t_location(carrot, bcave3)),
    asserta(t_location(strawberry, bcave5)),
    asserta(t_location(monster3, bcave6)),
    asserta(t_location(monster4, bcave8)),
    asserta(t_location('The Black Dragon Gun', bcave9)),
    asserta(t_location('The Black Dragon', bcave10)),
    asserta(t_location('HP Drug', tcave2)),
    asserta(t_location(monster5, tcave3)),
    asserta(t_location(monster6, tcave4)),
    asserta(t_location('The Golden Armor', tcave7)),
    asserta(t_location('Spade', tcave8)),
    asserta(t_location(mound, tcave6)),


    asserta(t_location('Sharp Sword', 'Tsing Lung Weapon Shop')),
    asserta(t_location('Beautiful Sword', 'Tsing Lung Weapon Shop')),
    asserta(t_location('Curved Sword', 'Tsing Lung Weapon Shop')),
    asserta(t_location('Big Sword', 'Tsing Lung Weapon Shop')),
    asserta(t_location('Bullets', 'Tsing Lung Weapon Shop')),

    asserta(t_location('Strength Drug', 'Tsing Lung Drug Store')),
    asserta(t_location('HP Drug', 'Tsing Lung Drug Store')),

    asserta(t_location(strawberry, 'Tsing Lung Fruit Store')),
    asserta(t_location(carrot, 'Tsing Lung Fruit Store')),

    asserta(t_location('Wooden Armor', 'Tsing Lung Boutiques')),
    asserta(t_location('Steel Armor', 'Tsing Lung Boutiques')),


    asserta(t_location('Sharp Machete', 'Basaltic Heavy Weapon Shop')),
    asserta(t_location('Beautiful Machete', 'Basaltic Heavy Weapon Shop')),
    asserta(t_location('Curved Machete', 'Basaltic Heavy Weapon Shop')),
    asserta(t_location('Big Machete', 'Basaltic Heavy Weapon Shop')),
    asserta(t_location('Bullets', 'Basaltic Heavy Weapon Shop')),

    asserta(t_location('Strength Drug', 'Basaltic Drug Store')),
    asserta(t_location('HP Drug', 'Basaltic Drug Store')),

    asserta(t_location('Steel Armor', 'Basaltic Heavy Armor Shop')),
    asserta(t_location('Strong Steel Armor', 'Basaltic Heavy Armor Shop')),


    asserta(t_location('Strength Drug', 'Rosefinch Drug Store')),
    asserta(t_location('HP Drug', 'Rosefinch Drug Store')),

    asserta(t_location(strawberry, 'Rosefinch Fruit Store')),
    asserta(t_location(carrot, 'Rosefinch Fruit Store')),

    asserta(t_location('Wooden Armor', 'Rosefinch Boutiques')),
    asserta(t_location('Steel Armor', 'Rosefinch Boutiques')),


    asserta(t_location('Sharp Sword', 'White Tiger Weapon Shop')),
    asserta(t_location('Beautiful Sword', 'White Tiger Weapon Shop')),
    asserta(t_location('Curved Sword', 'White Tiger Weapon Shop')),
    asserta(t_location('Big Sword', 'White Tiger Weapon Shop')),
    asserta(t_location('Bullets', 'White Tiger Weapon Shop')),

    asserta(t_location('Strength Drug', 'White Tiger Drug Store')),
    asserta(t_location('HP Drug', 'White Tiger Drug Store')),

    asserta(t_location(strawberry, 'White Tiger Fruit Store')),
    asserta(t_location(carrot, 'White Tiger Fruit Store')),

    asserta(t_location('Wooden Armor', 'White Tiger Boutiques')),
    asserta(t_location('Steel Armor', 'White Tiger Boutiques')),
    

    asserta(monster_attr(monster1, 50, 20)),
    asserta(monster_attr(monster2, 60, 30)),
    asserta(monster_attr(monster3, 50, 40)),
    asserta(monster_attr(monster4, 100, 40)),
    asserta(monster_attr(monster5, 50, 50)),
    asserta(monster_attr(monster6, 30, 80)),
    asserta(monster_attr('The Black Dragon', 1000, 350)).

bonus(monster1, 'Short Sword').
bonus(monster2, 'Wooden Armor').
bonus(monster3, 'Monster Armor').
bonus(monster4, 'Monster Sword').
bonus(monster5, 'Monster Machete').
bonus(monster6, 'Beautiful Machete').
bonus('The Black Dragon', 'The Black Dragon Sword').

coins(monster1, 20).
coins(monster2, 50).
coins(mosnter3, 80).
coins(monster4, 100).
coins(monster5, 150).
coins(monster6, 200).
coins('The Black Dragon', 800).

weapon('Rusted Short Sword', 10, 1, 20).
weapon('Short Sword', 10, 1, 50).
weapon('Sharp Sword', 20, 3, 70).
weapon('Beautiful Sword', 20, 3, 80).
weapon('Curved Sword', 30, 3, 100).
weapon('Big Sword', 60, 7, 150).
weapon('Monster Sword', 30, 3, 50).

weapon('Rusted Short Machete', 30, 8, 20).
weapon('Short Machete', 40, 6, 50).
weapon('Sharp Machete', 80, 12, 70).
weapon('Beautiful Machete', 80, 12, 80).
weapon('Curved Machete', 120, 14, 100).
weapon('Big Machete', 200, 20, 150).
weapon('Monster Machete', 120, 12, 50).

weapon('Spade', 1, 1, 1).
weapon('The Black Dragon Sword', 300, 20, 2000).

weapon('Fire Gun', 30, 8, 500).
weapon('The Black Dragon Gun', 100, 10, 2000).
weapon(nothing, 0, 0, 0).

armor('Quilted Armor', 5, 1, 5).
armor('Wooden Armor', 10, 3, 10).
armor('Steel Armor', 50, 10, 60).
armor('Strong Steel Armor', 80, 12, 80).
armor('The Golden Armor', 300, 25, 2000).
armor('Monster Armor', 50, 8, 40).
armor(noting, 0, 0, 0).

fruit(strawberry, 50, 0, 1, 50).
fruit(carrot, 0, 0, 3, 50).
fruit(noting, 0, 0, 0, 0).

drug('Strength Drug', 0, 0, 2, 40).
drug('HP Drug', 100, 0, 0, 100).
drug(noting, 0, 0, 0, 0).

connect(X, Y):-door(X, Y).
connect(X, Y):-door(Y, X).
connect(X, Y):-path(X, Y).
connect(X, Y):-path(Y, X).
connect(X, Y):-hole(X, Y).
connect(X, Y):-hole(Y, X).

can_go(Place):-here(Here), connect(Here, Place).
can_go(Place):-write('You can not go to '), write(Place), write('.'), nl, fail.

move(Place):-retract(here(_)), asserta(here(Place)).

list_connections(Place):-connect(Place, X), tab(2), write(X), nl, fail.
list_connections(_).

goto(Place):-can_go(Place), move(Place), look.
transfer(Place):-move(Place), look.

list_things(Place):-location(Thing, Place), tab(2), write(Thing), nl, fail.
list_things(Place):-t_location(Thing, Place), tab(2), write(Thing), nl, fail.
list_things(_).

look:-here(Here), write('You are now at '), write(Here), write('.'), nl, write('You can see: '), nl, list_things(Here), write('You can go to: '), nl, list_connections(Here).


weight(Thing, Weight):-weapon(Thing, _, Weight, _).
weight(Thing, Weight):-armor(Thing, _, Weight, _).
weight(Thing, Weight):-fruit(Thing, _, Weight, _, _).
weight(Thing, Weight):-drug(Thing, _, Weight, _, _).

can_take(Thing):-here(Here), t_location(Thing, Here), weight(Thing, W), str(S), W =< S.
can_take(Thing):-write('You can not take '), write(Thing), write('.'), nl, write('Maybe your strength is not high enough or '), write(Thing), write(' is too far.'), fail.

can_buy_armor(Item):-here(Here), location('Boutiques Owner', Here), armor(Item, _, _, Val), coin(Money), Money >= Val.
can_buy_armor(_):-write('You dont have enough money or you are not at Boutiques.'), nl, fail.

can_buy_weapon(Item):-here(Here), location('Weapon Shop Owner', Here), weapon(Item, _, _, Val), coin(Money), Money >= Val.
can_buy_weapon(_):-write('You dont have enough money or you are not at Weapon Shop.'), nl, fail.

can_buy_fruit(Item):-here(Here), location('Fruit Store Owner', Here), fruit(Item, _, _, _, Val), coin(Money), Money >= Val.
can_buy_fruit(_):-write('You dont have enough money or you are not at Fruit Store.'), nl, fail.

can_buy_drug(Item):-here(Here), location('Drug Store Owner', Here), drug(Item, _, _, _, Val), coin(Money), Money >= Val.
can_buy_drug(_):-write('You dont have enough money or you are not at Drug Store.'), nl, fail.

can_buy_ammu(Quan):-here(Here), location('Weapon Shop Owner', Here), coin(Money), Money >= Quan.
can_buy_ammu(_):-write('You dont have enough money or you are not at Weapon Shop.'), nl, fail.

item:-here(Here), store(Here).
item:-write('You are not in a store.'), nl, fail.


start:-born,
    init_things.

calAtk(ATK):-weapon(WEA), write('Your weapon is: '), write(WEA), write('.'), nl, weapon(WEA, Atk, _, _), str(Str), ATK is Str + Atk, write('Your ATK is '), write(ATK), write('.'), nl.
calGAtk(ATK):-gun(GUN), write('Your gun is '), write(GUN), write('.'), nl, weapon(GUN, ATK, _, _), write('Your guns atk is '), write(ATK), write('.'), nl.
calDef(DEF):-armor(ARM), write('Your Armor is: '), write(ARM), write('.'), nl, armor(ARM, Def, _, _), DEF is 5 + Def, write('Your DEF is '), write(DEF), write('.'), nl.

born:-write('You born.'), nl,
    asserta(here('Tsing Lung Town')), here(Here), write('You are now at '), write(Here), write('.'), nl,
    asserta(hp(200)), write('Your HP is 200.'), nl,
    asserta(str(25)), write('Your Strength is 25'), nl,
    asserta(weapon('Rusted Short Sword')), weapon(Weapon), write('You are holding a Weapon: '), write(Weapon), write('.'), nl,
    asserta(gun('Fire Gun')), gun(Gun), write('Your Gun is: '), write(Gun), write('.'), nl,
    asserta(ammu(20)), ammu(Ammu), write('You have '), write(Ammu), write(' Bullet.'), nl,
    asserta(armor('The Golden Armor')), armor(Armor), write('You are wearing an Armor: '), write(Armor), write('.'), nl,
    calAtk(ATK), asserta(atk(ATK)),
    calDef(DEF), asserta(def(DEF)),
    asserta(coin(2000)), coin(Money), write('You have '), write(Money), write(' coins.'), nl.

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

train:-here(Here), location('Wooden Dummy', Here),
    write('You hit the Wooden Dummy.'), nl,
    str(Str), STR is Str + 0.5, retract(str(_)), asserta(str(STR)),
    nl, write('Your Strength now is '), write(STR), write('.'),
    calAtk(ATK), retract(atk(_)), asserta(atk(ATK)).
train:-write('You are not at the Training Room.'), nl, fail.

can_hit(Monster):-here(Here), t_location(Monster, Here), weapon(Wea), weapon(Wea, _, _, _).
can_hit(Monster):-write('You can not hit '), write(Monster), write('.'), nl,
    write('You can not see '), write(Monster), write(' or you hold a wrong weapon.'), nl, fail.

can_shoot(Monster):-here(Here), t_location(Monster, Here), gun(Gun), weapon(Gun, Atk, _, _), Atk > 0, ammu(Ammu), Ammu > 0.
can_shoot(Monster):-write('You can not shoot '), write(Monster), write('.'), nl,
    write('You can not see '), write(Monster), write(' or your ammunity is not enough or you dont have a gun.'), nl, fail.

judDamage(Damage, RDamage):-Damage > 0, RDamage is Damage.
judDamage(_, RDamage):-RDamage is 0.

judDeath(Monster, HP):-HP =< 0, here(Here), retract(t_location(Monster, Here)),
    write('You defeat '), write(Monster), write('.'), nl,
    write('You find '), coins(Monster, Quan), write(Quan), write(' coins.'), nl,
    coin(Money), MONEY is Money + Quan, retract(coin(_)), asserta(coin(MONEY)),
    nl, write('It has a treasures: '), bonus(Monster, Bonus), asserta(t_location(Bonus, Here)), write(Bonus), nl.
judDeath(_, HP):-HP > 0, write('Its HP is '), write(HP), write('.'), nl.
judDeath:-hp(HP), HP =< 0, write('You have dead.'), nl, nl, 
    retract(here(_)), retract(hp(_)), retract(str(_)), retract(weapon(_)), retract(gun(_)), retract(ammu(_)), retract(armor(_)), retract(atk(_)), retract(def(_)), retract(coin(_)),
    born.
judDeath:-hp(HP), HP > 0, write('Your HP is '), write(HP), write('.'), nl.

calResult(Monster, ADamage, RDamage):-calAtk(ADamage), calDef(Def), monster_attr(Monster, _, Atk), Damage is Atk - Def, judDamage(Damage, RDamage).
calGResult(_, ADamage, RDamage):-calGAtk(ADamage), RDamage is 0.

hit(Monster):-can_hit(Monster), calResult(Monster, ADamage, RDamage), monster_attr(Monster, Monsterhp, Monsteratk),
    nl, write('The '), write(Monster), write('s HP is '), write(Monsterhp), write('.'), nl,
    write('Its ATK is '), write(Monsteratk), write('.'), nl,
    nl, write('You attack '), write(Monster), write(': It receive '), write(ADamage), write(' Damage.'), nl,
    write('You receive '), write(RDamage), write(' Damage.'), nl,
    hp(Myhp), MyHP is Myhp - RDamage, retract(hp(_)), asserta(hp(MyHP)), judDeath,
    MonsterHP is Monsterhp - ADamage, judDeath(Monster, MonsterHP),
    retract(monster_attr(Monster, _, _)), asserta(monster_attr(Monster, MonsterHP, Monsteratk)).

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

dig:-here(Here), t_location(mound, Here), weapon(Wea), weapon(Wea, Atk, _, _), Atk = 1,
    write('You digged the mound.'), nl,
    retract(t_location(mound, Here)),
    write('You find 2000 coins!'), nl,
    coin(Money), MONEY is Money + 2000, retract(coin(_)), asserta(coin(MONEY)).
dig:-write('There is nothing to dig or you dont have a Spade.'), nl, fail.


recover(Fruit):-fruit(Fruit, Addhp, _, _, _), hp(Hp), HP is Hp + Addhp, retract(hp(_)), asserta(hp(HP)).
recover(Drug):-drug(Drug, Addhp, _, _, _), hp(Hp), HP is Hp + Addhp, retract(hp(_)), asserta(hp(HP)).
strengthen(Fruit):-fruit(Fruit, _, _, Addstr, _), str(Str), STR is Str + Addstr, retract(str(_)), asserta(str(STR)).
strengthen(Drug):-drug(Drug, _, _, Addstr, _), str(Str), STR is Str + Addstr, retract(str(_)), asserta(str(STR)).

buy_armor(Armor):-item, !, can_buy_armor(Armor), here(Here), can_take(Armor), retract(armor(A)), retract(t_location(Armor, Here)), asserta(armor(Armor)), asserta(t_location(A, Here)),
    write('You equip the '), write(Armor), write('.'), nl,
    calDef(Def), retract(def(_)), asserta(def(Def)),
    coin(Money), armor(Armor, _, _, Val), MONEY is Money - Val, retract(coin(_)), asserta(coin(MONEY)),
    write('Your Money now is '), write(MONEY), write('.'), nl.
equip(Armor):-here(Here), can_take(Armor), retract(armor(A)), retract(t_location(Armor, Here)), asserta(armor(Armor)), asserta(t_location(A, Here)),
    write('You equip the '), write(Armor), write('.'), nl,
    calDef(Def), retract(def(_)), asserta(def(Def)).

buy_weapon(Weapon):-item, !, can_buy_weapon(Weapon), here(Here), can_take(Weapon), retract(weapon(W)), retract(t_location(Weapon, Here)), asserta(weapon(Weapon)), asserta(t_location(W, Here)),
    write('You hold the '), write(Weapon), write('.'), nl,
    calAtk(Atk), retract(atk(_)), asserta(atk(Atk)),
    coin(Money), weapon(Weapon, _, _, Val), MONEY is Money - Val, retract(coin(_)), asserta(coin(MONEY)),
    write('Your Money now is '), write(MONEY), write('.'), nl.
hold(Weapon):-here(Here), can_take(Weapon), retract(weapon(W)), retract(t_location(Weapon, Here)), asserta(weapon(Weapon)), asserta(t_location(W, Here)),
    write('You hold the '), write(Weapon), write('.'), nl,
    calAtk(Atk), retract(atk(_)), asserta(atk(Atk)).

carry(Gun):-here(Here), can_take(Gun), retract(gun(G)), retract(t_location(Gun, Here)), asserta(gun(Gun)), asserta(t_location(G, Here)),
    write('You carry the '), write(Gun), write('.'), nl.

buy_fruit(Fruit):-item, !, can_buy_fruit(Fruit), can_take(Fruit), recover(Fruit), strengthen(Fruit), write('You eat a '), write(Fruit), write('.'), nl,
    hp(HP), write('Your HP now is '), write(HP), write('.'), nl,
    str(STR), write('Your STR now is '), write(STR), write('.'), nl,
    coin(Money), fruit(Fruit, _, _, _, Val), MONEY is Money - Val, retract(coin(_)), asserta(coin(MONEY)),
    write('Your Money now is '), write(MONEY), write('.'), nl.
eat(Fruit):-here(Here), can_take(Fruit), retract(t_location(Fruit, Here)), recover(Fruit), strengthen(Fruit), write('You eat a '), write(Fruit), write('.'), nl,
    hp(HP), write('Your HP now is '), write(HP), write('.'), nl,
    str(STR), write('Your STR now is '), write(STR), write('.'), nl.

buy_drug(Drug):-item, !, can_buy_drug(Drug), can_take(Drug), recover(Drug), strengthen(Drug), write('You drink a '), write(Drug), write('.'), nl,
    hp(HP), write('Your HP now is '), write(HP), write('.'), nl,
    str(STR), write('Your STR now is '), write(STR), write('.'), nl,
    coin(Money), drug(Drug, _, _, _, Val), MONEY is Money - Val, retract(coin(_)), asserta(coin(MONEY)),
    write('Your Money now is '), write(MONEY), write('.'), nl.
drink(Drug):-here(Here), can_take(Drug), retract(t_location(Drug, Here)), recover(Drug), strengthen(Drug), write('You drink a '), write(Drug), write('.'), nl,
    hp(HP), write('Your HP now is '), write(HP), write('.'), nl,
    str(STR), write('Your STR now is '), write(STR), write('.'), nl.

buy_bullet(Quan):-item, !, can_buy_ammu(Quan), ammu(Ammu), AMMU is Ammu + Quan,
    retract(ammu(_)), asserta(ammu(AMMU)),
    write('You buy '), write(Quan), write(' bullets.'),
    coin(Money), MONEY is Money - Quan, retract(coin(_)), asserta(coin(MONEY)),
    write('Your Money now is '), write(MONEY), write('.'), nl.