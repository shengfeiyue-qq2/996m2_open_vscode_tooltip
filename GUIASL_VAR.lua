
-- [Warn] Failed to parse function signature for: 新三端-客户端

-- [Warn] Failed to parse function signature for: 窗口速查

-- [Warn] Failed to parse function signature for: 元变量速查

-- [Warn] Failed to parse function signature for: 游戏速查

-- [Warn] Failed to parse function signature for: 界面速查

-- [Warn] Failed to parse function signature for: 游戏事件

-- [Warn] Failed to parse function signature for: GUILayout

-- [Warn] Failed to parse function signature for: 版本号


---@meta E996
GUI = {}
SL = {}
GUIFunction = {}
UIOperator = {}
---
---@class E996lib
---
---标准输入。
---
E996 = {}

---@meta SyncObj

---
---@class SyncObjlib
---
---标准输入。
---
SyncObj = {}

---@class float: number
---@class bytes: string


-- [Source: 元变量^Actor.lua]

---主玩家actorID
---@return string "主玩家actorID"
---```lua
---local cc = SL:Get_USER_ID()
---print(cc,type(cc))
---```
function SL:Get_USER_ID() end

---是否是玩家
---* actorID 玩家、怪物、NPC、人形怪等对象ID(对应服务端唯一ID/UserID)
---@param actorID number
---@return boolean "是否是玩家 true/false"
---```lua
---local actorID = SL:Get_USER_ID()
---local cc = SL:Get_ACTOR_IS_PLAYER(actorID)
---print(cc,type(cc))
---```
function SL:Get_ACTOR_IS_PLAYER(actorID) end

---是否是网络玩家
---* actorID 玩家、怪物、NPC、人形怪等对象ID(对应服务端唯一ID/UserID)
---@param actorID number
---@return boolean "是否是网络玩家 true/false"
---```lua
---local actorID = SL:Get_USER_ID()
---local cc = SL:Get_ACTOR_IS_NETPLAYER(actorID)
---print(cc,type(cc))
---```
function SL:Get_ACTOR_IS_NETPLAYER(actorID) end

---是否是怪物
---* actorID 玩家、怪物、NPC、人形怪等对象ID(对应服务端唯一ID/UserID)
---@param actorID number
---@return boolean "是否是怪物 true/false"
---```lua
---local actorID = SL:Get_USER_ID()
---local cc = SL:Get_ACTOR_IS_MONSTER(actorID)
---print(cc,type(cc))
---```
function SL:Get_ACTOR_IS_MONSTER(actorID) end

---是否是NPC
---* actorID 玩家、怪物、NPC、人形怪等对象ID(对应服务端唯一ID/UserID)
---@param actorID number
---@return boolean "是否是NPC true/false"
---```lua
---local actorID = SL:Get_USER_ID()
---local cc = SL:Get_ACTOR_IS_NPC(actorID)
---print(cc,type(cc))
---```
function SL:Get_ACTOR_IS_NPC(actorID) end

---是否是英雄
---* actorID 玩家、怪物、NPC、人形怪等对象ID(对应服务端唯一ID/UserID)
---@param actorID number
---@return boolean "是否是英雄 true/false"
---```lua
---local actorID = SL:Get_USER_ID()
---local cc = SL:Get_ACTOR_IS_HERO(actorID)
---print(cc,type(cc))
---```
function SL:Get_ACTOR_IS_HERO(actorID) end

---是否是人形怪
---* actorID 玩家、怪物、NPC、人形怪等对象ID(对应服务端唯一ID/UserID)
---@param actorID number
---@return boolean "是否是人形怪 true/false"
---```lua
---local actorID = SL:Get_USER_ID()
---local cc = SL:Get_ACTOR_IS_HUMAN(actorID)
---print(cc,type(cc))
---```
function SL:Get_ACTOR_IS_HUMAN(actorID) end

---获取actor 名字
---* actorID 玩家、怪物、NPC、人形怪等对象ID(对应服务端唯一ID/UserID)
---@param actorID number
---@return string "actor 名字"
---```lua
---local actorID = SL:Get_USER_ID()
---local cc = SL:Get_ACTOR_NAME(actorID)
---print(cc,type(cc))
---```
function SL:Get_ACTOR_NAME(actorID) end

---获取 actor Hp
---* actorID 玩家、怪物、NPC、人形怪等对象ID(对应服务端唯一ID/UserID)
---@param actorID number
---@return number "actor Hp"
---```lua
---local actorID = SL:Get_USER_ID()
---local cc = SL:Get_ACTOR_HP(actorID)
---print(cc,type(cc))
---```
function SL:Get_ACTOR_HP(actorID) end

---获取actor Max Hp
---* actorID 玩家、怪物、NPC、人形怪等对象ID(对应服务端唯一ID/UserID)
---@param actorID number
---@return number "actor Max Hp"
---```lua
---local actorID = SL:Get_USER_ID()
---local cc = SL:Get_ACTOR_MAXHP(actorID)
---print(cc,type(cc))
---```
function SL:Get_ACTOR_MAXHP(actorID) end

---获取actor Mp
---* actorID 玩家、怪物、NPC、人形怪等对象ID(对应服务端唯一ID/UserID)
---@param actorID number
---@return number "actor Mp"
---```lua
---local actorID = SL:Get_USER_ID()
---local cc = SL:Get_ACTOR_MP(actorID)
---print(cc,type(cc))
---```
function SL:Get_ACTOR_MP(actorID) end

---获取actor Max Mp
---* actorID 玩家、怪物、NPC、人形怪等对象ID(对应服务端唯一ID/UserID)
---@param actorID number
---@return number "actor Max Mp"
---```lua
---local actorID = SL:Get_USER_ID()
---local cc = SL:Get_ACTOR_MAXMP(actorID)
---print(cc,type(cc))
---```
function SL:Get_ACTOR_MAXMP(actorID) end

---获取actor等级
---* actorID 玩家、怪物、NPC、人形怪等对象ID(对应服务端唯一ID/UserID)
---@param actorID number
---@return number "actor等级"
---```lua
---local actorID = SL:Get_USER_ID()
---local cc = SL:Get_ACTOR_LEVEL(actorID)
---print(cc,type(cc))
---```
function SL:Get_ACTOR_LEVEL(actorID) end

---获取actor职业
---* actorID 玩家、怪物、NPC、人形怪等对象ID(对应服务端唯一ID/UserID)
---@param actorID number
---@return number "actor职业"
---```lua
---local actorID = SL:Get_USER_ID()
---local cc = SL:Get_ACTOR_JOB_ID(actorID)
---print(cc,type(cc))
---```
function SL:Get_ACTOR_JOB_ID(actorID) end

---获取actor性别
---* actorID 玩家、怪物、NPC、人形怪等对象ID(对应服务端唯一ID/UserID)
---@param actorID number
---@return number "actor性别"
---```lua
---local actorID = SL:Get_USER_ID()
---local cc = SL:Get_ACTOR_SEX(actorID)
---print(cc,type(cc))
---```
function SL:Get_ACTOR_SEX(actorID) end

---actor是否死亡
---* actorID 玩家、怪物、NPC、人形怪等对象ID(对应服务端唯一ID/UserID)
---@param actorID number
---@return boolean "actor是否死亡 true/false"
---```lua
---local actorID = SL:Get_USER_ID()
---local cc = SL:Get_ACTOR_IS_DEATH(actorID)
---print(cc,type(cc))
---```
function SL:Get_ACTOR_IS_DEATH(actorID) end

---获取actor归属ID
---* actorID 玩家、怪物、NPC、人形怪等对象ID(对应服务端唯一ID/UserID)
---@param actorID number
---@return string "actor归属ID"
---```lua
---local actorID=SL:Get_USER_ID()
---local cc=SL:Get_ACTOR_OWNER_ID(param, actorID)
---print(cc,type(cc))
---```
function SL:Get_ACTOR_OWNER_ID(actorID) end

---获取actor归属名字
---* actorID 玩家、怪物、NPC、人形怪等对象ID(对应服务端唯一ID/UserID)
---@param actorID number
---@return string "actor归属名字"
---```lua
---local actorID=SL:Get_USER_ID()
---local cc=SL:Get_ACTOR_OWNER_NAME(param, actorID)
---print(cc,type(cc))
---```
function SL:Get_ACTOR_OWNER_NAME(actorID) end

---获取怪物大图标ID
---* actorID 玩家、怪物、NPC、人形怪等对象ID(对应服务端唯一ID/UserID)
---@param actorID number
---@return number "怪物大图标ID"
---```lua
---local actorID=SL:Get_USER_ID()
---local cc=SL:Get_ACTOR_BIGICON_ID(actorID)
---print(cc,type(cc))
---```
function SL:Get_ACTOR_BIGICON_ID(actorID) end

---选中的目标actorID或者怪物归属者
---* actorID 玩家、怪物、NPC、人形怪等对象ID(对应服务端唯一ID/UserID)
---@param actorID number
---@return number "actor性别"
---```lua
---local actorID=SL:Get_USER_ID()
---local cc=SL:Get_SELECT_TARGET_ID(param, actorID)
---print(cc,type(cc))
---```
function SL:Get_SELECT_TARGET_ID(actorID) end

---检查该目标是否可以攻击
---* actorID 玩家、怪物、NPC、人形怪等对象ID(对应服务端唯一ID/UserID)
---@param actorID number
---@return boolean "目标是否可以攻击 true/false"
---```lua
---local actorID = SL:Get_USER_ID()
---local cc = SL:Get_TARGET_ATTACK_ENABLE(actorID)
---print(cc,type(cc))
---```
function SL:Get_TARGET_ATTACK_ENABLE(actorID) end

---获取actor组队状态
---* actorID 玩家、怪物、NPC、人形怪等对象ID(对应服务端唯一ID/UserID)
---@param actorID integer
---@return number "组队id"
---```lua
---local actorID = SL:Get_USER_ID()
---local cc = SL:Get_ACTOR_TEAM_STATE(actorID)
---print(cc,type(cc))
---```
function SL:Get_ACTOR_TEAM_STATE(actorID) end

---获取actor行会ID
---* actorID 玩家、怪物、NPC、人形怪等对象ID(对应服务端唯一ID/UserID)
---@param actorID number
---@return string "获取actor行会ID"
---```lua
---local actorID=SL:Get_USER_ID()
---local cc=SL:Get_ACTOR_GUILD_ID(param, actorID)
---print(cc,type(cc))
---```
function SL:Get_ACTOR_GUILD_ID(actorID) end

---获取actor行会名字
---* actorID 玩家、怪物、NPC、人形怪等对象ID(对应服务端唯一ID/UserID)
---@param actorID number
---@return string "actor行会名字"
---```lua
---local actorID=SL:Get_USER_ID()
---local cc=SL:Get_ACTOR_GUILD_NAME(param, actorID)
---print(cc,type(cc))
---```
function SL:Get_ACTOR_GUILD_NAME(actorID) end

---获取actor的typeIndex
---* actorID 玩家、怪物、NPC、人形怪等对象ID(对应服务端唯一ID/UserID)
---@param actorID number
---@return number "typeIndex"
---```lua
---local actorID=SL:Get_USER_ID()
---local cc=SL:Get_ACTOR_TYPE_INDEX(param, actorID)
---print(cc,type(cc))
---```
function SL:Get_ACTOR_TYPE_INDEX(actorID) end

---获取actor方向
---* actorID 玩家、怪物、NPC、人形怪等对象ID(对应服务端唯一ID/UserID)
---@param actorID number
---@return number "actor方向"
---```lua
---local actorID = SL:Get_USER_ID()
---local cc = SL:Get_ACTOR_DIR(actorID)
---print(cc,type(cc))
---```
function SL:Get_ACTOR_DIR(actorID) end

---获取actor地图坐标X
---* actorID 玩家、怪物、NPC、人形怪等对象ID(对应服务端唯一ID/UserID)
---@param actorID number
---@return number "actor地图坐标X"
---```lua
---local actorID = SL:Get_USER_ID()
---local cc = SL:Get_ACTOR_MAP_X(actorID)
---print(cc,type(cc))
---```
function SL:Get_ACTOR_MAP_X(actorID) end

---获取actor地图坐标Y
---* actorID 玩家、怪物、NPC、人形怪等对象ID(对应服务端唯一ID/UserID)
---@param actorID number
---@return integer "actor地图坐标Y"
---```lua
---local actorID = SL:Get_USER_ID()
---local cc = SL:Get_ACTOR_MAP_Y(actorID)
---print(cc,type(cc))
---```
function SL:Get_ACTOR_MAP_Y(actorID) end

---获取actor世界坐标X
---* actorID 玩家、怪物、NPC、人形怪等对象ID(对应服务端唯一ID/UserID)
---@param actorID number
---@return number "actor世界坐标X"
---```lua
---local actorID = SL:Get_USER_ID()
---local cc = SL:Get_ACTOR_POSITION_X(actorID)
---print(cc,type(cc))
---```
function SL:Get_ACTOR_POSITION_X(actorID) end

---获取actor世界坐标Y
---* actorID 玩家、怪物、NPC、人形怪等对象ID(对应服务端唯一ID/UserID)
---@param actorID number
---@return number "actor世界坐标Y"
---```lua
---local actorID = SL:Get_USER_ID()
---local cc = SL:Get_ACTOR_POSITION_Y(actorID)
---print(cc,type(cc))
---```
function SL:Get_ACTOR_POSITION_Y(actorID) end

---获取actor主人ID
---* actorID 玩家、怪物、NPC、人形怪等对象ID(对应服务端唯一ID/UserID)
---@param actorID number
---@return number "actor主人ID"
---```lua
---local cc=SL:Get_ACTOR_MASTER_ID(param, actorID)
---print(cc,type(cc))
---```
function SL:Get_ACTOR_MASTER_ID(actorID) end

---获取actor是否有主人
---* actorID 玩家、怪物、NPC、人形怪等对象ID(对应服务端唯一ID/UserID)
---@param actorID number
---@return number "获取actor是否有主人"
---```lua
---local actorID = SL:Get_USER_ID()
---local cc = SL:Get_ACTOR_HAVE_MASTER(actorID)
---print(cc,type(cc))
---```
function SL:Get_ACTOR_HAVE_MASTER(actorID) end

---获取actor阵营ID
---* actorID 玩家、怪物、NPC、人形怪等对象ID(对应服务端唯一ID/UserID)
---@param actorID number
---@return number "actor阵营ID"
---```lua
---local cc=SL:Get_ACTOR_FACTION(param, actorID)
---print(cc,type(cc))
---```
function SL:Get_ACTOR_FACTION(actorID) end

---获取actor是否在安全区
---* actorID 玩家、怪物、NPC、人形怪等对象ID(对应服务端唯一ID/UserID)
---@param actorID number
---@return boolean "actor是否在安全区 true/false"
---```lua
---local actorID = SL:Get_USER_ID()
---local cc = SL:Get_ACTOR_IN_SAFE_ZONE(actorID)
---print(cc,type(cc))
---```
function SL:Get_ACTOR_IN_SAFE_ZONE(actorID) end

---获取actor的外观ID
---* actorID 玩家、怪物、NPC、人形怪等对象ID(对应服务端唯一ID/UserID)
---@param actorID number
---@return number "actor的外观ID"
---```lua
---local actorID = SL:Get_USER_ID()
---local cc = SL:Get_ACTOR_APPR_ID(actorID)
---print(cc,type(cc))
---```
function SL:Get_ACTOR_APPR_ID(actorID) end

---获取actor挂接点
---* actorID 玩家、怪物、NPC、人形怪等对象ID(对应服务端唯一ID/UserID)
---@param actorID number
---@return table "actor挂接点"
---```lua
---local actorID = SL:Get_USER_ID()
---local cc = SL:Get_ACTOR_MOUNT_NODE(actorID)
---print(cc,type(cc))
---```
function SL:Get_ACTOR_MOUNT_NODE(actorID) end

---检查英雄选中的目标是否能锁定
---* actorID 玩家、怪物、NPC、人形怪等对象ID(对应服务端唯一ID/UserID)
---@param actorID number
---@return boolean "英雄选中的目标是否能锁定 true/false"
---```lua
---local actorID = SL:Get_USER_ID()
---local cc = SL:Get_ACTOR_CAN_LOCK_BY_HERO(actorID)
---print(cc,type(cc))
---```
function SL:Get_ACTOR_CAN_LOCK_BY_HERO(actorID) end

---获取actor红名灰名
---* actorID 玩家、怪物、NPC、人形怪等对象ID(对应服务端唯一ID/UserID)
---@param actorID number
---@return number "actor红名灰名<br>白=0<br>咖啡=1<br>红=2<br>灰=3"
---```lua
---local actorID = SL:Get_USER_ID()
---local cc = SL:Get_ACTOR_PKLV(actorID)
---print(cc,type(cc))
---```
function SL:Get_ACTOR_PKLV(actorID) end

---获取actor区服ID, 跨服时使用
---* actorID 玩家、怪物、NPC、人形怪等对象ID(对应服务端唯一ID/UserID)
---@param actorID number
---@return integer "actor区服ID"
---```lua
---local actorID=SL:Get_USER_ID()
---local cc=SL:Get_ACTOR_SERVER_ID(param, actorID)
---print(cc,type(cc))
---```
function SL:Get_ACTOR_SERVER_ID(actorID) end

---actor是否在摆摊
---* actorID 玩家、怪物、NPC、人形怪等对象ID(对应服务端唯一ID/UserID)
---@param actorID number
---@return boolean "是否在摆摊 true/false"
---```lua
---local actorID = SL:Get_USER_ID()
---local cc = SL:Get_ACTOR_IS_IN_STALL(actorID)
---print(cc,type(cc))
---```
function SL:Get_ACTOR_IS_IN_STALL(actorID) end

---获取actor摆摊名
---* actorID 玩家、怪物、NPC、人形怪等对象ID(对应服务端唯一ID/UserID)
---@param actorID number
---@return string "actor摆摊名"
---```lua
---local actorID=SL:Get_USER_ID()
---local cc=SL:Get_ACTOR_STALL_NAME(param, actorID)
---print(cc,type(cc))
---```
function SL:Get_ACTOR_STALL_NAME(actorID) end

---获取actor是否是离线状态玩家
---* actorID 玩家、怪物、NPC、人形怪等对象ID(对应服务端唯一ID/UserID)
---@param actorID number
---@return boolean "actor是否是离线状态玩家 true/false"
---```lua
---local actorID = SL:Get_USER_ID()
---local cc = SL:Get_ACTOR_IS_OFFLINE(actorID)
---print(cc,type(cc))
---```
function SL:Get_ACTOR_IS_OFFLINE(actorID) end

---actor是否是神秘人
---* actorID 玩家、怪物、NPC、人形怪等对象ID(对应服务端唯一ID/UserID)
---@param actorID number
---@return boolean "是否是神秘人 true/false"
---```lua
---local actorID = SL:Get_USER_ID()
---local cc = SL:Get_ACTOR_IS_MYSTERY_MAN(actorID)
---print(cc,type(cc))
---```
function SL:Get_ACTOR_IS_MYSTERY_MAN(actorID) end

---获取actor是否拥有护身
---* actorID 玩家、怪物、NPC、人形怪等对象ID(对应服务端唯一ID/UserID)
---@param actorID number
---@return boolean "actor是否拥有护身 true/false"
---```lua
---local actorID = SL:Get_USER_ID()
---local cc = SL:Get_ACTOR_IS_HUSHEN(actorID)
---print(cc,type(cc))
---```
function SL:Get_ACTOR_IS_HUSHEN(actorID) end

---actor是否是主玩家
---* actorID 玩家、怪物、NPC、人形怪等对象ID(对应服务端唯一ID/UserID)
---@param actorID number
---@return boolean "actor是否是主玩家 true/false"
---```lua
---local actorID = SL:Get_USER_ID()
---local cc = SL:Get_ACTOR_IS_MAINPLAYER(actorID)
---print(cc,type(cc))
---```
function SL:Get_ACTOR_IS_MAINPLAYER(actorID) end

---获取actor国家ID
---* actorID 玩家、怪物、人形怪等对象ID(对应服务端唯一ID/UserID)
---@param actorID number
---@return number "获取actor国家ID"
---```lua
---local actorID=SL:Get_USER_ID()
---local cc=SL:Get_ACTOR_NATION_ID(param, actorID)
---print(cc,type(cc))
---```
function SL:Get_ACTOR_NATION_ID(actorID) end

---获取actor坐骑的主驾ID
---* actorID 玩家、怪物、NPC、人形怪等对象ID(对应服务端唯一ID/UserID)
---@param actorID number
---@return integer "actor坐骑的主驾ID"
---```lua
---local actorID=SL:Get_USER_ID()
---local cc=SL:Get_ACTOR_HORSE_MASTER_ID(param, actorID)
---print(cc,type(cc))
---```
function SL:Get_ACTOR_HORSE_MASTER_ID(actorID) end

---获取actor坐骑的副驾ID
---* actorID 玩家、怪物、NPC、人形怪等对象ID(对应服务端唯一ID/UserID)
---@param actorID number
---@return number "actor坐骑的副驾ID"
---```lua
---local actorID=SL:Get_USER_ID()
---local cc=SL:Get_ACTOR_HORSE_COPILOT_ID(param, actorID)
---print(cc,type(cc))
---```
function SL:Get_ACTOR_HORSE_COPILOT_ID(actorID) end

---actor是否是坐骑的副驾
---* actorID 玩家、怪物、NPC、人形怪等对象ID(对应服务端唯一ID/UserID)
---@param actorID number
---@return boolean "actor是否是坐骑的副驾 true/false"
---```lua
---local actorID = SL:Get_USER_ID()
---local cc = SL:Get_ACTOR_IS_HORSE_COPILOT(actorID)
---print(cc,type(cc))
---```
function SL:Get_ACTOR_IS_HORSE_COPILOT(actorID) end

---actor是否是双人坐骑
---* actorID 玩家、怪物、NPC、人形怪等对象ID(对应服务端唯一ID/UserID)
---@param actorID number
---@return boolean "actor是否是双人坐骑 true/false"
---```lua
---local actorID = SL:Get_USER_ID()
---local cc = SL:Get_ACTOR_IS_DOUBLE_HORSE(actorID)
---print(cc,type(cc))
---```
function SL:Get_ACTOR_IS_DOUBLE_HORSE(actorID) end

---actor是否是连体坐骑
---* actorID 玩家、怪物、NPC、人形怪等对象ID(对应服务端唯一ID/UserID)
---@param actorID number
---@return boolean "actor是否是连体坐骑 true/false"
---```lua
---local actorID = SL:Get_USER_ID()
---local cc = SL:Get_ACTOR_IS_BODY_HORSE(actorID)
---print(cc,type(cc))
---```
function SL:Get_ACTOR_IS_BODY_HORSE(actorID) end

---获取actor的足迹特效ID
---* actorID 玩家、怪物、NPC、人形怪等对象ID(对应服务端唯一ID/UserID)
---@param actorID number
---@return number "actor的足迹特效ID"
---```lua
---local actorID = SL:Get_USER_ID()
---local cc = SL:Get_ACTOR_MOVE_EFFECT(actorID)
---print(cc,type(cc))
---```
function SL:Get_ACTOR_MOVE_EFFECT(actorID) end

---获取actor的夫妻ID
---* actorID 玩家、怪物、NPC、人形怪等对象ID(对应服务端唯一ID/UserID)
---@param actorID number
---@return integer "actor的夫妻ID"
---```lua
---local actorID=SL:Get_USER_ID()
---local cc=SL:Get_ACTOR_DEAR_ID(param, actorID)
---print(cc,type(cc))
---```
function SL:Get_ACTOR_DEAR_ID(actorID) end

---获取actor的师徒ID
---* actorID 玩家、怪物、NPC、人形怪等对象ID(对应服务端唯一ID/UserID)
---@param actorID number
---@return integer "actor的师徒ID"
---```lua
---local actorID = SL:Get_USER_ID()
---local cc = SL:Get_ACTOR_MENTOR_ID(actorID)
---print(cc,type(cc))
---```
function SL:Get_ACTOR_MENTOR_ID(actorID) end

---获取actor是否在附近显示
---* actorID 玩家、怪物、NPC、人形怪等对象ID(对应服务端唯一ID/UserID)
---@param actorID number
---@return boolean "actor是否在附近显示 true/false"
---```lua
---local actorID = SL:Get_USER_ID()
---local cc = SL:Get_ACTOR_NEAR_SHOW(actorID)
---print(cc,type(cc))
---```
function SL:Get_ACTOR_NEAR_SHOW(actorID) end

---获取actor是否在移动状态
---* actorID 玩家、怪物、NPC、人形怪等对象ID(对应服务端唯一ID/UserID)
---@param actorID number
---@return boolean "actor是否在移动状态 true/false"
---```lua
---local actorID = SL:Get_USER_ID()
---local cc = SL:Get_ACTOR_IS_MOVE(actorID)
---print(cc,type(cc))
---```
function SL:Get_ACTOR_IS_MOVE(actorID) end

---actor是否是骑马状态
---* actorID 玩家、怪物、NPC、人形怪等对象ID(对应服务端唯一ID/UserID)
---@param actorID number
---@return boolean "actor是否是骑马状态 true/false"
---```lua
---local actorID = SL:Get_USER_ID()
---local cc = SL:Get_ACTOR_IS_HORSEBACK_RADING(actorID)
---print(cc,type(cc))
---```
function SL:Get_ACTOR_IS_HORSEBACK_RADING(actorID) end

---获取actor(怪物)是否石化状态
---* actorID 玩家、怪物、NPC、人形怪等对象ID(对应服务端唯一ID/UserID)
---@param actorID number
---@return boolean "actor(怪物)是否石化状态 true/false"
---```lua
---local actorID=SL:Get_USER_ID()
---local cc=SL:Get_ACTOR_STOME_MODE(param, actorID)
---print(cc,type(cc))
---```
function SL:Get_ACTOR_STOME_MODE(actorID) end

---获取actor(怪物) race server
---* actorID 玩家、怪物、NPC、人形怪等对象ID(对应服务端唯一ID/UserID)
---@param actorID number
---@return number "actor(怪物) race server"
---```lua
---local actorID=SL:Get_USER_ID()
---local cc=SL:Get_ACTOR_RACE_SERVER(param, actorID)
---print(cc,type(cc))
---```
function SL:Get_ACTOR_RACE_SERVER(actorID) end

---获取actor(怪物) race img
---* actorID 玩家、怪物、NPC、人形怪等对象ID(对应服务端唯一ID/UserID)
---@param actorID number
---@return number "actor(怪物) race img"
---```lua
---local actorID=SL:Get_USER_ID()
---local cc=SL:Get_ACTOR_RACE_IMG(param, actorID)
---print(cc,type(cc))
---```
function SL:Get_ACTOR_RACE_IMG(actorID) end

---获取actor(怪物)是否不显示名字
---* actorID 玩家、怪物、NPC、人形怪等对象ID(对应服务端唯一ID/UserID)
---@param actorID number
---@return boolean "actor(怪物)是否不显示名字 true/false"
---```lua
---local actorID=SL:Get_USER_ID()
---local cc=SL:Get_ACTOR_HIDE_NAME(param, actorID)
---print(cc,type(cc))
---```
function SL:Get_ACTOR_HIDE_NAME(actorID) end

---获取actor(怪物)是否不显示血条
---* actorID 玩家、怪物、NPC、人形怪等对象ID(对应服务端唯一ID/UserID)
---@param actorID number
---@return boolean "actor(怪物)是否不显示血条 true/false"
---```lua
---local actorID=SL:Get_USER_ID()
---local cc=SL:Get_ACTOR_HIDE_HP_BAR(param, actorID)
---print(cc,type(cc))
---```
function SL:Get_ACTOR_HIDE_HP_BAR(actorID) end

---获取actor(怪物)国家模式是否可被攻击
---* actorID 玩家、怪物、NPC、人形怪等对象ID(对应服务端唯一ID/UserID)
---@param actorID number
---@return boolean "获取actor(怪物)国家模式是否可被攻击 true/false"
---```lua
---local actorID=SL:Get_USER_ID()
---local cc=SL:Get_ACTOR_NATION_ENEMY_PK(param, actorID)
---print(cc,type(cc))
---```
function SL:Get_ACTOR_NATION_ENEMY_PK(actorID) end

---获取actor的GM自定义数据
---* actorID 玩家、怪物、NPC、人形怪等对象ID(对应服务端唯一ID/UserID)
---@param actorID number
---@return table "actor的GM自定义数据"
---```lua
---local actorID = SL:Get_USER_ID()
---local cc = SL:Get_ACTOR_GM_DATA(actorID)
---print(cc,type(cc))
---```
function SL:Get_ACTOR_GM_DATA(actorID) end

---actor是否出生
---* actorID 玩家、怪物、NPC、人形怪等对象ID(对应服务端唯一ID/UserID)
---@param actorID number
---@return boolean "actor是否出生 true/false"
---```lua
---local actorID = SL:Get_USER_ID()
---local cc = SL:Get_ACTOR_IS_BORN(actorID)
---print(cc,type(cc))
---```
function SL:Get_ACTOR_IS_BORN(actorID) end

---actor是否钻回洞穴
---* actorID 玩家、怪物、NPC、人形怪等对象ID(对应服务端唯一ID/UserID)
---@param actorID number
---@return boolean "actor是否钻回洞穴 true/false"
---```lua
---local actorID = SL:Get_USER_ID()
---local cc = SL:Get_ACTOR_IS_CAVE(actorID)
---print(cc,type(cc))
---```
function SL:Get_ACTOR_IS_CAVE(actorID) end

---actor身上所有buff数据
---* actorID 玩家、怪物、NPC、人形怪等对象ID(对应服务端唯一ID/UserID)
---@param actorID number
---@return table "actor身上所有buff数据"
---```lua
---local actorID = SL:Get_USER_ID()
---local cc = SL:Get_ACTOR_BUFF_DATA(actorID)
---print(cc,type(cc))
---```
function SL:Get_ACTOR_BUFF_DATA(actorID) end

---actor是否有某个buff
---* actorID 玩家、怪物、NPC、人形怪等对象ID(对应服务端唯一ID/UserID)
---* buffID buffid
---@param actorID number
---@param buffID number
---@return boolean "actor是否有某个buff true/false"
---```lua
---local actorID = SL:Get_USER_ID()
---local cc = SL:Get_ACTOR_HAS_ONE_BUFF(actorID,174)
---print(cc,type(cc))
---```
function SL:Get_ACTOR_HAS_ONE_BUFF(actorID, buffID) end

---获取actor身上某个buff数据
---* actorID 玩家、怪物、NPC、人形怪等对象ID(对应服务端唯一ID/UserID)
---* buffID buffid
---@param actorID number
---@param buffID number
---@return table "获取actor身上某个buff数据"
---```lua
---local actorID = SL:Get_USER_ID()
---local cc = SL:Get_ACTOR_BUFF_DATA_BY_ID(actorID,buffID)
---print(cc,type(cc))
---```
function SL:Get_ACTOR_BUFF_DATA_BY_ID(actorID, buffID) end

-- [Source: 元变量^ItemTips.lua]

---装备Map
---@return table "装备Map"
---```lua
---local value = SL:Get_EQUIPMAP_BY_STDMODE()
---SL:dump(value,string.format("元变量-装备Map(%s)",type(cc)))
---```
function SL:Get_EQUIPMAP_BY_STDMODE() end

---除装备Map 显示持久的stdmode
---@return table "除装备Map 显示持久的stdmode"
---```lua
---local cc = SL:Get_EX_SHOWLAST_MAP()
---print(cc,type(cc))
---```
function SL:Get_EX_SHOWLAST_MAP() end

---通过stdmode获取TIPS装备位列表
---* param1 装备的stdmode
---* param2 是否英雄
---@param param1 number
---@param param2 boolean
---@return table "TIPS装备位列表"
---```lua
---local cc = SL:Get_TIP_POSLIST_BY_STDMODE(96)
---print(cc,type(cc))
---```
function SL:Get_TIP_POSLIST_BY_STDMODE(param1, param2) end

---是否是该玩家性别装备
---* param1 装备数据
---* param2 是否英雄
---@param param1 table
---@param param2 boolean
---@return boolean "是否是该玩家性别装备 true/false"
---```lua
---local cc = SL:Get_IS_SAMESEX_EQUIP(itemData)
---print(cc,type(cc))
---```
function SL:Get_IS_SAMESEX_EQUIP(param1, param2) end


---对cfg_att_score表操作 获取属性配置
---* param1 表中的key
---@param param1 number
---@return table "属性配置"
---```lua
---local cc = SL:Get_ATTR_CONFIG(key)
---print(cc,type(cc))
---```
function SL:Get_ATTR_CONFIG(param1) end

---对cfg_suitex表操作 获取对应套装id配置
---* param1 表中的suitid
---@param param1 number
---@return string "对应套装id配置"
---```lua
---local cc = SL:Get_SUITEX_CONFIG(suitID)
---print(cc,type(cc))
---```
function SL:Get_SUITEX_CONFIG(param1) end

---物品类型
---@return table "参考上方提示"
---```tips
---data = {
---    DruaAndSomething = 1, -- 道具表 StdMode 0~3 的道具
---    SkillBook = 2,     -- 技能书 道具表 StdMode 4 的道具
---    Equip = 3,         -- 装备
---    Bundle = 4,        -- 困束 道具表 StdMode 31 的道具
---    Box = 5,           -- 盒子 道具表 StdMode 200 的道具
---    TreasureMap = 6,   -- StdMode 为 101 的道具
---    FashionItem = 7,   -- 时装道具 道具表 StdMode 102 的道具
---    MonsterCard = 8,   -- 怪物卡片 道具表 StdMode 103 的道具
---    SomethingCanUse = 9, -- 道具表 StdMode 为 49 的道具
---    BoxKey = 10,       -- 箱子钥匙 道具表 StdMode 40 的道具
---    Collimator = 11,   -- 准星道具 道具表 StdMode 47 的道具
---    WishBox = 12,      -- StdMode 为 96 的道具
---    NewPet = 13,       -- 宠物道具 道具表 StdMode 201 的道具
---    Other = 99         -- 其他
---}
---```
---```lua
---local cc = SL:Get_ITEMTYPE_ENUM()
---print(cc,type(cc))
---```
function SL:Get_ITEMTYPE_ENUM() end

---根据道具数据获取物品类型
---* itemData 物品数据
---@param itemData table
---@return integer "物品类型"
---```lua
---local cc = SL:Get_ITEMTYPE(itemData)
---print(cc,type(cc))
---```
function SL:Get_ITEMTYPE(itemData) end

---自定义属性ID映射Map
---@return table "自定义属性ID映射Map"
---```lua
---local cc = SL:Get_CUST_ABIL_MAP()
---print(cc,type(cc))
---```
function SL:Get_CUST_ABIL_MAP() end

---根据道具索引判断是否是回城石
---* itemIndex 物品索引
---@param itemIndex table
---@return boolean "true或false"
---```lua
---local a = SL:Get_ITEM_IS_CITY_STONE(1)
---print(a)
---```
function SL:Get_ITEM_IS_CITY_STONE(itemIndex) end

---根据道具索引判断是否是随机石
---* itemIndex 物品索引
---@param itemIndex table
---@return boolean "true或false"
---```lua
---local a = SL:Get_ITEM_IS_RAND_STONE(1)
---print("a = ",a)
---```
function SL:Get_ITEM_IS_RAND_STONE(itemIndex) end

---获取道具是否在被移动
---@return boolean "true或false"
---```lua
---local a = SL:Get_ITEM_MOVE_STATE()
---print("a = ",a)
---```
function SL:Get_ITEM_MOVE_STATE() end

---获得当前正在被移动的道具数量
---@return integer "nil或当前正在移动的道具数量"
---```lua
---local b = SL:Get_ITEM_MOVE_FROM()
---print("b = ",b)
---```
function SL:Get_ITEM_MOVE_FROM() end

---获得当前正在被移动的道具信息
---@return table "nil或当前正在移动的道具table值"
---```lua
---local a = SL:Get_ITEM_MOVE_DATA()
---print("local a = SL:Get_ITEM_MOVE_DATA()")
---print("a = ",a)
---```
function SL:Get_ITEM_MOVE_DATA() end

---获取上次移动穿戴的道具数据
---@return any "MAKEINDEX"
---```lua
---local b = SL:Get_LAST_MOVE_TAKEON_ITEM_MAKEINDEX()
---print("b = ",b)
---```
function SL:Get_LAST_MOVE_TAKEON_ITEM_MAKEINDEX() end

---根据MakeIndex获取物品自定义变量列表
---* key MakeIndex
---@param key integer
---@return table "物品自定义变量列表"
function SL:Get_ITEM_CUSTOM_VARLIST(key) end

---根据MakeIndex和物品名获取物品自定义变量
---* key MakeIndex
---* vName 变量名
---@param key integer
---@param vName string
---@return integer "物品自定义变量"
function SL:Get_ITEM_CUSTOM_VAR_BY_VNAME(key, vName) end

---根据道具数据获取物品自定义类型
---* key MakeIndex
---* type 自定义属性组id
---@param key integer
---@param type integer
---@return integer "物品自定义变量"
function SL:Get_ITEM_CUSTOM_DIYSHOW_BY_TYPE(key, type) end

-- [Source: 元变量^Set.lua]

---设置当前选中的背包页
---* param1 页签
---@param param1 integer
---```tips
---旧接口名：SL:Set_BAG_PAGE_CUR
---```
---```lua
---SL:Set_BAG_CUR_PAGE(page)
---```
function SL:Set_BAG_CUR_PAGE(param1) end

---当前聊天频道
---* param1 聊天频道
---@param param1 integer
---```lua
---SL:Set_CHAT_CUR_CHAT_CHANNEL(channel)
---```
function SL:Set_CHAT_CUR_CHAT_CHANNEL(param1) end

---设置捡物品数据
---* param1 设置ID
---* param2 设置值
---@param param1 integer
---@param param2 table
---```lua
---SL:Set_SETTING_PICK_VALUE(id,value)
---```
function SL:Set_SETTING_PICK_VALUE(param1, param2) end

---设置的数据
---* param1 设置ID
---* param2 设置值
---@param param1 integer
---@param param2 table
---```lua
---SL:Set_SETTING_VALUE(id,value)
---```
function SL:Set_SETTING_VALUE(param1, param2) end

---设置捡物品组数据
---* param1 设置ID
---* param2 设置值
---@param param1 integer
---@param param2 table
---```lua
---SL:Set_SETTING_PICK_GROUP_VALUE(id,value)
---```
function SL:Set_SETTING_PICK_GROUP_VALUE(param1, param2) end

---设置排序相关数据
---* param1 设置ID
---* param2 设置值
---@param param1 integer
---@param param2 table
---```lua
---SL:Set_SETTING_RANK_DATA(id,value)
---```
function SL:Set_SETTING_RANK_DATA(param1, param2) end

---设置boss提示类型
---* param1 设置值
---@param param1 table
---```lua
---SL:Set_SETTING_BOSS_REMIND_TYPE(param1)
---```
function SL:Set_SETTING_BOSS_REMIND_TYPE(param1) end

---设置boss提示值
---* param1 提示值
---@param param1 string
---```lua
---SL:Set_SETTING_BOSS_REMIND_VALUE("提示")
---```
function SL:Set_SETTING_BOSS_REMIND_VALUE(param1) end

---角色面板时装显示开关
---* param1 开关
---@param param1 boolean
---```lua
---SL:Set_PLAYER_SUPEREQUIP_SHOW(，true)
---```
function SL:Set_PLAYER_SUPEREQUIP_SHOW(param1) end

---英雄面板时装显示开关
---* param1 开关
---@param param1 boolean
---```lua
---SL:Set_HERO_SUPEREQUIP_SHOW(true)
---```
function SL:Set_HERO_SUPEREQUIP_SHOW(param1) end

---设置技能快捷键
---* param1 技能ID
---* param2 0~16
---@param param1 number
---@param param2 number
---```lua
---local cc = SL:Set_SKILL_KEY(104,1)
---print(cc,type(cc))
---```
function SL:Set_SKILL_KEY(param1, param2) end

---英雄设置技能快捷键
---* param1 技能ID
---* param2 0~16
---@param param1 number
---@param param2 number
---```lua
---local cc = SL:Set_H_SKILL_KEY(104,1)
---print(cc,type(cc))
---```
function SL:Set_H_SKILL_KEY(param1, param2) end

---是否点击英雄守护按钮
---* param1 true/false
---@param param1 boolean
---```lua
---local cc = SL:Set_HERO_GUARD_ISCLICK(true)
---print(cc,type(cc))
---```
function SL:Set_HERO_GUARD_ISCLICK(param1) end

---设置英雄激活的状态列表
---* param1 状态列表
---@param param1 table
---```lua
---local cc = SL:Set_HERO_ACTIVES_STATES(states)
---print(cc,type(cc))
---```
function SL:Set_HERO_ACTIVES_STATES(param1) end

---合成打开的ID
---* param1 合成表id
---@param param1 number
---```lua
---SL:Set_COMPOUND_OPEN_ID(id)
---```
function SL:Set_COMPOUND_OPEN_ID(param1) end

---选择目标ID
---* param1 目标ID
---@param param1 number
---```lua
---local cc = SL:Set_SELECT_TARGET_ID(，targetID)
---print(cc,type(cc))
---```
function SL:Set_SELECT_TARGET_ID(param1) end

---PC锁定攻击状态
---* param1 锁定
---@param param1 boolean
---```lua
---local cc = SL:Set_ATTACK_STATE(，true)
---print(cc,type(cc))
---```
function SL:Set_ATTACK_STATE(param1) end

---功能菜单参数设置
---* param1 table 参数数据
---@param param1 boolean
---```lua
---SL:Set_FUNCDOCK_PARAM(data)
---```
function SL:Set_FUNCDOCK_PARAM(param1) end

---设置剪贴板文本
---* param1 文本内容
---@param param1 string
---```lua
---local cc = SL:Set_CLIPBOARD_TEXT(文本内容)
---print(cc,type(cc))
---```
function SL:Set_CLIPBOARD_TEXT(param1) end

---设置 自动拾取-掉落物-飞向的世界坐标
---* param1 x坐标
---* param2 y坐标
---@param param1 number
---@param param2 number
---```tips
---Set_DROPITEM_FLY_WORLD_POSITION 设置 自动拾取-掉落物-飞向的世界坐标的优先级比txt设置的高,
---需要后端先设置setpickitemtobag后才能修改坐标
---```
---```lua
---local cc = SL:Set_DROPITEM_FLY_WORLD_POSITION(100,300)
---print(cc,type(cc))
---```
function SL:Set_DROPITEM_FLY_WORLD_POSITION(param1, param2) end

---设置快捷栏个数
---* param1 快捷栏个数
---@param param1 number
---```lua
---SL:Set_QUICK_USE_NUM(6)
---```
function SL:Set_QUICK_USE_NUM(param1) end

---特定状况引导事件开始通知
---* param1 脚本引导父节点ID
---* param2 是否需要刷新位置
---@param param1 number
---@param param2 boolean
---```lua
---local cc = SL:Set_GUIDE_EVENT_BEGAN(110,true)
---print(cc,type(cc))
---```
function SL:Set_GUIDE_EVENT_BEGAN(param1, param2) end

---特定状况引导事件结束通知
---* param1 脚本引导父节点ID
---@param param1 number
---```lua
---local cc = SL:Set_GUIDE_EVENT_END(110)
---print(cc,type(cc))
---```
function SL:Set_GUIDE_EVENT_END(param1) end

---设置人物内功技能开关
---* param1 技能ID
---* param2 技能类型[2 = 人物怒内功技能 4 = 人物静内功技能]
---* param3 开关状态 0 开启 1关闭
---@param param1 number
---@param param2 number
---@param param3 number
---```lua
---local cc = SL:Set_INTERNAL_SKILL_ONOFF(101,2,1)
---print(cc,type(cc))
---```
function SL:Set_INTERNAL_SKILL_ONOFF(param1, param2, param3) end


---修改PC端屏幕分辨率
---* param1 宽
---* param2 高
---@param param1 number
---@param param2 number
---```lua
---local cc = SL:Set_WIN_DEVICE_SIZE(1024, 768)
---print(cc,type(cc))
---```
function SL:Set_WIN_DEVICE_SIZE(param1, param2) end

---摆摊设置选中的物品唯一ID
---* param1 物品唯一ID
---@param param1 number
---```lua
---SL:Set_STALL_SELECT_ID(makaIndex)
---```
function SL:Set_STALL_SELECT_ID(param1) end


---设置允许组队状态
---* param1 true/false
---@param param1 boolean
---```lua
---SL:Set_TEAM_STATUS_PERMIT(true)
---```
function SL:Set_TEAM_STATUS_PERMIT(param1) end

---设置允许添加状态
---* param1 true/false
---@param param1 boolean
---```lua
---SL:Set_ADD_STATUS_PERMIT(true)
---```
function SL:Set_ADD_STATUS_PERMIT(param1) end

---设置允许交易状态
---* param1 true/false
---@param param1 boolean
---```lua
---SL:Set_DEAL_STATUS_PERMIT(true)
---```
function SL:Set_DEAL_STATUS_PERMIT(param1) end

---设置允许显示状态
---* param1 true/false
---@param param1 boolean
---```lua
---SL:Set_SHOW_STATUS_PERMIT(true)
---```
function SL:Set_SHOW_STATUS_PERMIT(param1) end

---设置转向方向
---* param1 方向 0 ~ 8
---@param param1 number
---```lua
---local cc = SL:Set_TURN_DIR(4)
---print(cc,type(cc))
---```
function SL:Set_TURN_DIR(param1) end

---设置PC持续攻击目标ID
---* param1 actorID
---@param param1 number
---```lua
---local cc = SL:Set_SELECT_SHIFT_ATTACK_ID(100181)
---print(cc,type(cc))
---```
function SL:Set_SELECT_SHIFT_ATTACK_ID(param1) end

---设置是否接收该分类掉落信息
---* param1 掉落分组id
---* param2 是否接收
---@param param1 number
---@param param2 boolean
---```lua
---SL:Set_CHAT_DROP_TYPE_IS_RECEIVE(1, false)
---```
function SL:Set_CHAT_DROP_TYPE_IS_RECEIVE(param1, param2) end

---添加自动使用弹窗
---* param1 类型 （1: 人物 2: 英雄）
---* param2 装备位
---* param3 makeIndex
---@param param1 number
---@param param2 number
---@param param3 number
---```lua
---SL:Set_AUTOUSE_MAKEINDEX_BY_POS(playerType, equipPos, MakeIndex)
---```
function SL:Set_AUTOUSE_MAKEINDEX_BY_POS(param1, param2, param3) end

-- [Source: 元变量^充值-摆摊-宝箱.lua]

---充值商品信息列表
---@return table "充值商品信息列表"
---```lua
---local cc = SL:Get_RECHARGE_PRODUCTS()
---print(cc,type(cc))
---```
function SL:Get_RECHARGE_PRODUCTS() end

---通过商品Id获取商品信息
---* id 商品id
---@param id number
---@return table "商品信息"
---```lua
---local cc = SL:Get_RECHARGE_PRODUCT_BY_ID(productID)
---print(cc,type(cc))
---```
function SL:Get_RECHARGE_PRODUCT_BY_ID(id) end

---是否接入第三方SDK
---@return boolean "是否接入第三方SDK true/false"
---```lua
---local cc = SL:Get_IS_SDK_PAY()
---print(cc,type(cc))
---```
function SL:Get_IS_SDK_PAY() end

---获取购买摊位名字
---@return string "获取购买摊位名字"
---```lua
---local cc = SL:Get_STALL_SELL_SHOW_NAME()
---print(cc,type(cc))
---```
function SL:Get_STALL_SELL_SHOW_NAME() end

---获取购买摊位物品信息
---@return table "获取购买摊位物品信息"
---```lua
---local cc = SL:Get_STALL_ONSELL_DATA()
---print(cc,type(cc))
---```
function SL:Get_STALL_ONSELL_DATA() end

---获取我的摊位物品信息
---@return table "获取我的摊位物品信息"
---```lua
---local cc = SL:Get_STALL_MYSELL_DATA()
---print(cc,type(cc))
---```
function SL:Get_STALL_MYSELL_DATA() end

---是否还有重摇/开启次数
---@return boolean "是否还有重摇/开启次数 true/false"
---```lua
---local cc = SL:Get_HAVE_GOLDBOX_OPENTIME()
---print(cc,type(cc))
---```
function SL:Get_HAVE_GOLDBOX_OPENTIME() end

-- [Source: 元变量^内挂设置.lua]

---设置是否生效
---* param1 内挂设置index
---@param param1 number
---@return number "设置是否生效 1/0"
---```lua
---local cc = SL:Get_SETTING_ENABLED(1)
---print(cc,type(cc))
---```
function SL:Get_SETTING_ENABLED(param1) end

---获取设置的数据
---* param1 内挂设置index
---@param param1 number
---@return table "设置的数据"
---```lua
---local cc = SL:Get_SETTING_VALUE(index)
---print(cc,type(cc))
---```
function SL:Get_SETTING_VALUE(param1) end

---获取设置的配置
---* param1 内挂设置index
---@param param1 number
---@return table "设置的配置"
---```lua
---local cc = SL:Get_SETTING_CONFIG(36)
---print(cc,type(cc))
---```
function SL:Get_SETTING_CONFIG(param1) end

---获取物品拾取设置
---* param1 内挂设置index
---@param param1 number
---@return table "物品拾取设置"
---```lua
---local cc = SL:Get_SETTING_PICK_VALUE(36)
---print(cc,type(cc))
---```
function SL:Get_SETTING_PICK_VALUE(param1) end

---可以拣的物品配置
---* param1 内挂设置index
---@param param1 number
---@return table "可以拣的物品配置"
---```lua
---local cc = SL:Get_SETTING_PICK_CONFIG(36)
---print(cc,type(cc))
---```
function SL:Get_SETTING_PICK_CONFIG(param1) end

---物品是否可以设置
---@return table "物品是否可以设置"
---```lua
---local cc = SL:Get_SETTING_IS_ITEM_PICK_CAN_SET()
---print(cc,type(cc))
---```
function SL:Get_SETTING_IS_ITEM_PICK_CAN_SET() end

---拾取组的数据
---* param1 内挂设置index
---@param param1 number
---@return table "拾取组的数据"
---```lua
---local cc = SL:Get_SETTING_PICK_GROUP_VALUE(36)
---print(cc,type(cc))
---```
function SL:Get_SETTING_PICK_GROUP_VALUE(param1) end

---通过值获取地图缩放对应百分比
---* param1 地图缩放值
---@param param1 number
---@return number "地图缩放对应百分比"
---```lua
---local cc = SL:Get_SETTING_MAPSCALE_PER(1.5)
---print(cc,type(cc))
---```
function SL:Get_SETTING_MAPSCALE_PER(param1) end

---通过百分比获取地图缩放值
---* param1 百分比
---@param param1 number
---@return number "地图缩放值"
---```lua
---local cc = SL:Get_SETTING_MAPSCALE_VALUE(50)
---print(cc,type(cc))
---```
function SL:Get_SETTING_MAPSCALE_VALUE(param1) end

-- [Source: 元变量^宠物.lua]

---是否有存活的宝宝
---@return boolean "是否有存活的宝宝 true/false"
---```lua
---local cc = SL:Get_PET_ALIVE()
---print(cc,type(cc))
---```
function SL:Get_PET_ALIVE() end

---宠物锁定的目标ID
---@return string "宠物锁定的目标ID"
---```lua
---local cc=SL:Get_PET_LOCK_ID(param)
---print(cc,type(cc))
---```
function SL:Get_PET_LOCK_ID() end

---获取宠物PK模式
---@return integer "获取宠物PK模式<br>1：跟随<br>2：战斗<br>3：锁定<br>4：休息"
---```lua
---local cc = SL:Get_PET_PKMODE()
---print(cc,type(cc))
---```
function SL:Get_PET_PKMODE() end

-- [Source: 元变量^当前地图.lua]

---地图ID
---@return string "地图ID"
---```lua
---local cc = SL:Get_MAP_ID()
---print(cc,type(cc))
---```
function SL:Get_MAP_ID() end

---地图名字
---@return string "地图名字"
---```lua
---local cc = SL:Get_MAP_NAME()
---print(cc,type(cc))
---```
function SL:Get_MAP_NAME() end

---地图数据ID
---@return string "地图数据ID"
---```lua
---local cc = SL:Get_MAP_DATA_ID()
---print(cc,type(cc))
---```
function SL:Get_MAP_DATA_ID() end

---小地图ID
---@return number "小地图ID"
---```lua
---local cc = SL:Get_MINIMAP_ID()
---print(cc,type(cc))
---```
function SL:Get_MINIMAP_ID() end

---获取小地图文件通过地图ID
---* mapID 地图ID
---@param mapID integer
---@return string "小地图文件路径"
---```lua
---local cc = SL:Get_MINIMAP_ID()
---print(cc,type(cc))
---```
function SL:Get_MINIMAP_FILE_BY_ID(mapID) end



---是否是安全区域
---@return boolean "是否是安全区域"
---```lua
---local cc = SL:Get_MAP_IS_IN_SAFE_AREA()
---print(cc,type(cc))
---```
function SL:Get_MAP_IS_IN_SAFE_AREA() end

---是否禁止职业和等级
---@return boolean "是否禁止职业和等级"
---```lua
---local cc = SL:Get_MAP_FORBID_LEVEL_AND_JOB()
---print(cc,type(cc))
---```
function SL:Get_MAP_FORBID_LEVEL_AND_JOB() end

---是否禁止说话
---@return boolean "是否禁止说话"
---```lua
---local cc = SL:Get_MAP_FORBID_SAY()
---print(cc,type(cc))
---```
function SL:Get_MAP_FORBID_SAY() end

---是否血量显示百分比
---@return boolean "是否血量显示百分比 true/false"
---```lua
---local cc = SL:Get_MAP_SHOW_HPPER()
---print(cc,type(cc))
---```
function SL:Get_MAP_SHOW_HPPER() end

---是否禁止查看
---@return boolean "是否禁止查看 true/false"
---```lua
---local cc = SL:Get_MAP_FORBID_LOOK()
---print(cc,type(cc))
---```
function SL:Get_MAP_FORBID_LOOK() end

---是否禁止释放某技能
---@return boolean "是否禁止释放某技能 true/false"
---```lua
---local cc = SL:Get_MAP_FORBID_LAUNCH_SKILL()
---print(cc,type(cc))
---```
function SL:Get_MAP_FORBID_LAUNCH_SKILL() end

---小地图资源是否有效
---@return boolean "小地图资源是否有效 true/false"
---```lua
---local cc = SL:Get_MINIMAP_ABLE()
---print(cc,type(cc))
---```
function SL:Get_MINIMAP_ABLE() end

---地图map文件是否加载(false表示正在下载中)
---@return boolean "地图map文件是否加载(false表示正在下载中)"
---```lua
---local cc = SL:Get_MAP_DATA_LOADED()
---print(cc,type(cc))
---```
function SL:Get_MAP_DATA_LOADED() end

---地图横向格子数
---@return number "地图横向格子数"
---```lua
---local cc = SL:Get_MAP_ROWS()
---print(cc,type(cc))
---```
function SL:Get_MAP_ROWS() end

---地图纵向格子数
---@return number "地图纵向格子数"
---```lua
---local cc = SL:Get_MAP_COLS()
---print(cc,type(cc))
---```
function SL:Get_MAP_COLS() end

---获取小地图文件路径
---@return string "小地图文件路径"
---```lua
---local cc = SL:Get_MINIMAP_FILE()
---print(cc,type(cc))
---```
function SL:Get_MINIMAP_FILE() end

---地图获取宽度像素
---@return number "地图获取宽度像素"
---```lua
---local cc = SL:Get_MAP_SIZE_WIDTH_PIXEL()
---print(cc,type(cc))
---```
function SL:Get_MAP_SIZE_WIDTH_PIXEL() end

---地图获取高度像素
---@return number "地图获取高度像素"
---```lua
---local cc = SL:Get_MAP_SIZE_HEIGHT_PIXEL()
---print(cc,type(cc))
---```
function SL:Get_MAP_SIZE_HEIGHT_PIXEL() end

---获取地图格子是否是阻挡
---* mapX 地图坐标X
---* mapY 地图坐标Y
---@param mapX number
---@param mapY number
---@return boolean "获取地图格子是否是阻挡"
---```lua
---local cc = SL:Get_MAP_IS_OBSTACLE(100, 100)
---print(cc,type(cc))
---```
function SL:Get_MAP_IS_OBSTACLE(mapX, mapY) end

---地图计算起点到终点X或者Y 变化最大的差值
---@return number "地图计算起点到终点X或者Y 变化最大的差值"
---```lua
---local cc = SL:Get_MAP_PATH_SIZE()
---print(cc,type(cc))
---```
function SL:Get_MAP_PATH_SIZE() end

---地图计算路径坐标
---@return table "地图计算路径坐标"
---```lua
---local cc = SL:Get_MAP_PATH_POINTS()
---print(cc,type(cc))
---```
function SL:Get_MAP_PATH_POINTS() end

---地图获取当前路径坐标index
---@return number "地图获取当前路径坐标index"
---```lua
---local cc = SL:Get_MAP_CURRENT_PATH_INDEX()
---print(cc,type(cc))
---```
function SL:Get_MAP_CURRENT_PATH_INDEX() end

---地图获取人物坐标
---@return table "人物坐标"
---```lua
---local value = SL:Get_POS()
---SL:dump(value, string.format("元变量-Get_POS[%s]",type(value)))
---local posX,posY = SL:ConvertWorldPos2MapPos(value.x, value.y)
---SL:dump(GUI:p(posX,posY), string.format("地图坐标",type(pos)))
---```
function SL:Get_POS() end

---地图获取怪物列表位置等信息
---@return table "怪物列表位置等信息"
---```lua
---local cc = SL:Get_MINIMAP_MONSTERS()
---print(cc,type(cc))
---```
function SL:Get_MINIMAP_MONSTERS() end

---地图获取传送点列表位置等信息
---@return table "传送点列表位置等信息"
---```lua
---local cc = SL:Get_MINIMAP_PORTALS()
---print(cc,type(cc))
---```
function SL:Get_MINIMAP_PORTALS() end

---获取视野内玩家列表
---@return table "视野内玩家列表"
---```lua
---local cc = SL:Get_FIND_IN_VIEW_PLAYER_LIST()
---print(cc,type(cc))
---```
function SL:Get_FIND_IN_VIEW_PLAYER_LIST() end

---获取视野内怪物列表
---* param1 是否屏蔽主玩家宠物
---* param2 是否屏蔽网络玩家宠物
---@param param1 boolean
---@param param2 boolean
---@return table "视野内怪物列表"
---```lua
---local cc = SL:Get_FIND_IN_VIEW_MONSTER_LIST(true, true)
---print(cc,type(cc))
---```
function SL:Get_FIND_IN_VIEW_MONSTER_LIST(param1, param2) end

---获取视野内NPC列表
---@return table "获取视野内NPC列表"
---```lua
---local cc = SL:Get_FIND_IN_VIEW_NPC_LIST()
---print(cc,type(cc))
---```
function SL:Get_FIND_IN_VIEW_NPC_LIST() end

---是否在攻城区域
---@return boolean "是否在攻城区域 true/false"
---```lua
---local cc = SL:Get_MAP_IS_IN_SIEGE_AREA()
---print(cc,type(cc))
---```
function SL:Get_MAP_IS_IN_SIEGE_AREA() end

---获取目标地图坐标到初始地图坐标的方向
---* srcPos 初始地图坐标
---* destPos 目标地图坐标
---@param srcPos table
---@param destPos table
---@return number "朝向 0 ~ 8"
---```lua
---local srcPos={x=100,y=150}
---local destPos={x=140,y=450}
---local cc = SL:Get_TARGET_MAPPOS_DIR(srcPos, destPos)
---print(cc,type(cc))
---```
function SL:Get_TARGET_MAPPOS_DIR(srcPos, destPos) end

---掉落物是否可拾取
---* actorID 掉落物 actorID
---* mainPlayerID 归属ID
---@param actorID number
---@param mainPlayerID number
---@return boolean "掉落物是否可拾取 true/false"
---```lua
---local cc=SL:Get_IS_PICKABLE_DROPITEM(param, actorID, mainPlayerID)
---print(cc,type(cc))
---```
function SL:Get_IS_PICKABLE_DROPITEM(actorID, mainPlayerID) end

---PC 按坐标选中actor
---* posx 世界坐标x
---* posy 世界坐标y
---@param posx number
---@param posy number
---@return integer "actor"
---```lua
---local actorID = SL:Get_USER_ID()
---local posx=SL:Get_ACTOR_POSITION_X(actorID)
---local posy=SL:Get_ACTOR_POSITION_Y(actorID)
---local cc = SL:Get_PICK_ACTORID_BY_POS(posx,posy)
---print(cc,type(cc))
---```
function SL:Get_PICK_ACTORID_BY_POS(posx, posy) end

-- [Source: 元变量^战斗.lua]

---是否自动挂机中
---@return boolean "是否自动挂机中 true/false"
---```lua
---local cc = SL:Get_BATTLE_IS_AFK()
---print(cc,type(cc))
---```
function SL:Get_BATTLE_IS_AFK() end

---开始自动挂机
---```lua
---local cc = SL:Set_BATTLE_AFK_BEGIN()
---print(cc,type(cc))
---```
function SL:Set_BATTLE_AFK_BEGIN() end

---结束自动挂机
---```lua
---local cc = SL:Set_BATTLE_AFK_END()
---print(cc,type(cc))
---```
function SL:Set_BATTLE_AFK_END() end

---是否自动寻路中
---@return boolean "是否自动寻路中 true/false"
---```lua
---local cc = SL:Get_BATTLE_IS_AUTO_MOVE()
---print(cc,type(cc))
---```
function SL:Get_BATTLE_IS_AUTO_MOVE() end

---开始自动寻路
---* mapID 地图ID
---* mapX 坐标x
---* mapY 坐标y
---* target 目标信息 table (可选)<br> {type = 0, index = 123}<br> type: 0为怪物，1为NPC(默认)<br> index: 目标唯一ID
---* pathfindingType 寻路类型 (可选)<br>参考GUIDefine.AutoMoveType<br>1:寻找目标<br> 2:小地图寻路(默认)<br>3:聊天框寻路<br>4:服务器通知
---@param mapID string
---@param mapX number
---@param mapY number
---@param target table
---@param pathfindingType number
---```lua
----- 寻路
---SL:Set_BATTLE_MOVE_BEGIN(SL:Get_MAP_ID(), 150, 200)
---
----- 寻找npc
---SL:Set_BATTLE_MOVE_BEGIN(SL:Get_MAP_ID(), 340, 334, {type = 1, index = 243}, 1)
---```
function SL:Set_BATTLE_MOVE_BEGIN(mapID, mapX, mapY, target, pathfindingType) end

---结束自动寻路
---```lua
---local cc = SL:Set_BATTLE_MOVE_END()
---print(cc,type(cc))
---```
function SL:Set_BATTLE_MOVE_END() end

---是否是自动拾取
---@return boolean "是否自动捡物中 true/false"
---```lua
---local cc = SL:Get_BATTLE_IS_AUTO_PICK()
---print(cc,type(cc))
---```
function SL:Get_BATTLE_IS_AUTO_PICK() end

---开始自动捡物
---```lua
---local cc = SL:Set_BATTLE_PICK_BEGIN()
---print(cc,type(cc))
---```
function SL:Set_BATTLE_PICK_BEGIN() end

---结束自动捡物
---```lua
---local cc = SL:Set_BATTLE_PICK_END()
---print(cc,type(cc))
---```
function SL:Set_BATTLE_PICK_END() end

---获取PC持续攻击目标
---@return number "PC持续攻击目标"
---```lua
---local cc=SL:Get_SELECT_SHIFT_ATTACK_ID(param)
---print(cc,type(cc))
---```
function SL:Get_SELECT_SHIFT_ATTACK_ID() end

-- [Source: 元变量^技能.lua]

---筛选技能数据
---* param1 技能类型
---* param2 职业
---* param3 是否学习
---* param4 是否不是基础技能
---@param param1 number
---@param param2 number
---@param param3 boolean
---@param param4 boolean
---@return table "筛选技能数据"
---```lua
---local cc = SL:Get_SKILL_INFO_FILTER(-1, 3, true, true)
---print(cc,type(cc))
---```
function SL:Get_SKILL_INFO_FILTER(param1, param2, param3, param4) end

---获取技能名字
---* skillID 技能ID
---@param skillID number
---@return string "获取技能名字"
---```lua
---local cc = SL:Get_SKILL_NAME(101410)
---print(cc,type(cc))
---```
function SL:Get_SKILL_NAME(skillID) end

---获取技能图标
---* skillID 技能ID
---@param skillID number
---@return string "技能图标路径"
---```lua
---local cc = SL:Get_SKILL_ICON_PATH(101410)
---print(cc,type(cc))
---```
function SL:Get_SKILL_ICON_PATH(skillID) end

---获取矩形技能图标
---* skillID 技能ID
---@param skillID number
---@return integer "屏幕的宽度"
---```lua
---local cc = SL:Get_SKILL_RECT_ICON_PATH(101410)
---print(cc,type(cc))
---```
function SL:Get_SKILL_RECT_ICON_PATH(skillID) end

---是否是开关型技能
---* skillID 技能ID
---@param skillID number
---@return boolean "是否是开关型技能 true/false"
---```lua
---local cc = SL:Get_SKILL_IS_ONOFF_SKILL(101410)
---print(cc,type(cc))
---```
function SL:Get_SKILL_IS_ONOFF_SKILL(skillID) end

---技能是否开启
---* skillID 技能ID
---@param skillID number
---@return boolean "技能是否开启 true/false"
---```lua
---local cc = SL:Get_SKILL_IS_ON_SKILL(101410)
---print(cc,type(cc))
---```
function SL:Get_SKILL_IS_ON_SKILL(skillID) end

---获取已学技能
---* param1 是否排除普攻
---* param2 是否只获取主动技能
---@param param1 boolean
---@param param2 boolean
---@return table "获取已学技能"
---```lua
---local cc = SL:Get_LEARNED_SKILLS(true)
---print(cc,type(cc))
---```
function SL:Get_LEARNED_SKILLS(param1, param2) end

---是否是主动技能
---* skillID 技能ID
---@param skillID number
---@return boolean "是否是主动技能"
---```lua
---local cc = SL:Get_SKILL_IS_ACTIVE(101410)
---print(cc,type(cc))
---```
function SL:Get_SKILL_IS_ACTIVE(skillID) end

---获取技能数据
---* skillID 技能ID
---@param skillID number
---@return table "技能数据"
---```lua
---local cc = SL:Get_SKILL_DATA(101410)
---print(cc,type(cc))
---```
function SL:Get_SKILL_DATA(skillID) end

---获取技能的等级熟练度数据
---* skillID 技能ID
---@param skillID number
---@return table "技能的等级熟练度数据"
---```lua
---local cc = SL:Get_SKILL_TRAIN_DATA(101410)
---print(cc,type(cc))
---```
function SL:Get_SKILL_TRAIN_DATA(skillID) end

---获取技能配置
---* skillID 技能ID
---@param skillID number
---@return table "技能配置"
---```lua
---local cc = SL:Get_SKILL_CONFIG(101410)
---print(cc,type(cc))
---```
function SL:Get_SKILL_CONFIG(skillID) end

---获取技能快捷键
---* skillID 技能ID
---@param skillID number
---@return number "技能快捷键"
---```lua
---local cc = SL:Get_SKILL_KEY(101410)
---print(cc,type(cc))
---```
function SL:Get_SKILL_KEY(skillID) end

---获取技能等级
---* skillID 技能ID
---@param skillID number
---@return number "技能等级"
---```lua
---local cc = SL:Get_SKILL_LEVEL(4005)
---print(cc,type(cc))
---```
function SL:Get_SKILL_LEVEL(skillID) end

-- [Source: 元变量^拍卖行-求购行.lua]

---默认最低竞拍价
---@return number "默认最低竞拍价"
---```lua
---local cc = SL:Get_AUCTION_BIDPRICE_MIN()
---print(cc,type(cc))
---```
function SL:Get_AUCTION_BIDPRICE_MIN() end

---默认最高竞拍价
---@return number "默认最高竞拍价"
---```lua
---local cc = SL:Get_AUCTION_BIDPRICE_MAX()
---print(cc,type(cc))
---```
function SL:Get_AUCTION_BIDPRICE_MAX() end

---默认最低一口价
---@return number "默认最低一口价"
---```lua
---local cc = SL:Get_AUCTION_BUYPRICE_MIN()
---print(cc,type(cc))
---```
function SL:Get_AUCTION_BUYPRICE_MIN() end

---默认最高一口价
---@return number "默认最高一口价"
---```lua
---local cc = SL:Get_AUCTION_BUYPRICE_MAX()
---print(cc,type(cc))
---```
function SL:Get_AUCTION_BUYPRICE_MAX() end

---默认货架数量
---@return number "默认货架数量"
---```lua
---local cc = SL:Get_AUCTION_DEFAULT_SHELF()
---print(cc,type(cc))
---```
function SL:Get_AUCTION_DEFAULT_SHELF() end

---上架列表数量
---@return number "上架列表数量"
---```lua
---local cc = SL:Get_AUCTION_PUT_LIST_CNT()
---print(cc,type(cc))
---```
function SL:Get_AUCTION_PUT_LIST_CNT() end

---拍卖行货币
---@return table "拍卖行货币"
---```lua
---local cc = SL:Get_AUCTION_MONEY()
---print(cc,type(cc))
---```
function SL:Get_AUCTION_MONEY() end

---是否可竞价
---* item 拍卖物品数据
---@param item table
---@return boolean "是否可竞价 true/false"
---```lua
---local cc = SL:Get_AUCTION_CAN_BID(data)
---print(cc,type(cc))
---```
function SL:Get_AUCTION_CAN_BID(item) end

---是否可一口价
---* item 拍卖物品数据
---@param item table
---@return boolean "是否可一口价 true/false"
---```lua
---local cc = SL:Get_AUCTION_CAN_BUY(data)
---print(cc,type(cc))
---```
function SL:Get_AUCTION_CAN_BUY(item) end

---是否有我的竞拍物品
---@return boolean "是否有我的竞拍物品 true/false"
---```lua
---local cc = SL:Get_AUCTION_HAVE_MY_BIDDING()
---print(cc,type(cc))
---```
function SL:Get_AUCTION_HAVE_MY_BIDDING() end

---拍卖行物品状态
---* itemData 拍卖物品数据
---@param itemData table
---@return number "0：未知 <br>2：竞拍中 <br>3：已超时"
---@return string "剩余时间"
---```lua
---local cc=SL:Get_AUCTION_ITEM_STATE(param,data)
---print(cc,type(cc))
---```
function SL:Get_AUCTION_ITEM_STATE(itemData) end

---获取拍卖行我的展示可寄售道具
---@return table "拍卖行我的展示可寄售道具"
---```lua
---local cc = SL:Get_AUCTION_MY_SHOW_LIST()
---print(cc,type(cc))
---```
function SL:Get_AUCTION_MY_SHOW_LIST() end

---世界求购菜单列表
---@return table "世界求购菜单列表"
---```lua
---local cc = SL:Get_PURCHASE_FILTER_LIST()
---print(cc,type(cc))
---```
function SL:Get_PURCHASE_FILTER_LIST() end

---求购货币列表
---@return table "求购货币列表"
---```lua
---local cc = SL:Get_PURCHASE_CURRENCIES()
---print(cc,type(cc))
---```
function SL:Get_PURCHASE_CURRENCIES() end

---对应ID 菜单栏配置
---* param id
---@param param number
---@return table "屏幕的宽度"
---```lua
---local cc = SL:Get_PURCHASE_MENU_CONFIG_BY_ID(，id)
---print(cc,type(cc))
---```
function SL:Get_PURCHASE_MENU_CONFIG_BY_ID(param) end

---分类物品列表
---* param1 一级菜单id
---* param2 二级菜单id
---@param param1 number
---@param param2 number
---@return table "分类物品列表"
---```lua
---local cc = SL:Get_PURCHASE_ITEM_LIST_BY_TYPE(firstID,secondID)
---print(cc,type(cc))
---```
function SL:Get_PURCHASE_ITEM_LIST_BY_TYPE(param1, param2) end

-- [Source: 元变量^排行榜-任务.lua]

---根据页签index获取排行榜数据
---* index 页签
---@param index number
---@return table "排行榜数据"
---```lua
---local cc = SL:Get_RANK_DATA_BY_TYPE(1)
---print(cc,type(cc))
---```
function SL:Get_RANK_DATA_BY_TYPE(index) end

---根据任务类型/ID获取任务排序值
---* type 任务类型/ID
---@param type number
---@return number "任务排序值"
---```lua
---local cc = SL:Get_MISSION_ITEM_ORDER(type)
---print(cc,type(cc))
---```
function SL:Get_MISSION_ITEM_ORDER(type) end

-- [Source: 元变量^新版属性加点.lua]

---是否启用新版属性加点
---@return boolean "是否启用新版属性加点 true/false"
---```lua
---local cc = SL:Get_IS_NEW_BOUNS()
---print(cc,type(cc))
---```
function SL:Get_IS_NEW_BOUNS() end

---获取新版属性加点配置数据
---@return table "获取新版属性加点配置数据"
---```lua
---local cc = SL:Get_NEW_BOUNS_CONFIG()
---print(cc,type(cc))
---```
function SL:Get_NEW_BOUNS_CONFIG() end

---获取新版属性已加点数据
---@return table "获取新版属性已加点数据"
---```lua
---local cc = SL:Get_NEW_BOUNS_ADD_DATA()
---print(cc,type(cc))
---```
function SL:Get_NEW_BOUNS_ADD_DATA() end

-- [Source: 元变量^服务器.lua]

---服务器ID
---@return string "服务器ID"
---```lua
---local cc = SL:Get_SERVER_ID()
---print(cc,type(cc))
---```
function SL:Get_SERVER_ID() end

---服务器名字
---@return string "服务器名字"
---```lua
---local cc = SL:Get_SERVER_NAME()
---print(cc,type(cc))
---```
function SL:Get_SERVER_NAME() end

---主服务器ID
---@return string "主服务器ID"
---```lua
---local cc = SL:Get_MAIN_SERVER_ID()
---print(cc,type(cc))
---```
function SL:Get_MAIN_SERVER_ID() end

---开服时间戳
---@return number "开服时间戳"
---```lua
---local cc = SL:Get_OPEN_SERVER_TIME()
---print(cc,type(cc))
---```
function SL:Get_OPEN_SERVER_TIME() end

---开服天数
---@return number "开服天数"
---```lua
---local cc = SL:Get_OPEN_SERVER_DAY()
---print(cc,type(cc))
---```
function SL:Get_OPEN_SERVER_DAY() end

---合服次数
---@return number "合服次数"
---```lua
---local cc = SL:Get_MERGE_SERVER_COUNT()
---print(cc,type(cc))
---```
function SL:Get_MERGE_SERVER_COUNT() end

---账号ID
---@return string "账号ID"
---```lua
---local cc = SL:Get_UID()
---print(cc,type(cc))
---```
function SL:Get_UID() end

---登录角色信息
---@return table "登录角色信息"
---```lua
---local cc = SL:Get_LOGIN_ROLE_DATAS()
---print(cc,type(cc))
---```
function SL:Get_LOGIN_ROLE_DATAS() end

---可恢复角色信息
---@return table "可恢复角色信息"
---```tips
---旧接口名：SL:Get_RESTORE_ROLES
---```
---```lua
---local cc = SL:Get_LOGIN_RESTORE_ROLES_DATA()
---print(cc,type(cc))
---```
function SL:Get_LOGIN_RESTORE_ROLES_DATA() end

---服务端下发的变量值
---* param 服务端变量名<br>可在`M2-功能-其他控制-前端变量推送`中控制下发给客户端的变量
---@param param string
---@return string "服务端下发的变量值"
---```lua
---SL:RegisterLUAEvent(LUA_EVENT_SERVER_VALUE_CHANGE, "GUIUtil", function (data)
---    SL:dump(data,"LUA_EVENT_SERVER_VALUE_CHANGE")
---    local value = SL:Get_SERVER_VALUE(data.key)
---    SL:Print(value,type(value))
---end)
---```
function SL:Get_SERVER_VALUE(param) end

---当前服务器时间
---@return number "当前服务器时间"
---```lua
---local cc = SL:Get_SERVER_TIME()
---print(cc,type(cc))
---```
function SL:Get_SERVER_TIME() end

---合服时间戳
---@return number "合服时间戳"
---```lua
---local cc = SL:Get_MERGE_SERVER_TIME()
---print(cc,type(cc))
---```
function SL:Get_MERGE_SERVER_TIME() end

---合服天数
---@return number "合服天数"
---```lua
---local cc = SL:Get_MERGE_SERVER_DAY()
---print(cc,type(cc))
---```
function SL:Get_MERGE_SERVER_DAY() end

---是否处于跨服
---@return boolean "是否处于跨服 true/false"
---```lua
---local cc = SL:Get_KFSTATE()
---print(cc,type(cc))
---```
function SL:Get_KFSTATE() end

---获取当前对话NPC的ID
---@return number "CURRENT_TALK_NPC_ID"
---```lua
---local cc = SL:Get_CURRENT_TALK_NPC_ID()
---print(cc,type(cc))
---```
function SL:Get_CURRENT_TALK_NPC_ID() end

---获取当前对话NPC的Index
---@return number "当前对话NPC的Index"
---```lua
---local cc = SL:Get_CURRENT_TALK_NPC_TYPEINDEX()
---print(cc,type(cc))
---```
function SL:Get_CURRENT_TALK_NPC_TYPEINDEX() end

---获取当前打开的NPC面板(txt面板)
---@return table "当前打开的NPC面板(txt面板)"
---```lua
---local cc=SL:Get_CURRENT_TALK_NPC_LAYER(param)
---print(cc,type(cc))
---```
function SL:Get_CURRENT_TALK_NPC_LAYER() end

---M2是否禁止说话
---* param 禁止时是否需要提示
---@param param boolean
---@return boolean "M2是否禁止说话 true/false"
---```lua
---local cc = SL:Get_M2_FORBID_SAY(false)
---print(cc,type(cc))
---```
function SL:Get_M2_FORBID_SAY(param) end

---服务器开关
---* param 服务器开关选项
---@param param string
---@return number "服务器开关 请参考上面的功能设定"
---```tips
---param = {
---    SW_KEY_AUCTION                        -- 服务器开关 拍卖
---    SW_KEY_ALL_FIGHTPAGES                 -- 服务器开关 显示所有战斗页
---    SW_KEY_MISSTION                       -- 服务器开关 任务
---    SW_KEY_SNDAITEMBOX                    -- 服务器开关 是否显示首饰盒
---    SW_KEY_TRADE_DEAL                     -- 服务器开关 面对面交易 true/需要面对面
---    SW_KEY_AUTO_DRESS                     -- 服务器开关 自动穿戴
---    SW_KEY_OPEN_F_EQUIP                   -- 服务器开关 时装是否开启首饰
---    SW_KEY_BIND_GOLD                      -- 服务器开关 开启元宝替换绑元
---    SW_KEY_NPC_BUTTON                     -- 服务器开关 显示npc按钮
---    SW_KEY_NPC_NAME                       -- 服务器开关 显示npc名字 1:不显示
---    SW_KEY_DROP_TIPS                      -- 服务器开关 显示绑定丢弃提示 0:显示
---    SW_KEY_EXP_IN_CHAT                    -- 服务器开关 经验信息是否显示在聊天框 0：显示在聊天框
---    SW_KEY_SHOW_STALL_NAME                -- 服务器开关 是否显示默认摊位名字  0：显示
---    SW_KEY_PLAYER_BLUE_BLOOD              -- 服务器开关  是否显示蓝条HUD_SPRITE_MP   0: 显示
---    SW_KEY_ITEMTIPS_TOUBAO_SHOW           -- 服务器开关  是否显示itemtips的投保描述   1= 开启 0 = 关闭
---    SW_KEY_BAN_DOUBLE_FIREHIT             -- 服务器开关  是否禁止双烈火    1：禁止
---    SW_KEY_ALL_TEAM_EXP                   -- 服务器开关 是否开启全队经验 true/false
---    SW_KEY_EQUIP_EXTRA_POS                -- 服务器开关，是否有额外的装备位置  1= 开启 0 = 关闭
---}
---```
---```lua
---local cc = SL:Get_SERVER_OPTION(SW_KEY_MISSTION)
---print(cc, type(cc))
---}
---```
function SL:Get_SERVER_OPTION(param) end

-- [Source: 元变量^聊天-邮件.lua]

---获取聊天表情包
---@return table "聊天表情包"
---```lua
---local cc = SL:Get_CHAT_EMOJI()
---print(cc,type(cc))
---```
function SL:Get_CHAT_EMOJI() end

---获取聊天输入历史记录缓存
---@return table "聊天输入历史记录缓存"
---```lua
---local cc = SL:Get_CHAT_INPUT_CACHE()
---print(cc,type(cc))
---```
function SL:Get_CHAT_INPUT_CACHE() end

---获取聊天显示的道具
---@return table "聊天显示的道具"
---```lua
---local cc = SL:Get_CHAT_SHOW_ITEMS()
---print(cc,type(cc))
---```
function SL:Get_CHAT_SHOW_ITEMS() end

---当前频道是否接受聊天信息
---@return boolean "当前频道是否接受聊天信息 true/false"
---```lua
---local cc = SL:Get_CHAT_CHANNEL_IS_RECEIVE()
---print(cc,type(cc))
---```
function SL:Get_CHAT_CHANNEL_IS_RECEIVE() end

---是否接收该分类掉落信息
---* param 掉落分类id 1-10
---@param param number
---@return boolean "是否接收该分类掉落信息 true/false"
---```lua
---local cc = SL:Get_CHAT_DROP_TYPE_IS_RECEIVE(1)
---print(cc,type(cc))
---```
function SL:Get_CHAT_DROP_TYPE_IS_RECEIVE(param) end

---聊天 Tips使用的字体路径
---@return string "聊天 Tips使用的字体路径"
---```lua
---local cc = SL:Get_CHATANDTIPS_USE_FONT()
---print(cc,type(cc))
---```
function SL:Get_CHATANDTIPS_USE_FONT() end

---获取当前聊天频道
---@return number "当前聊天频道"
---```lua
---local cc = SL:Get_CHAT_CUR_CHAT_CHANNEL()
---print(cc,type(cc))
---```
function SL:Get_CHAT_CUR_CHAT_CHANNEL() end

---获取聊天目标
---@return table "聊天目标<br>{{name = 玩家名, uid = 玩家ID}, ..}"
---```lua
---local cc = SL:Get_CHAT_TARGETS()
---print(cc,type(cc))
---```
function SL:Get_CHAT_TARGETS() end

---获取当前聊天CD时间
---@return number "当前聊天CD时间"
---```lua
---local cc = SL:Get_CHAT_CUR_CD_TIME()
---print(cc,type(cc))
---```
function SL:Get_CHAT_CUR_CD_TIME() end

---是否关闭假掉落
---@return boolean "是否关闭假掉落 true/false"
---```lua
---local cc = SL:Get_CHAT_IS_CLOSE_FAKE_DROP()
---print(cc,type(cc))
---```
function SL:Get_CHAT_IS_CLOSE_FAKE_DROP() end

---邮件列表
---@return table "邮件列表"
---```lua
---local cc = SL:Get_MAIL_LIST()
---print(cc,type(cc))
---```
function SL:Get_MAIL_LIST() end

---根据邮件ID获取邮件
---* mailID 邮件ID
---@param mailID number
---@return string "根据邮件ID获取邮件"
---```lua
---local cc = SL:Get_MAIL_BY_ID(10)
---print(cc,type(cc))
---```
function SL:Get_MAIL_BY_ID(mailID) end

---当前邮件ID
---@return integer "当前邮件ID"
---```lua
---local cc = SL:Get_MAIL_BY_ID()
---print(cc,type(cc))
---```
function SL:Get_MAIL_BY_ID() end

-- [Source: 元变量^背包.lua]

---背包最大格子数量
---@return integer "背包最大格子数量"
---```lua
---local cc = SL:Get_MAX_BAG()
---print(cc,type(cc))
---```
function SL:Get_MAX_BAG() end

---英雄背包最大格子数量
---@return number "英雄背包最大格子数量"
---```lua
---local cc = SL:Get_HERO_MAX_BAG()
---print(cc,type(cc))
---```
function SL:Get_HERO_MAX_BAG() end

---仓库最大格子数量
---@return number "仓库最大格子数量"
---```lua
---local cc = SL:Get_STORAGE_OPEN_SIZE()
---print(cc,type(cc))
---```
function SL:Get_STORAGE_OPEN_SIZE() end

---当前选中的背包页签
---@return number "当前选中的背包页签"
---```lua
---local cc = SL:Get_BAG_CUR_PAGE()
---print(cc,type(cc))
---```
function SL:Get_BAG_CUR_PAGE() end

---背包是否满
---* isPrompt 图片对象
---@param isPrompt table
---@return boolean "背包是否满 true/false"
---```lua
---local cc = SL:Get_BAG_IS_FULL(false)
---print(cc,type(cc))
---```
function SL:Get_BAG_IS_FULL(isPrompt) end

---背包剩余格子数
---@return number "背包剩余格子数"
---```lua
---local cc = SL:Get_BAG_REMAIN_COUNT()
---print(cc,type(cc))
---```
function SL:Get_BAG_REMAIN_COUNT() end

---背包已使用格子数
---@return number "背包已使用格子数"
---```lua
---local cc = SL:Get_BAG_USED_COUNT()
---print(cc,type(cc))
---```
function SL:Get_BAG_USED_COUNT() end

---检测物品背包是否有富余格子数存放
---* param1 物品ID
---* param2 物品数量
---* param3 不足时是否需要提示
---@param param1 number
---@param param2 number
---@param param3 boolean
---@return boolean "背包是否有富余格子数存放 true/false"
---```lua
---local cc = SL:Get_BAG_CHECK_NEED_SPACE(itemID,itemNum,isPrompt)
---print(cc,type(cc))
---```
function SL:Get_BAG_CHECK_NEED_SPACE(param1, param2, param3) end

-- [Source: 元变量^英雄.lua]

---英雄属性初始化完成
---@return boolean "英雄属性初始化完成"
---```lua
---local result = SL:Get_HERO_INITED()
---local resultType = type(result)
---if resultType == "table" then
---    SL:dump(result,string.format("元变量:%s[SL:%s] 返回类型:%s, 值:", "英雄属性初始化完成", "Get_HERO_INITED", resultType),2)
---else
---    SL:Print(string.format("元变量:%s[SL:%s] 返回类型:%s, 值:%s", "英雄属性初始化完成", "Get_HERO_INITED", resultType, tostring(result)))
---end
---
---输出结果:
---元变量:英雄属性初始化完成[SL:Get_HERO_INITED] 返回类型:boolean, 值:true
---```
function SL:Get_HERO_INITED() end

---英雄名字颜色
---@return number "英雄名字颜色"
---```lua
---local result = SL:Get_HERO_NAME_COLOR()
---local resultType = type(result)
---if resultType == "table" then
---    SL:dump(result,string.format("元变量:%s[SL:%s] 返回类型:%s, 值:", "英雄名字颜色", "Get_HERO_NAME_COLOR", resultType),2)
---else
---    SL:Print(string.format("元变量:%s[SL:%s] 返回类型:%s, 值:%s", "英雄名字颜色", "Get_HERO_NAME_COLOR", resultType, tostring(result)))
---end
---
---输出结果:
---元变量:英雄名字颜色[SL:Get_HERO_NAME_COLOR] 返回类型:number, 值:147
---```
function SL:Get_HERO_NAME_COLOR() end

---使用英雄
---@return boolean "使用英雄"
---```lua
---local result = SL:Get_USEHERO()
---local resultType = type(result)
---if resultType == "table" then
---    SL:dump(result,string.format("元变量:%s[SL:%s] 返回类型:%s, 值:", "使用英雄", "Get_USEHERO", resultType),2)
---else
---    SL:Print(string.format("元变量:%s[SL:%s] 返回类型:%s, 值:%s", "使用英雄", "Get_USEHERO", resultType, tostring(result)))
---end
---
---输出结果:
---元变量:使用英雄[SL:Get_USEHERO] 返回类型:boolean, 值:false
---```
function SL:Get_USEHERO() end

---英雄是否存活
---@return boolean "英雄是否存活"
---```lua
---local result = SL:Get_HERO_IS_ALIVE()
---local resultType = type(result)
---if resultType == "table" then
---    SL:dump(result,string.format("元变量:%s[SL:%s] 返回类型:%s, 值:", "英雄是否存活", "Get_HERO_IS_ALIVE", resultType),2)
---else
---    SL:Print(string.format("元变量:%s[SL:%s] 返回类型:%s, 值:%s", "英雄是否存活", "Get_HERO_IS_ALIVE", resultType, tostring(result)))
---end
---
---输出结果:
---元变量:英雄是否存活[SL:Get_HERO_IS_ALIVE] 返回类型:boolean, 值:true
---```
function SL:Get_HERO_IS_ALIVE() end

---英雄是否激活
---@return boolean "英雄是否激活"
---```lua
---local result = SL:Get_HERO_IS_ACTIVE()
---local resultType = type(result)
---if resultType == "table" then
---    SL:dump(result,string.format("元变量:%s[SL:%s] 返回类型:%s, 值:", "英雄是否激活", "Get_HERO_IS_ACTIVE", resultType),2)
---else
---    SL:Print(string.format("元变量:%s[SL:%s] 返回类型:%s, 值:%s", "英雄是否激活", "Get_HERO_IS_ACTIVE", resultType, tostring(result)))
---end
---
---输出结果:
---元变量:英雄是否激活[SL:Get_HERO_IS_ACTIVE] 返回类型:boolean, 值:true
---```
function SL:Get_HERO_IS_ACTIVE() end

---英雄ID
---@return string "英雄ID"
---```lua
---local result = SL:Get_HERO_ID()
---local resultType = type(result)
---if resultType == "table" then
---    SL:dump(result,string.format("元变量:%s[SL:%s] 返回类型:%s, 值:", "英雄ID", "Get_HERO_ID", resultType),2)
---else
---    SL:Print(string.format("元变量:%s[SL:%s] 返回类型:%s, 值:%s", "英雄ID", "Get_HERO_ID", resultType, tostring(result)))
---end
---
---输出结果:
---元变量:英雄ID[SL:Get_HERO_ID] 返回类型:string, 值:901943133164
---```
function SL:Get_HERO_ID() end

---英雄状态系统值
---@return table "英雄状态系统值"
---```lua
---local result = SL:Get_HERO_STATES_SYS_VALUES()
---local resultType = type(result)
---if resultType == "table" then
---    SL:dump(result,string.format("元变量:%s[SL:%s] 返回类型:%s, 值:", "英雄状态系统值", "Get_HERO_STATES_SYS_VALUES", resultType),2)
---else
---    SL:Print(string.format("元变量:%s[SL:%s] 返回类型:%s, 值:%s", "英雄状态系统值", "Get_HERO_STATES_SYS_VALUES", resultType, tostring(result)))
---end
---
---输出结果:
---"元变量:英雄状态系统值[SL:Get_HERO_STATES_SYS_VALUES] 返回类型:table, 值:" = {
---    1 = 0
---    2 = 1
---    3 = 2
---}
---```
function SL:Get_HERO_STATES_SYS_VALUES() end

---英雄激活状态
---@return table "英雄激活状态"
---```lua
---local result = SL:Get_HERO_ACTIVES_STATES()
---local resultType = type(result)
---if resultType == "table" then
---    SL:dump(result,string.format("元变量:%s[SL:%s] 返回类型:%s, 值:", "英雄激活状态", "Get_HERO_ACTIVES_STATES", resultType),2)
---else
---    SL:Print(string.format("元变量:%s[SL:%s] 返回类型:%s, 值:%s", "英雄激活状态", "Get_HERO_ACTIVES_STATES", resultType, tostring(result)))
---end
---
---输出结果:
---"元变量:英雄激活状态[SL:Get_HERO_ACTIVES_STATES] 返回类型:table, 值:" = {
---    1 = 0
---    2 = 1
---    3 = 2
---}
---```
function SL:Get_HERO_ACTIVES_STATES() end

---英雄状态
---@return number "英雄状态"
---```lua
---local result = SL:Get_HERO_STATE()
---local resultType = type(result)
---if resultType == "table" then
---    SL:dump(result,string.format("元变量:%s[SL:%s] 返回类型:%s, 值:", "英雄状态", "Get_HERO_STATE", resultType),2)
---else
---    SL:Print(string.format("元变量:%s[SL:%s] 返回类型:%s, 值:%s", "英雄状态", "Get_HERO_STATE", resultType, tostring(result)))
---end
---
---输出结果:
---元变量:英雄状态[SL:Get_HERO_STATE] 返回类型:number, 值:0
---```
function SL:Get_HERO_STATE() end

---英雄守护状态
---@return boolean "英雄守护状态"
---```lua
---local result = SL:Get_HERO_GUARDSTATE()
---local resultType = type(result)
---if resultType == "table" then
---    SL:dump(result,string.format("元变量:%s[SL:%s] 返回类型:%s, 值:", "英雄守护状态", "Get_HERO_GUARDSTATE", resultType),2)
---else
---    SL:Print(string.format("元变量:%s[SL:%s] 返回类型:%s, 值:%s", "英雄守护状态", "Get_HERO_GUARDSTATE", resultType, tostring(result)))
---end
---
---输出结果:
---元变量:英雄守护状态[SL:Get_HERO_GUARDSTATE] 返回类型:boolean, 值:false
---```
function SL:Get_HERO_GUARDSTATE() end

---英雄守护按钮是否点击
---@return boolean "英雄守护按钮是否点击"
---```lua
---local result = SL:Get_HERO_GUARD_ISCLICK()
---local resultType = type(result)
---if resultType == "table" then
---    SL:dump(result,string.format("元变量:%s[SL:%s] 返回类型:%s, 值:", "英雄守护按钮是否点击", "Get_HERO_GUARD_ISCLICK", resultType),2)
---else
---    SL:Print(string.format("元变量:%s[SL:%s] 返回类型:%s, 值:%s", "英雄守护按钮是否点击", "Get_HERO_GUARD_ISCLICK", resultType, tostring(result)))
---end
---
---输出结果:
---元变量:英雄守护按钮是否点击[SL:Get_HERO_GUARD_ISCLICK] 返回类型:boolean, 值:false
---```
function SL:Get_HERO_GUARD_ISCLICK() end

---英雄登录CD
---@return number "英雄登录CD"
---```lua
---local result = SL:Get_HERO_LOGIN_CD()
---local resultType = type(result)
---if resultType == "table" then
---    SL:dump(result,string.format("元变量:%s[SL:%s] 返回类型:%s, 值:", "英雄登录CD", "Get_HERO_LOGIN_CD", resultType),2)
---else
---    SL:Print(string.format("元变量:%s[SL:%s] 返回类型:%s, 值:%s", "英雄登录CD", "Get_HERO_LOGIN_CD", resultType, tostring(result)))
---end
---
---输出结果:
---元变量:英雄登录CD[SL:Get_HERO_LOGIN_CD] 返回类型:number, 值:0
---```
function SL:Get_HERO_LOGIN_CD() end

---英雄是否可复活
---@return boolean "英雄是否可复活"
---```lua
---local result = SL:Get_HERO_CAN_REVIVE()
---local resultType = type(result)
---if resultType == "table" then
---    SL:dump(result,string.format("元变量:%s[SL:%s] 返回类型:%s, 值:", "英雄是否可复活", "Get_HERO_CAN_REVIVE", resultType),2)
---else
---    SL:Print(string.format("元变量:%s[SL:%s] 返回类型:%s, 值:%s", "英雄是否可复活", "Get_HERO_CAN_REVIVE", resultType, tostring(result)))
---end
---
---输出结果:
---元变量:英雄是否可复活[SL:Get_HERO_CAN_REVIVE] 返回类型:boolean, 值:false
---```
function SL:Get_HERO_CAN_REVIVE() end

---根据类型获取属性值
---* param 属性类型
---@param param integer
---@return number "根据类型获取属性值"
---```lua
---local result = SL:Get_H_ATT_BY_TYPE(param)
---local resultType = type(result)
---if resultType == "table" then
---    SL:dump(result,string.format("元变量:%s[SL:%s] 返回类型:%s, 值:", "根据类型获取属性值", "Get_H_ATT_BY_TYPE", resultType),2)
---else
---    SL:Print(string.format("元变量:%s[SL:%s] 返回类型:%s, 值:%s", "根据类型获取属性值", "Get_H_ATT_BY_TYPE", resultType, tostring(result)))
---end
---
---输出结果:
---元变量:根据类型获取属性值[SL:Get_H_ATT_BY_TYPE] 返回类型:number, 值:1367199
---```
function SL:Get_H_ATT_BY_TYPE(param) end

---英雄技能名称
---* param 技能ID
---@param param integer
---@return string "英雄技能名称"
---```lua
---local result = SL:Get_H_SKILL_NAME(param)
---local resultType = type(result)
---if resultType == "table" then
---    SL:dump(result,string.format("元变量:%s[SL:%s] 返回类型:%s, 值:", "英雄技能名称", "Get_H_SKILL_NAME", resultType),2)
---else
---    SL:Print(string.format("元变量:%s[SL:%s] 返回类型:%s, 值:%s", "英雄技能名称", "Get_H_SKILL_NAME", resultType, tostring(result)))
---end
---
---输出结果:
---元变量:英雄技能名称[SL:Get_H_SKILL_NAME] 返回类型:string, 值:英雄火球术
---```
function SL:Get_H_SKILL_NAME(param) end

---英雄技能训练数据
---* param1 技能ID
---@param param1 integer
---@return string "英雄技能训练数据"
---```lua
---local result = SL:Get_H_SKILL_TRAIN_DATA(param1)
---local resultType = type(result)
---if resultType == "table" then
---    SL:dump(result,string.format("元变量:%s[SL:%s] 返回类型:%s, 值:", "英雄技能训练数据", "Get_H_SKILL_TRAIN_DATA", resultType),2)
---else
---    SL:Print(string.format("元变量:%s[SL:%s] 返回类型:%s, 值:%s", "英雄技能训练数据", "Get_H_SKILL_TRAIN_DATA", resultType, tostring(result)))
---end
---
---输出结果:
---元变量:英雄技能训练数据[SL:Get_H_SKILL_TRAIN_DATA] 返回类型:string, 值:-
---```
function SL:Get_H_SKILL_TRAIN_DATA(param1) end

---英雄已学技能
---* param1 是否排除基础技能
---* param2 是否仅主动技能
---@param param1 integer
---@param param2 integer
---@return table "英雄已学技能"
---```lua
---local result = SL:Get_H_LEARNED_SKILLS(param1, param2)
---local resultType = type(result)
---if resultType == "table" then
---    SL:dump(result,string.format("元变量:%s[SL:%s] 返回类型:%s, 值:", "英雄已学技能", "Get_H_LEARNED_SKILLS", resultType),2)
---else
---    SL:Print(string.format("元变量:%s[SL:%s] 返回类型:%s, 值:%s", "英雄已学技能", "Get_H_LEARNED_SKILLS", resultType, tostring(result)))
---end
---
---输出结果:
---"元变量:英雄已学技能[SL:Get_H_LEARNED_SKILLS] 返回类型:table, 值:" = {
---    27 = {
---        "ActionId"    = 0
---        "CurTrain"    = 0
---        "DefMaxPower" = 0
---        "DefPower"    = 0
---        "DefSpell"    = 0
---        "DelayTime"   = 5000
---        "DelayTimeEX" = 42
---        "Effect"      = 25
---        "EffectType"  = 0
---        "HideCDHint"  = 0
---        "IgornAct"    = 0
---        "Job"         = 0
---        "Key"         = 0
---        "LJBJRate"    = 0
---        "Level"       = 3
---        "LevelUp"     = 0
---        "LevelUpIcon" = -1
---        "MagicID"     = 27
---        "MaxPower"    = 0
---        "MaxTrain1"   = 50
---        "MaxTrain2"   = 100
---        "MaxTrain3"   = 200
---        "MaxTrain4"   = 200
---        "Name"        = ""
---        "Power"       = 0
---        "SkillType"   = 1
---        "Spell"       = 15
---        "SpellType"   = 0
---        "TrainLevel1" = 30
---        "TrainLevel2" = 34
---        "TrainLevel3" = 39
---        "TrainLevel4" = 39
---        "TrainLv"     = 3
---        "curTime"     = 0
---        "id"          = 27
---        "isCD"        = false
---    }
---```
function SL:Get_H_LEARNED_SKILLS(param1, param2) end

---英雄技能数据
---* param1 技能ID
---@param param1 integer
---@return nil "英雄技能数据"
---```lua
---local result = SL:Get_H_SKILL_DATA(param1)
---local resultType = type(result)
---if resultType == "table" then
---    SL:dump(result,string.format("元变量:%s[SL:%s] 返回类型:%s, 值:", "英雄技能数据", "Get_H_SKILL_DATA", resultType),2)
---else
---    SL:Print(string.format("元变量:%s[SL:%s] 返回类型:%s, 值:%s", "英雄技能数据", "Get_H_SKILL_DATA", resultType, tostring(result)))
---end
---
---输出结果:
---元变量:英雄技能数据[SL:Get_H_SKILL_DATA] 返回类型:nil, 值:nil
---```
function SL:Get_H_SKILL_DATA(param1) end

---英雄技能快捷键
---* param1 技能ID
---@param param1 integer
---@return nil "英雄技能快捷键"
---```lua
---local result = SL:Get_H_SKILL_KEY(param1)
---local resultType = type(result)
---if resultType == "table" then
---    SL:dump(result,string.format("元变量:%s[SL:%s] 返回类型:%s, 值:", "英雄技能快捷键", "Get_H_SKILL_KEY", resultType),2)
---else
---    SL:Print(string.format("元变量:%s[SL:%s] 返回类型:%s, 值:%s", "英雄技能快捷键", "Get_H_SKILL_KEY", resultType, tostring(result)))
---end
---
---输出结果:
---元变量:英雄技能快捷键[SL:Get_H_SKILL_KEY] 返回类型:nil, 值:nil
---```
function SL:Get_H_SKILL_KEY(param1) end

---英雄怒气
---@return number "英雄怒气"
---```lua
---local result = SL:Get_H_ANGER()
---local resultType = type(result)
---if resultType == "table" then
---    SL:dump(result,string.format("元变量:%s[SL:%s] 返回类型:%s, 值:", "英雄怒气", "Get_H_ANGER", resultType),2)
---else
---    SL:Print(string.format("元变量:%s[SL:%s] 返回类型:%s, 值:%s", "英雄怒气", "Get_H_ANGER", resultType, tostring(result)))
---end
---
---输出结果:
---元变量:英雄怒气[SL:Get_H_ANGER] 返回类型:number, 值:0
---```
function SL:Get_H_ANGER() end

---英雄最大怒气
---@return number "英雄最大怒气"
---```lua
---local result = SL:Get_H_MAXANGER()
---local resultType = type(result)
---if resultType == "table" then
---    SL:dump(result,string.format("元变量:%s[SL:%s] 返回类型:%s, 值:", "英雄最大怒气", "Get_H_MAXANGER", resultType),2)
---else
---    SL:Print(string.format("元变量:%s[SL:%s] 返回类型:%s, 值:%s", "英雄最大怒气", "Get_H_MAXANGER", resultType, tostring(result)))
---end
---
---输出结果:
---元变量:英雄最大怒气[SL:Get_H_MAXANGER] 返回类型:number, 值:0
---```
function SL:Get_H_MAXANGER() end

---英雄名字
---@return string "英雄名字"
---```lua
---local result = SL:Get_H_USERNAME()
---local resultType = type(result)
---if resultType == "table" then
---    SL:dump(result,string.format("元变量:%s[SL:%s] 返回类型:%s, 值:", "英雄名字", "Get_H_USERNAME", resultType),2)
---else
---    SL:Print(string.format("元变量:%s[SL:%s] 返回类型:%s, 值:%s", "英雄名字", "Get_H_USERNAME", resultType, tostring(result)))
---end
---
---输出结果:
---元变量:英雄名字[SL:Get_H_USERNAME] 返回类型:string, 值:瞿走心(Hero)
---```
function SL:Get_H_USERNAME() end

---英雄等级
---@return number "英雄等级"
---```lua
---local result = SL:Get_H_LEVEL()
---local resultType = type(result)
---if resultType == "table" then
---    SL:dump(result,string.format("元变量:%s[SL:%s] 返回类型:%s, 值:", "英雄等级", "Get_H_LEVEL", resultType),2)
---else
---    SL:Print(string.format("元变量:%s[SL:%s] 返回类型:%s, 值:%s", "英雄等级", "Get_H_LEVEL", resultType, tostring(result)))
---end
---
---输出结果:
---元变量:英雄等级[SL:Get_H_LEVEL] 返回类型:number, 值:150
---```
function SL:Get_H_LEVEL() end

---英雄转生等级
---@return number "英雄转生等级"
---```lua
---local result = SL:Get_H_RELEVEL()
---local resultType = type(result)
---if resultType == "table" then
---    SL:dump(result,string.format("元变量:%s[SL:%s] 返回类型:%s, 值:", "英雄转生等级", "Get_H_RELEVEL", resultType),2)
---else
---    SL:Print(string.format("元变量:%s[SL:%s] 返回类型:%s, 值:%s", "英雄转生等级", "Get_H_RELEVEL", resultType, tostring(result)))
---end
---
---输出结果:
---元变量:英雄转生等级[SL:Get_H_RELEVEL] 返回类型:number, 值:0
---```
function SL:Get_H_RELEVEL() end

---英雄经验
---@return number "英雄经验"
---```lua
---local result = SL:Get_H_EXP()
---local resultType = type(result)
---if resultType == "table" then
---    SL:dump(result,string.format("元变量:%s[SL:%s] 返回类型:%s, 值:", "英雄经验", "Get_H_EXP", resultType),2)
---else
---    SL:Print(string.format("元变量:%s[SL:%s] 返回类型:%s, 值:%s", "英雄经验", "Get_H_EXP", resultType, tostring(result)))
---end
---
---输出结果:
---元变量:英雄经验[SL:Get_H_EXP] 返回类型:number, 值:0
---```
function SL:Get_H_EXP() end

---英雄最大经验
---@return number "英雄最大经验"
---```lua
---local result = SL:Get_H_MAXEXP()
---local resultType = type(result)
---if resultType == "table" then
---    SL:dump(result,string.format("元变量:%s[SL:%s] 返回类型:%s, 值:", "英雄最大经验", "Get_H_MAXEXP", resultType),2)
---else
---    SL:Print(string.format("元变量:%s[SL:%s] 返回类型:%s, 值:%s", "英雄最大经验", "Get_H_MAXEXP", resultType, tostring(result)))
---end
---
---输出结果:
---元变量:英雄最大经验[SL:Get_H_MAXEXP] 返回类型:number, 值:4200000000
---```
function SL:Get_H_MAXEXP() end

---英雄职业名称
---@return string "英雄职业名称"
---```lua
---local result = SL:Get_H_JOBNAME()
---local resultType = type(result)
---if resultType == "table" then
---    SL:dump(result,string.format("元变量:%s[SL:%s] 返回类型:%s, 值:", "英雄职业名称", "Get_H_JOBNAME", resultType),2)
---else
---    SL:Print(string.format("元变量:%s[SL:%s] 返回类型:%s, 值:%s", "英雄职业名称", "Get_H_JOBNAME", resultType, tostring(result)))
---end
---
---输出结果:
---元变量:英雄职业名称[SL:Get_H_JOBNAME] 返回类型:string, 值:战士
---```
function SL:Get_H_JOBNAME() end

---英雄职业
---@return number "英雄职业"
---```lua
---local result = SL:Get_H_JOB()
---local resultType = type(result)
---if resultType == "table" then
---    SL:dump(result,string.format("元变量:%s[SL:%s] 返回类型:%s, 值:", "英雄职业", "Get_H_JOB", resultType),2)
---else
---    SL:Print(string.format("元变量:%s[SL:%s] 返回类型:%s, 值:%s", "英雄职业", "Get_H_JOB", resultType, tostring(result)))
---end
---
---输出结果:
---元变量:英雄职业[SL:Get_H_JOB] 返回类型:number, 值:0
---```
function SL:Get_H_JOB() end

---英雄性别
---@return number "英雄性别"
---```lua
---local result = SL:Get_H_SEX()
---local resultType = type(result)
---if resultType == "table" then
---    SL:dump(result,string.format("元变量:%s[SL:%s] 返回类型:%s, 值:", "英雄性别", "Get_H_SEX", resultType),2)
---else
---    SL:Print(string.format("元变量:%s[SL:%s] 返回类型:%s, 值:%s", "英雄性别", "Get_H_SEX", resultType, tostring(result)))
---end
---
---输出结果:
---元变量:英雄性别[SL:Get_H_SEX] 返回类型:number, 值:0
---```
function SL:Get_H_SEX() end

---英雄发型
---@return number "英雄发型"
---```lua
---local result = SL:Get_H_HAIR()
---local resultType = type(result)
---if resultType == "table" then
---    SL:dump(result,string.format("元变量:%s[SL:%s] 返回类型:%s, 值:", "英雄发型", "Get_H_HAIR", resultType),2)
---else
---    SL:Print(string.format("元变量:%s[SL:%s] 返回类型:%s, 值:%s", "英雄发型", "Get_H_HAIR", resultType, tostring(result)))
---end
---
---输出结果:
---元变量:英雄发型[SL:Get_H_HAIR] 返回类型:number, 值:10
---```
function SL:Get_H_HAIR() end

---英雄最大生命值
---@return number "英雄最大生命值"
---```lua
---local result = SL:Get_H_MAXHP()
---local resultType = type(result)
---if resultType == "table" then
---    SL:dump(result,string.format("元变量:%s[SL:%s] 返回类型:%s, 值:", "英雄最大生命值", "Get_H_MAXHP", resultType),2)
---else
---    SL:Print(string.format("元变量:%s[SL:%s] 返回类型:%s, 值:%s", "英雄最大生命值", "Get_H_MAXHP", resultType, tostring(result)))
---end
---
---输出结果:
---元变量:英雄最大生命值[SL:Get_H_MAXHP] 返回类型:number, 值:3000729
---```
function SL:Get_H_MAXHP() end

---英雄最大魔法值
---@return number "英雄最大魔法值"
---```lua
---local result = SL:Get_H_MAXMP()
---local resultType = type(result)
---if resultType == "table" then
---    SL:dump(result,string.format("元变量:%s[SL:%s] 返回类型:%s, 值:", "英雄最大魔法值", "Get_H_MAXMP", resultType),2)
---else
---    SL:Print(string.format("元变量:%s[SL:%s] 返回类型:%s, 值:%s", "英雄最大魔法值", "Get_H_MAXMP", resultType, tostring(result)))
---end
---
---输出结果:
---元变量:英雄最大魔法值[SL:Get_H_MAXMP] 返回类型:number, 值:286
---```
function SL:Get_H_MAXMP() end

---英雄当前生命值
---@return number "英雄当前生命值"
---```lua
---local result = SL:Get_H_HP()
---local resultType = type(result)
---if resultType == "table" then
---    SL:dump(result,string.format("元变量:%s[SL:%s] 返回类型:%s, 值:", "英雄当前生命值", "Get_H_HP", resultType),2)
---else
---    SL:Print(string.format("元变量:%s[SL:%s] 返回类型:%s, 值:%s", "英雄当前生命值", "Get_H_HP", resultType, tostring(result)))
---end
---
---输出结果:
---元变量:英雄当前生命值[SL:Get_H_HP] 返回类型:number, 值:1367199
---```
function SL:Get_H_HP() end

---英雄当前魔法值
---@return number "英雄当前魔法值"
---```lua
---local result = SL:Get_H_MP()
---local resultType = type(result)
---if resultType == "table" then
---    SL:dump(result,string.format("元变量:%s[SL:%s] 返回类型:%s, 值:", "英雄当前魔法值", "Get_H_MP", resultType),2)
---else
---    SL:Print(string.format("元变量:%s[SL:%s] 返回类型:%s, 值:%s", "英雄当前魔法值", "Get_H_MP", resultType, tostring(result)))
---end
---
---输出结果:
---元变量:英雄当前魔法值[SL:Get_H_MP] 返回类型:number, 值:286
---```
function SL:Get_H_MP() end

---英雄生命值百分比
---@return number "英雄生命值百分比"
---```lua
---local result = SL:Get_H_HPPercent()
---local resultType = type(result)
---if resultType == "table" then
---    SL:dump(result,string.format("元变量:%s[SL:%s] 返回类型:%s, 值:", "英雄生命值百分比", "Get_H_HPPercent", resultType),2)
---else
---    SL:Print(string.format("元变量:%s[SL:%s] 返回类型:%s, 值:%s", "英雄生命值百分比", "Get_H_HPPercent", resultType, tostring(result)))
---end
---
---输出结果:
---元变量:英雄生命值百分比[SL:Get_H_HPPercent] 返回类型:number, 值:45.562228378504
---```
function SL:Get_H_HPPercent() end

---英雄魔法值百分比
---@return number "英雄魔法值百分比"
---```lua
---local result = SL:Get_H_MPPercent()
---local resultType = type(result)
---if resultType == "table" then
---    SL:dump(result,string.format("元变量:%s[SL:%s] 返回类型:%s, 值:", "英雄魔法值百分比", "Get_H_MPPercent", resultType),2)
---else
---    SL:Print(string.format("元变量:%s[SL:%s] 返回类型:%s, 值:%s", "英雄魔法值百分比", "Get_H_MPPercent", resultType, tostring(result)))
---end
---
---输出结果:
---元变量:英雄魔法值百分比[SL:Get_H_MPPercent] 返回类型:number, 值:100
---```
function SL:Get_H_MPPercent() end

---英雄经验值百分比
---@return number "英雄经验值百分比"
---```lua
---local result = SL:Get_H_EXPPercent()
---local resultType = type(result)
---if resultType == "table" then
---    SL:dump(result,string.format("元变量:%s[SL:%s] 返回类型:%s, 值:", "英雄经验值百分比", "Get_H_EXPPercent", resultType),2)
---else
---    SL:Print(string.format("元变量:%s[SL:%s] 返回类型:%s, 值:%s", "英雄经验值百分比", "Get_H_EXPPercent", resultType, tostring(result)))
---end
---
---输出结果:
---元变量:英雄经验值百分比[SL:Get_H_EXPPercent] 返回类型:number, 值:0
---```
function SL:Get_H_EXPPercent() end

---英雄最小物理攻击
---@return number "英雄最小物理攻击"
---```lua
---local result = SL:Get_H_MIN_ATK()
---local resultType = type(result)
---if resultType == "table" then
---    SL:dump(result,string.format("元变量:%s[SL:%s] 返回类型:%s, 值:", "英雄最小物理攻击", "Get_H_MIN_ATK", resultType),2)
---else
---    SL:Print(string.format("元变量:%s[SL:%s] 返回类型:%s, 值:%s", "英雄最小物理攻击", "Get_H_MIN_ATK", resultType, tostring(result)))
---end
---
---输出结果:
---元变量:英雄最小物理攻击[SL:Get_H_MIN_ATK] 返回类型:number, 值:13
---```
function SL:Get_H_MIN_ATK() end

---英雄最大物理攻击
---@return number "英雄最大物理攻击"
---```lua
---local result = SL:Get_H_MAX_ATK()
---local resultType = type(result)
---if resultType == "table" then
---    SL:dump(result,string.format("元变量:%s[SL:%s] 返回类型:%s, 值:", "英雄最大物理攻击", "Get_H_MAX_ATK", resultType),2)
---else
---    SL:Print(string.format("元变量:%s[SL:%s] 返回类型:%s, 值:%s", "英雄最大物理攻击", "Get_H_MAX_ATK", resultType, tostring(result)))
---end
---
---输出结果:
---元变量:英雄最大物理攻击[SL:Get_H_MAX_ATK] 返回类型:number, 值:16
---```
function SL:Get_H_MAX_ATK() end

---英雄最小魔法攻击
---@return number "英雄最小魔法攻击"
---```lua
---local result = SL:Get_H_MIN_MAT()
---local resultType = type(result)
---if resultType == "table" then
---    SL:dump(result,string.format("元变量:%s[SL:%s] 返回类型:%s, 值:", "英雄最小魔法攻击", "Get_H_MIN_MAT", resultType),2)
---else
---    SL:Print(string.format("元变量:%s[SL:%s] 返回类型:%s, 值:%s", "英雄最小魔法攻击", "Get_H_MIN_MAT", resultType, tostring(result)))
---end
---
---输出结果:
---元变量:英雄最小魔法攻击[SL:Get_H_MIN_MAT] 返回类型:number, 值:1
---```
function SL:Get_H_MIN_MAT() end

---英雄最大魔法攻击
---@return number "英雄最大魔法攻击"
---```lua
---local result = SL:Get_H_MAX_MAT()
---local resultType = type(result)
---if resultType == "table" then
---    SL:dump(result,string.format("元变量:%s[SL:%s] 返回类型:%s, 值:", "英雄最大魔法攻击", "Get_H_MAX_MAT", resultType),2)
---else
---    SL:Print(string.format("元变量:%s[SL:%s] 返回类型:%s, 值:%s", "英雄最大魔法攻击", "Get_H_MAX_MAT", resultType, tostring(result)))
---end
---
---输出结果:
---元变量:英雄最大魔法攻击[SL:Get_H_MAX_MAT] 返回类型:number, 值:1
---```
function SL:Get_H_MAX_MAT() end

---英雄最小道术攻击
---@return number "英雄最小道术攻击"
---```lua
---local result = SL:Get_H_MIN_DAO()
---local resultType = type(result)
---if resultType == "table" then
---    SL:dump(result,string.format("元变量:%s[SL:%s] 返回类型:%s, 值:", "英雄最小道术攻击", "Get_H_MIN_DAO", resultType),2)
---else
---    SL:Print(string.format("元变量:%s[SL:%s] 返回类型:%s, 值:%s", "英雄最小道术攻击", "Get_H_MIN_DAO", resultType, tostring(result)))
---end
---
---输出结果:
---元变量:英雄最小道术攻击[SL:Get_H_MIN_DAO] 返回类型:number, 值:1
---```
function SL:Get_H_MIN_DAO() end

---英雄最大道术攻击
---@return number "英雄最大道术攻击"
---```lua
---local result = SL:Get_H_MAX_DAO()
---local resultType = type(result)
---if resultType == "table" then
---    SL:dump(result,string.format("元变量:%s[SL:%s] 返回类型:%s, 值:", "英雄最大道术攻击", "Get_H_MAX_DAO", resultType),2)
---else
---    SL:Print(string.format("元变量:%s[SL:%s] 返回类型:%s, 值:%s", "英雄最大道术攻击", "Get_H_MAX_DAO", resultType, tostring(result)))
---end
---
---输出结果:
---元变量:英雄最大道术攻击[SL:Get_H_MAX_DAO] 返回类型:number, 值:1
---```
function SL:Get_H_MAX_DAO() end

---英雄最小防御
---@return number "英雄最小防御"
---```lua
---local result = SL:Get_H_MIN_DEF()
---local resultType = type(result)
---if resultType == "table" then
---    SL:dump(result,string.format("元变量:%s[SL:%s] 返回类型:%s, 值:", "英雄最小防御", "Get_H_MIN_DEF", resultType),2)
---else
---    SL:Print(string.format("元变量:%s[SL:%s] 返回类型:%s, 值:%s", "英雄最小防御", "Get_H_MIN_DEF", resultType, tostring(result)))
---end
---
---输出结果:
---元变量:英雄最小防御[SL:Get_H_MIN_DEF] 返回类型:number, 值:0
---```
function SL:Get_H_MIN_DEF() end

---英雄最大防御
---@return number "英雄最大防御"
---```lua
---local result = SL:Get_H_MAX_DEF()
---local resultType = type(result)
---if resultType == "table" then
---    SL:dump(result,string.format("元变量:%s[SL:%s] 返回类型:%s, 值:", "英雄最大防御", "Get_H_MAX_DEF", resultType),2)
---else
---    SL:Print(string.format("元变量:%s[SL:%s] 返回类型:%s, 值:%s", "英雄最大防御", "Get_H_MAX_DEF", resultType, tostring(result)))
---end
---
---输出结果:
---元变量:英雄最大防御[SL:Get_H_MAX_DEF] 返回类型:number, 值:0
---```
function SL:Get_H_MAX_DEF() end

---英雄最小魔防
---@return number "英雄最小魔防"
---```lua
---local result = SL:Get_H_MIN_MDF()
---local resultType = type(result)
---if resultType == "table" then
---    SL:dump(result,string.format("元变量:%s[SL:%s] 返回类型:%s, 值:", "英雄最小魔防", "Get_H_MIN_MDF", resultType),2)
---else
---    SL:Print(string.format("元变量:%s[SL:%s] 返回类型:%s, 值:%s", "英雄最小魔防", "Get_H_MIN_MDF", resultType, tostring(result)))
---end
---
---输出结果:
---元变量:英雄最小魔防[SL:Get_H_MIN_MDF] 返回类型:number, 值:0
---```
function SL:Get_H_MIN_MDF() end

---英雄最大魔防
---@return number "英雄最大魔防"
---```lua
---local result = SL:Get_H_MAX_MDF()
---local resultType = type(result)
---if resultType == "table" then
---    SL:dump(result,string.format("元变量:%s[SL:%s] 返回类型:%s, 值:", "英雄最大魔防", "Get_H_MAX_MDF", resultType),2)
---else
---    SL:Print(string.format("元变量:%s[SL:%s] 返回类型:%s, 值:%s", "英雄最大魔防", "Get_H_MAX_MDF", resultType, tostring(result)))
---end
---
---输出结果:
---元变量:英雄最大魔防[SL:Get_H_MAX_MDF] 返回类型:number, 值:0
---```
function SL:Get_H_MAX_MDF() end

---英雄准确
---@return number "英雄准确"
---```lua
---local result = SL:Get_H_HIT()
---local resultType = type(result)
---if resultType == "table" then
---    SL:dump(result,string.format("元变量:%s[SL:%s] 返回类型:%s, 值:", "英雄准确", "Get_H_HIT", resultType),2)
---else
---    SL:Print(string.format("元变量:%s[SL:%s] 返回类型:%s, 值:%s", "英雄准确", "Get_H_HIT", resultType, tostring(result)))
---end
---
---输出结果:
---元变量:英雄准确[SL:Get_H_HIT] 返回类型:number, 值:7
---```
function SL:Get_H_HIT() end

---英雄攻击速度
---@return number "英雄攻击速度"
---```lua
---local result = SL:Get_H_HITSPD()
---local resultType = type(result)
---if resultType == "table" then
---    SL:dump(result,string.format("元变量:%s[SL:%s] 返回类型:%s, 值:", "英雄攻击速度", "Get_H_HITSPD", resultType),2)
---else
---    SL:Print(string.format("元变量:%s[SL:%s] 返回类型:%s, 值:%s", "英雄攻击速度", "Get_H_HITSPD", resultType, tostring(result)))
---end
---
---输出结果:
---元变量:英雄攻击速度[SL:Get_H_HITSPD] 返回类型:number, 值:0
---```
function SL:Get_H_HITSPD() end

---英雄暴击
---@return number "英雄暴击"
---```lua
---local result = SL:Get_H_BURST()
---local resultType = type(result)
---if resultType == "table" then
---    SL:dump(result,string.format("元变量:%s[SL:%s] 返回类型:%s, 值:", "英雄暴击", "Get_H_BURST", resultType),2)
---else
---    SL:Print(string.format("元变量:%s[SL:%s] 返回类型:%s, 值:%s", "英雄暴击", "Get_H_BURST", resultType, tostring(result)))
---end
---
---输出结果:
---元变量:英雄暴击[SL:Get_H_BURST] 返回类型:number, 值:0
---```
function SL:Get_H_BURST() end

---英雄暴击伤害
---@return number "英雄暴击伤害"
---```lua
---local result = SL:Get_H_BURST_DAM()
---local resultType = type(result)
---if resultType == "table" then
---    SL:dump(result,string.format("元变量:%s[SL:%s] 返回类型:%s, 值:", "英雄暴击伤害", "Get_H_BURST_DAM", resultType),2)
---else
---    SL:Print(string.format("元变量:%s[SL:%s] 返回类型:%s, 值:%s", "英雄暴击伤害", "Get_H_BURST_DAM", resultType, tostring(result)))
---end
---
---输出结果:
---元变量:英雄暴击伤害[SL:Get_H_BURST_DAM] 返回类型:number, 值:0
---```
function SL:Get_H_BURST_DAM() end

---英雄免疫物理伤害
---@return number "英雄免疫物理伤害"
---```lua
---local result = SL:Get_H_IMM_ATT()
---local resultType = type(result)
---if resultType == "table" then
---    SL:dump(result,string.format("元变量:%s[SL:%s] 返回类型:%s, 值:", "英雄免疫物理伤害", "Get_H_IMM_ATT", resultType),2)
---else
---    SL:Print(string.format("元变量:%s[SL:%s] 返回类型:%s, 值:%s", "英雄免疫物理伤害", "Get_H_IMM_ATT", resultType, tostring(result)))
---end
---
---输出结果:
---元变量:英雄免疫物理伤害[SL:Get_H_IMM_ATT] 返回类型:number, 值:0
---```
function SL:Get_H_IMM_ATT() end

---英雄免疫魔法伤害
---@return number "英雄免疫魔法伤害"
---```lua
---local result = SL:Get_H_IMM_MAG()
---local resultType = type(result)
---if resultType == "table" then
---    SL:dump(result,string.format("元变量:%s[SL:%s] 返回类型:%s, 值:", "英雄免疫魔法伤害", "Get_H_IMM_MAG", resultType),2)
---else
---    SL:Print(string.format("元变量:%s[SL:%s] 返回类型:%s, 值:%s", "英雄免疫魔法伤害", "Get_H_IMM_MAG", resultType, tostring(result)))
---end
---
---输出结果:
---元变量:英雄免疫魔法伤害[SL:Get_H_IMM_MAG] 返回类型:number, 值:0
---```
function SL:Get_H_IMM_MAG() end

---英雄幸运
---@return number "英雄幸运"
---```lua
---local result = SL:Get_H_LUCK()
---local resultType = type(result)
---if resultType == "table" then
---    SL:dump(result,string.format("元变量:%s[SL:%s] 返回类型:%s, 值:", "英雄幸运", "Get_H_LUCK", resultType),2)
---else
---    SL:Print(string.format("元变量:%s[SL:%s] 返回类型:%s, 值:%s", "英雄幸运", "Get_H_LUCK", resultType, tostring(result)))
---end
---
---输出结果:
---元变量:英雄幸运[SL:Get_H_LUCK] 返回类型:number, 值:0
---```
function SL:Get_H_LUCK() end

---英雄掉落率
---@return number "英雄掉落率"
---```lua
---local result = SL:Get_H_DROP()
---local resultType = type(result)
---if resultType == "table" then
---    SL:dump(result,string.format("元变量:%s[SL:%s] 返回类型:%s, 值:", "英雄掉落率", "Get_H_DROP", resultType),2)
---else
---    SL:Print(string.format("元变量:%s[SL:%s] 返回类型:%s, 值:%s", "英雄掉落率", "Get_H_DROP", resultType, tostring(result)))
---end
---
---输出结果:
---元变量:英雄掉落率[SL:Get_H_DROP] 返回类型:number, 值:0
---```
function SL:Get_H_DROP() end

---英雄腕力
---@return number "英雄腕力"
---```lua
---local result = SL:Get_H_HW()
---local resultType = type(result)
---if resultType == "table" then
---    SL:dump(result,string.format("元变量:%s[SL:%s] 返回类型:%s, 值:", "英雄腕力", "Get_H_HW", resultType),2)
---else
---    SL:Print(string.format("元变量:%s[SL:%s] 返回类型:%s, 值:%s", "英雄腕力", "Get_H_HW", resultType, tostring(result)))
---end
---
---输出结果:
---元变量:英雄腕力[SL:Get_H_HW] 返回类型:number, 值:11
---```
function SL:Get_H_HW() end

---英雄最大腕力
---@return number "英雄最大腕力"
---```lua
---local result = SL:Get_H_MAXHW()
---local resultType = type(result)
---if resultType == "table" then
---    SL:dump(result,string.format("元变量:%s[SL:%s] 返回类型:%s, 值:", "英雄最大腕力", "Get_H_MAXHW", resultType),2)
---else
---    SL:Print(string.format("元变量:%s[SL:%s] 返回类型:%s, 值:%s", "英雄最大腕力", "Get_H_MAXHW", resultType, tostring(result)))
---end
---
---输出结果:
---元变量:英雄最大腕力[SL:Get_H_MAXHW] 返回类型:number, 值:204
---```
function SL:Get_H_MAXHW() end

---英雄背包重量
---@return number "英雄背包重量"
---```lua
---local result = SL:Get_H_BW()
---local resultType = type(result)
---if resultType == "table" then
---    SL:dump(result,string.format("元变量:%s[SL:%s] 返回类型:%s, 值:", "英雄背包重量", "Get_H_BW", resultType),2)
---else
---    SL:Print(string.format("元变量:%s[SL:%s] 返回类型:%s, 值:%s", "英雄背包重量", "Get_H_BW", resultType, tostring(result)))
---end
---
---输出结果:
---元变量:英雄背包重量[SL:Get_H_BW] 返回类型:number, 值:4
---```
function SL:Get_H_BW() end

---英雄最大背包重量
---@return number "英雄最大背包重量"
---```lua
---local result = SL:Get_H_MAXBW()
---local resultType = type(result)
---if resultType == "table" then
---    SL:dump(result,string.format("元变量:%s[SL:%s] 返回类型:%s, 值:", "英雄最大背包重量", "Get_H_MAXBW", resultType),2)
---else
---    SL:Print(string.format("元变量:%s[SL:%s] 返回类型:%s, 值:%s", "英雄最大背包重量", "Get_H_MAXBW", resultType, tostring(result)))
---end
---
---输出结果:
---元变量:英雄最大背包重量[SL:Get_H_MAXBW] 返回类型:number, 值:883
---```
function SL:Get_H_MAXBW() end

---英雄穿戴重量
---@return number "英雄穿戴重量"
---```lua
---local result = SL:Get_H_WW()
---local resultType = type(result)
---if resultType == "table" then
---    SL:dump(result,string.format("元变量:%s[SL:%s] 返回类型:%s, 值:", "英雄穿戴重量", "Get_H_WW", resultType),2)
---else
---    SL:Print(string.format("元变量:%s[SL:%s] 返回类型:%s, 值:%s", "英雄穿戴重量", "Get_H_WW", resultType, tostring(result)))
---end
---
---输出结果:
---元变量:英雄穿戴重量[SL:Get_H_WW] 返回类型:number, 值:16
---```
function SL:Get_H_WW() end

---英雄最大穿戴重量
---@return number "英雄最大穿戴重量"
---```lua
---local result = SL:Get_H_MAXWW()
---local resultType = type(result)
---if resultType == "table" then
---    SL:dump(result,string.format("元变量:%s[SL:%s] 返回类型:%s, 值:", "英雄最大穿戴重量", "Get_H_MAXWW", resultType),2)
---else
---    SL:Print(string.format("元变量:%s[SL:%s] 返回类型:%s, 值:%s", "英雄最大穿戴重量", "Get_H_MAXWW", resultType, tostring(result)))
---end
---
---输出结果:
---元变量:英雄最大穿戴重量[SL:Get_H_MAXWW] 返回类型:number, 值:140
---```
function SL:Get_H_MAXWW() end

---英雄闪避
---@return boolean "英雄闪避"
---```lua
---local result = SL:Get_H_SHAN()
---local resultType = type(result)
---if resultType == "table" then
---    SL:dump(result,string.format("元变量:%s[SL:%s] 返回类型:%s, 值:", "英雄闪避", "Get_H_SHAN", resultType),2)
---else
---    SL:Print(string.format("元变量:%s[SL:%s] 返回类型:%s, 值:%s", "英雄闪避", "Get_H_SHAN", resultType, tostring(result)))
---end
---
---输出结果:
---元变量:英雄闪避[SL:Get_H_SHAN] 返回类型:boolean, 值:false
---```
function SL:Get_H_SHAN() end

---英雄移动速度
---@return number "英雄移动速度"
---```lua
---local result = SL:Get_H_SPEED()
---local resultType = type(result)
---if resultType == "table" then
---    SL:dump(result,string.format("元变量:%s[SL:%s] 返回类型:%s, 值:", "英雄移动速度", "Get_H_SPEED", resultType),2)
---else
---    SL:Print(string.format("元变量:%s[SL:%s] 返回类型:%s, 值:%s", "英雄移动速度", "Get_H_SPEED", resultType, tostring(result)))
---end
---
---输出结果:
---元变量:英雄移动速度[SL:Get_H_SPEED] 返回类型:number, 值:10
---```
function SL:Get_H_SPEED() end

---英雄攻击后仰时间
---@return number "英雄攻击后仰时间"
---```lua
---local result = SL:Get_H_DELAYT()
---local resultType = type(result)
---if resultType == "table" then
---    SL:dump(result,string.format("元变量:%s[SL:%s] 返回类型:%s, 值:", "英雄攻击后仰时间", "Get_H_DELAYT", resultType),2)
---else
---    SL:Print(string.format("元变量:%s[SL:%s] 返回类型:%s, 值:%s", "英雄攻击后仰时间", "Get_H_DELAYT", resultType, tostring(result)))
---end
---
---输出结果:
---元变量:英雄攻击后仰时间[SL:Get_H_DELAYT] 返回类型:number, 值:1
---```
function SL:Get_H_DELAYT() end

---英雄所有装备数据
---@return table "英雄所有装备数据"
---```lua
---local result = SL:Get_H_ALL_EQUIP_DATA()
---local resultType = type(result)
---if resultType == "table" then
---    SL:dump(result,string.format("元变量:%s[SL:%s] 返回类型:%s, 值:", "英雄所有装备数据", "Get_H_ALL_EQUIP_DATA", resultType),2)
---else
---    SL:Print(string.format("元变量:%s[SL:%s] 返回类型:%s, 值:%s", "英雄所有装备数据", "Get_H_ALL_EQUIP_DATA", resultType, tostring(result)))
---end
---
---输出结果:
---"元变量:英雄所有装备数据[SL:Get_H_ALL_EQUIP_DATA] 返回类型:table, 值:" = {
---    "{130CF159-62E8-466B-8FE2-95123D22DC9C}" = {
---        "AddValues" = *MAX NESTING*
---        "Bind"            = 0
---        "DiyAdv" = *MAX NESTING*
---        "Dura"            = 6000
---        "DuraMax"         = 6000
---        "Index"           = 50277
---        "ItemSrc" = *MAX NESTING*
---        "MakeIndex"       = "{130CF159-62E8-466B-8FE2-95123D22DC9C}"
---        "OverLap"         = 1
---        "Quality" = *MAX NESTING*
---        "Star"            = false
---        "TNCell" = *MAX NESTING*
---        "Where"           = 10
---        "customNameColor" = false
---        "hasCustomName"   = false
---        "isJulingPearl"   = false
---        "limitRemainTime" = false
---        "limitTimeActive" = false
---        "mysticShowAttr"  = false
---        "openTNCellNum"   = 0
---        "shabakeUpTag"    = 0
---        "touBaoTimes"     = false
---    }
---```
function SL:Get_H_ALL_EQUIP_DATA() end

---英雄指定位置装备数据
---* param1 装备位置
---@param param1 integer
---@return table "英雄指定位置装备数据"
---```lua
---local result = SL:Get_H_EQUIP_DATA(param1)
---local resultType = type(result)
---if resultType == "table" then
---    SL:dump(result,string.format("元变量:%s[SL:%s] 返回类型:%s, 值:", "英雄指定位置装备数据", "Get_H_EQUIP_DATA", resultType),2)
---else
---    SL:Print(string.format("元变量:%s[SL:%s] 返回类型:%s, 值:%s", "英雄指定位置装备数据", "Get_H_EQUIP_DATA", resultType, tostring(result)))
---end
---
---输出结果:
---"元变量:英雄指定位置装备数据[SL:Get_H_EQUIP_DATA] 返回类型:table, 值:" = {
---    "AddValues" = *MAX NESTING*
---    "Bind"            = 0
---    "DiyAdv" = {
---    }
---```
function SL:Get_H_EQUIP_DATA(param1, param2) end

---英雄装备数据列表
---* param1 装备位置
---@param param1 integer
---@return table "英雄装备数据列表"
---```lua
---local result = SL:Get_H_EQUIP_DATA_LIST(param1)
---local resultType = type(result)
---if resultType == "table" then
---    SL:dump(result,string.format("元变量:%s[SL:%s] 返回类型:%s, 值:", "英雄装备数据列表", "Get_H_EQUIP_DATA_LIST", resultType),2)
---else
---    SL:Print(string.format("元变量:%s[SL:%s] 返回类型:%s, 值:%s", "英雄装备数据列表", "Get_H_EQUIP_DATA_LIST", resultType, tostring(result)))
---end
---
---输出结果:
---"元变量:英雄装备数据列表[SL:Get_H_EQUIP_DATA_LIST] 返回类型:table, 值:" = {
---    1 = {
---        "AddValues" = *MAX NESTING*
---        "Bind"            = 0
---        "DiyAdv" = *MAX NESTING*
---        "Dura"            = 4000
---        "DuraMax"         = 4000
---        "Index"           = 50014
---        "ItemSrc" = *MAX NESTING*
---        "MakeIndex"       = "{47BD6CC4-C965-4349-A845-18A712A13DF1}"
---        "OverLap"         = 1
---        "Quality" = *MAX NESTING*
---        "Star"            = false
---        "TNCell" = *MAX NESTING*
---        "Where"           = 1
---        "customNameColor" = false
---        "hasCustomName"   = false
---        "isJulingPearl"   = false
---        "limitRemainTime" = false
---        "limitTimeActive" = false
---        "mysticShowAttr"  = false
---        "openTNCellNum"   = 0
---        "shabakeUpTag"    = 0
---        "touBaoTimes"     = false
---    }
---```
function SL:Get_H_EQUIP_DATA_LIST(param1) end

---英雄技能图标路径
---* param 技能ID
---* isCombo 是否连击技能
---@param param integer
---@param isCombo boolean
---@return string "英雄技能图标路径"
---```lua
---local result = SL:Get_H_SKILL_ICON_PATH(param, isCombo)
---local resultType = type(result)
---if resultType == "table" then
---    SL:dump(result,string.format("元变量:%s[SL:%s] 返回类型:%s, 值:", "英雄技能图标路径", "Get_H_SKILL_ICON_PATH", resultType),2)
---else
---    SL:Print(string.format("元变量:%s[SL:%s] 返回类型:%s, 值:%s", "英雄技能图标路径", "Get_H_SKILL_ICON_PATH", resultType, tostring(result)))
---end
---
---输出结果:
---元变量:英雄技能图标路径[SL:Get_H_SKILL_ICON_PATH] 返回类型:string, 值:res/skill_icon_c/1.png
---```
function SL:Get_H_SKILL_ICON_PATH(param, isCombo) end

---英雄技能矩形图标路径
---* skillID 技能ID
---* isCombo 是否连击技能
---@param skillID integer
---@param isCombo boolean
---@return string "英雄技能矩形图标路径"
---```lua
---local result = SL:Get_H_SKILL_RECT_ICON_PATH(skillID, isCombo)
---local resultType = type(result)
---if resultType == "table" then
---    SL:dump(result,string.format("元变量:%s[SL:%s] 返回类型:%s, 值:", "英雄技能矩形图标路径", "Get_H_SKILL_RECT_ICON_PATH", resultType),2)
---else
---    SL:Print(string.format("元变量:%s[SL:%s] 返回类型:%s, 值:%s", "英雄技能矩形图标路径", "Get_H_SKILL_RECT_ICON_PATH", resultType, tostring(result)))
---end
---
---输出结果:
---元变量:英雄技能矩形图标路径[SL:Get_H_SKILL_RECT_ICON_PATH] 返回类型:string, 值:res/skill_icon/1.jpg
---```
function SL:Get_H_SKILL_RECT_ICON_PATH(skillID, isCombo) end

---英雄内功技能列表
---@return table "英雄内功技能列表"
---```lua
---local result = SL:Get_H_INTERNAL_SKILLS()
---local resultType = type(result)
---if resultType == "table" then
---    SL:dump(result,string.format("元变量:%s[SL:%s] 返回类型:%s, 值:", "英雄内功技能列表", "Get_H_INTERNAL_SKILLS", resultType),2)
---else
---    SL:Print(string.format("元变量:%s[SL:%s] 返回类型:%s, 值:%s", "英雄内功技能列表", "Get_H_INTERNAL_SKILLS", resultType, tostring(result)))
---end
---
---输出结果:
---"元变量:英雄内功技能列表[SL:Get_H_INTERNAL_SKILLS] 返回类型:table, 值:" = {
---}
---```
function SL:Get_H_INTERNAL_SKILLS() end

---英雄内功技能训练数据
---* skillID 技能ID
---* skillType 技能类型
---@param skillID integer
---@param skillType integer
---@return string "英雄内功技能训练数据"
---```lua
---local result = SL:Get_H_INTERNAL_SKILL_TRAIN_DATA(skillID, skillType)
---local resultType = type(result)
---if resultType == "table" then
---    SL:dump(result,string.format("元变量:%s[SL:%s] 返回类型:%s, 值:", "英雄内功技能训练数据", "Get_H_INTERNAL_SKILL_TRAIN_DATA", resultType),2)
---else
---    SL:Print(string.format("元变量:%s[SL:%s] 返回类型:%s, 值:%s", "英雄内功技能训练数据", "Get_H_INTERNAL_SKILL_TRAIN_DATA", resultType, tostring(result)))
---end
---
---输出结果:
---元变量:英雄内功技能训练数据[SL:Get_H_INTERNAL_SKILL_TRAIN_DATA] 返回类型:string, 值:-
---```
function SL:Get_H_INTERNAL_SKILL_TRAIN_DATA(skillID, skillType) end

---英雄内功技能矩形图标路径
---* skillID 技能ID
---* skillType 技能类型
---@param skillID integer
---@param skillType integer
---@return string "英雄内功技能矩形图标路径"
---```lua
---local result = SL:Get_H_INTERNAL_SKILL_RECT_ICON_PATH(skillID, skillType)
---local resultType = type(result)
---if resultType == "table" then
---    SL:dump(result,string.format("元变量:%s[SL:%s] 返回类型:%s, 值:", "英雄内功技能矩形图标路径", "Get_H_INTERNAL_SKILL_RECT_ICON_PATH", resultType),2)
---else
---    SL:Print(string.format("元变量:%s[SL:%s] 返回类型:%s, 值:%s", "英雄内功技能矩形图标路径", "Get_H_INTERNAL_SKILL_RECT_ICON_PATH", resultType, tostring(result)))
---end
---
---输出结果:
---元变量:英雄内功技能矩形图标路径[SL:Get_H_INTERNAL_SKILL_RECT_ICON_PATH] 返回类型:string, 值:res/skill_icon/1.jpg
---```
function SL:Get_H_INTERNAL_SKILL_RECT_ICON_PATH(skillID, skillType) end

---英雄内功技能名称
---* skillID 技能ID
---* skillType 技能类型
---@param skillID integer
---@param skillType integer
---@return string "英雄内功技能名称"
---```lua
---local result = SL:Get_H_INTERNAL_SKILL_NAME(skillID, skillType)
---local resultType = type(result)
---if resultType == "table" then
---    SL:dump(result,string.format("元变量:%s[SL:%s] 返回类型:%s, 值:", "英雄内功技能名称", "Get_H_INTERNAL_SKILL_NAME", resultType),2)
---else
---    SL:Print(string.format("元变量:%s[SL:%s] 返回类型:%s, 值:%s", "英雄内功技能名称", "Get_H_INTERNAL_SKILL_NAME", resultType, tostring(result)))
---end
---
---输出结果:
---元变量:英雄内功技能名称[SL:Get_H_INTERNAL_SKILL_NAME] 返回类型:string, 值:
---```
function SL:Get_H_INTERNAL_SKILL_NAME(skillID, skillType) end

---英雄经络穴位状态
---* param1 穴位类型
---@param param1 integer
---@return table "英雄经络穴位状态"
---```lua
---local result = SL:Get_H_MERIDIAN_AUCPOINT_STATE(param1)
---local resultType = type(result)
---if resultType == "table" then
---    SL:dump(result,string.format("元变量:%s[SL:%s] 返回类型:%s, 值:", "英雄经络穴位状态", "Get_H_MERIDIAN_AUCPOINT_STATE", resultType),2)
---else
---    SL:Print(string.format("元变量:%s[SL:%s] 返回类型:%s, 值:%s", "英雄经络穴位状态", "Get_H_MERIDIAN_AUCPOINT_STATE", resultType, tostring(result)))
---end
---
---输出结果:
---"元变量:英雄经络穴位状态[SL:Get_H_MERIDIAN_AUCPOINT_STATE] 返回类型:table, 值:" = {
---}
---```
function SL:Get_H_MERIDIAN_AUCPOINT_STATE(param1) end

---英雄经络开启列表
---@return table "英雄经络开启列表"
---```lua
---local result = SL:Get_H_MERIDIAN_OPEN_LIST()
---local resultType = type(result)
---if resultType == "table" then
---    SL:dump(result,string.format("元变量:%s[SL:%s] 返回类型:%s, 值:", "英雄经络开启列表", "Get_H_MERIDIAN_OPEN_LIST", resultType),2)
---else
---    SL:Print(string.format("元变量:%s[SL:%s] 返回类型:%s, 值:%s", "英雄经络开启列表", "Get_H_MERIDIAN_OPEN_LIST", resultType, tostring(result)))
---end
---
---输出结果:
---"元变量:英雄经络开启列表[SL:Get_H_MERIDIAN_OPEN_LIST] 返回类型:table, 值:" = {
---}
---```
function SL:Get_H_MERIDIAN_OPEN_LIST() end

---英雄经络等级
---* type 经络类型
---@param type integer
---@return number "英雄经络等级"
---```lua
---local result = SL:Get_H_MERIDIAN_LV(type)
---local resultType = type(result)
---if resultType == "table" then
---    SL:dump(result,string.format("元变量:%s[SL:%s] 返回类型:%s, 值:", "英雄经络等级", "Get_H_MERIDIAN_LV", resultType),2)
---else
---    SL:Print(string.format("元变量:%s[SL:%s] 返回类型:%s, 值:%s", "英雄经络等级", "Get_H_MERIDIAN_LV", resultType, tostring(result)))
---end
---
---输出结果:
---元变量:英雄经络等级[SL:Get_H_MERIDIAN_LV] 返回类型:number, 值:0
---```
function SL:Get_H_MERIDIAN_LV(type) end

---英雄是否有连击技能
---@return table "英雄是否有连击技能"
---```lua
---local result = SL:Get_H_HAVE_COMBO_SKILLS()
---local resultType = type(result)
---if resultType == "table" then
---    SL:dump(result,string.format("元变量:%s[SL:%s] 返回类型:%s, 值:", "英雄是否有连击技能", "Get_H_HAVE_COMBO_SKILLS", resultType),2)
---else
---    SL:Print(string.format("元变量:%s[SL:%s] 返回类型:%s, 值:%s", "英雄是否有连击技能", "Get_H_HAVE_COMBO_SKILLS", resultType, tostring(result)))
---end
---
---输出结果:
---"元变量:英雄是否有连击技能[SL:Get_H_HAVE_COMBO_SKILLS] 返回类型:table, 值:" = {
---}
---```
function SL:Get_H_HAVE_COMBO_SKILLS() end

---英雄连击技能数据
---* param1 技能ID
---@param param1 integer
---@return nil "英雄连击技能数据"
---```lua
---local result = SL:Get_H_COMBO_SKILL_DATA(param1)
---local resultType = type(result)
---if resultType == "table" then
---    SL:dump(result,string.format("元变量:%s[SL:%s] 返回类型:%s, 值:", "英雄连击技能数据", "Get_H_COMBO_SKILL_DATA", resultType),2)
---else
---    SL:Print(string.format("元变量:%s[SL:%s] 返回类型:%s, 值:%s", "英雄连击技能数据", "Get_H_COMBO_SKILL_DATA", resultType, tostring(result)))
---end
---
---输出结果:
---元变量:英雄连击技能数据[SL:Get_H_COMBO_SKILL_DATA] 返回类型:nil, 值:nil
---```
function SL:Get_H_COMBO_SKILL_DATA(param1) end

---英雄连击技能训练数据
---* skillID 技能ID
---@param skillID integer
---@return string "英雄连击技能训练数据"
---```lua
---local result = SL:Get_H_COMBO_SKILL_TRAIN_DATA(skillID)
---local resultType = type(result)
---if resultType == "table" then
---    SL:dump(result,string.format("元变量:%s[SL:%s] 返回类型:%s, 值:", "英雄连击技能训练数据", "Get_H_COMBO_SKILL_TRAIN_DATA", resultType),2)
---else
---    SL:Print(string.format("元变量:%s[SL:%s] 返回类型:%s, 值:%s", "英雄连击技能训练数据", "Get_H_COMBO_SKILL_TRAIN_DATA", resultType, tostring(result)))
---end
---
---输出结果:
---元变量:英雄连击技能训练数据[SL:Get_H_COMBO_SKILL_TRAIN_DATA] 返回类型:string, 值:-
---```
function SL:Get_H_COMBO_SKILL_TRAIN_DATA(skillID) end

---英雄设置连击技能
---@return table "英雄设置连击技能"
---```lua
---local result = SL:Get_H_SET_COMBO_SKILLS()
---local resultType = type(result)
---if resultType == "table" then
---    SL:dump(result,string.format("元变量:%s[SL:%s] 返回类型:%s, 值:", "英雄设置连击技能", "Get_H_SET_COMBO_SKILLS", resultType),2)
---else
---    SL:Print(string.format("元变量:%s[SL:%s] 返回类型:%s, 值:%s", "英雄设置连击技能", "Get_H_SET_COMBO_SKILLS", resultType, tostring(result)))
---end
---
---输出结果:
---"元变量:英雄设置连击技能[SL:Get_H_SET_COMBO_SKILLS] 返回类型:table, 值:" = {
---}
---```
function SL:Get_H_SET_COMBO_SKILLS() end

---英雄开启连击数量
---@return number "英雄开启连击数量"
---```lua
---local result = SL:Get_H_OPEN_COMBO_NUM()
---local resultType = type(result)
---if resultType == "table" then
---    SL:dump(result,string.format("元变量:%s[SL:%s] 返回类型:%s, 值:", "英雄开启连击数量", "Get_H_OPEN_COMBO_NUM", resultType),2)
---else
---    SL:Print(string.format("元变量:%s[SL:%s] 返回类型:%s, 值:%s", "英雄开启连击数量", "Get_H_OPEN_COMBO_NUM", resultType, tostring(result)))
---end
---
---输出结果:
---元变量:英雄开启连击数量[SL:Get_H_OPEN_COMBO_NUM] 返回类型:number, 值:4
---```
function SL:Get_H_OPEN_COMBO_NUM() end

---英雄锁定目标ID
---@return nil "英雄锁定目标ID"
---```lua
---local result = SL:Get_H_LOCK_TARGET_ID()
---local resultType = type(result)
---if resultType == "table" then
---    SL:dump(result,string.format("元变量:%s[SL:%s] 返回类型:%s, 值:", "英雄锁定目标ID", "Get_H_LOCK_TARGET_ID", resultType),2)
---else
---    SL:Print(string.format("元变量:%s[SL:%s] 返回类型:%s, 值:%s", "英雄锁定目标ID", "Get_H_LOCK_TARGET_ID", resultType, tostring(result)))
---end
---
---输出结果:
---元变量:英雄锁定目标ID[SL:Get_H_LOCK_TARGET_ID] 返回类型:nil, 值:nil
---```
function SL:Get_H_LOCK_TARGET_ID() end

---角色是否为英雄
---* param Actor对象或ID
---@param param integer
---@return boolean "角色是否为英雄"
---```lua
---local result = SL:Get_ACTOR_IS_HERO(param)
---local resultType = type(result)
---if resultType == "table" then
---    SL:dump(result,string.format("元变量:%s[SL:%s] 返回类型:%s, 值:", "角色是否为英雄", "Get_ACTOR_IS_HERO", resultType),2)
---else
---    SL:Print(string.format("元变量:%s[SL:%s] 返回类型:%s, 值:%s", "角色是否为英雄", "Get_ACTOR_IS_HERO", resultType, tostring(result)))
---end
---
---输出结果:
---元变量:角色是否为英雄[SL:Get_ACTOR_IS_HERO] 返回类型:boolean, 值:false
---```
function SL:Get_ACTOR_IS_HERO(param) end

---角色是否可被英雄锁定
---* param Actor对象或ID
---@param param integer
---@return boolean "角色是否可被英雄锁定"
---```lua
---local result = SL:Get_ACTOR_CAN_LOCK_BY_HERO(param)
---local resultType = type(result)
---if resultType == "table" then
---    SL:dump(result,string.format("元变量:%s[SL:%s] 返回类型:%s, 值:", "角色是否可被英雄锁定", "Get_ACTOR_CAN_LOCK_BY_HERO", resultType),2)
---else
---    SL:Print(string.format("元变量:%s[SL:%s] 返回类型:%s, 值:%s", "角色是否可被英雄锁定", "Get_ACTOR_CAN_LOCK_BY_HERO", resultType, tostring(result)))
---end
---
---输出结果:
---元变量:角色是否可被英雄锁定[SL:Get_ACTOR_CAN_LOCK_BY_HERO] 返回类型:boolean, 值:false
---```
function SL:Get_ACTOR_CAN_LOCK_BY_HERO(param) end

---角色是否为主英雄
---* param Actor对象或ID
---@param param integer
---@return boolean "角色是否为主英雄"
---```lua
---local result = SL:Get_ACTOR_IS_MAINHERO(param)
---local resultType = type(result)
---if resultType == "table" then
---    SL:dump(result,string.format("元变量:%s[SL:%s] 返回类型:%s, 值:", "角色是否为主英雄", "Get_ACTOR_IS_MAINHERO", resultType),2)
---else
---    SL:Print(string.format("元变量:%s[SL:%s] 返回类型:%s, 值:%s", "角色是否为主英雄", "Get_ACTOR_IS_MAINHERO", resultType, tostring(result)))
---end
---
---输出结果:
---元变量:角色是否为主英雄[SL:Get_ACTOR_IS_MAINHERO] 返回类型:boolean, 值:false
---```
function SL:Get_ACTOR_IS_MAINHERO(param) end

---视野内英雄列表
---@return table "视野内英雄列表"
---```lua
---local result = SL:Get_FIND_IN_VIEW_HERO_LIST()
---local resultType = type(result)
---if resultType == "table" then
---    SL:dump(result,string.format("元变量:%s[SL:%s] 返回类型:%s, 值:", "视野内英雄列表", "Get_FIND_IN_VIEW_HERO_LIST", resultType),2)
---else
---    SL:Print(string.format("元变量:%s[SL:%s] 返回类型:%s, 值:%s", "视野内英雄列表", "Get_FIND_IN_VIEW_HERO_LIST", resultType, tostring(result)))
---end
---
---输出结果:
---"元变量:视野内英雄列表[SL:Get_FIND_IN_VIEW_HERO_LIST] 返回类型:table, 值:" = {
---    1 = "901943133164"
---}
---```
function SL:Get_FIND_IN_VIEW_HERO_LIST() end

---英雄是否学习内功
---@return boolean "英雄是否学习内功"
---```lua
---local result = SL:Get_H_IS_LEARNED_INTERNAL()
---local resultType = type(result)
---if resultType == "table" then
---    SL:dump(result,string.format("元变量:%s[SL:%s] 返回类型:%s, 值:", "英雄是否学习内功", "Get_H_IS_LEARNED_INTERNAL", resultType),2)
---else
---    SL:Print(string.format("元变量:%s[SL:%s] 返回类型:%s, 值:%s", "英雄是否学习内功", "Get_H_IS_LEARNED_INTERNAL", resultType, tostring(result)))
---end
---
---输出结果:
---元变量:英雄是否学习内功[SL:Get_H_IS_LEARNED_INTERNAL] 返回类型:boolean, 值:false
---```
function SL:Get_H_IS_LEARNED_INTERNAL() end

---英雄合击技能
---@return nil "英雄合击技能"
---```lua
---local result = SL:Get_HERO_JOINT_SKILL()
---local resultType = type(result)
---if resultType == "table" then
---    SL:dump(result,string.format("元变量:%s[SL:%s] 返回类型:%s, 值:", "英雄合击技能", "Get_HERO_JOINT_SKILL", resultType),2)
---else
---    SL:Print(string.format("元变量:%s[SL:%s] 返回类型:%s, 值:%s", "英雄合击技能", "Get_HERO_JOINT_SKILL", resultType, tostring(result)))
---end
---
---输出结果:
---元变量:英雄合击技能[SL:Get_HERO_JOINT_SKILL] 返回类型:nil, 值:nil
---```
function SL:Get_HERO_JOINT_SKILL() end

---是否为英雄技能
---* skillID 技能ID
---@param skillID integer
---@return boolean "是否为英雄技能"
---```lua
---local result = SL:Get_IS_HERO_SKILL(skillID)
---local resultType = type(result)
---if resultType == "table" then
---    SL:dump(result,string.format("元变量:%s[SL:%s] 返回类型:%s, 值:", "是否为英雄技能", "Get_IS_HERO_SKILL", resultType),2)
---else
---    SL:Print(string.format("元变量:%s[SL:%s] 返回类型:%s, 值:%s", "是否为英雄技能", "Get_IS_HERO_SKILL", resultType, tostring(result)))
---end
---
---输出结果:
---元变量:是否为英雄技能[SL:Get_IS_HERO_SKILL] 返回类型:boolean, 值:false
---```
function SL:Get_IS_HERO_SKILL(skillID) end

---英雄当前属性值(按ID)
---* param1 属性ID
---@param param1 integer
---@return number "英雄当前属性值(按ID)"
---```lua
---local result = SL:Get_H_CUR_ABIL_BY_ID(param1)
---local resultType = type(result)
---if resultType == "table" then
---    SL:dump(result,string.format("元变量:%s[SL:%s] 返回类型:%s, 值:", "英雄当前属性值(按ID)", "Get_H_CUR_ABIL_BY_ID", resultType),2)
---else
---    SL:Print(string.format("元变量:%s[SL:%s] 返回类型:%s, 值:%s", "英雄当前属性值(按ID)", "Get_H_CUR_ABIL_BY_ID", resultType, tostring(result)))
---end
---
---输出结果:
---元变量:英雄当前属性值(按ID)[SL:Get_H_CUR_ABIL_BY_ID] 返回类型:number, 值:1367199
---```
function SL:Get_H_CUR_ABIL_BY_ID(param1) end

---英雄最大属性值(按ID)
---* param1 属性ID
---@param param1 integer
---@return number "英雄最大属性值(按ID)"
---```lua
---local result = SL:Get_H_MAX_ABIL_BY_ID(param1)
---local resultType = type(result)
---if resultType == "table" then
---    SL:dump(result,string.format("元变量:%s[SL:%s] 返回类型:%s, 值:", "英雄最大属性值(按ID)", "Get_H_MAX_ABIL_BY_ID", resultType),2)
---else
---    SL:Print(string.format("元变量:%s[SL:%s] 返回类型:%s, 值:%s", "英雄最大属性值(按ID)", "Get_H_MAX_ABIL_BY_ID", resultType, tostring(result)))
---end
---
---输出结果:
---元变量:英雄最大属性值(按ID)[SL:Get_H_MAX_ABIL_BY_ID] 返回类型:number, 值:3000729
---```
function SL:Get_H_MAX_ABIL_BY_ID(param1) end

---英雄称号列表
---@return table "英雄称号列表"
---```lua
---local result = SL:Get_H_TITLES()
---local resultType = type(result)
---if resultType == "table" then
---    SL:dump(result,string.format("元变量:%s[SL:%s] 返回类型:%s, 值:", "英雄称号列表", "Get_H_TITLES", resultType),2)
---else
---    SL:Print(string.format("元变量:%s[SL:%s] 返回类型:%s, 值:%s", "英雄称号列表", "Get_H_TITLES", resultType, tostring(result)))
---end
---
---输出结果:
---"元变量:英雄称号列表[SL:Get_H_TITLES] 返回类型:table, 值:" = {
---}
---```
function SL:Get_H_TITLES() end

---英雄激活称号ID
---@return nil "英雄激活称号ID"
---```lua
---local result = SL:Get_H_TITLE_ACTIVATE_ID()
---local resultType = type(result)
---if resultType == "table" then
---    SL:dump(result,string.format("元变量:%s[SL:%s] 返回类型:%s, 值:", "英雄激活称号ID", "Get_H_TITLE_ACTIVATE_ID", resultType),2)
---else
---    SL:Print(string.format("元变量:%s[SL:%s] 返回类型:%s, 值:%s", "英雄激活称号ID", "Get_H_TITLE_ACTIVATE_ID", resultType, tostring(result)))
---end
---
---输出结果:
---元变量:英雄激活称号ID[SL:Get_H_TITLE_ACTIVATE_ID] 返回类型:nil, 值:nil
---```
function SL:Get_H_TITLE_ACTIVATE_ID() end

---英雄背包数据
---@return table "英雄背包数据"
---```lua
---local result = SL:Get_H_BAG_DATA()
---local resultType = type(result)
---if resultType == "table" then
---    SL:dump(result,string.format("元变量:%s[SL:%s] 返回类型:%s, 值:", "英雄背包数据", "Get_H_BAG_DATA", resultType),2)
---else
---    SL:Print(string.format("元变量:%s[SL:%s] 返回类型:%s, 值:%s", "英雄背包数据", "Get_H_BAG_DATA", resultType, tostring(result)))
---end
---
---输出结果:
---"元变量:英雄背包数据[SL:Get_H_BAG_DATA] 返回类型:table, 值:" = {
---    "{BF8D3337-E363-41DF-B6D0-885EA0C6828E}" = {
---        "AddValues" = *MAX NESTING*
---        "Bind"            = 0
---        "DiyAdv" = *MAX NESTING*
---        "Dura"            = 5000
---        "DuraMax"         = 5000
---        "Index"           = 50093
---        "ItemSrc" = *MAX NESTING*
---        "MakeIndex"       = "{BF8D3337-E363-41DF-B6D0-885EA0C6828E}"
---        "OverLap"         = 1
---        "Quality" = *MAX NESTING*
---        "Star"            = false
---        "TNCell" = *MAX NESTING*
---        "Where"           = -1
---        "customNameColor" = false
---        "hasCustomName"   = false
---        "isJulingPearl"   = false
---        "limitRemainTime" = false
---        "limitTimeActive" = false
---        "mysticShowAttr"  = false
---        "openTNCellNum"   = 0
---        "shabakeUpTag"    = 0
---        "touBaoTimes"     = false
---    }
---```
function SL:Get_H_BAG_DATA() end

---英雄最大背包格数
---@return number "英雄最大背包格数"
---```lua
---local result = SL:Get_HERO_MAX_BAG()
---local resultType = type(result)
---if resultType == "table" then
---    SL:dump(result,string.format("元变量:%s[SL:%s] 返回类型:%s, 值:", "英雄最大背包格数", "Get_HERO_MAX_BAG", resultType),2)
---else
---    SL:Print(string.format("元变量:%s[SL:%s] 返回类型:%s, 值:%s", "英雄最大背包格数", "Get_HERO_MAX_BAG", resultType, tostring(result)))
---end
---
---输出结果:
---元变量:英雄最大背包格数[SL:Get_HERO_MAX_BAG] 返回类型:number, 值:40
---```
function SL:Get_HERO_MAX_BAG() end

-- [Source: 元变量^行会-好友-组队.lua]

---行会成员列表
---@return table "行会成员列表"
---```lua
---local value = SL:Get_GUILD_MEMBER_LIST()
---SL:dump(value,string.format("元变量- 公会成员列表(%s)",type(value)))
---```
function SL:Get_GUILD_MEMBER_LIST() end

---行会申请列表
---@return table "行会申请列表"
---```lua
---local cc = SL:Get_GUILD_APPLY_LIST()
---print(cc,type(cc))
---```
function SL:Get_GUILD_APPLY_LIST() end

---行会结盟申请列表
---@return table "行会结盟申请列表"
---```lua
---local cc = SL:Get_GUILD_ALLY_APPLY_LIST()
---print(cc,type(cc))
---```
function SL:Get_GUILD_ALLY_APPLY_LIST() end

---获取世界行会列表
---* page 分页ID
---@param page number
---@return table "世界行会列表"
---```lua
---local cc = SL:Get_GUILD_WORLD_LIST(1)
---print(cc,type(cc))
---```
function SL:Get_GUILD_WORLD_LIST(page) end

---我的行会信息
---@return table "我的行会信息"
---```lua
---local cc = SL:Get_GUILD_INFO()
---print(cc,type(cc))
---```
function SL:Get_GUILD_INFO() end

---获取行会职位名称
---* param 职位ID
---@param param number
---@return string "获取行会职位名称"
---```lua
---local cc = SL:Get_GUILD_OFFICIAL_NAME_BY_RANK(1)
---print(cc,type(cc))
---```
function SL:Get_GUILD_OFFICIAL_NAME_BY_RANK(param) end

---通过uid获取行会成员信息
---* targetID uid
---@param targetID number
---@return table "获取行会成员信息"
---```lua
---local cc = SL:Get_GUILD_MEMBER_INFO(targetID)
---print(cc,type(cc))
---```
function SL:Get_GUILD_MEMBER_INFO(targetID) end

---最大好友人数
---@return number "最大好友人数"
---```lua
---local cc = SL:Get_FRIEND_MAX_COUNT()
---print(cc,type(cc))
---```
function SL:Get_FRIEND_MAX_COUNT() end

---根据userID获取好友信息
---* userID 用户ID
---@param userID number
---@return table "根据userID获取好友信息"
---```lua
---local cc = SL:Get_FRIEND_INFO_BY_UID(userID)
---print(cc,type(cc))
---```
function SL:Get_FRIEND_INFO_BY_UID(userID) end

---根据userName获取好友信息
---* userName 用户名
---@param userName string
---@return table "好友信息"
---```lua
---local cc = SL:Get_FRIEND_INFO_BY_NAME(userName)
---print(cc,type(cc))
---```
function SL:Get_FRIEND_INFO_BY_NAME(userName) end

---是否在黑名单
---@return boolean "是否在黑名单 true/false"
---```tips
---旧接口名：SL:Get_SOCIAL_IS_BLICKLIST
---```
---```lua
---local cc = SL:Get_SOCIAL_IS_BLACKLIST()
---print(cc,type(cc))
---```
function SL:Get_SOCIAL_IS_BLACKLIST() end

---获取好友列表
---@return table "好友列表"
---```lua
---local cc = SL:Get_FRIEND_LIST()
---print(cc,type(cc))
---```
function SL:Get_FRIEND_LIST() end

---获取黑名单数据
---@return table "黑名单数据"
---```lua
---local cc = SL:Get_FRIEND_BLACKLIST()
---print(cc,type(cc))
---```
function SL:Get_FRIEND_BLACKLIST() end

---好友申请列表
---@return table "好友申请列表"
---```lua
---local cc = SL:Get_FRIEND_APPLYLIST()
---print(cc,type(cc))
---```
function SL:Get_FRIEND_APPLYLIST() end

---允许添加状态
---@return boolean "允许添加状态 true/false"
---```lua
---local cc = SL:Get_ADD_STATUS_PERMIT()
---print(cc,type(cc))
---```
function SL:Get_ADD_STATUS_PERMIT() end

---附近队伍列表
---@return table "附近队伍列表"
---```lua
---local cc = SL:Get_TEAM_NEAR()
---print(cc,type(cc))
---```
function SL:Get_TEAM_NEAR() end

---队伍成员列表
---@return table "队伍成员列表"
---```lua
---local cc = SL:Get_TEAM_MEMBER_LIST()
---print(cc,type(cc))
---```
function SL:Get_TEAM_MEMBER_LIST() end

---当前队伍人数
---@return number "当前队伍人数"
---```lua
---local cc = SL:Get_TEAM_MEMBER_COUNT()
---print(cc,type(cc))
---```
function SL:Get_TEAM_MEMBER_COUNT() end

---队伍最大人数
---@return number "队伍最大人数"
---```lua
---local cc = SL:Get_TEAM_MEMBER_MAX_COUNT()
---print(cc,type(cc))
---```
function SL:Get_TEAM_MEMBER_MAX_COUNT() end

---是否是队伍成员
---@return boolean "是否是队伍成员 true/false"
---```lua
---local cc = SL:Get_TEAM_IS_MEMBER()
---print(cc,type(cc))
---```
function SL:Get_TEAM_IS_MEMBER() end

---允许组队状态
---@return number "允许组队状态<br>0=不允许<br>1=允许"
---```lua
---local cc = SL:Get_TEAM_STATUS_PERMIT()
---print(cc)
---```
function SL:Get_TEAM_STATUS_PERMIT() end

---入队申请列表
---@return table "入队申请列表"
---```lua
---local cc = SL:Get_TEAM_APPLY()
---print(cc,type(cc))
---```
function SL:Get_TEAM_APPLY() end

-- [Source: 元变量^角色相关.lua]

---玩家名字
---@return string "玩家名字"
---```lua
---local cc = SL:Get_USER_NAME()
---print(cc,type(cc))
---```
function SL:Get_USER_NAME() end

---玩家职业
---@return number "玩家职业 0：战士 1：法师 2：道士"
---```lua
---local cc = SL:Get_JOB()
---print(cc,type(cc))
---```
function SL:Get_JOB() end

---玩家等级
---@return number "玩家等级"
---```lua
---local cc = SL:Get_LEVEL()
---print(cc,type(cc))
---```
function SL:Get_LEVEL() end

---玩家转生等级
---@return number "玩家转生等级"
---```lua
---local cc = SL:Get_RELEVEL()
---print(cc,type(cc))
---```
function SL:Get_RELEVEL() end

---职业名字
---@return string "职业名字"
---```lua
---local cc = SL:Get_JOB_NAME()
---print(cc,type(cc))
---```
function SL:Get_JOB_NAME() end

---玩家性别
---@return number "玩家性别 0：男 1：女"
---```lua
---local cc = SL:Get_SEX()
---print(cc,type(cc))
---```
function SL:Get_SEX() end

---玩家真实姓名
---@return string "玩家真实姓名"
---```lua
---local cc = SL:Get_REAL_USER_NAME()
---print(cc,type(cc))
---```
function SL:Get_REAL_USER_NAME() end

---玩家名字颜色值
---@return number "玩家名字颜色值"
---```lua
---local cc = SL:Get_USER_NAME_COLOR()
---print(cc,type(cc))
---```
function SL:Get_USER_NAME_COLOR() end

---人物方向
---@return number "人物方向 0：上<br>1：右上<br>2：右<br>3：右下<br>4：下<br>5：左下<br>6：左<br>7：左上<br>0xff：无效位置"
---```lua
---local cc = SL:Get_DIR()
---print(cc,type(cc))
---```
function SL:Get_DIR() end

---角色是否死亡
---@return boolean "角色是否死亡 true/false"
---```lua
---local cc = SL:Get_USER_IS_DIE()
---print(cc,type(cc))
---```
function SL:Get_USER_IS_DIE() end

---角色是否能复活
---@return boolean "角色是否能复活 true/false"
---```lua
---local cc = SL:Get_USER_IS_CANREVIVE()
---print(cc,type(cc))
---```
function SL:Get_USER_IS_CANREVIVE() end

---当前血量
---@return number "当前血量"
---```lua
---local cc = SL:Get_HP()
---print(cc,type(cc))
---```
function SL:Get_HP() end

---最大血量
---@return number "最大血量"
---```lua
---local cc = SL:Get_MAXHP()
---print(cc,type(cc))
---```
function SL:Get_MAXHP() end

---当前蓝量
---@return number "当前蓝量"
---```lua
---local cc = SL:Get_MP()
---print(cc,type(cc))
---```
function SL:Get_MP() end

---最大蓝量
---@return number "最大蓝量"
---```lua
---local cc = SL:Get_MAXMP()
---print(cc,type(cc))
---```
function SL:Get_MAXMP() end

---暴击几率
---@return number "暴击几率"
---```lua
---local cc = SL:Get_BURST()
---print(cc,type(cc))
---```
function SL:Get_BURST() end

---暴击伤害
---@return number "暴击伤害"
---```lua
---local cc = SL:Get_BURST_DAM()
---print(cc,type(cc))
---```
function SL:Get_BURST_DAM() end

---物伤减免
---@return number "物伤减免"
---```lua
---local cc = SL:Get_IMM_ATT()
---print(cc,type(cc))
---```
function SL:Get_IMM_ATT() end

---魔伤减免
---@return number "魔伤减免"
---```lua
---local cc = SL:Get_IMM_MAG()
---print(cc,type(cc))
---```
function SL:Get_IMM_MAG() end

---幸运
---@return number "幸运"
---```lua
---local cc = SL:Get_LUCK()
---print(cc,type(cc))
---```
function SL:Get_LUCK() end

---最小物防
---@return number "最小物防"
---```lua
---local cc = SL:Get_AC()
---print(cc,type(cc))
---```
function SL:Get_AC() end

---最大物防
---@return number "最大物防"
---```lua
---local cc = SL:Get_MAXAC()
---print(cc,type(cc))
---```
function SL:Get_MAXAC() end

---最小魔防
---@return number "最小魔防"
---```lua
---local cc = SL:Get_MAC()
---print(cc,type(cc))
---```
function SL:Get_MAC() end

---最大魔防
---@return number "最大魔防"
---```lua
---local cc = SL:Get_MAXMAC()
---print(cc,type(cc))
---```
function SL:Get_MAXMAC() end

---最小物理
---@return number "最小物理"
---```lua
---local cc = SL:Get_DC()
---print(cc,type(cc))
---```
function SL:Get_DC() end

---最大物理
---@return number "最大物理"
---```lua
---local cc = SL:Get_MAXDC()
---print(cc,type(cc))
---```
function SL:Get_MAXDC() end

---最小魔法
---@return number "最小魔法"
---```lua
---local cc = SL:Get_MC()
---print(cc,type(cc))
---```
function SL:Get_MC() end

---最大魔法
---@return number "最大魔法"
---```lua
---local cc = SL:Get_MAXMC()
---print(cc,type(cc))
---```
function SL:Get_MAXMC() end

---最小道术
---@return number "最小道术"
---```lua
---local cc = SL:Get_SC()
---print(cc,type(cc))
---```
function SL:Get_SC() end

---最大道术
---@return number "最大道术"
---```lua
---local cc = SL:Get_MAXSC()
---print(cc,type(cc))
---```
function SL:Get_MAXSC() end

---准确
---@return number "准确"
---```lua
---local cc = SL:Get_HIT()
---print(cc,type(cc))
---```
function SL:Get_HIT() end

---敏捷
---@return number "敏捷"
---```lua
---local cc = SL:Get_SPD()
---print(cc,type(cc))
---```
function SL:Get_SPD() end

---当前经验
---@return number "当前经验"
---```lua
---local cc = SL:Get_EXP()
---print(cc,type(cc))
---```
function SL:Get_EXP() end

---最大经验
---@return number "最大经验"
---```lua
---local cc = SL:Get_MAXEXP()
---print(cc,type(cc))
---```
function SL:Get_MAXEXP() end

---攻速
---@return number "攻速"
---```lua
---local cc = SL:Get_HITSPD()
---print(cc,type(cc))
---```
function SL:Get_HITSPD() end

---腕力
---@return number "腕力"
---```lua
---local cc = SL:Get_HW()
---print(cc,type(cc))
---```
function SL:Get_HW() end

---最大可穿戴腕力
---@return number "最大可穿戴腕力"
---```lua
---local cc = SL:Get_MAXHW()
---print(cc,type(cc))
---```
function SL:Get_MAXHW() end

---重量
---@return number "重量"
---```lua
---local cc = SL:Get_BW()
---print(cc,type(cc))
---```
function SL:Get_BW() end

---玩家最大负重
---@return number "玩家最大负重"
---```lua
---local cc = SL:Get_MAXBW()
---print(cc,type(cc))
---```
function SL:Get_MAXBW() end

---穿戴负重
---@return number "穿戴负重"
---```lua
---local cc = SL:Get_WW()
---print(cc,type(cc))
---```
function SL:Get_WW() end

---最大穿戴负重
---@return number "最大穿戴负重"
---```lua
---local cc = SL:Get_MAXWW()
---print(cc,type(cc))
---```
function SL:Get_MAXWW() end

---体力恢复
---@return number "体力恢复"
---```lua
---local cc = SL:Get_HUNGER()
---print(cc,type(cc))
---```
function SL:Get_HUNGER() end

---获取玩家身上衣服的名字
---@return string "获取玩家身上衣服的名字"
---```lua
---local cc = SL:Get_DRESS()
---print(cc,type(cc))
---```
function SL:Get_DRESS() end

---获取玩家身上武器的名字
---@return string "获取玩家身上武器的名字"
---```lua
---local cc = SL:Get_WEAPON()
---print(cc,type(cc))
---```
function SL:Get_WEAPON() end

---获取玩家身上勋章的名字
---@return string "获取玩家身上勋章的名字"
---```lua
---local cc = SL:Get_RIGHTHAND()
---print(cc,type(cc))
---```
function SL:Get_RIGHTHAND() end

---获取玩家身上头盔的名字
---@return string "获取玩家身上头盔的名字"
---```lua
---local cc = SL:Get_HELMET()
---print(cc,type(cc))
---```
function SL:Get_HELMET() end

---获取玩家身上项链的名字
---@return string "获取玩家身上项链的名字"
---```lua
---local cc = SL:Get_NECKLACE()
---print(cc,type(cc))
---```
function SL:Get_NECKLACE() end

---获取玩家身上右戒指的名字
---@return string "获取玩家身上右戒指的名字"
---```lua
---local cc = SL:Get_RINGR()
---print(cc,type(cc))
---```
function SL:Get_RINGR() end

---获取玩家身上左戒指的名字
---@return string "获取玩家身上左戒指的名字"
---```lua
---local cc = SL:Get_RINGL()
---print(cc,type(cc))
---```
function SL:Get_RINGL() end

---获取玩家身上右手镯的名字
---@return string "获取玩家身上右手镯的名字"
---```lua
---local cc = SL:Get_ARMRINGR()
---print(cc,type(cc))
---```
function SL:Get_ARMRINGR() end

---获取玩家身上左手镯的名字
---@return string "获取玩家身上左手镯的名字"
---```lua
---local cc = SL:Get_ARMRINGL()
---print(cc,type(cc))
---```
function SL:Get_ARMRINGL() end

---获取玩家身上护符、玉佩、宝珠的名字
---@return string "获取玩家身上护符、玉佩、宝珠的名字"
---```lua
---local cc = SL:Get_SCREEN_BUJUKWIDTH()
---print(cc,type(cc))
---```
function SL:Get_BUJUK() end

---获取玩家身上腰带的名字
---@return string "获取玩家身上腰带的名字"
---```lua
---local cc = SL:Get_BELT()
---print(cc,type(cc))
---```
function SL:Get_BELT() end

---获取玩家身上鞋子的名字
---@return string "获取玩家身上鞋子的名字"
---```lua
---local cc = SL:Get_BOOTS()
---print(cc,type(cc))
---```
function SL:Get_BOOTS() end

---获取玩家身上宝石的名字
---@return string "获取玩家身上宝石的名字"
---```lua
---local cc = SL:Get_CHARM()
---print(cc,type(cc))
---```
function SL:Get_CHARM() end

---获取玩家某一装备位的装备名
---* equipID 装备位id
---@param equipID number
---@return string "获取玩家某一装备位的装备名"
---```lua
---local cc = SL:Get_EQUIPBYPOS(1)
---print(cc,type(cc))
---```
function SL:Get_EQUIPBYPOS(equipID) end

---根据类型id获取属性值
---* typeID 类型ID
---@param typeID number
---@return number "根据类型id获取属性值"
---```lua
---local cc = SL:Get_CUR_ABIL_BY_ID(，94)
---print(cc,type(cc))
---```
function SL:Get_CUR_ABIL_BY_ID(typeID) end

---获取玩家某一装备数据
---* param1 装备位id 或者 装备名称
---* param2 是否多个装备位共享
---@param param1 number/string
---@param param2 boolean
---@return table "获取玩家某一装备数据"
---```lua
---local cc = SL:Get_EQUIP_DATA(30)
---print(cc,type(cc))
---```
function SL:Get_EQUIP_DATA(param1, param2) end

---获取玩家法阵数据
---@return table "获取玩家法阵数据"
---```lua
---local cc = SL:Get_EQUIP_EMBATTLE()
---print(cc,type(cc))
---```
function SL:Get_EQUIP_EMBATTLE() end

---玩家外观数据
---@return table "玩家外观数据"
---```lua
---local cc = SL:Get_FEATURE()
---print(cc,type(cc))
---```
function SL:Get_FEATURE() end

---发型ID
---@return number "发型ID"
---```lua
---local cc = SL:Get_HAIR()
---print(cc,type(cc))
---```
function SL:Get_HAIR() end

---获取装备位对应MakeIndex数据
---* pos 装备位id
---* beginOnMoving 是否多个装备位置共享（头盔斗笠面巾）
---* type 1:自己</br>2:自己英雄</br>3:他人</br>4:他人英雄</br>5:交易行他人数据</br>6:交易他人行英雄
---@param pos number
---@param beginOnMoving boolean
---@param type number
---@return table "获取装备位对应MakeIndex数据"
---```lua
---local cc = GUIFunction:GetEquipDataByPos(pos,beginOnMoving, type)
---print(cc,type(cc))
---```
function GUIFunction:GetEquipDataByPos(pos, beginOnMoving, type) end

---玩家的称号数据
---@return table "玩家的称号数据"
---```lua
---local cc = SL:Get_TITLES()
---print(cc,type(cc))
---```
function SL:Get_TITLES() end

---获取玩家对应ID的称号数据
---* id 用户ID
---@param id integer
---@return table "获取玩家对应ID的称号数据"
---```lua
---local userId=SL:Get_USER_ID()
---local cc = SL:Get_TITLE_DATA_BY_ID(userId)
---print(cc,type(cc))
---```
function SL:Get_TITLE_DATA_BY_ID(id) end

---玩家激活的称号id
---@return number "玩家激活的称号id"
---```lua
---local cc = SL:Get_TITLE_ACTIVATE_ID()
---print(cc,type(cc))
---```
function SL:Get_TITLE_ACTIVATE_ID() end

---人物内功最大内力值
---* id 用户ID
---@param id number
---@return number "人物内功最大内力值"
---```lua
---local userID=SL:Get_USER_ID()
---local cc = SL:Get_MAX_ABIL_BY_ID(userID)
---print(cc,type(cc))
---```
function SL:Get_MAX_ABIL_BY_ID(id) end

---人物内功当前内力值
---* id 用户ID
---@param id number
---@return number "人物内功当前内力值"
---```lua
---local userID=SL:Get_USER_ID()
---local cc = SL:Get_CUR_ABIL_BY_ID(userID)
---print(cc,type(cc))
---```
function SL:Get_CUR_ABIL_BY_ID(id) end

---人物内功等级
---* id 引擎固定157
---@param id integer
---@return number "人物内功等级"
---```lua
---local cc = SL:Get_CUR_ABIL_BY_ID(157)
---print(cc,type(cc))
---```
function SL:Get_CUR_ABIL_BY_ID(id) end

---人物内功当前斗转星移值
---* id 引擎固定105
---@param id integer
---@return number "人物内功当前斗转星移值"
---```lua
---local cc = SL:Get_MAX_ABIL_BY_ID(105)
---print(cc,type(cc))
---```
function SL:Get_MAX_ABIL_BY_ID(id) end

---人物内功当前经验值
---* id 引擎固定156
---@param id integer
---@return number "人物内功当前经验值"
---```lua
---local cc = SL:Get_CUR_ABIL_BY_ID(156)
---print(cc,type(cc))
---```
function SL:Get_CUR_ABIL_BY_ID(id) end

---获取人物拥有内功技能列表
---@return table "获取人物拥有内功技能列表"
---```lua
---local cc = SL:Get_INTERNAL_SKILLS()
---print(cc,type(cc))
---```
function SL:Get_INTERNAL_SKILLS() end

---获取人物内功技能数据
---* skillID 内功技能ID
---* skillType 内功技能类型
---@param skillID number
---@param skillType number
---@return table "获取人物内功技能数据"
---```lua
---local cc = SL:Get_INTERNAL_SKILL_DATA(skillID, skillType)
---print(cc,type(cc))
---```
function SL:Get_INTERNAL_SKILL_DATA(skillID, skillType) end

---获取人物内功技能等级熟练度数据
---* skillID 内功技能ID
---* skillType 内功技能类型
---@param skillID number
---@param skillType number
---@return table "获取人物内功技能等级熟练度数据"
---```lua
---local cc = SL:Get_INTERNAL_SKILL_TRAIN_DATA(skillID, skillType)
---print(cc,type(cc))
---```
function SL:Get_INTERNAL_SKILL_TRAIN_DATA(skillID, skillType) end

---获取人物内功技能开关
---* skillID 内功技能ID
---* skillType 内功技能类型
---@param skillID number
---@param skillType number
---@return number "获取人物内功技能开关"
---```lua
---local cc = SL:Get_INTERNAL_SKILL_ONOFF(skillID, skillType)
---print(cc,type(cc))
---```
function SL:Get_INTERNAL_SKILL_ONOFF(skillID, skillType) end

---获取人物内功技能矩形图标路径
---* skillID 内功技能ID
---* skillType 内功技能类型
---@param skillID number
---@param skillType number
---@return string "获取人物内功技能矩形图标路径"
---```lua
---local cc = SL:Get_INTERNAL_SKILL_RECT_ICON_PATH(skillID, skillType)
---print(cc,type(cc))
---```
function SL:Get_INTERNAL_SKILL_RECT_ICON_PATH(skillID, skillType) end

---获取人物内功技能名字
---* skillID 内功技能ID
---* skillType 内功技能类型
---@param skillID number
---@param skillType number
---@return table "获取人物内功技能名字"
---```lua
---local cc = SL:Get_INTERNAL_SKILL_NAME(skillID, skillType)
---print(cc,type(cc))
---```
function SL:Get_INTERNAL_SKILL_NAME(skillID, skillType) end

---获取人物内功技能描述
---* skillID 内功技能ID
---* skillType 内功技能类型
---@param skillID number
---@param skillType number
---@return table "获取人物内功技能描述"
---```lua
---local cc = SL:Get_INTERNAL_SKILL_DESC(skillID, skillType)
---print(cc,type(cc))
---```
function SL:Get_INTERNAL_SKILL_DESC(skillID, skillType) end

---获取人物内功经络的穴位描述
---@return table "获取人物内功经络的穴位描述"
---```lua
---local cc = SL:Get_MERIDIAN_DESC()
---print(cc,type(cc))
---```
function SL:Get_MERIDIAN_DESC() end

---获取人物内功对应经络的穴位是否激活列表
---* param1 经络ID
---@param param1 number
---@return table "获取人物内功对应经络的穴位是否激活列表"
---```lua
---local cc = SL:Get_MERIDIAN_AUCPOINT_STATE(2)
---print(cc,type(cc))
---```
function SL:Get_MERIDIAN_AUCPOINT_STATE(param1) end

---获取人物内功经络的开关列表
---@return table "获取人物内功经络的开关列表"
---```lua
---local cc = SL:Get_MERIDIAN_OPEN_LIST()
---print(cc,type(cc))
---```
function SL:Get_MERIDIAN_OPEN_LIST() end

---获取人物内功对应经络等级
---* param1 内功
---@param param1 number
---@return number "获取人物内功对应经络等级"
---```lua
---local cc = SL:Get_MERIDIAN_LV(2)
---print(cc,type(cc))
---```
function SL:Get_MERIDIAN_LV(param1) end

---获取人物所有拥有的连击技能
---@return table "获取人物所有拥有的连击技能"
---```lua
---local cc = SL:Get_HAVE_COMBO_SKILLS()
---print(cc,type(cc))
---```
function SL:Get_HAVE_COMBO_SKILLS() end

---获取人物对应连击技能
---* skillID 技能ID
---@param skillID number
---@return table "获取人物对应连击技能"
---```lua
---local cc = SL:Get_COMBO_SKILL_DATA(104)
---print(cc,type(cc))
---```
function SL:Get_COMBO_SKILL_DATA(skillID) end

---获取人物连击技能等级熟练度数据
---* skillID 技能ID
---@param skillID number
---@return table "获取人物连击技能等级熟练度数据"
---```lua
---local cc = SL:Get_COMBO_SKILL_TRAIN_DATA(104)
---print(cc,type(cc))
---```
function SL:Get_COMBO_SKILL_TRAIN_DATA(skillID) end

---获取人物设置为连击的数据
---@return table "获取人物设置为连击的数据"
---```lua
---local cc = SL:Get_SET_COMBO_SKILLS()
---print(cc,type(cc))
---```
function SL:Get_SET_COMBO_SKILLS() end

---人物开启的连击个数
---@return number "人物开启的连击个数"
---```lua
---local cc = SL:Get_OPEN_COMBO_NUM()
---print(cc,type(cc))
---```
function SL:Get_OPEN_COMBO_NUM() end

---人物是否学习内功
---@return boolean "人物是否学习内功 true/false"
---```lua
---local cc = SL:Get_IS_LEARNED_INTERNAL()
---print(cc,type(cc))
---```
function SL:Get_IS_LEARNED_INTERNAL() end

---获取对应连击格子额外加暴击几率
---* param1 连击格子index(1-4)
---@param param1 number
---@return number "获取对应连击格子额外加暴击几率"
---```lua
---local cc = SL:Get_EXTRA_COMBO_BJRATE(1)
---print(cc,type(cc))
---```
function SL:Get_EXTRA_COMBO_BJRATE(param1) end

---跑步移动格子数
---@return number "跑步移动格子数"
---```lua
---local cc = SL:Get_RUN_STEP()
---print(cc,type(cc))
---```
function SL:Get_RUN_STEP() end

---能否跑
---@return boolean "能否跑 true/false"
---```lua
---local cc = SL:Get_CAN_RUN_ABLE()
---print(cc,type(cc))
---```
function SL:Get_CAN_RUN_ABLE() end

---当前查看他人角色ID
---@return string "当前查看他人角色ID"
---```lua
---local cc = SL:Get_LOOK_TARGET_ID()
---print(cc,type(cc))
---```
function SL:Get_LOOK_TARGET_ID() end

---当前查看他人角色名字
---@return string "当前查看他人角色名字"
---```lua
---local cc = SL:Get_LOOK_TARGET_NAME()
---print(cc,type(cc))
---```
function SL:Get_LOOK_TARGET_NAME() end

---当前查看他人角色名字颜色ID
---@return integer "当前查看他人角色名字颜色ID"
---```lua
---local cc = SL:Get_LOOK_TARGET_NAME_COLOR()
---print(cc,type(cc))
---```
function SL:Get_LOOK_TARGET_NAME_COLOR() end

---玩家属性初始化完成
---@return boolean "玩家属性初始化完成 true/false"
---```lua
---local cc = SL:Get_PLAYER_INITED()
---print(cc,type(cc))
---```
function SL:Get_PLAYER_INITED() end

---获取当前PK模式
---@return number "获取当前PK模式<br>0：全体<br>1：和平<br>2：夫妻<br>3：师徒<br>4：组队<br>5：公会<br>6：善恶<br>7：国家"
---```lua
---local cc = SL:Get_PKMODE()
---print(cc,type(cc))
---```
function SL:Get_PKMODE() end

---该PK模式是否可以切换
---* param PK模式
---@param param integer
---@return boolean "该PK模式是否可以切换 true/false"
---```lua
---local cc = SL:Get_PKMODE_CAN_USE(5)
---print(cc,type(cc))
---```
function SL:Get_PKMODE_CAN_USE(param) end

---人物当前坐标X
---@return number "人物当前坐标X"
---```lua
---local cc = SL:Get_X()
---print(cc,type(cc))
---```
function SL:Get_X() end

---PK点数
---@return number "PK点数"
---```lua
---local cc = SL:Get_PKPOINT()
---print(cc,type(cc))
---```
function SL:Get_PKPOINT() end

---人物当前坐标Y
---@return number "人物当前坐标Y"
---```lua
---local cc = SL:Get_Y()
---print(cc,type(cc))
---```
function SL:Get_Y() end

---获取关系列表
---@return table "关系列表 true/false"
---```lua
---local cc = Get_RELATION_TYPE_LIST
---print(cc,type(cc))
---```
function SL:Get_RELATION_TYPE_LIST() end

---根据关系id获取名称
---* type 关系id
---@param type number
---@return string "关系名称"
---```lua
---local cc = SL:Get_RELATION_TYPE_NAME(1)
---print(cc,type(cc))
---```
function SL:Get_RELATION_TYPE_NAME(type) end

---根据关系id获取备注
---* type 关系id
---@param type number
---@return string "关系备注"
---```lua
---local cc = SL:Get_RELATION_TYPE_FUNC_DESC(1)
---print(cc,type(cc))
---```
function SL:Get_RELATION_TYPE_FUNC_DESC(type) end

---根据关系id获取关系配置
---* type 关系id
---@param type number
---@return table "关系配置"
---```lua
---local cc = SL:Get_RELATION_TYPE_CONFIG(1)
---print(cc,type(cc))
---```
function SL:Get_RELATION_TYPE_CONFIG(type) end

---获取已有关系配置
---* type 关系id
---@param type number
---@return table "关系配置"
---```lua
---local cc = SL:Get_RELATION_TYPE_DATA(1)
---print(cc,type(cc))
---```
function SL:Get_RELATION_TYPE_DATA(type) end

---获取我邀请建立的关系列表
---@return table "关系列表"
---```lua
---local cc = SL:Get_RELATION_MY_NETLIST()
---print(cc,type(cc))
---```
function SL:Get_RELATION_MY_NETLIST() end

---获取允许被邀请建立关系状态
---* type 关系类型ID
---@param type number
---@return boolean "是否允许"
---```lua
---local cc = SL:Get_RELATION_MY_NETLIST(type)
---print(cc,type(cc))
---```
function SL:Get_RELATION_MY_NETLIST(type) end

---获取是否允许关系召集
---* type 关系类型ID
---@param type number
---@return boolean "是否允许"
---```lua
---local cc = SL:Get_RELATION_CALL_PERMIT_BY_TYPE(type)
---print(cc,type(cc))
---```
function SL:Get_RELATION_CALL_PERMIT_BY_TYPE(type) end


---转生属性点
---@return number "转生属性点"
---```lua
---local cc=SL:Get_BONUS_POINT(param)
---print(cc,type(cc))
---```
function SL:Get_BONUS_POINT() end

---获取buffID的配置表数据
---* buffID buffID 无参, 则整个buff表数据
---@param buffID number
---@return table "buffID的配置表数据"
---```lua
---local cc = SL:Get_BUFF_CONFIG(buffID)
---print(cc,type(cc))
---```
function SL:Get_BUFF_CONFIG(buffID) end

---黑夜当前状态
---@return number "黑夜当前状态"
---```lua
---local cc = SL:Get_DARK_STATE()
---print(cc,type(cc))
---```
function SL:Get_DARK_STATE() end

---内观头发偏移配置
---@return table "内观头发偏移配置"
---```lua
---local cc = SL:Get_UIMODEL_HAIR_OFFSET()
---print(cc,type(cc))
---```
function SL:Get_UIMODEL_HAIR_OFFSET() end

---内观装备偏移配置
---@return table "内观装备偏移配置"
---```lua
---local cc = SL:Get_UIMODEL_EQUIP_OFFSET()
---print(cc,type(cc))
---```
function SL:Get_UIMODEL_EQUIP_OFFSET() end

---屏幕点击状态
---@return boolean "屏幕点击状态"
---```lua
---local cc = SL:Get_TOUCH_STATE()
---print(cc,type(cc))
---```
function SL:Get_TOUCH_STATE() end

---鼠标移动位置
---@return table "鼠标移动位置"
---```lua
---local cc = SL:Get_MOUSE_MOVE_POS()
---print(cc,type(cc))
---```
function SL:Get_MOUSE_MOVE_POS() end

---交易行开启状态
---@return boolean "交易行开启状态 true/false"
---```lua
---local cc = SL:Get_TRADINGBANK_OPENSTATUS()
---print(cc,type(cc))
---```
function SL:Get_TRADINGBANK_OPENSTATUS() end

---PC端 CTRL键是否按下
---@return boolean "PC端 CTRL键是否按下 true/false"
---```lua
---local cc = SL:Get_CTRL_PRESSED()
---print(cc,type(cc))
---```
function SL:Get_CTRL_PRESSED() end

-- [Source: 元变量^道具.lua]

---获取货币数量
---* ID 货币id
---@param ID number
---@return string "货币数量"
---```lua
---local cc = SL:Get_MONEY(1)
---print(cc,type(cc))
---```
function SL:Get_MONEY(ID) end

---获取货币数量(包括 等价替换道具的数量)
---* id 货币id
---@param id number
---@return string "货币数量"
---```lua
---local cc = SL:Get_MONEY_ASSOCIATED(1)
---print(cc,type(cc))
---```
function SL:Get_MONEY_ASSOCIATED(id) end

---获取所有道具信息
---@return table "所有道具信息"
---```lua
---local cc = SL:Get_STD_ITEMS()
---print(cc,type(cc))
---```
function SL:Get_STD_ITEMS() end

---根据道具index获取道具信息
---* itemIndex 道具index
---@param itemIndex number
---@return integer "道具信息"
---```lua
---local cc = SL:Get_ITEM_DATA(10)
---print(cc,type(cc))
---```
function SL:Get_ITEM_DATA(itemIndex) end

---根据道具index或者名字获取道具数量
---* itemInfo 道具index或道具名
---@param itemInfo number/string
---@return integer "道具数量"
---```lua
---local cc = SL:Get_ITEM_COUNT(1)
---print(cc,type(cc))
---```
function SL:Get_ITEM_COUNT(itemInfo) end

---根据道具index获取道具名字
---* itemIndex 道具index
---@param itemIndex number
---@return string "道具名字"
---```lua
---local cc = SL:Get_ITEM_NAME(1)
---print(cc,type(cc))
---```
function SL:Get_ITEM_NAME(itemIndex) end

---根据道具名字获取道具index
---* itemName 道具名字
---@param itemName string
---@return number "道具index"
---```lua
---local cc = SL:Get_ITEM_INDEX_BY_NAME(金币)
---print(cc,type(cc))
---```
function SL:Get_ITEM_INDEX_BY_NAME(itemName) end

---获取道具名字颜色
---* itemIndex 道具index
---@param itemIndex number
---@return string "道具名字颜色"
---```lua
---local cc = SL:Get_ITEM_NAME_COLOR(1)
---print(cc,type(cc))
---```
function SL:Get_ITEM_NAME_COLOR(itemIndex) end

---道具名字颜色,”#FFFFFF”格式
---* itemIndex 道具index
---@param itemIndex number
---@return string "道具名字颜色"
---```lua
---local cc = SL:Get_ITEM_NAME_COLOR_VALUE(1)
---print(cc,type(cc))
---```
function SL:Get_ITEM_NAME_COLOR_VALUE(itemIndex) end

---道具名字颜色ID, 颜色表ID
---* itemIndex 道具index
---@param itemIndex number
---@return number "道具名字颜色ID, 颜色表ID"
---```lua
---local cc = SL:Get_ITEM_NAME_COLORID(150)
---print(cc,type(cc))
---```
function SL:Get_ITEM_NAME_COLORID(itemIndex) end

---物品是否绑定
---* itemData 物品数据
---@param itemData table
---@return boolean "物品是否绑定 true/false"
---```lua
---local cc = SL:Get_ITEM_IS_BIND(itemData)
---print(cc,type(cc))
---```
function SL:Get_ITEM_IS_BIND(itemData) end

---根据MakeIndex获取装备数据
---* param1 makeIndex
---* param2 是否是英雄
---@param param1 number
---@param param2 boolean
---@return table "装备数据"
---```lua
---local cc = SL:Get_EQUIP_DATA_BY_MAKEINDEX(150, false)
---print(cc,type(cc))
---```
function SL:Get_EQUIP_DATA_BY_MAKEINDEX(param1, param2) end

---根据MakeIndex获取仓库数据
---* param1 MakeIndex
---@param param1 number
---@return table "仓库数据"
---```lua
---local cc = SL:Get_STORAGE_DATA_BY_MAKEINDEX(MakeIndex)
---print(cc,type(cc))
---```
function SL:Get_STORAGE_DATA_BY_MAKEINDEX(param1) end

---根据MakeIndex获取查看他人装备数据
---* param1 makeIndex
---@param param1 number
---@return table "他人装备数据"
---```lua
---local cc = SL:Get_LOOKPLAYER_DATA_BY_MAKEINDEX(makeIndex)
---print(cc,type(cc))
---```
function SL:Get_LOOKPLAYER_DATA_BY_MAKEINDEX(param1) end

---检查禁止使用物品buff
---* itemIndex 物品index
---@param itemIndex number
---@return boolean,number "能否使用, buffID"
---```lua
---local cc = SL:Get_CHECK_USE_ITEM_BUFF(150)
---print(cc,type(cc))
---```
function SL:Get_CHECK_USE_ITEM_BUFF(itemIndex) end

---物品能否自动使用
---* itemData 物品数据
---@param itemData table
---@return boolean "物品能否自动使用 true/false"
---```lua
---local cc = SL:Get_ITEM_CAN_AUTOUSE(itemData)
---print(cc,type(cc))
---```
function SL:Get_ITEM_CAN_AUTOUSE(itemData) end

---技能书能否使用
---* itemName 技能书名字
---* isHero 是否英雄
---@param itemName string
---@param isHero boolean
---@return boolean "技能书能否使用 true/false"
---```lua
---local cc = SL:Get_SKILLBOOK_CAN_USE(itemName, isHero)
---print(cc,type(cc))
---```
function SL:Get_SKILLBOOK_CAN_USE(itemName, isHero) end

---根据MakeIndex获取物品归属
---* makeIndex MakeIndex
---@param makeIndex number
---@return number "物品归属"
---```lua
---local cc=SL:Get_ITEM_BELONG_BY_MAKEINDEX(makeIndex)
---print(cc,type(cc))
---```
function SL:Get_ITEM_BELONG_BY_MAKEINDEX(makeIndex) end

---获取背包物品唯一ID
---* pos 背包位置
---* isHero 是否英雄
---@param pos number
---@param isHero boolean
---@return integer "背包物品唯一ID"
---```lua
---local cc=SL:Get_BAG_MAKEINDEX_BY_POS(param, 1,true)
---print(cc,type(cc))
---```
function SL:Get_BAG_MAKEINDEX_BY_POS(pos, isHero) end

---道具框默认缩放
---@return number "缩放"
---```lua
---local cc = SL:Get_ITEM_SCALE()
---print(cc,type(cc))
---```
function SL:Get_ITEM_SCALE() end

---获取背包所有物品数据
---@return table "背包物品数据"
---```lua
---local cc = SL:Get_BAG_DATA()
---print(cc,type(cc))
---```
function SL:Get_BAG_DATA() end

---根据物品唯一id获取背包物品数据
---* makeindex 唯一id
---@param makeindex string
---@return table "物品数据"
---```lua
---local data = SL:GetMetaValue("ITEM_DATA_BY_MAKEINDEX", "{FA897245-BDCD-444E-B66E-7F119BE43878}")
---dump(data)
---```
function SL:Get_ITEM_DATA_BY_MAKEINDEX(makeindex) end

-- [Source: 元变量^面对面交易.lua]

---交易的目标ID
---@return string "交易的目标ID"
---```lua
---local cc = SL:Get_TRADE_TARGET_ID()
---print(cc,type(cc))
---```
function SL:Get_TRADE_TARGET_ID() end

---交易的目标名字
---@return string "交易的目标名字"
---```lua
---local cc = SL:Get_TRADE_TARGET_NAME()
---print(cc,type(cc))
---```
function SL:Get_TRADE_TARGET_NAME() end

---要交易的玩家信息
---@return table "要交易的玩家信息"
---```lua
---local cc = SL:Get_TRADE_TARGET_DATA()
---print(cc,type(cc))
---```
function SL:Get_TRADE_TARGET_DATA() end

---交易自己锁定状态
---@return boolean "交易自己锁定状态 true/false"
---```lua
---local cc = SL:Get_TRADE_MY_LOCK_STATUS()
---print(cc,type(cc))
---```
function SL:Get_TRADE_MY_LOCK_STATUS() end

---交易对方锁定状态
---@return boolean "交易对方锁定状态 true/false"
---```lua
---local cc = SL:Get_TRADE_TARGET_LOCK_STATUS()
---print(cc,type(cc))
---```
function SL:Get_TRADE_TARGET_LOCK_STATUS() end

---交易自己装备的数量
---@return integer "交易自己装备的数量"
---```lua
---local cc = SL:Get_TRADE_MY_ITEM_NUM()
---print(cc,type(cc))
---```
function SL:Get_TRADE_MY_ITEM_NUM() end

---交易是否处于交易状态
---@return boolean "交易是否处于交易状态"
---```lua
---local cc = SL:Get_TRADE_IS_TRADING()
---print(cc,type(cc))
---```
function SL:Get_TRADE_IS_TRADING() end

---交易自己货架数据
---@return table "交易自己货架数据"
---```lua
---local cc = SL:Get_TRADE_MY_ITEMS()
---print(cc,type(cc))
---```
function SL:Get_TRADE_MY_ITEMS() end

---交易对方放入物品信息
---@return table "交易对方放入物品信息"
---```lua
---local cc = SL:Get_TRADE_TARGET_ITEMS()
---print(cc,type(cc))
---```
function SL:Get_TRADE_TARGET_ITEMS() end

---交易获取邀请的数量
---@return integer "交易获取邀请的数量"
---```lua
---local cc = SL:Get_TRADE_INVITE_COUNT()
---print(cc,type(cc))
---```
function SL:Get_TRADE_INVITE_COUNT() end

---交易获取邀请列表信息
---@return table "交易获取邀请列表信息"
---```lua
---local cc = SL:Get_TRADE_INVITE_ITEMS()
---print(cc,type(cc))
---```
function SL:Get_TRADE_INVITE_ITEMS() end
