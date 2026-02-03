
-- [Warn] Failed to parse function signature for: 新三端-服务端

-- [Warn] Failed to parse function signature for: 接口速查

-- [Warn] Failed to parse function signature for: 触发速查
---@meta E996

---
---@class E996lib
---
---标准输入。
---
E996 = {}

---@diagnostic disable: missing-return, lowercase-global

-- [Source: 触发^BUFF.lua]

---玩家buff操作触发
---* actor 玩家对象
---* buffId buffID
---* groupId 组id
---* model 操作类型<br>1=新增;<br>2=更新;<br>4=删除;
---@param actor number|string
---@param buffId integer
---@param groupId integer
---@param model integer
---```tips
---1. QF触发字段：需配置BUFF表第20列(不配置则不会触发)根据对应需求填写所需的触发,若无功能需求则不填,减少引擎消耗
---   2. buff触发中无法添加/删除buff
---```
---```lua
---[[
---登陆状态常量
---=1表示登陆前;=2表示登陆中;=3表示登陆完成
---]]
---function buffchange(actor, buffid, groupid, model)
---    release_print("打印常量",getconst(actor,""))
---end
---```
function buffchange(actor, buffId, groupId, model) end

---英雄buff操作触发
---* actor 玩家对象
---* hero 英雄对象
---* buffId buffID
---* groupId 组id
---* model 操作类型<br>1=新增;<br>2=更新;<br>4=删除;
---@param actor number|string
---@param hero number|string
---@param buffId integer
---@param groupId integer
---@param model integer
---```lua
---[[
---登陆状态常量
---=1表示登陆前;=2表示登陆中;=3表示登陆完成
---]]
---function herobuffchange(actor,hero,buffId,groupId,model)
---    release_print("打印常量",getconst(actor,""))
---end
---```
function herobuffchange(actor, hero, buffId, groupId, model) end

---buff触发血量改变时
---* actor 玩家对象
---* buffId buffid
---* buffGroup buff组
---* HP hp
---* buffHost 释放者对象
---* mon 怪物对象
---@param actor number|string
---@param buffId integer
---@param buffGroup integer
---@param HP integer
---@param buffHost number|string
---@param mon number|string
---@return integer "本次扣血"
---```tips
---buff触发中无法添加/删除buff
---```
---```lua
---function bufftriggerhpchange(actor,buffID,buffGroup,hp,buffHost,mon)
---    return hp
---end
---```
function bufftriggerhpchange(actor, buffId, buffGroup, HP, buffHost, mon) end

-- [Source: 触发^任务.lua]

---接取任务触发
---* actor 玩家对象
---* taskId 任务id
---@param actor number|string
---@param taskId integer
---```lua
---function picktask(actor,taskId)
---    release_print("接取任务触发")
---end
---```
function picktask(actor, taskId) end

---点击任务触发
---* actor 玩家对象
---* taskId 任务id
---@param actor number|string
---@param taskId integer
---```lua
---function clicknewtask(actor,taskId)
---    release_print("点击任务触发")
---end
---```
function clicknewtask(actor, taskId) end

---刷新任务触发
---* actor 玩家对象
---* taskId 任务id
---@param actor number|string
---@param taskId integer
---```lua
---function changetask(actor,taskId)
---    release_print("刷新任务触发")
---end
---```
function changetask(actor, taskId) end

---完成任务触发
---* actor 玩家对象
---* taskId 任务id
---@param actor number|string
---@param taskId integer
---```lua
---function completetask(actor,taskId)
---    release_print("完成任务触发")
---end
---```
function completetask(actor, taskId) end

---删除任务触发
---* actor 玩家对象
---* taskId 任务id
---@param actor number|string
---@param taskId integer
---```lua
---function deletetask(actor,taskId)
---    release_print("删除任务触发")
---end
---```
function deletetask(actor, taskId) end

-- [Source: 触发^关系相关.lua]

---客户端发起建立关系请求时触发
---* actor 玩家对象
---* netid 关系id
---* role 接收者对象
---@param actor number|string
---@param netid integer
---@param role number|string
---```lua
---function on_invite_united(actor,netid,role)
---    release_print("客户端发起建立关系请求时触发")
---end
---```
function on_invite_united(actor, netid, role) end

---客户端发起召集请求时触发
---* actor 邀请者玩家对象
---* netIndex 关系唯一id
---* level 发起者职位等级
---* netId 关系id
---@param actor number|string
---@param netIndex string
---@param level integer
---@param netId integer
---```lua
---function on_convene_united(actor,netIndex,level,netId)
---    release_print("召集触发")
---end
---```
function on_convene_united(actor, netIndex, level, netId) end

---客户端发起踢除某成员关系请求时触发
---* actor 玩家对象
---* netIndex 关系唯一id
---* netid 关系id
---* role 被踢出对象
---@param actor number|string
---@param netIndex string
---@param netid integer
---@param role number|string
---```lua
---function on_getout_united(actor,netIndex,netid,role)
---    release_print("踢出触发")
---end
---```
function on_getout_united(actor, netIndex, netid, role) end

---客户端发起解散关系请求时触发
---* actor 玩家对象
---* netIndex 关系唯一id
---* netid 关系id
---@param actor number|string
---@param netIndex string
---@param netid integer
---```lua
---function on_dissolve_united(actor,netIndex,netid)
---    release_print("客户端发起解散关系请求时触发")
---end
---```
function on_dissolve_united(actor, netIndex, netid) end

---客户端发起退出请求时触发
---* actor 玩家对象
---* userId 用户id
---* netIndex 关系唯一id
---* netId 关系id
---@param actor number|string
---@param userId string
---@param netIndex string
---@param netId integer
---```lua
---function on_exit_united(actor,userId,netIndex,netId)
---    release_print("退出触发")
---end
---```
function on_exit_united(actor, userId, netIndex, netId) end

-- [Source: 触发^拍卖行.lua]

---拍卖行上架触发
---* actor 玩家对象
---* itemIndex 物品id
---* itemMakeIndex 物品唯一id
---* moneyType 货币类型
---* price1 竞拍价
---* price2 一口价
---@param actor number|string
---@param itemIndex integer
---@param itemMakeIndex string
---@param moneyType integer
---@param price1 integer
---@param price2 integer
---```tips
---注意:不支持返回值控制，需调用 allowpaimai(actor, state) 阻止后续操作（state: 1=阻止, 0=允许）。
---```
---```lua
---function canpaimaiitem(actor,itemIdx,itemMakeIndex,moneyType,price1,price2)
---    release_print("拍卖行上架触发", getbaseinfo(actor,1), itemIdx, itemMakeIndex, moneyType, price1, price2)
---    if getbaseinfo(actor,6) < 100 then
---        allowpaimai(actor,1)
---        release_print("[拍卖行上架触发]禁止上架物品")
---    end
---end
---```
function canpaimaiitem(actor, itemIndex, itemMakeIndex, moneyType, price1, price2) end

---拍卖行重新上架前触发
---* actor 玩家对象
---* itemIndex 物品id
---* itemMakeIndex 物品唯一id
---* moneyType 货币类型
---* price1 竞拍价
---* price2 一口价
---@param actor number|string
---@param itemIndex integer
---@param itemMakeIndex string
---@param moneyType integer
---@param price1 integer
---@param price2 integer
---```tips
---注意:不支持返回值控制，需调用 allowpaimai(actor, state) 阻止后续操作（state: 1=阻止, 0=允许）。
---```
---```lua
---function canrepaimaiitem(actor,itemIdx,itemMakeIndex,moneyType,price1,price2)
---    release_print("拍卖行重新上架前触发", getbaseinfo(actor,1), itemIdx, itemMakeIndex, moneyType, price1, price2)
---    if getbaseinfo(actor,6) < 100 then
---        allowpaimai(actor,1)
---        release_print("[拍卖行重新上架前触发]禁止上架物品")
---    end
---end
---```
function canrepaimaiitem(actor, itemIndex, itemMakeIndex, moneyType, price1, price2) end

---拍卖行下架触发
---* actor 玩家对象
---@param actor number|string
---```lua
---function cangetbackpaimaiitem(actor)
---    release_print("拍卖行下架触发")
---end
---```
function cangetbackpaimaiitem(actor) end

---领取拍卖货币触发
---* actor 玩家对象
---@param actor number|string
---```lua
---function getpaimaiitem(actor)
---    release_print("领取拍卖货币触发")
---end
---```
function getpaimaiitem(actor) end

---拍卖购买物品触发
---* actor 玩家对象
---* itemIndex 物品id
---* itemMakeIndex 物品唯一id
---* moneyType 货币类型
---* price 价格
---@param actor number|string
---@param itemIndex integer
---@param itemMakeIndex string
---@param moneyType integer
---@param price integer
---```tips
---注意:不支持返回值控制，需调用 allowpaimai(actor, state) 阻止后续操作（state: 1=阻止, 0=允许）。
---```
---```lua
---function buypaimaiitem(actor,itemIdx,itemMakeIndex,moneyType,price)
---    release_print("拍卖购买物品触发", getbaseinfo(actor,1), itemIdx, itemMakeIndex, moneyType, price)
---    if getbaseinfo(actor,6) < 100 then
---        allowpaimai(actor,1)
---        release_print("[拍卖购买物品触发]禁止购买物品")
---    end
---end
---```
function buypaimaiitem(actor, itemIndex, itemMakeIndex, moneyType, price) end

---拍卖行竞价触发
---* actor 玩家对象
---* itemIndex 物品id
---* itemMakeIndex 物品唯一id
---* moneyType 货币类型
---* price 价格
---@param actor number|string
---@param itemIndex integer
---@param itemMakeIndex string
---@param moneyType integer
---@param price integer
---```tips
---注意:不支持返回值控制，需调用 allowpaimai(actor, state) 阻止后续操作（state: 1=阻止, 0=允许）。
---```
---```lua
---function biddingpaimaiitem(actor,itemIdx,itemMakeIndex,moneyType,price)
---    release_print("拍卖行竞价触发", getbaseinfo(actor,1), itemIdx, itemMakeIndex, moneyType, price)
---    if getbaseinfo(actor,6) < 100 then
---        allowpaimai(actor,1)
---        release_print("[拍卖行竞价触发]禁止购买物品")
---    end
---end
---```
function biddingpaimaiitem(actor, itemIndex, itemMakeIndex, moneyType, price) end

-- [Source: 触发^排行榜.lua]

---自定义排行榜刷新触发
---* sysObj 系统对象
---@param sysObj number|string
---```lua
---function inisort(sysObj)
---    release_print("自定义排行榜刷新触发")
---end
---```
function inisort(sysObj) end

---自定义排行榜切换玩家和英雄的页签触发
---* actor 玩家对象
---* isHero 0=打开玩家页签；<br>1=打开英雄页签
---@param actor string
---@param isHero integer
---```lua
---function clicksortbutton(actor,isHero)
---    release_print("自定义排行榜切换玩家和英雄的页签触发")
---end
---```
function clicksortbutton(actor, isHero) end

---自定义排行榜点击排名触发
---* actor 玩家对象
---* ranking 排行榜名次
---@param actor string
---@param ranking integer
---```lua
---function clicksortno(actor,ranking)
---    release_print("自定义排行榜点击排名触发")
---end
---```
function clicksortno(actor, ranking) end

-- [Source: 触发^求购行.lua]

---求购上架前触发
---* actor 玩家对象
---* itemName 求购物品名称
---* itemIndex 求购物品idx
---* needNum 求购的物品数量
---* price 求购的货币金额(总值)
---@param actor number|string
---@param itemName string
---@param itemIndex integer
---@param needNum integer
---@param price integer
---@return boolean "是否允许本次求购"
---```lua
---function beforeaddqiugou(actor,itemName,itemidx,needNum,price,...)
---    release_print("求购上架前触发",getbaseinfo(actor,1),itemidx,needNum,price,...)
---    if getbaseinfo(actor,6) < 50 then
---        messagebox(actor,"角色等级小于50级,无法发起求购~")
---        return false
---    end
---    return true
---end
---```
function beforeaddqiugou(actor, itemName, itemIndex, needNum, price) end

---求购上架成功触发
---* actor 玩家对象
---* itemName 求购物品名称
---* itemIndex 求购物品idx
---* needNum 求购的物品数量
---* price 求购的货币金额(总值)
---@param actor number|string
---@param itemName string
---@param itemIndex integer
---@param needNum integer
---@param price integer
---@return boolean "是否允许本次求购"
---```lua
------求购上架成功触发
------@param actor userdata 玩家对象
------@param itemName string 求购物品名称
------@param itemidx integer 求购物品idx
------@param needNum integer 求购的物品数量
------@param price integer 求购的货币金额(总值)
------@return boolean 是否允许本次求购
---function addqiugou(actor,itemName,itemidx,needNum,price,...)
---    release_print("求购上架成功触发",getbaseinfo(actor,1),itemidx,needNum,price,...)
---end
---```
function addqiugou(actor, itemName, itemIndex, needNum, price) end

---出售前触发
---* actor 玩家对象
---* itemName 出售物品名称
---* itemIndex 出售物品idx
---* needNum 出售的物品数量
---* price 出售的货币金额(总值)
---@param actor number|string
---@param itemName string
---@param itemIndex integer
---@param needNum integer
---@param price integer
---@return boolean "是否允许本次出售"
---```lua
------出售前触发
------@param actor userdata 玩家对象
------@param itemName string 出售物品名称
------@param itemidx integer 出售物品idx
------@param num integer 出售的物品数量
------@param price integer 出售的货币金额(总值)
------@return boolean 是否允许本次出售
---function beforesellqiugou(actor,itemName,itemidx,num,price,...)
---    release_print("出售前触发",getbaseinfo(actor,1),itemidx,num,price,...)
---    if getbaseinfo(actor,6) < 50 then
---        messagebox(actor,"角色等级小于50级,无法出售道具~")
---        return false
---    end
---    return true
---end
---```
function beforesellqiugou(actor, itemName, itemIndex, needNum, price) end

---卖出成功触发
---* actor 玩家对象
---* itemName 卖出物品名称
---* itemIndex 卖出物品idx
---* needNum 卖出的物品数量
---* price 卖出的货币金额(总值)
---@param actor number|string
---@param itemName string
---@param itemIndex integer
---@param needNum integer
---@param price integer
---```lua
------卖出成功触发
------@param actor userdata 玩家对象
------@param itemName string 卖出物品名称
------@param itemidx integer 卖出物品idx
------@param num integer 卖出的物品数量
------@param price integer 卖出的货币金额(总值)
---function sellqiugou(actor,itemName,itemidx,num,price,...)
---    release_print("卖出成功触发",getbaseinfo(actor,1),itemidx,num,price,...)
---end
---```
function sellqiugou(actor, itemName, itemIndex, needNum, price) end

-- [Source: 触发^玩家.lua]

---玩家登录触发
---* actor actor
---@param actor number|string
---```lua
---function login(actor)
---    release_print("玩家",actor,"登录触发")
---end
---```
function login(actor) end

---收到私聊信息触发
---* actor 玩家对象
---* sMsg 说话内容
---* chat 聊天频道
---* target 私聊对象
---@param actor number|string
---@param sMsg string
---@param chat integer
---@param target number|string
---@return boolean "true=接收私信;false=拒接接收私信"
---```lua
---function privatechat(actor,sMsg,chat,target)
---    release_print("玩家对象"..actor,"说话内容"..sMsg,"聊天频道"..chat)
---    return true
---end
---```
function privatechat(actor, sMsg, chat,target) end

---角色穿戴装备前触发
---* actor 玩家对象
---* makeIndex 装备唯一ID
---* where [装备位置](https://engine-doc.996m2.com/web/#/91/51214 "装备位置")
---* idx 物品id
---@param actor number|string
---@param makeIndex string
---@param where integer
---@param idx integer
---@return boolean "true = 允许操作 false = 阻止操作"
---```lua
---function takeonbeforeex(actor,makeIndex,where,idx)
---    release_print("角色穿戴装备前触发")
---    return true
---end
---```
function takeonbeforeex(actor, makeIndex, where, idx) end

---角色脱下装备前触发
---* actor 玩家对象
---* makeIndex 装备唯一ID
---* where [装备位置](https://engine-doc.996m2.com/web/#/91/51214 "装备位置")
---* idx 物品id
---@param actor number|string
---@param makeIndex string
---@param where integer
---@param idx integer
---@return boolean "true = 允许操作 false = 阻止操作"
---```lua
---function takeoffbeforeex(actor,makeIndex,where,idx)
---    release_print("角色脱下装备前触发")
---    return true
---end
---```
function takeoffbeforeex(actor, makeIndex, where, idx) end

---角色穿戴X装备前触发
---* actor 玩家对象
---* makeIndex 物品唯一Id
---* idx 物品id
---@param actor number|string
---@param makeIndex string
---@param idx integer
---@return boolean "true = 允许操作 false = 阻止操作"
---```lua
---function takeonbefore1(actor,makeIndex,idx)
---    release_print("角色穿戴X装备前触发")
---    return true
---end
---```
function takeonbeforeX(actor, makeIndex, idx) end

---角色脱下X装备前触发
---* actor 玩家对象
---* makeIndex 物品唯一ID
---* idx 物品id
---@param actor number|string
---@param makeIndex string
---@param idx integer
---@return boolean "true = 允许操作 false = 阻止操作"
---```lua
---function takeoffbefore1(actor,makeIndex,idx)
---    release_print("角色脱下X装备前触发")
---    return true
---end
---```
function takeoffbeforeX(actor, makeIndex, idx) end

---角色穿戴装备后触发
---* actor 玩家对象
---* makeIndex 装备唯一ID
---* where [装备位置](https://engine-doc.996m2.com/web/#/91/51214 "装备位置")
---* itemName 物品名
---* idx 物品id
---@param actor number|string
---@param makeIndex string
---@param where integer
---@param itemName string
---@param idx integer
---```lua
---function takeonex(actor,makeIndex,where,itemName,idx)
---    release_print("角色穿戴装备后触发")
---end
---```
function takeonex(actor, makeIndex, where, itemName, idx) end

---角色脱下装备后触发
---* actor 玩家对象
---* makeIndex 装备唯一ID
---* where [装备位置](https://engine-doc.996m2.com/web/#/91/51214 "装备位置")
---* itemName 物品名
---* idx 物品id
---@param actor number|string
---@param makeIndex string
---@param where integer
---@param itemName string
---@param idx integer
---```lua
---function takeoffex(actor,makeIndex,where,itemName,idx)
---    release_print("角色脱下装备后触发")
---end
---```
function takeoffex(actor, makeIndex, where, itemName, idx) end

---角色穿戴X装备后触发
---* actor 玩家对象
---* makeIndex 物品唯一ID
---* idx 物品id
---@param actor number|string
---@param makeIndex string
---@param idx integer
---```lua
---function takeon1(actor,makeIndex,idxnij)
---    release_print("角色穿戴X装备后触发")
---end
---```
function takeonX(actor, makeIndex, idx) end

---角色脱下X装备后触发
---* actor 玩家对象
---* makeIndex 物品唯一ID
---* idx 物品id
---@param actor number|string
---@param makeIndex string
---@param idx integer
---```lua
---function takeoff1(actor,makeIndex,idx)
---    release_print("角色脱下X装备后触发")
---end
---```
function takeoffX(actor, makeIndex, idx) end

---人物死亡装备掉落前触发
---* actor 玩家对象
---* where [装备位置](https://engine-doc.996m2.com/web/#/91/51214 "装备位置")
---* itemIndex 装备Index
---@param actor number|string
---@param where integer
---@param itemIndex integer
---@return boolean "true = 允许掉落 false = 阻止掉落"
---```lua
---function checkdropuseitems(actor,where,itemIndex)
---    release_print("人物死亡装备掉落前触发")
---    return true
---end
---```
function checkdropuseitems(actor, where, itemIndex) end

---参照装备投保已投保装备掉落触发
---* actor 玩家对象
---* makeIndex 唯一Id
---@param actor number|string
---@param makeIndex string
---```lua
---function dropuseitemsX(actor,makeIndex)
---    release_print("参照装备投保已投保装备掉落触发")
---end
---```
function dropuseitemsX(actor, makeIndex) end

---角色装备过期触发
---* actor 玩家对象
---* makeIndex 唯一Id<br>过期为称号时该参数为0
---* itemName 物品名字
---* itemid 物品ID
---@param actor number|string
---@param makeIndex string
---@param itemName string
---@param itemid string
---```lua
---function itemexpired(actor,makeIndex,itemName,itemid)
---    release_print("角色装备过期触发")
---end
---```
function itemexpired(actor, makeIndex, itemName, itemid) end

---角色脱下装备进入背包前触发
---* actor 玩家对象
---* makeIndex 装备唯一ID
---* where 装位置
---@param actor number|string
---@param makeIndex string
---@param where integer
---```lua
---function takeoffexchange(actor,makeIndex,where)
---    release_print("角色脱下装备进入背包前触发")
---end
---```
function takeoffexchange(actor, makeIndex, where) end

---装备持久消失触发
---* actor 玩家对象
---* makeIndex 唯一Id
---@param actor number|string
---@param makeIndex string
---```lua
---function itemdamageX(actor,makeIndex)
---    release_print("装备持久消失触发")
---end
---```
function itemdamageX(actor, makeIndex) end

---武器加诅咒前触发
---* actor 玩家对象
---* makeIndex 唯一Id
---@param actor number|string
---@param makeIndex string
---@return boolean "true = 诅咒 false = 阻止诅咒"
---```lua
---function makeweaponunluck(actor,makeIndex)
---    release_print("武器加诅咒前触发")
---    return true
---end
---```
function makeweaponunluck(actor, makeIndex) end

---双击类道具触发
---* actor 玩家对象
---* makeIndex 物品唯一ID
---* itemIdx 物品id
---* nOverLap 数量
---@param actor number|string
---@param makeIndex string
---@param itemIdx integer
---@param nOverLap integer
---@return boolean "true=允许使用 false=禁止使用"
---```tips
---1. X代表道具表第5列(Anicount)
---   2.支持道具表stdmode[2、31、200]类
---   3.[stdmode]为2时可放入快捷栏，为31时正常放入背包31，为200时自解包
---```
---```lua
---function stdmodefunc100(actor,makeIndex,itemIdx,nOverLap)
---    release_print("双击类道具触发")
---    return true
---end
---```
function stdmodefuncX(actor, makeIndex, itemIdx, nOverLap) end

---双击类道具触发2
---* actor 玩家对象
---* Anicount 道具表第5列(Anicount)
---* makeIndex 物品唯一ID
---* itemIdx 物品id
---* nOverLap 数量
---@param actor number|string
---@param Anicount integer
---@param makeIndex string
---@param itemIdx integer
---@param nOverLap integer
---@return boolean "true=允许使用 false=禁止使用"
---```lua
---function stdmodefunc(actor,Anicount,makeIndex,itemIdx,nOverLap)
---    release_print("双击类道具触发")
---    return true
---end
---```
function stdmodefunc(actor, Anicount, makeIndex, itemIdx, nOverLap) end

---双击使用道具前触发
---* actor 玩家对象
---* itemMakeIndex 道具唯一id
---* itemIndex 道具index
---* itemNum 道具数量
---* stdMode 物品表stdMode参数
---@param actor number|string
---@param itemMakeIndex string
---@param itemIndex integer
---@param itemNum integer
---@param stdMode integer
---@return boolean "true=允许 false=不允许"
---```lua
---function beforeeatitem(actor,itemMakeIndex,itemIndex,itemNum,stdMode)
---    release_print("双击使用道具前触发")
---    return true
---end
---```
function beforeeatitem(actor, itemMakeIndex, itemIndex, itemNum, stdMode) end

---货币改变触发
---* actor 玩家对象
---@param actor number|string
---```lua
---function moneychange1(actor)
---    release_print("货币改变触发")
---end
---```
function moneychangeX(actor) end

---物品进包前触发
---* actor 玩家对象
---* itemMakeIndex 物品唯一index
---* itemIndex 物品index
---@param actor number|string
---@param itemMakeIndex string
---@param itemIndex integer
---```lua
---function addbagbefore(actor,itemMakeIndex,itemIndex)
---    release_print("物品进包前触发")
---end
---```
function addbagbefore(actor, itemMakeIndex, itemIndex) end

---物品进包触发
---* actor 玩家对象
---* makeIndex 物品唯一ID
---* index 物品ID
---@param actor number|string
---@param makeIndex string
---@param index string
---```tips
---堆叠物品进包不建议操作其唯一id，因其进包后的物品对象仅首个会保留，第二个起皆会被销毁，操作其唯一id会出现错误
---```
---```lua
---function addbag(actor,makeIndex,index)
---    release_print("物品进包触发")
---    return true
---end
---```
function addbag(actor, makeIndex, index) end

---角色扔掉任意物品前触发
---* actor 玩家对象
---* makeIndex 物品唯一ID
---* itemName 掉落物品名
---* model 行为id<br>0=扔掉触发<br>1=人物掉落触发
---@param actor number|string
---@param makeIndex string
---@param itemName string
---@param model integer
---@return boolean "true=允许丢弃 false=不允许丢弃"
---```lua
---function dropitemfrontex(actor,makeIndex,itemName,model)
---    release_print("角色扔掉任意物品前触发")
---    return true
---end
---```
function dropitemfrontex(actor, makeIndex, itemName, model) end

---扔掉任意物品后触发
---* actor 玩家对象
---* makeIndex 物品唯一ID
---* itemName 物品名称
---@param actor number|string
---@param makeIndex string
---@param itemName string
---```lua
---function dropitemex(actor,makeIndex,itemName)
---    release_print("扔掉任意物品后触发")
---end
---```
function dropitemex(actor, makeIndex, itemName) end

---暴击触发
---* actor 玩家对象
---* attack 受击对象
---* damage 暴击后伤害值
---* magicId 技能id
---@param actor number|string
---@param attack number|string
---@param damage integer
---@param magicId integer
---@return integer "修改后的伤害"
---```lua
---function crittrigger(actor,attack,damage,magicId)
---    release_print("暴击触发")
---end
---```
function crittrigger(actor, attack, damage, magicId) end

---伤害反弹触发
---* actor 玩家对象
---* hitter 伤害来源对象
---* damage 伤害值
---* magicId 技能id
---@param actor number|string
---@param hitter number|string
---@param damage integer
---@param magicId integer
---@return integer "伤害值"
---```lua
---function reboundhurt(actor,hitter,damage,magicId)
---    release_print("伤害反弹触发")
---end
---```
function reboundhurt(actor, hitter, damage, magicId) end

---人物攻击前触发
---* actor 玩家对象
---* target 受击对象
---* hitter 攻击对象
---* magicId 技能id
---* damage 伤害
---* model <br>当前攻击模式<br>0=正常<br>1=暴击<br>2=格挡<br>3=切割
---@param actor number|string
---@param target number|string
---@param hitter number|string
---@param magicId integer
---@param damage integer
---@param model integer
---@return integer "修改后的伤害"
---```lua
---function attackdamage(actor,target,hitter,magicId,damage,model)
---    release_print("人物攻击前触发")
---end
---```
function attackdamage(actor, target, hitter, magicId, damage, model) end

---玩家物理攻击后
---* actor 玩家对象
---* target 受击对象
---* hitter 攻击对象
---* magicId 技能id
---@param actor number|string
---@param target number|string
---@param hitter number|string
---@param magicId integer
---```lua
---function attack(actor,target,hitter,magicId)
---    release_print("玩家物理攻击后")
---end
---```
function attack(actor, target, hitter, magicId) end

---玩家魔法攻击后
---* actor 玩家对象
---* target 受击对象
---* hitter 攻击对象
---* magicId 技能id
---@param actor number|string
---@param target number|string
---@param hitter number|string
---@param magicId integer
---```lua
---function magicattack(actor,target,hitter,magicId)
---    release_print("玩家魔法攻击后")
---end
---```
function magicattack(actor, target, hitter, magicId) end

---玩家受击前
---* actor 玩家对象
---* hitter 攻击对象
---* target 受击对象
---* magicId 技能id
---* damage 伤害
---@param actor number|string
---@param hitter number|string
---@param target number|string
---@param magicId integer
---@param damage integer
---@return integer "修改后的伤害"
---```lua
---function struckdamage(actor,hitter,target,magicId,damage)
---    release_print("玩家受击前")
---end
---```
function struckdamage(actor, hitter, target, magicId, damage) end

---玩家物理受击后
---* actor 玩家对象
---* hitter 攻击对象
---* target 受击对象
---* magicId 技能id
---@param actor number|string
---@param hitter number|string
---@param target number|string
---@param magicId integer
---```lua
---function struck(actor,target,hitter,magicId)
---    release_print("玩家物理受击后")
---end
---```
function struck(actor, target, hitter, magicId) end

---玩家魔法受击后
---* actor 玩家对象
---* hitter 攻击对象
---* target 受击对象
---* magicId 技能id
---@param actor number|string
---@param hitter number|string
---@param target number|string
---@param magicId integer
---```lua
---function magicstruck(actor,target,hitter,magicId)
---    release_print("玩家魔法受击后")
---end
---```
function magicstruck(actor, target, hitter, magicId) end

---自身使用技能触发
---* actor 玩家对象
---@param actor number|string
---```lua
---function magselffunc104(actor)
---    release_print("自身使用技能触发")
---end
---```
function magselffuncX(actor) end

---对目标人物使用技能时自身触发
---* actor 玩家对象
---* roleObject 受击玩家对象
---@param actor number|string
---@param roleObject number|string
---```lua
---function magtagfunc104(actor，roleObject)
---    release_print("对目标人物使用技能时自身触发")
---end
---```
function magtagfuncX(actor, roleObject) end

---对目标怪物使用技能时自身触发
---* actor 玩家对象
---* monObject 受击对象
---@param actor number|string
---@param monObject number|string
---```lua
---function magmonfunc104(actor，monObject)
---    release_print("对目标怪物使用技能时自身触发")
---end
---```
function magmonfuncX(actor, monObject) end

---玩家自身使用任意技能前触发
---* actor 玩家对象
---* magicId 技能id
---* magicName 技能名字
---* target 受击对象
---* x 受击对象x坐标
---* y 受击对象y坐标
---@param actor number|string
---@param magicId integer
---@param magicName string
---@param target number|string
---@param x integer
---@param y integer
---@return boolean "true/nil=允许施法 false=阻止施法"
---```lua
---function beginmagic(actor,magicId,magicName,target,x,y)
---    release_print("玩家自身使用任意技能前触发")
---end
---```
function beginmagic(actor, magicId, magicName, target, x, y) end

---玩家推动技能施法前触发
---* actor 玩家对象
---* target 受击对象
---* hitter 攻击对象
---* magicId 技能id
---@param actor number|string
---@param target number|string
---@param hitter number|string
---@param magicId integer
---@return integer "0=不执行推动 1=执行推动 2=根据M2上的推动条件判断是否执行"
---```lua
---function canpush(actor,target,hitter,magicId)
---    release_print("玩家推动技能施法前触发")
---end
---```
function canpush(actor, target, hitter, magicId) end

---自定义技能处理伤害前触发
---* hitter 施法对象
---* target 受击对象
---@param hitter number|string
---@param target number|string
---@return boolean "返回值 true=正常施法 false=阻止施法(将不走后续伤害触发) 可用于群攻类技能,阻止部分受击对象的伤害流程"
---```lua
---function custommagicdamageX(hitter,target)
---    release_print("自定义技能处理伤害前触发")
---end
---```
function custommagicdamageX(hitter, target) end

---杀死人物触发
---* actor 凶手或凶手主人
---* killed 被杀玩家(死者)
---@param actor number|string
---@param killed number|string
---```lua
---function killplay(actor,killed)
---    release_print("杀死人物触发")
---end
---```
function killplay(actor, killed) end

---玩家被杀
---* actor 被杀玩家
---* hitter 攻击者
---@param actor number|string
---@param hitter number|string
---```lua
---function playdie(actor,hitter)
---    release_print("玩家被杀")
---end
---```
function playdie(actor, hitter) end

---杀死怪物或人物，爆物品触发
---* actor 玩家对象
---* dropRole 掉落者对象
---@param actor number|string
---@param dropRole number|string
---```lua
---function scatterbagitems(actor,dropRole)
---    release_print("杀死怪物或人物，爆物品触发")
---end
---```
function scatterbagitems(actor, dropRole) end

---充值触发
---* actor 玩家对象
---* gold 充值金额
---* productId 产品ID（保留,苹果商城用）
---* moneyId 货币ID
---* isReal =1真实充值<br>=0扶持充值
---* orderTime 订单时间(时间戳)
---* rechargeAmount 实际到账货币金额
---* giftAmount 额外赠送金额<br>运营后台配置
---* refundAmount 开启积分金额<br>运营后台配置
---@param actor number|string
---@param gold integer
---@param productId integer
---@param moneyId integer
---@param isReal integer
---@param orderTime integer
---@param rechargeAmount integer
---@param giftAmount integer
---@param refundAmount integer
---```lua
---function recharge(actor,gold,productId,moneyId,isReal,orderTime,rechargeAmount,giftAmount,refundAmount)
---    release_print("充值触发")
---end
---```
function recharge(actor, gold, productId, moneyId, isReal, orderTime, rechargeAmount, giftAmount, refundAmount) end

---NPC点击触发
---* actor 玩家对象
---* npcId NPC索引<br>NPC配置表中的ID
---* script NPC文本路径
---@param actor number|string
---@param npcId integer
---@param script string
---@return boolean "false允许继续执行Txt脚本，true不允许"
---```lua
---function clicknpc(actor,npcId,sScript)
---    release_print("NPC点击触发")
---end
---```
function clicknpc(actor, npcId, script) end

---玩家跳转地图触发
---* actor 玩家对象
---* mapId 进入的地图id
---* x 进入地图x
---* y 进入地图y
---* mapId2 离开的地图id
---@param actor number|string
---@param mapId string
---@param x integer
---@param y integer
---@param mapId2 string
---```lua
---function entermap(actor,mapId,x,y)
---    release_print("玩家跳转地图触发")
---end
---```
function entermap(actor, mapId, x, y, mapId2) end

---玩家离开地图触发
---* actor 玩家对象
---* mapId 离开地图id
---* x 离开地图x
---* y 离开地图y
---* mapId2 进入的地图id
---@param actor number|string
---@param mapId string
---@param x integer
---@param y integer
---@param mapId2 string
---```lua
---function leavemap(actor,mapId,x,y)
---    release_print("玩家离开地图触发")
---end
---```
function leavemap(actor, mapId, x, y, mapId2) end

---镜像地图销毁前触发
---* sysobj 系统对象
---* mapId 地图id
---@param sysobj number|string
---@param mapId string
---```lua
---function mirrormapend(sysobj,mapId)
---    release_print("镜像地图销毁前触发")
---end
---```
function mirrormapend(sysobj, mapId) end

---进入连接点(跳转点)前触发
---* actor 玩家对象
---* mapid 地图id
---* x 地图x坐标
---* y 地图y坐标
---@param actor number|string
---@param mapid string
---@param x integer
---@param y integer
---@return boolean "true=允许 false=不允许"
---```lua
---function beforeroute(actor,mapid,x,y)
---    release_print("进入连接点(跳转点)前触发")
---end
---```
function beforeroute(actor, mapid, x, y) end

---捡取触发
---* actor 玩家对象
---* itemMakeIndex 物品唯一id
---* itemIndex 物品id
---@param actor number|string
---@param itemMakeIndex string
---@param itemIndex integer
---```lua
---function pickupitemex(actor,itemMakeIndex,itemIndex)
---    release_print("捡取触发")
---end
---```
function pickupitemex(actor, itemMakeIndex, itemIndex) end

---骑马跑步触发
---* actor 玩家对象
---@param actor number|string
---```lua
---function horserun(actor)
---    release_print("骑马跑步触发")
---end
---```
function horserun(actor) end

---跑步触发
---* actor 玩家对象
---@param actor number|string
---```lua
---function run(actor)
---    release_print("跑步触发")
---end
---```
function run(actor) end

---走路触发
---* actor 玩家对象
---@param actor number|string
---```lua
---function walk(actor)
---    release_print("走路触发")
---end
---```
function walk(actor) end

---开始挂机触发
---* actor 玩家对象
---@param actor number|string
---```lua
---function startautoplaygame(actor)
---    release_print("开始挂机触发")
---end
---```
function startautoplaygame(actor) end

---停止挂机触发
---* actor 玩家对象
---@param actor number|string
---```lua
---function stopautoplaygame(actor)
---    release_print("停止挂机触发")
---end
---```
function stopautoplaygame(actor) end

---属性变化时触发
---* actor 玩家对象
---@param actor number|string
---```lua
---function sendability(actor)
---    release_print("属性变化时触发")
---end
---```
function sendability(actor) end

---角色获取经验前触发
---* actor 玩家对象
---* exp 获取经验值
---@param actor number|string
---@param exp integer
---@return integer "修改后的经验值"
---```lua
---function getexp(actor)
---    release_print("角色获取经验前触发")
---end
---```
function getexp(actor, exp) end

---拾取前触发
---* actor 玩家对象
---* makeIndex 物品唯一ID
---@param actor number|string
---@param makeIndex string
---@return boolean "true = 允许拾取 false = 阻止拾取"
---```lua
---function pickupitemfrontex(actor,makeIndex)
---    release_print("拾取前触发")
---end
---```
function pickupitemfrontex(actor, makeIndex) end

---点击背包锁头触发
---* actor 玩家对象
---@param actor number|string
---```lua
---function closedbagitemclick(actor)
---    release_print("点击背包锁头触发")
---end
---```
function closedbagitemclick(actor) end

---套装激活触发
---* actor 玩家对象
---* suitIndex 套装id
---@param actor number|string
---@param suitIndex table
---```lua
---function groupitemonX(actor,suitIndex)
---    release_print("套装激活触发")
---end
---```
function groupitemonX(actor, suitIndex) end

---穿套装触发
---* actor 玩家对象
---* suiId 套装id
---@param actor number|string
---@param suiId integer
---```lua
---function groupitemonex(actor,suiId)
---    release_print("穿套装触发")
---end
---```
function groupitemonex(actor, suiId) end

---脱套装触发
---* actor 玩家对象
---* suiId 套装id
---@param actor number|string
---@param suiId integer
---```lua
---function groupitemoffex(actor,suiId)
---    release_print("脱套装触发")
---end
---```
function groupitemoffex(actor, suiId) end

---交易前触发
---* acceptActor 接收交易请求对象
---* launchActor 发起交易请求对象
---@param acceptActor number|string
---@param launchActor number|string
---```lua
---function dealbefore(acceptActor,launchActor)
---    release_print("交易前触发")
---end
---```
function dealbefore(acceptActor, launchActor) end

---交易后触发
---* actor 交易对象A
---* buyer 交易对象B
---* itemjson 交易物品json
---@param actor number|string
---@param buyer number|string
---@param itemjson string
---```tips
---堆叠物品进包不建议操作其唯一id，因其进包后的物品对象仅首个会保留，第二个起皆会被销毁，操作其唯一id会出现错误
---```
---```lua
---function dealend(actor,buyer,itemjson)
---    release_print("交易后触发")
---end
---```
function dealend(actor, buyer, itemjson) end

---摆摊触发
---* actor 玩家对象
---@param actor number|string
---```tips
---注意:阻止摆摊需使用接口ForbidMyShop
---```
---```lua
---function startmyshop(actor)
---    if getbaseinfo(actor,6) < 250 then
---        say(actor,"角色小于50级不允许摆摊")
---        ForbidMyShop(actor)
---        return
---    end
---end
---```
function startmyshop(actor) end

---摆摊成功触发
---* actor 玩家对象
---@param actor number|string
---```lua
---function startmyshopok(actor)
---    release_print("摆摊成功触发")
---end
---```
function startmyshopok(actor) end

---摆摊结束触发
---* actor 玩家对象
---@param actor number|string
---```lua
---function stopmyshop(actor)
---    release_print("摆摊结束触发")
---end
---```
function stopmyshop(actor) end

---摆摊购买前触发
---* actor 买家对象
---* seller 卖家名字
---* moneyType 购买的货币ID
---* moneyNum 货币数量
---* itemIndex 道具idx
---* makeindex 唯一id
---* sellactor 卖家对象
---@param actor number|string
---@param seller string
---@param moneyType integer
---@param moneyNum integer
---@param itemIndex integer
---@param makeindex string
---@param sellactor number|string
---```lua
---function buyusershopitem(actor,seller,moneyType,moneyNum,itemIndex,makeindex,sellactor)
---    release_print("摆摊购买前触发")
---end
---```
function buyusershopitem(actor, seller, moneyType, moneyNum, itemIndex, makeindex,sellactor) end

---摆摊卖出物品触发
---* actor 玩家对象
---* itemname 物品名称
---* overlap 叠加数量</br>`非叠加物品=1`
---* moneytype 货币类型
---* moneyNum 货币数量
---@param actor number|string
---@param itemname string
---@param overlap integer
---@param moneytype integer
---@param moneyNum integer
---```lua
---function sellstallitem(actor,itemname,overlap,moneytype,moneyNum)
---    release_print("摆摊购买触发")
---end
---```
function sellstallitem(actor, itemname, overlap, moneytype, moneyNum) end

---摆摊购买物品触发
---* actor 买家对象
---* itemname 物品名称
---* overlap 叠加数量</br>`非叠加物品=1`
---* moneytype 货币类型
---* moneyNum 货币数量
---* makeindex 物品唯一id
---* sellactor 卖家对象
---@param actor number|string
---@param itemname string
---@param overlap integer
---@param moneytype integer
---@param moneyNum integer
---@param makeindex string
---@param sellactor number|string
---```lua
---function buystallitem(actor,itemname,overlap,moneytype,moneyNum,makeindex,sellactor)
---    release_print("摆摊购买触发")
---end
---```
function buystallitem(actor, itemname, overlap, moneytype, moneyNum, makeindex,sellactor) end

---商城购买后触发
---* actor 玩家对象
---* makeIndexList 物品唯一ID列表(json)
---* itemName 物品名称
---* itemNum 物品数量
---* money_list 货币消耗(json)
---@param actor number|string
---@param makeIndexList string
---@param itemName string
---@param itemNum integer
---@param money_list string
---```lua
---function buyshopitem(actor,makeIndexList,itemName,itemNum,money_list)
---    release_print("商城购买后触发")
---end
---```
function buyshopitem(actor, makeIndexList, itemName, itemNum, money_list) end

---人物勾选外显时装生效触发
---* actor 玩家对象
---@param actor number|string
---```lua
---function showfashion(actor)
---    release_print("人物勾选外显时装生效触发")
---end
---```
function showfashion(actor) end

---人物取消外显时装生效触发
---* actor 玩家对象
---@param actor number|string
---```lua
---function notshowfashion(actor)
---    release_print("人物取消外显时装生效触发")
---end
---```
function notshowfashion(actor) end

---加好友前触发
---* actor 玩家对象
---@param actor number|string
---```lua
---function addfriendrequest(actor)
---    release_print("加好友前触发")
---end
---```
function addfriendrequest(actor) end

---角色pk值变化触发
---* actor 玩家对象
---* pkpoint pk值
---@param actor number|string
---@param pkpoint integer
---```lua
---function pkpointchanged(actor,pkpoint)
---    release_print("角色pk值变化触发")
---end
---```
function pkpointchanged(actor, pkpoint) end

---人物死亡之前
---* actor 玩家对象
---* hitter 击杀者对象
---* isplayer 0=击杀者非玩家<br>1=击杀者是玩家
---@param actor number|string
---@param hitter number|string
---@param isplayer integer
---```lua
---function nextdie(actor,hitter,isplayer)
---    release_print("人物死亡之前")
---end
---```
function nextdie(actor, hitter, isplayer) end

---查看别人装备触发
---* actor 玩家对象
---* actorInsId 被查看的玩家实例id
---* name 被查看的玩家名
---@param actor number|string
---@param actorInsId integer
---@param name string
---```lua
---function lookhuminfo(actor,name)
---    release_print("查看别人装备触发")
---end
---```
function lookhuminfo(actor, actorInsId, name) end

---阅读邮件触发
---* actor 玩家对象
---* mailID 邮件id
---* mailTitle 邮件标题
---@param actor number|string
---@param mailID integer
---@param mailTitle string
---```lua
---function readmail(actor,mailID,mailTitle)
---    release_print("阅读邮件触发")
---end
---```
function readmail(actor, mailID, mailTitle) end

---邮件提取触发
---* actor 玩家对象
---* mainID 邮件id
---* mailTitle 邮件标题
---* itemJson 提取物品的json
---* diyid 邮件自定义id(sendmail里的自定义邮件ID)
---@param actor number|string
---@param mainID integer
---@param mailTitle string
---@param itemJson string
---@param diyid integer
---```lua
---function getmailitem(actor,mainI,mailTitle,itemJson,diyid)
---    release_print("邮件提取触发")
---end
---```
function getmailitem(actor, mainID, mailTitle, itemJson,diyid) end

---传送戒指传送前触发
---* actor 玩家对象
---* X X坐标
---* Y Y坐标
---@param actor number|string
---@param X integer
---@param Y integer
---@return boolean "true=允许传送; false=阻止传送"
---```lua
---function beginteleport(actor,X,Y)
---    release_print("传送戒指传送前触发")
---end
---```
function beginteleport(actor, X, Y) end

---绑定背包满触发
---* actor 玩家对象
---* bindingType 绑定类型(1：背包满通知)
---* isOpen 是否开启(0：关闭，1：开启)
---* callbackFunc 回调函数(QF)
---@param actor number|string
---@param bindingType integer
---@param isOpen integer
---@param callbackFunc string
---```lua
---bindevent(actor,1,1,"@on_bag_full_lua")
---
---
---
-----QFunction-0.lua
---function on_bag_full_lua(actor,...)
---end
---```
function bindevent(actor, bindingType, isOpen, callbackFunc) end

---回收触发
---* actor 玩家对象
---@param actor number|string
---```lua
---function recycling(actor, ...)
---    release_print("======================")
---    release_print("recycling", getbaseinfo(actor, 1), ...)
---    release_print("回收输出常量", getconst(actor, ""))
---    release_print("回收总数常量", getconst(actor, ""))
---    release_print("回收获得总物品", getconst(actor, ""))
---end
---```
function recycling(actor) end

---寻路开启触发
---* actor 玩家对象
---@param actor number|string
---```lua
---function findpathbegin(actor)
---    release_print("findpathstop",getbaseinfo(actor,1),getconst(actor, ""),getconst(actor, ""))
---end
---```
function findpathbegin(actor) end

---寻路中断触发
---* actor 玩家对象
---@param actor number|string
---```lua
---function findpathstop(actor)
---    release_print("findpathstop",getbaseinfo(actor,1))
---end
---```
function findpathstop(actor) end

---寻路结束触发
---* actor 玩家对象
---@param actor number|string
---```lua
---function findpathend(actor)
---    release_print("findpathend",getbaseinfo(actor,1))
---end
---```
function findpathend(actor) end

---玩家捡取物品前触发(X=物品idx)
---* actor 玩家对象
---* makeIndex 物品唯一ID
---@param actor number|string
---@param makeIndex string
---@return boolean "true = 允许拾取 false = 阻止拾取"
---```lua
---function pickupitemfrontX(actor,makeIndex)
---    release_print("玩家捡取物品前触发")
---end
---```
function pickupitemfrontX(actor, makeIndex) end

---装备从背包掉落前触发
---* actor actor
---* makeIndex 物品唯一ID
---@param actor number|string
---@param makeIndex string
---@return boolean "true = 允许掉落 false = 阻止掉落"
---```lua
---function itemdropfrombagbefore(actor, makeIndex)
---    release_print("装备从背包掉落前触发")
---    return true
---end
---```
function itemdropfrombagbefore(actor, makeIndex) end

---称号改变触发
---* actor 玩家对象
---* titleIndex 称号索引
---@param actor number|string
---@param titleIndex integer
---```tips
---玩家佩戴某个称号时触发
---```
---```lua
---function titlechangedex(actor,titleIndex)
---    release_print("称号改变触发")
---end
---```
function titlechangedex(actor, titleIndex) end

---称号卸下触发
---* actor 玩家对象
---* titleIndex 称号索引
---@param actor number|string
---@param titleIndex integer
---```lua
---function untitledex(actor,titleIndex)
---    release_print("称号取消触发")
---end
---```
function untitledex(actor, titleIndex) end

---人物复活时
---* actor 玩家对象
---@param actor number|string
---```lua
---function revival(actor)
---    release_print("人物复活时触发")
---end
---```
function revival(actor) end

---人物改变称号X时触发
---* actor 玩家对象
---@param actor number|string
---```lua
---function titlechanged_X(actor)
---    release_print("人物改变称号X时触发")
---end
---```
function titlechanged_X(actor) end

---人物卸下称号X时触发
---* actor 玩家对象
---@param actor number|string
---```lua
---function titlechanged_X(actor)
---    release_print("人物取消称号X时触发")
---end
---```
function titlechanged_X(actor) end

---杀怪获取经验触发
---* actor 玩家对象
---* killer 击杀者对象
---* mon 怪物对象
---* exp 经验数
---@param actor number|string
---@param killer number|string
---@param mon number|string
---@param exp integer
---```lua
---function getexpbykillmon(actor,killer,mon,exp)
---    release_print("杀怪获取经验触发")
---end
---```
function getexpbykillmon(actor, killer, mon, exp) end

---玩家跨天登录触发
---* actor 玩家对象
---@param actor number|string
---```lua
---function resetday(actor)
---    release_print("玩家",actor,"跨天登录触发")
---end
---```
function resetday(actor) end

---前端请求打开ui界面触发
---* actor actor
---* id [界面id](https://engine-doc.996m2.com/web/#/88/36493 "界面id")
---@param actor number|string
---@param id number
---@return boolean "能否打开"
---```tips
---官方的交易行拍卖行等界面打开触发，不支持自定义ui界面
---```
---```lua
---function clientbeforeopenpanel(actor,id)
---    release_print("玩家",actor,"请求打开界面触发")
---    return false
---end
---```
function clientbeforeopenpanel(actor, id) end

---扔掉丢弃金币前触发
---* actor actor
---* goldNum 金币数量
---* result 是否允许丢弃</br>true=允许丢弃</br>false=不允许丢弃
---@param actor number|string
---@param goldNum number
---@param result boolean
---@return boolean "true=允许丢弃,false=不允许丢弃"
---```lua
---function dropgoldfront(actor,goldNum)
---    release_print("玩家",actor,"丢弃金币前触发")
---end
---```
function dropgoldfront(actor, goldNum, result) end

---人物复活前触发(复活类技能)
---* actor 技能释放对象
---* hiter 复活对象
---@param actor number|string
---@param hiter number|string
---@return boolean "true = 允许复活; false = 阻止复活  ------------ - 复活类技能参考自定义技能表中2004技能 ![](https://engine-doc.996m2.com/server/index.php?s=/api/attachment/visitFile&sign=70d559ec7b9356214c01fcfa997acaf7)"
---```lua
---function revivalex(actor,hiter)
---    return true
---end
---```
function revivalex(actor, hiter) end

---忽视防御触发
---* actor 玩家对象
---* target 受击对象
---* damage 伤害
---* magicId 技能id
---@param actor number|string
---@param target number|string
---@param damage integer
---@param magicId integer
---@return integer "修改后的伤害"
---```lua
---function ignoredef(actor,target,damage,magicId)
---    release_print("忽视防御触发")
---    return damage
---end
---```
function ignoredef(actor, target, damage, magicId) end

---击退前触发(自定义推动技能）
---* actor 玩家对象
---* target 受击对象
---* skillid 技能id
---* SysCanPush 引擎判断流程是否可以击退
---@param actor number|string
---@param target number|string
---@param skillid integer
---@param SysCanPush boolean
---@return boolean "true=可以击退,false=不可以击退"
---```lua
---function on_push_pre(actor, target, skillid, SysCanPush)
---    return SysCanPush
---end
---```
function on_push_pre(actor, target, skillid, SysCanPush) end

-- [Source: 触发^系统.lua]

---监听消息
---* actor 玩家对象
---* msgId 消息ID
---* param1 参数1
---* param2 参数2
---* param3 参数3
---* sMsg 消息体
---@param actor number|string
---@param msgId integer
---@param param1 integer
---@param param2 integer
---@param param3 integer
---@param sMsg string
---```lua
---function handlerequest(self, msgid, n1, n2, n3, sMsg)
---    if (msgid == 10) then
---        release_print("收到10号消息")
---    else
---        sendluamsg(self, msgid, n1, n2, n3, sMsg)
---    end
---end
---```
function handlerequest(actor, msgId, param1, param2, param3, sMsg) end

---服务端启动触发
---```lua
---function startup()
---    release_print("服务端启动触发")
---end
---```
function startup() end

---聊天内容聊天触发
---* self 玩家对象
---* sMsg 说话内容
---* chat <br>聊天频道<br>0:综合<br>1:私聊<br>2:附近<br>3:喊话<br>4:组队<br>5:行会<br>6:结盟频道<br>7:世界<br>8:国家消息<br>9:系统
---* msgType <br>消息类型<br>0:普通消息<br>1:坐标<br>2:装备
---@param self number|string
---@param sMsg string
---@param chat integer
---@param msgType integer
---@return boolean "是否终止说话"
---```lua
---function triggerchat(self, sMsg, chat,msgType)
---    release_print(self, "内容"..sMsg,"频道："..chat,"类型:"..msgType)
---    return true
---end
---```
function triggerchat(self, sMsg, chat, msgType) end

---小退触发
---* actor 玩家对象
---@param actor number|string
---```lua
---function playreconnection(actor)
---    release_print("小退触发")
---end
---```
function playreconnection(actor) end

---大退与关闭客户端触发
---* actor 玩家对象
---@param actor number|string
---```lua
---function playoffline(actor)
---    release_print("大退与关闭客户端触发")
---end
---```
function playoffline(actor) end

---攻城开始时触发
---```lua
---function castlewarstart()
---    release_print("攻城开始时触发")
---end
---```
function castlewarstart() end

---攻城结束时触发
---```lua
---function castlewarend()
---    release_print("攻城结束时触发")
---end
---```
function castlewarend() end

---占领沙巴克触发
---```lua
---function getcastle0()
---    release_print("占领沙巴克触发")
---end
---```
function getcastle0() end

---公众号获取KEY成功触发
---* actor 玩家对象
---* key 公众号key
---@param actor number|string
---@param key string
---```lua
---function bindwechat(actor,key)
---    release_print("公众号获取KEY成功触发")
---end
---```
function bindwechat(actor, key) end

---公众号成功验证触发
---* actor 玩家对象
---* key 微信key
---* inputkey 输入的微信key
---* name 微信名称
---* openid 微信id
---@param actor number|string
---@param key string
---@param inputkey string
---@param name string
---@param openid string
---```lua
---function bindrewechat(actor, key, name, id,param1)
---    param1 = param1 or "param1"
---    local cc = string.format('{"Msg":"<a href=\'openwin#31000\'><font color=\'#FF33FF\'>[bindwechat key:%s name:%s id:%s,param1:%s,param2:%s]</font></a>","Type":12}', key, name, id, param1)
---    sendmsg(actor,1, cc)
---end
---```
function bindrewechat(actor, key, inputkey, name, openid) end

---收到请求离线玩家变量时
---* SysID 系统id，忽略即可
---* UserID 玩家唯一id
---* UserName 玩家名称
---* varName 变量名
---* varValue 变量值
---@param SysID number|string
---@param UserID string
---@param UserName string
---@param varName string
---@param varValue integer/string
---```lua
---local varname1 = "testnameint1"
---local varname2 = "testnamestr1"
---
---function triggerchat(actor, sMsg, chat,msgType)
---    -- SetInt(0,actor,varname1,0)
---    -- SetStr(0,actor,varname2,0)
---    -- release_print(GetInt(0,actor,varname1))
---    -- release_print(GetStr(0,actor,varname2),actor)
---
---    local UserID = "944892806120"
---    local a = OffLineVar(UserID,varname1)
---    local b = OffLineVar(UserID,varname2)
---    release_print(tostring(a),tostring(b))
---    return true
---end
---
---function on_offline_var(SysID,UserID,UserName,varName,varValue)
---    release_print("1111")
---    release_print("UserID",UserID)
---    release_print("UserName",UserName)
---    release_print("varName",varName)
---    release_print("varValue",varValue)
---    release_print("2222")
---end
---```
function on_offline_var(SysID, UserID, UserName, varName, varValue) end

---QFunction-0重载前触发
---```lua
---function qfloadbegin()
---    release_print("QFunction-0重载前触发")
---end
---```
function qfloadbegin() end

---QFunction-0重载后触发
---```lua
---function qfloadend()
---    release_print("QFunction-0重载后触发")
---end
---```
function qfloadend() end

-- [Source: 触发^经络.lua]

---玩家穴位点击触发
---* actor 玩家对象
---@param actor number|string
---```tips
---pulseX-X(第一个X为经络(0-4))-(第二个X为穴位(1-5))
---```
---```lua
---local function pulse(actor,param1,param2,...)
---release_print("穴位点击触发",getbaseinfo(actor,1),param1,param2,...)
---end
---for i = 0, 4 do
---    for j = 1, 5 do
---        _G[string.format("pulse%d-%d",i,j)] = function (actor,...)
---        pulse(actor,i,j,...)
---    end
---end
---end
---```
function pulse(actor) end

---英雄穴位点击触发
---* actor 玩家对象
---@param actor number|string
---```tips
---heropulseX-X(第一个X为经络(0-4))-(第二个X为穴位(1-5))
---```
---```lua
---local function heropulse(actor,param1,param2,...)
---release_print("穴位点击触发",getbaseinfo(actor,1),param1,param2,...)
---end
---for i = 0, 4 do
---    for j = 1, 5 do
---        _G[string.format("heropulse%d-%d",i,j)] = function (actor,...)
---        heropulse(actor,i,j,...)
---    end
---end
---end
---```
function heropulse(actor) end

---玩家修炼经络触发
---* actor 玩家对象
---@param actor number|string
---```lua
---function pulselvupX(actor)
---    release_print("玩家修炼经络触发")
---end
---```
function pulselvupX(actor) end

---英雄修炼经络触发
---* actor 玩家对象
---@param actor number|string
---```lua
---function heropulselvupX(actor)
---    release_print("英雄修炼经络触发")
---end
---```
function heropulselvupX(actor) end

-- [Source: 触发^英雄-宠物.lua]

---英雄穿戴装备触发
---* actor 玩家对象
---* hero 英雄对象
---* makeIndex 装备唯一ID
---* where [装备位置](https://engine-doc.996m2.com/web/#/91/51214 "装备位置")
---* itemName 物品名
---* idx 物品id
---@param actor number|string
---@param hero number|string
---@param makeIndex string
---@param where integer
---@param itemName string
---@param idx integer
---```lua
---function herotakeonex(actor,hero,makeIndex,where,itemName,idx)
---    release_print("英雄穿戴装备触发")
---end
---```
function herotakeonex(actor, hero, makeIndex, where, itemName, idx) end

---英雄脱下装备触发
---* actor 玩家对象
---* hero 英雄对象
---* makeIndex 装备唯一ID
---* where [装备位置](https://engine-doc.996m2.com/web/#/91/51214 "装备位置")
---* itemName 物品名
---* idx 物品id
---@param actor number|string
---@param hero number|string
---@param makeIndex string
---@param where integer
---@param itemName string
---@param idx integer
---```lua
---function herotakeoffex(actor,hero,makeIndex,where,itemName,idx)
---    release_print("英雄脱下装备触发")
---end
---```
function herotakeoffex(actor, hero, makeIndex, where, itemName, idx) end

---英雄装备过期触发
---* actor 玩家对象
---* hero 英雄对象
---* makeIndex 唯一Id
---* itemName 物品名字
---@param actor number|string
---@param hero number|string
---@param makeIndex string
---@param itemName string
---```lua
---function heroitemexpired(actor,hero,makeIndex,itemName)
---    release_print("英雄装备过期触发")
---end
---```
function heroitemexpired(actor, hero, makeIndex, itemName) end

---英雄脱下装备进入背包前触发
---* actor 玩家对象
---* hero 英雄对象
---* makeIndex 物品唯一ID
---@param actor number|string
---@param hero number|string
---@param makeIndex string
---```lua
---function herotakeoffexchange(actor,hero,makeIndex)
---    release_print("英雄脱下装备进入背包前触发")
---end
---```
function herotakeoffexchange(actor, hero, makeIndex) end

---添加英雄背包触发
---* actor 玩家对象
---* hero 英雄对象
---* makeIndex 物品唯一Id
---@param actor number|string
---@param hero number|string
---@param makeIndex string
---```lua
---function addherobag(actor,hero,makeIndex)
---    release_print("添加英雄背包触发")
---end
---```
function addherobag(actor, hero, makeIndex) end

---英雄扔掉X物品前触发
---* actor 玩家对象
---* hero 英雄对象
---* makeIndex 物品唯一ID
---@param actor number|string
---@param hero number|string
---@param makeIndex string
---```lua
---function herodropitemfrontX(actor,hero,makeIndex)
---    release_print("英雄扔掉物品前触发")
---end
---```
function herodropitemfrontX(actor, hero, makeIndex) end

---英雄扔掉X物品后触发
---* actor 玩家对象
---* hero 英雄对象
---* makeIndex 物品唯一ID
---@param actor number|string
---@param hero number|string
---@param makeIndex string
---```lua
---function herodropitemX(actor,hero,makeIndex)
---    release_print("英雄扔掉物品后触发")
---end
---```
function herodropitemX(actor, hero, makeIndex) end

---英雄扔掉物品前触发
---* actor 玩家对象
---* hero 英雄对象
---* makeIndex 物品唯一ID
---@param actor number|string
---@param hero number|string
---@param makeIndex string
---```lua
---function herodropitemfrontex(actor,hero,makeIndex)
---    release_print("英雄扔掉物品前触发")
---end
---```
function herodropitemfrontex(actor, hero, makeIndex) end

---英雄扔掉物品后触发
---* actor 玩家对象
---* hero 英雄对象
---* makeIndex 物品唯一ID
---@param actor number|string
---@param hero number|string
---@param makeIndex string
---```lua
---function herodropitemex(actor,hero,makeIndex)
---    release_print("英雄扔掉物品后触发")
---end
---```
function herodropitemex(actor, hero, makeIndex) end

---宝宝攻击前触发
---* actor 玩家对象
---* target 受击对象
---* hitter 攻击对象
---* magicId 技能id 负数
---* damage 伤害
---@param actor number|string
---@param target number|string
---@param hitter number|string
---@param magicId integer
---@param damage integer
---@return integer "修改后的伤害"
---```lua
---function attackdamagebb(actor,target,hitter,magicId,damage)
---    release_print("宝宝攻击前触发")
---end
---```
function attackdamagebb(actor, target, hitter, magicId, damage) end

---英雄攻击前触发
---* actor 玩家对象
---* target 受击对象
---* hitter 攻击对象
---* magicId 技能id
---* damage 伤害
---@param actor number|string
---@param target number|string
---@param hitter number|string
---@param magicId integer
---@param damage integer
---@return integer "修改后的伤害"
---```lua
---function heroattackdamage(actor,target,hitter,magicId,damage)
---    release_print("英雄攻击前触发")
---end
---```
function heroattackdamage(actor, target, hitter, magicId, damage) end

---英雄宝宝攻击前触发
---* actor 玩家对象
---* target 受击对象
---* hitter 攻击对象
---* magicId 技能id
---* damage 伤害
---@param actor number|string
---@param target number|string
---@param hitter number|string
---@param magicId integer
---@param damage integer
---@return integer "修改后的伤害"
---```lua
---function heroattackdamagebb(actor,target,hitter,magicId,damage)
---    release_print("英雄宝宝攻击前触发")
---end
---```
function heroattackdamagebb(actor, target, hitter, magicId, damage) end

---宝宝物理攻击后
---* actor 玩家对象
---* target 受击对象
---* hitter 攻击对象
---* magicId 技能id
---@param actor number|string
---@param target number|string
---@param hitter number|string
---@param magicId integer
---```lua
---function attackpet(actor,target,hitter,magicId)
---    release_print("宝宝物理攻击后")
---end
---```
function attackpet(actor, target, hitter, magicId) end

---宝宝魔法攻击后
---* actor 玩家对象
---* target 受击对象
---* hitter 攻击对象
---* magicId 技能id
---@param actor number|string
---@param target number|string
---@param hitter number|string
---@param magicId integer
---```lua
---function magicattackpet(actor,target,hitter,magicId)
---    release_print("宝宝魔法攻击后")
---end
---```
function magicattackpet(actor, target, hitter, magicId) end

---英雄物理攻击后
---* actor 玩家对象
---* target 受击对象
---* hitter 攻击对象
---* magicId 技能id
---@param actor number|string
---@param target number|string
---@param hitter number|string
---@param magicId integer
---```lua
---function heroattack(actor,target,hitter,magicId)
---    release_print("英雄物理攻击后")
---end
---```
function heroattack(actor, target, hitter, magicId) end

---英雄魔法攻击后
---* actor 玩家对象
---* target 受击对象
---* hitter 攻击对象
---* magicId 技能id
---@param actor number|string
---@param target number|string
---@param hitter number|string
---@param magicId integer
---```lua
---function heromagicattack(actor,target,hitter,magicId)
---    release_print("英雄魔法攻击后")
---end
---```
function heromagicattack(actor, target, hitter, magicId) end

---英雄宝宝物理攻击后
---* actor 玩家对象
---* target 受击对象
---* hitter 攻击对象
---* magicId 技能id
---@param actor number|string
---@param target number|string
---@param hitter number|string
---@param magicId integer
---```lua
---function heroattackpet(actor,target,hitter,magicId)
---    release_print("英雄宝宝物理攻击后")
---end
---```
function heroattackpet(actor, target, hitter, magicId) end

---英雄宝宝魔法攻击后
---* actor 玩家对象
---* target 受击对象
---* hitter 攻击对象
---* magicId 技能id
---@param actor number|string
---@param target number|string
---@param hitter number|string
---@param magicId integer
---```lua
---function heromagicattackpet(actor,target,hitter,magicId)
---    release_print("英雄宝宝魔法攻击后")
---end
---```
function heromagicattackpet(actor, target, hitter, magicId) end

---宝宝受击前
---* actor 玩家对象
---* hitter 攻击对象
---* target 受击对象
---* magicId 技能id
---* damage 伤害
---@param actor number|string
---@param hitter number|string
---@param target number|string
---@param magicId integer
---@param damage integer
---@return integer "修改后的伤害"
---```lua
---function struckdamagebb(actor,hitter,target,magicId,damage)
---    release_print("宝宝受击前")
---end
---```
function struckdamagebb(actor, hitter, target, magicId, damage) end

---英雄受击前
---* actor 玩家对象
---* hitter 攻击对象
---* target 受击对象
---* magicId 技能id
---* damage 伤害
---@param actor number|string
---@param hitter number|string
---@param target number|string
---@param magicId integer
---@param damage integer
---@return integer "修改后的伤害"
---```lua
---function herostruckdamage(actor,hitter,target,magicId,damage)
---    release_print("英雄受击前")
---end
---```
function herostruckdamage(actor, hitter, target, magicId, damage) end

---英雄宝宝受击前
---* actor 玩家对象
---* hitter 攻击对象
---* target 受击对象
---* magicId 技能id
---* damage 伤害
---@param actor number|string
---@param hitter number|string
---@param target number|string
---@param magicId integer
---@param damage integer
---@return integer "修改后的伤害"
---```lua
---function herostruckdamagebb(actor,hitter,target,magicId,damage)
---    release_print("英雄宝宝受击前")
---end
---```
function herostruckdamagebb(actor, hitter, target, magicId, damage) end

---宝宝物理受击后
---* actor 玩家对象
---* hitter 攻击对象
---* target 受击对象
---* magicId 技能id
---@param actor number|string
---@param hitter number|string
---@param target number|string
---@param magicId integer
---```lua
---function struckpet(actor,hitter,target,magicId)
---    release_print("宝宝物理受击后")
---end
---```
function struckpet(actor, hitter, target, magicId) end

---宝宝魔法受击后
---* actor 玩家对象
---* hitter 攻击对象
---* target 受击对象
---* magicId 技能id
---@param actor number|string
---@param hitter number|string
---@param target number|string
---@param magicId integer
---```lua
---function magicstruckpet(actor,hitter,target,magicId)
---    release_print("宝宝魔法受击后")
---end
---```
function magicstruckpet(actor, hitter, target, magicId) end

---英雄物理受击后
---* actor 玩家对象
---* hitter 攻击对象
---* target 受击对象
---* magicId 技能id
---@param actor number|string
---@param hitter number|string
---@param target number|string
---@param magicId integer
---```lua
---function herostruck(actor,hitter,target,magicId)
---    release_print("英雄物理受击后")
---end
---```
function herostruck(actor, hitter, target, magicId) end

---英雄魔法受击后
---* actor 玩家对象
---* hitter 攻击对象
---* target 受击对象
---* magicId 技能id
---@param actor number|string
---@param hitter number|string
---@param target number|string
---@param magicId integer
---```lua
---function heromagicstruck(actor,hitter,target,magicId)
---    release_print("英雄魔法受击后")
---end
---```
function heromagicstruck(actor, hitter, target, magicId) end

---英雄宝宝魔法受击后
---* actor 玩家对象
---* hitter 攻击对象
---* target 受击对象
---* magicId 技能id
---@param actor number|string
---@param hitter number|string
---@param target number|string
---@param magicId integer
---```lua
---function heromagicstruckpet(actor,hitter,target,magicId)
---    release_print("英雄宝宝魔法受击后")
---end
---```
function heromagicstruckpet(actor, hitter, target, magicId) end

---英雄宝宝物理受击后
---* actor 玩家对象
---* target 受击对象
---* hitter 攻击对象
---* magicId 技能id
---@param actor number|string
---@param hitter number|string
---@param target number|string
---@param magicId integer
---```lua
---function herostruckpet(actor,hitter,target,magicId)
---    release_print("英雄宝宝物理受击后")
---end
---```
function herostruckpet(actor, hitter, target, magicId) end

---英雄自身使用任意技能前触发
---* actor 玩家对象
---* hero 英雄对象
---* magicId 技能id
---* magicName 技能名字
---* target 受击对象
---* x 受击对象x坐标
---* y 受击对象y坐标
---@param actor number|string
---@param hero number|string
---@param magicId integer
---@param magicName string
---@param target number|string
---@param x integer
---@param y integer
---@return boolean "true/nil=允许施法 false=阻止施法"
---```lua
---function herobeginmagic(actor,hero,magicId,magicName,target,x,y)
---    release_print("英雄自身使用任意技能前触发")
---end
---```
function herobeginmagic(actor, hero, magicId, magicName, target, x, y) end

---英雄推动技能施法前触发
---* actor 玩家对象
---* target 受击对象
---* hitter 攻击对象
---* magicId 技能id
---@param actor number|string
---@param target number|string
---@param hitter number|string
---@param magicId integer
---@return integer "0=不执行推动 1=执行推动 2=根据M2上的推动条件判断是否执行"
---```lua
---function herocanpush(actor,target,hitter,magicId)
---    release_print("英雄推动技能施法前触发")
---end
---```
function herocanpush(actor, target, hitter, magicId) end

---宠物推动技能施法前触发
---* actor 玩家对象
---* target 受击对象
---* hitter 攻击对象
---* magicId 技能id
---@param actor number|string
---@param target number|string
---@param hitter number|string
---@param magicId integer
---@return integer "0=不执行推动 1=执行推动 2=根据M2上的推动条件判断是否执行"
---```lua
---function petcanpush(actor,target,hitter,magicId)
---    release_print("宠物推动技能施法前触发")
---end
---```
function petcanpush(actor, target, hitter, magicId) end

---宝宝推动技能施法前触发
---* actor 玩家对象
---* target 受击对象
---* hitter 攻击对象
---* magicId 技能id
---@param actor number|string
---@param target number|string
---@param hitter number|string
---@param magicId integer
---@return integer "0=不执行推动 1=执行推动 2=根据M2上的推动条件判断是否执行"
---```lua
---function bbcanpush(actor,target,hitter,magicId)
---    release_print("宝宝推动技能施法前触发")
---end
---```
function bbcanpush(actor, target, hitter, magicId) end

---英雄宝宝推动技能施法前触发
---* actor 玩家对象
---* target 受击对象
---* hitter 攻击对象
---* magicId 技能id
---@param actor number|string
---@param target number|string
---@param hitter number|string
---@param magicId integer
---@return integer "0=不执行推动 1=执行推动 2=根据M2上的推动条件判断是否执行"
---```lua
---function herobbcanpush(actor,target,hitter,magicId)
---    release_print("英雄宝宝推动技能施法前触发")
---end
---```
function herobbcanpush(actor, target, hitter, magicId) end

---宝宝死亡触发，触发对象 主人
---* actor 玩家对象
---* mon 宝宝/怪物对象
---@param actor number|string
---@param mon number|string
---```lua
---function selfkillslave(actor,mon)
---    release_print("宝宝死亡触发，触发对象 主人")
---end
---```
function selfkillslave(actor, mon) end

---杀掉宝宝触发，触发对象 攻击者
---* actor 玩家对象
---* mon 宝宝/怪物对象
---@param actor number|string
---@param mon number|string
---```lua
---function killslave(actor,mon)
---    release_print("杀掉宝宝触发，触发对象 攻击者")
---end
---```
function killslave(actor, mon) end

---杀怪触发
---* actor 玩家对象
---* mon 宝宝/怪物对象
---* itype 击杀者类型<br>0=凶手是宝宝;<br>1=英雄;<br>2=人物;<br>4=全局触发(无归属)
---* kill 击杀者对象(凶手)
---* monName 怪物名称
---* mapID 地图id
---@param actor number|string
---@param mon number|string
---@param itype integer
---@param kill number|string
---@param monName string
---@param mapID string
---```lua
---function killmon(actor,mon,itype,kill,monName,mapID)
---    release_print("杀怪触发，触发对象 攻击者")
---end
---```
function killmon(actor, mon, itype, kill, monName, mapID) end

---杀怪触发(需要在mapinfo地图参数增加onkillmon)
---* actor 玩家对象
---* mon 宝宝/怪物对象
---@param actor number|string
---@param mon number|string
---```lua
---function onkillmob(actor,mon)
---    release_print("杀怪触发，触发对象 攻击者")
---end
---```
function onkillmob(actor, mon) end

---英雄被杀触发
---* actor 被杀英雄玩家
---* hero 英雄对象
---@param actor number|string
---@param hero number|string
---```lua
---function herodie(actor,hero)
---    release_print("英雄被杀触发")
---end
---```
function herodie(actor, hero) end

---怪物掉落物品触发
---* actor 玩家对象
---* makeIndex 掉落装备物品唯一ID
---* mon 掉落怪物对象
---* nX 掉落坐标x
---* nY 掉落坐标y
---* index 物品序号
---@param actor number|string
---@param makeIndex string
---@param mon number|string
---@param nX integer
---@param nY integer
---@param index integer
---@return boolean "true=允许掉落 false=不允许掉落"
---```lua
---function mondropitemex(actor,makeIndex,mon,nX,nY,index)
---    release_print("怪物掉落物品触发")
---end
---```
function mondropitemex(actor, makeIndex, mon, nX, nY, index) end

---宝宝升级触发
---* actor 玩家对象
---* mon 宝宝对象
---* level 当前等级
---@param actor number|string
---@param mon number|string
---@param level integer
---```lua
---function slaveupgrade(actor,mon,level)
---    release_print("宝宝升级触发")
---end
---```
function slaveupgrade(actor, mon, level) end

---角色获得宝宝触发
---* actor 玩家对象
---* mon 宝宝对象
---@param actor number|string
---@param mon number|string
---```lua
---function slavebb(actor,mon)
---    release_print("角色获得宝宝触发")
---end
---```
function slavebb(actor, mon) end

---英雄获得宝宝触发
---* actor 玩家对象
---* hero 英雄对象
---* mon 宝宝对象
---@param actor number|string
---@param hero number|string
---@param mon number|string
---```lua
---function heroslavebb(actor,hero,mon)
---    release_print("英雄获得宝宝触发")
---end
---```
function heroslavebb(actor, hero, mon) end

---角色宝宝叛变触发
---* actor 玩家对象
---* mon 宝宝对象
---@param actor number|string
---@param mon number|string
---```lua
---function mobtreachery(actor,mon)
---    release_print("角色宝宝叛变触发")
---end
---```
function mobtreachery(actor, mon) end

---英雄宝宝叛变触发
---* actor 玩家对象
---* hero 英雄对象
---* mon 宝宝对象
---@param actor number|string
---@param hero number|string
---@param mon number|string
---```lua
---function heromobtreachery(actor,hero,mon)
---    release_print("英雄宝宝叛变触发")
---end
---```
function heromobtreachery(actor, hero, mon) end

---英雄穿套装触发
---* actor 玩家对象
---* hero 英雄对象
---* suitId 套装id
---@param actor number|string
---@param hero number|string
---@param suitId integer
---```lua
---function herogroupitemonex(actor,hero,suitId)
---    release_print("英雄穿套装触发")
---end
---```
function herogroupitemonex(actor, hero, suitId) end

---英雄脱套装触发
---* actor 玩家对象
---* hero 英雄对象
---* suitId 套装id
---@param actor number|string
---@param hero number|string
---@param suitId integer
---```lua
---function herogroupitemoffex(actor,hero,suitId)
---    release_print("英雄脱套装触发")
---end
---```
function herogroupitemoffex(actor, hero, suitId) end

---英雄套装激活触发
---* actor 玩家对象
---* hero 英雄对象
---@param actor number|string
---@param hero number|string
---```lua
---function herogroupitemonX(actor,hero)
---    release_print("英雄套装激活触发")
---end
---```
function herogroupitemonX(actor, hero) end

---英雄开启首饰盒触发(神佑/生肖)
---* actor 玩家对象
---* hero 英雄对象
---@param actor number|string
---@param hero number|string
---```lua
---function heroopensndaitembox(actor,hero)
---    release_print("英雄开启首饰盒触发(神佑/生肖)")
---end
---```
function heroopensndaitembox(actor, hero) end

---英雄忠诚度改变触发
---* actor 玩家对象
---* hero 英雄对象
---* luckNum 忠诚度
---@param actor number|string
---@param hero number|string
---@param luckNum integer
---```lua
---function heroluck(actor,hero,luckNum)
---    release_print("英雄忠诚度改变触发")
---end
---```
function heroluck(actor, hero, luckNum) end

---英雄勾选外显时装生效触发
---* actor 玩家对象
---* hero 英雄对象
---@param actor number|string
---@param hero number|string
---```lua
---function heroshowfashion(actor,hero)
---    release_print("英雄勾选外显时装生效触发")
---end
---```
function heroshowfashion(actor, hero) end

---英雄取消外显时装生效触发
---* actor 玩家对象
---* hero 英雄对象
---@param actor number|string
---@param hero number|string
---```lua
---function heronotshowfashion(actor,hero)
---    release_print("英雄取消外显时装生效触发")
---end
---```
function heronotshowfashion(actor, hero) end

---英雄登陆触发
---* actor 玩家对象
---* hero 英雄对象
---@param actor number|string
---@param hero number|string
---```lua
---function herologin(actor,hero)
---    release_print("英雄登陆触发")
---end
---```
function herologin(actor, hero) end

---角色升级触发
---* actor 玩家对象
---* level 升级后等级
---@param actor number|string
---@param level integer
---```lua
---function playlevelup(actor,level)
---    release_print("角色升级触发")
---end
---```
function playlevelup(actor, level) end

---英雄升级触发
---* actor 玩家对象
---* hero 英雄对象
---@param actor number|string
---@param hero number|string
---```lua
---function herolevelup(actor,hero)
---    release_print("英雄升级触发")
---end
---```
function herolevelup(actor, hero) end

---英雄创建触发
---* actor 玩家对象
---@param actor number|string
---```lua
---function createherook(actor)
---    release_print("英雄创建触发")
---end
---```
function createherook(actor) end

---英雄取名成功触发
---* actor 玩家对象
---@param actor number|string
---```lua
---function checkusernameok(actor)
---    release_print("英雄取名成功触发")
---end
---```
function checkusernameok(actor) end

---英雄取名失败触发
---* actor 玩家对象
---@param actor number|string
---```lua
---local role_name = getbaseinfo(actor,1)
---local hero_name = role_name.."A英雄"
---checkheroname(actor,hero_name)
---
---
---
---[[英雄取名成功触发]]
---function checkusernameok(actor)
---    release_print("英雄取名成功触发,之后去创建英雄")
---    local job,sex = getbaseinfo(actor,7),getbaseinfo(actor,8)
---    local role_name = getbaseinfo(actor,1)
---    local hero_name = role_name.."A英雄"
---    createhero(actor, hero_name, job, sex)
---end
---
---[[英雄取名失败触发]]
---function checkusernameno(actor)
---    sendmsg(actor, 1, '{"Msg":"英雄名字已经存在","Type":9}')
---end
---
---
---
---[[英雄创建触发]]
---function createherook(actor)
---    release_print("创建成功,召唤英雄")
---    recallhero(actor)
---end
---
---
---
---[[英雄登陆触发]]
---function herologin(actor)
---    release_print("英雄登陆")
---end
---```
function checkusernameno(actor) end

---宠物升级触发
---* actor 玩家对象
---* petIndex 宠物编号
---* level 等级
---* zsLevel 转生等级
---@param actor number|string
---@param petIndex integer
---@param level integer
---@param zsLevel integer
---```lua
---petlevelup(actor,petIndex,level,zsLevel)
---```
function petlevelup(actor, petIndex, level, zsLevel) end

---获得宠物触发[人物上线首次加载宠物时也会触发]
---* actor 玩家对象
---* petIndex 宠物编号
---@param actor number|string
---@param petIndex integer
---```lua
---function getnewpet(actor,petIndex)
---    release_print("获得宠物触发[人物上线首次加载宠物时也会触发]")
---end
---```
function getnewpet(actor, petIndex) end

---使用宠物蛋触发
---* actor 玩家对象
---* makeIndex 物品唯一id
---* itemIndex 物品id
---@param actor number|string
---@param makeIndex string
---@param itemIndex integer
---```lua
---function usepetitem(actor,makeIndex,itemIndex)
---    release_print("使用宠物蛋触发")
---end
---```
function usepetitem(actor, makeIndex, itemIndex) end

---宠物死亡触发
---* actor 玩家对象
---* petIndex 宠物编号
---@param actor number|string
---@param petIndex integer
---```lua
---function petdie(actor,petIndex)
---    release_print("宠物死亡触发")
---end
---```
function petdie(actor, petIndex) end

---宠物变蛋触发
---* actor 玩家对象
---* makeIndex 物品唯一id
---@param actor number|string
---@param makeIndex string
---```lua
---function pettoitem(actor,makeIndex)
---    release_print("宠物变蛋触发")
---end
---```
function pettoitem(actor, makeIndex) end

---宠物攻击触发
---* actor 玩家对象
---* petIndex 宠物编号
---* target 目标对象
---* magicId 技能id
---* isImportant 是否主目标
---@param actor number|string
---@param petIndex integer
---@param target number|string
---@param magicId integer
---@param isImportant integer
---```lua
---function attackbypet(actor,petIndex,target,magicId,isImportant)
---    release_print("宠物攻击触发")
---end
---```
function attackbypet(actor, petIndex, target, magicId, isImportant) end

---宠物攻击伤害前触发
---* actor 玩家对象
---* target 目标对象
---* petObj 宠物对象
---* magicId 技能id
---* damage 伤害值
---* isImportant 是否主目标
---* model 攻击模式<br>0=正常,1=暴击,2=格挡
---@param actor number|string
---@param target number|string
---@param petObj number|string
---@param magicId integer
---@param damage integer
---@param isImportant integer
---@param model integer
---@return integer "修改后的伤害"
---```lua
---function attackdamagepet(actor,target,petObj,magicId,damage,isImportant,model)
---    release_print("宠物攻击伤害前触发")
---end
---```
function attackdamagepet(actor, target, petObj, magicId, damage, isImportant, model) end

---宠物被攻击前触发
---* actor 玩家对象
---* hitter 攻击者对象
---* petIndex 宠物编号
---* magicId 技能id
---* damage 伤害值
---@param actor number|string
---@param hitter number|string
---@param petIndex number
---@param magicId integer
---@param damage integer
---@return integer "修改后的伤害"
---```lua
---function struckdamagepet(actor,hitter,petIndex,magicId,damage)
---    release_print("宠物被攻击前触发")
---end
---```
function struckdamagepet(actor, hitter, petIndex, magicId, damage) end

---宠物被物理攻击触发
---* actor 玩家对象
---* petIndex 宠物编号
---* hitter 攻击者对象
---* magicId 技能id
---@param actor number|string
---@param petIndex number
---@param hitter number|string
---@param magicId integer
---```lua
---function struckofpet(actor,petIndex,hitter,magicId)
---    release_print("宠物被物理攻击触发")
---end
---```
function struckofpet(actor, petIndex, hitter, magicId) end

---宠物被魔法攻击触发
---* actor 玩家对象
---* petIndex 宠物编号
---* hitter 攻击者对象
---* magicId 技能id
---@param actor number|string
---@param petIndex number
---@param hitter number|string
---@param magicId integer
---```lua
---function magicstruckofpet(actor,petIndex,hitter,magicId)
---    release_print("宠物被魔法攻击触发")
---end
---```
function magicstruckofpet(actor, petIndex, hitter, magicId) end

---英雄脱下装备前触发
---* actor 玩家对象
---* hero 英雄对象
---* makeIndex 装备唯一ID
---* where [装备位置](https://engine-doc.996m2.com/web/#/91/51214 "装备位置")
---* idx 物品id
---@param actor number|string
---@param hero number|string
---@param makeIndex string
---@param where integer
---@param idx integer
---```lua
---function herotakeoffbeforeex(actor,hero,makeIndex,where,idx)
---    release_print("英雄脱下装备触发")
---end
---```
function herotakeoffbeforeex(actor, hero, makeIndex, where, idx) end

---英雄穿戴装备前触发(带装备位置)
---* actor 玩家对象
---* hero 英雄对象
---* makeIndex 物品唯一ID
---* where [装备位置](https://engine-doc.996m2.com/web/#/91/51214 "装备位置")
---* idx 物品id
---@param actor number|string
---@param hero number|string
---@param makeIndex string
---@param where integer
---@param idx integer
---```lua
---function herotakeonbeforeex(actor,hero,makeIndex,where,idx)
---    release_print("英雄穿戴装备触发")
---end
---```
function herotakeonbeforeex(actor, hero, makeIndex, where, idx) end

---英雄穿戴装备前触发
---* actor 玩家对象
---* hero 英雄对象
---* makeIndex 物品唯一ID
---* idx 物品id
---@param actor number|string
---@param hero number|string
---@param makeIndex string
---@param idx integer
---```lua
---function herotakeonbeforeX(actor,hero,makeIndex,idx)
---    release_print("英雄穿戴装备前触发")
---end
---```
function herotakeonbeforeX(actor, hero, makeIndex, idx) end

---英雄脱下装备前触发(X=装备位置)
---* actor 玩家对象
---* hero 英雄对象
---* makeIndex 装备唯一ID
---* idx 物品id
---@param actor number|string
---@param hero number|string
---@param makeIndex string
---@param idx integer
---```lua
---function herotakeoffbeforeex(actor,hero,makeIndex,idx)
---    release_print("英雄脱下装备前触发(X=装备位置)")
---end
---```
function herotakeoffbeforeX(actor, hero, makeIndex, idx) end

---英雄脱下装备触发(X=装备位置)
---* actor 玩家对象
---* hero 英雄对象
---* makeIndex 物品唯一ID
---* idx 物品id
---@param actor number|string
---@param hero number|string
---@param makeIndex string
---@param idx integer
---```lua
---function herotakeoffX(actor,hero,makeIndex,idx)
---    release_print("英雄脱下装备触发")
---end
---```
function herotakeoffX(actor, hero, makeIndex, idx) end

---英雄物品进包前触发
---* actor 玩家对象
---* itemMakeIndex 物品唯一index
---* itemIndex 物品index
---@param actor number|string
---@param itemMakeIndex string
---@param itemIndex integer
---```lua
---function addherobagbefore(actor,itemMakeIndex,itemIndex)
---    release_print("英雄物品进包前触发")
---end
---```
function addherobagbefore(actor, itemMakeIndex, itemIndex) end

---英雄穿戴装备触发(X=装备位置)
---* actor 玩家对象
---* hero 英雄对象
---* makeIndex 装备唯一ID
---* idx 物品id
---@param actor number|string
---@param hero number|string
---@param makeIndex string
---@param idx integer
---```lua
---function herotakeonX(actor,hero,makeIndex,idx)
---    release_print("英雄穿戴装备触发")
---end
---```
function herotakeonX(actor, hero, makeIndex, idx) end

---英雄属性改变时触发
---* actor 玩家对象
---* hero 英雄对象
---@param actor number|string
---@param hero number|string
---```lua
---function herosendability(actor,hero)
---    release_print("英雄属性改变时触发")
---end
---```
function herosendability(actor, hero) end

---英雄死亡装备掉落前触发
---* actor 玩家对象
---* hero 英雄对象
---* where [装备位置](https://engine-doc.996m2.com/web/#/91/51214 "装备位置")
---* itemIndex 装备Index
---@param actor number|string
---@param hero number|string
---@param where integer
---@param itemIndex integer
---@return boolean "true = 允许掉落 false = 阻止掉落"
---```lua
---function herocheckdropuseitems(actor,hero,where,itemIndex)
---    release_print("英雄死亡装备掉落前触发")
---    return true
---end
---```
function herocheckdropuseitems(actor, hero, where, itemIndex) end

---英雄死亡前触发
---* actor 玩家对象
---* hero 英雄对象
---* hitter 击杀者对象
---* isplayer 0=击杀者非玩家<br>1=击杀者是玩家
---@param actor number|string
---@param hero number|string
---@param hitter number|string
---@param isplayer integer
---```lua
---function heronextdie(actor,hero,hitter,isplayer)
---    release_print("英雄死亡前触发")
---end
---```
function heronextdie(actor, hero, hitter, isplayer) end

---英雄套装失效触发
---* actor 玩家对象
---* hero 英雄对象
---@param actor number|string
---@param hero number|string
---```lua
---function herogroupitemoffX(actor,hero)
---    release_print("英雄套装失效触发")
---end
---```
function herogroupitemoffX(actor, hero) end

---英雄复活时触发
---* actor 玩家对象
---* hero 英雄对象
---@param actor number|string
---@param hero number|string
---```lua
---function herorevival(actor,hero)
---    release_print("英雄复活时触发")
---end
---```
function herorevival(actor, hero) end

---英雄双击使用道具前触发
---* actor 玩家对象
---* itemMakeIndex 道具唯一id
---* itemIndex 道具index
---* itemNum 道具数量
---* stdMode 物品表stdMode参数
---@param actor number|string
---@param itemMakeIndex string
---@param itemIndex integer
---@param itemNum integer
---@param stdMode integer
---@return boolean " true=允许使用 false=不允许使用"
---```lua
-- function herobeforeeatitem(actor, itemMakeIndex, itemIndex, itemNum, stdMode)
--     release_print("英雄双击使用道具前触发")
--     return true
-- end
---```
function herobeforeeatitem(actor, itemMakeIndex, itemIndex, itemNum, stdMode) end

---英雄双击类道具触发
---* actor 玩家对象
---* hero 英雄对象
---* makeIndex 物品唯一ID
---@param actor number|string
---@param hero number|string
---@param makeIndex string
---@return boolean "true=允许使用 false=禁止使用"
---```lua
---function herostdmodefuncX(actor,hero,makeIndex)
---    release_print("英雄双击类道具触发")
---    return true
---end
---```
function herostdmodefuncX(actor, hero, makeIndex) end

---随从被攻击触发
---* actor 镖车主人对象
---* hitter 攻击者对象
---* retinue 镖车对象
---@param actor number|string
---@param hitter number|string
---@param retinue number|string
---```lua
---function slavedamage(actor,hitter,retinue)
---    release_print("镖车被攻击触发")
---end
---```
function slavedamage(actor, hitter, retinue) end

---攻击别人随从触发
---* actor 攻击者对象
---* master 随从主人对象
---* retinue 随从对象
---@param actor number|string
---@param master number|string
---@param retinue number|string
---```lua
---function hitslave(actor,master,retinue)
---    release_print("攻击别人镖车触发")
---end
---```
function hitslave(actor, master, retinue) end

-- [Source: 触发^行会组队.lua]

---创建行会前触发
---* actor 玩家对象
---* guildName 行会名
---@param actor number|string
---@param guildName string
---```lua
---function checkbuildguild(actor,guildName)
---    release_print("创建行会前触发")
---end
---```
function checkbuildguild(actor, guildName) end

---创建行会时触发
---* actor 引擎启动时传入系统对象<br>创建行会时传入玩家对象
---* guild 行会对象
---@param actor number|string
---@param guild number|string
---```lua
---function loadguild(actor,guild)
---    release_print("创建(初始化)行会时触发",getguildinfo(guild, 1))
---end
---```
function loadguild(actor, guild) end

---更新行会公告触发
---* actor 玩家对象
---@param actor number|string
---@return boolean "true:更新，false:不更新"
---```lua
---function updateguildnotice(actor)
---    release_print("更新行会公告")
---    return false
---end
---```
function updateguildnotice(actor) end

---加入行会前触发
---* actor 玩家对象
---* guild 行会对象
---@param actor number|string
---@param guild number|string
---```lua
---function guildaddmember(actor,guild)
---    release_print("加入行会前触发")
---end
---```
function guildaddmember(actor, guild) end

---加入行会后触发
---* actor 玩家对象
---* guild 行会对象
---* guildName 行会名
---@param actor number|string
---@param guild number|string
---@param guildName string
---```lua
---function guildaddmemberafter(actor,guild,guildName)
---    release_print("加入行会后触发")
---end
---```
function guildaddmemberafter(actor, guild, guildName) end

---退出行会前触发
---* actor 玩家对象
---@param actor number|string
---```lua
---function guilddelmemberbefore(actor)
---    release_print("退出行会前触发")
---end
---```
function guilddelmemberbefore(actor) end

---退出行会时触发
---* actor 玩家对象
---@param actor number|string
---```lua
---function guilddelmember(actor)
---    release_print("退出行会时触发")
---end
---```
function guilddelmember(actor) end

---解散行会前触发
---* actor 玩家对象
---@param actor number|string
---```lua
---function guildclosebefore(actor)
---    release_print("解散行会前触发")
---end
---```
function guildclosebefore(actor) end

---解散行会后触发
---* actor 玩家对象
---@param actor number|string
---```lua
---function guildclose(actor)
---    release_print("解散行会后触发")
---end
---```
function guildclose(actor) end

---请求行会联盟前触发
---* actor 发起请求玩家对象
---* guildName 行会名字
---* time 结盟时长(小时)
---* moneyType 货币类型
---* moneyNum 货币数量
---@param actor number|string
---@param guildName string
---@param time integer
---@param moneyType integer
---@param moneyNum integer
---@return boolean "true=允许发起 false=不允许发起"
---```lua
---function guildapplybefore(actor,guildName,time,moneyType,moneyNum)
---    return true
---end
---```
function guildapplybefore(actor, guildName, time, moneyType, moneyNum) end

---行会编辑封号前触发
---* actor 玩家对象
---@param actor number|string
---@return boolean "true=允许编辑 false=阻止编辑"
---```tips
---1. X代表行会职务(1~5)
---```
---```lua
---function setrankname1(actor)
---    release_print("行会编辑封号前触发",targetName)
---    return false
---end
---```
function setranknameX(actor) end

---行会任命职务前触发
---* actor 玩家对象
---* target 被任命玩家对象(触发时对象可能不在线)
---* targetName 被任命玩家名字
---@param actor number|string
---@param target string
---@param targetName string
---@return boolean "true=允许任命 false=阻止任命"
---```tips
---1. X代表行会职务(1~5)
---```
---```lua
---function stdmodefunc1(actor,target,targetName)
---    release_print("行会任命职务前触发",targetName)
---    return true
---end
---```
function setguildrankX(actor, target, targetName) end

---掌门踢出行会成员前触发
---* actor 玩家对象
---* userId 被踢玩家userID
---@param actor number|string
---@param userId string
---@return boolean "true=允许踢 false=不允许踢"
---```lua
---function guildchiefdelmember(actor,userID)
---    return true
---end
---```
function guildchiefdelmember(actor, userId) end

---创建组队前触发
---* actor 玩家对象
---@param actor number|string
---```lua
---function startgroup(actor)
---    if getbaseinfo(actor,6) < 50 then
---        release_print("50级后才可组队")
---        creategroupfail(actor)
---        return
---    end
---end
---```
function startgroup(actor) end

---创建组队后触发
---* actor 玩家对象
---@param actor number|string
---```lua
---function groupcreate(actor)
---    release_print("创建组队后触发")
---end
---```
function groupcreate(actor) end

---添加组队成员触发
---* actor 玩家对象
---* leader 队长对象
---@param actor number|string
---@param leader number|string
---```lua
-----允许主动申请加入队伍成员入队
---function groupaddmember(actor,leader)
---    release_print(actor,"被允许进组的玩家"..getplaydef(actor,"S0"))
---end
---```
function groupaddmember(actor, leader) end

---邀请组队前触发
---* actor1 发起邀请对象
---* actor2 被邀请对象
---@param actor1 number|string
---@param actor2 number|string
---@return integer "是否允许邀请"
---```lua
---function invitegroup(actor,role)
---    if getbaseinfo(role,6) < 50 then
---        release_print(actor,"被邀请玩家等级不到50级")
---        return false
---    end
---    return true
---end
---```
function invitegroup(actor1, actor2) end

---离开队伍时触发(退组)
---* actor 玩家对象
---* leader 队长对象
---@param actor number|string
---@param leader number|string
---```lua
---function leavegroup(actor,leader)
---    release_print("离开队伍时触发(退组)")
---end
---```
function leavegroup(actor, leader) end

---删除组队成员触发
---* actor 队长对象
---* name 删除成员名称
---@param actor number|string
---@param name string
---```lua
-----队长删除小组成员
-----actor 队长人物对象
---function groupdelmember(actor,name)
---    release_print(actor,name)
---end
---```
function groupdelmember(actor, name) end

---组队杀死怪物时触发
---* actor 玩家对象
---* leader 队长对象
---@param actor number|string
---@param leader number|string
---```lua
-----组队杀死怪物(同地图内成员每人触发一次)
---function groupkillmon(actor,leader)
---    release_print("组队杀死怪物时触发", getbaseinfo(actor, 1))
---end
---```
function groupkillmon(actor, leader) end

---组队人数改变触发
---* actor 玩家对象
---* type 1:组队人数增加</br>2:组队人数减少
---* groupnum 组队人数
---* actorname 改变的玩家名称
---@param actor number|string
---@param type number
---@param groupnum number
---@param actorname string
---```lua
---function groupchange(actor,type,groupnum,actorname)
---    release_print("groupchange",actor)
---end
-----组队人数改变时剩余队员触发
---```
function groupchange(actor, type, groupnum, actorname) end

-- [Source: 触发^跨服.lua]

---进入跨服触发
---* actor 玩家对象
---@param actor number|string
---```lua
---function kflogin(actor)
---    release_print("进入跨服触发跨服,在跨服qf执行")
---end
---```
function kflogin(actor) end

---退出跨服触发
---* actor 玩家对象
---@param actor number|string
---```lua
---function kfend(actor)
---    release_print("退出跨服触发,在本服qf执行")
---end
---```
function kfend(actor) end

-- [Source: 触发^通区.lua]

---读取全局触发
---* Param1 预留
---* Param2 写数据时的<font color="FF0000">"key"</font>
---* Param3 写数据时的 <font color="FF0000">"value"</font>
---@param Param1 number
---@param Param2 string
---@param Param3 string
---```lua
---function TongReadKey1001(Param1,Param2)
---    release_print("读取全局触发")
---end
---```
function TongReadKeyXX(Param1, Param2, Param3) end

---读取玩家角色/账号触发
---* actor 玩家对象
---* key 写数据时的<font color="FF0000">"key"</font>
---* id 玩家角色ID或玩家账号ID
---* value 写数据时的 <font color="FF0000">"value"</font>
---@param actor number|string
---@param key string
---@param id string
---@param value string
---```lua
---function TongReadKeyTouSer100(actor,key,id,value)
---    release_print("读取玩家角色/账号触发")
---end
---```
function TongReadKeyTouSerXX(actor, key, id, value) end

---通区下载文件触发
---* type 0=上传成功</br>1=上传失败</br>2=上传异常</br>3=下载成功</br>4=下载失败</br>5=下载异常</br>
---* path 取回路径
---@param type string
---@param path string
---```lua
---function TongFileState(type,path)
---    release_print("下载文件触发")
---end
---```
function TongFileState(type, path) end

---获取key列表触发
---* len `key`长度
---* content `key`内容
---@param len string
---@param content string
---```lua
---function TongGetKeyList(len,content)
---    release_print("获取key列表触发")
---end
---```
function TongGetKeyList(len, content) end

---获取key数量触发
---* len `key`长度
---@param len string
---```lua
---function TongQueryKeyConut(len)
---    release_print("获取key数量触发")
---end
---```
function TongQueryKeyConut(len) end

---批量操作触发
---* Param1 初始化后的结果
---@param Param1 string
---```lua
---function TongClearKey(Param1)
---    release_print("批量操作触发")
---end
---```
function TongClearKey(Param1) end

-- [Source: 触发^采集怪-镖车.lua]

---采集前触发
---* actor 玩家对象
---* monIndex 怪物id
---* monName 怪物名字
---* monMakeIndex 怪物唯一id
---@param actor number|string
---@param monIndex integer
---@param monName string
---@param monMakeIndex integer
---```lua
---function collectmonex(actor,monIndex，monName,monMakeIndex)
---    release_print("采集前触发")
---end
---```
function collectmonex(actor, monIndex, monName, monMakeIndex) end

---玩家点击采集怪物将会触发
---* actor 玩家对象
---* mon 怪物对象
---@param actor number|string
---@param mon integer
---```lua
---function collectmonX(actor,mon)
---    release_print("玩家点击采集怪物将会触发")
---end
---```
---```tips
---collectmonX的X为怪物id，例如采集怪一的怪物id为1,则触发为collectmon1
---```
function collectmonX(actor, mon) end

---镖车到达指定位置触发
---* actor 玩家对象
---@param actor number|string
---```lua
---function carpathend(actor)
---    release_print("镖车到达指定位置触发")
---end
---```
function carpathend(actor) end

---镖车切换地图触发
---* actor 玩家对象
---@param actor number|string
---```lua
---function leavedart(actor)
---    release_print("镖车切换地图触发")
---end
---```
function leavedart(actor) end

---镖车进入自动寻路范围触发
---* actor 镖车主人对象
---@param actor number|string
---```lua
---function carfindmaster(actor)
---    release_print("镖车进入自动寻路范围触发")
---end
---```
function carfindmaster(actor) end

---丢失镖车触发
---* actor 镖车主人对象
---* car 镖车对象
---@param actor number|string
---@param car number|string
---```lua
---function losercar(actor,car)
---    release_print("丢失镖车触发")
---end
---```
function losercar(actor, car) end

---镖车死亡触发
---* actor 攻击镖车对象
---* car 镖车对象
---@param actor number|string
---@param car number|string
---```lua
---function cardie(actor,car)
---    release_print("镖车死亡触发")
---end
---```
function cardie(actor, car) end
