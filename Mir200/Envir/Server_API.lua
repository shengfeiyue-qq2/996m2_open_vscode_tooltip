
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

-- [Source: 接口^BUFF相关.lua]

---添加buff
---* base 玩家、怪物对象
---* buffId buff id，10000以后
---* time 时间,对应buff表里维护的单位
---* overLap 叠加层数，默认1
---* objOwner 施放者
---* abil 属性表 {[1]=200, [4]=20}，属性id=值
---@param base number|string
---@param buffId integer
---@param time integer
---@param overLap integer
---@param objOwner number|string
---@param abil table
---@return boolean "是否添加成功"
---```tips
---buff触发中无法添加/删除buff
---```
---```lua
---for i, buff in ipairs(buff_list) do
---    addbuff(actor, buff[1])
---    release_print("ADDBUFF", buff[1], buff[2])
---end
---```
function addbuff(base, buffId, time, overLap, objOwner, abil) end

---删除buff
---* base 玩家、怪物对象
---* buffId buff id
---@param base number|string
---@param buffId integer
---```tips
---buff触发中无法添加/删除buff
---```
---```lua
---release_print("========================")
---for i, buff in ipairs(buff_list) do
---    delbuff(actor,buff[1])
---    release_print("DELBUFF",buff[2],"是否还有buff",hasbuff(actor,buff[1]))
---end
---```
function delbuff(base, buffId) end

---是否有buff
---* base 玩家、怪物对象
---* buffId buff id
---@param base number|string
---@param buffId integer
---@return boolean "是否有"
---```lua
---release_print("========================")
---for i, buff in ipairs(buff_list) do
---    release_print("HASBUFF",buff[2],"是否还有buff",hasbuff(actor,buff[1]))
---end
---```
function hasbuff(base, buffId) end

---获取buff信息
---* base 玩家、怪物对象
---* buffId buff id
---* type 1=叠加层数<br>2=剩余时间(单位跟配置一致)<br>3=获取施法者对象(对象离线返回nil)<br>4=获取额外属性
---@param base number|string
---@param buffId integer
---@param type integer
---@return integer "buff信息"
---```lua
---release_print("========================")
---for _, buff in ipairs(buff_list) do
---    for i = 1, 4 do
---        release_print("buff信息",i,buff[1],getbuffinfo(actor,buff[1],i))
---    end
---end
---```
function getbuffinfo(base, buffId, type) end

---获取buff模板信息
---* buffInfo buffID/buff名称
---* id 0:idx<br>1:名称;<br>2.组别;<br>3.配置时间;<br>4.配置属性;
---@param buffInfo integer|string
---@param id integer
---@return integer "对应数值，不存在为0"
---```lua
---getstdbuffinfo(buffInfo,id)
---```
function getstdbuffinfo(buffInfo, id) end

---获取角色所有buff
---* actor 玩家对象
---@param actor number|string
---@return table "buff列表"
---```lua
---local list_buff = getallbuffid(actor)
---for i, buffid in ipairs(list_buff) do
---    release_print("buff",i,buffid)
---end
---```
function getallbuffid(actor) end

---设置buff堆叠层数
---* actor 玩家对象
---* buffId buffid
---* opt 操作符 “+” “-“ “=”
---* stack buff层数 不可超出表中最大层数
---* iTimer 是否重置buff 时间
---@param actor number|string
---@param buffId integer
---@param opt string
---@param stack integer
---@param iTimer boolean
---```lua
---buffstack(actor,10000,"+",1,true)
---```
function buffstack(actor, buffId, opt, stack, iTimer) end

-- [Source: 接口^NPC.lua]

---创建临时NPC
---* map 地图编号
---* X X坐标
---* Y Y坐标
---* NPC NPC信息<br>json字符串
---@param map string
---@param X integer
---@param Y integer
---@param NPC string
---```lua
---[[
---注意：自定义NPC的Idx不允许与配置表中的NPCID重复。
---Idx重复的NPC不会被创建出来。
---]]
---local mapID, x, y = getMapXY(actor)
---local npcInfo = {
---    ["Idx"] = 10086, -- 自定义NPC的Idx，NPC点击触发时，触发参数会传回Idx值
---    ["npcname"] = "测试", -- NPC名称
---    ["appr"] = 7, -- NPC外形效果
---    ["script"] = 'NewNPC', -- NPC相关脚本名称，表示Envir\Market_def\NewNPC.txt
---    ["limit"] = 5, -- 生命周期 (秒)
---    ["dir"] = 0, --npc朝向（0-7）
---}
---createnpc(mapID, x, y, tbl2json(npcInfo))
---```
function createnpc(map, X, Y, NPC) end

---删除NPC
---* name NPC名称
---* map 地图编号
---@param name string
---@param map string
---```lua
---local mapID, x, y = getMapXY(actor)
---delnpc("测试", mapID)
---```
function delnpc(name, map) end

---根据唯一ID删除NPC
---* npc NPC唯一ID
---@param npc string
---```tips
---1.该接口需要配合getnpcbyindex(NPCIndex)获取npc对象
---   2.npcindex需要在clicknpc触发下返回 或者点击npc的main方法下返回
---```
---```lua
---local npc = getnpcbyindex(NPCIndex)
---if npc then
---    DelNpcByUserId(npc)
---end
---```
function DelNpcByUserId(npc) end

---根据ID获取NPC对象
---* NPCIndex NPC索引（NPC配置表中的ID）
---@param NPCIndex integer
---@return number|string "NPC唯一ID"
---```lua
---local npc = getnpcbyindex(NPCIndex)
---```
function getnpcbyindex(NPCIndex) end

---打开指定NPC面板
---* actor 玩家对象
---* NPCIndex NPC索引（NPC配置表中的ID）
---* nRange 范围值，在此范围内允许打开(无法跨地图打开)
---@param actor number|string
---@param NPCIndex integer
---@param nRange integer
---```lua
---opennpcshow(actor,NPCIndex,nRange)
---```
function opennpcshow(actor, NPCIndex, nRange) end

---移动到指定NPC附近
---* actor 玩家对象
---* NPCIndex NPC索引（NPC配置表中的ID）
---* nRange 范围值，<br>不在此范围内则移动到NPC附近
---* nRange2 范围值2，移动到NPC附近的范围内
---@param actor number|string
---@param NPCIndex integer
---@param nRange integer
---@param nRange2 integer
---```lua
---opennpcshowex(actor,NPCIndex,nRange,nRange2)
---```
function opennpcshowex(actor, NPCIndex, nRange, nRange2) end

---获取当前NPC对象
---* actor 玩家对象
---@param actor number|string
---@return number|string "NPC对象"
---```lua
---local npc=getcurrnpc(actor)
---```
function getcurrnpc(actor) end

---设置NPC特效
---* actor 玩家对象
---* NPCIndex NPC索引（NPC配置表中的ID）
---* Effect 特效ID<br>5055-感叹号<br>5056-问号
---* X X坐标
---* Y Y坐标
---@param actor number|string
---@param NPCIndex integer
---@param Effect integer
---@param X integer
---@param Y integer
---```lua
---setnpceffect(actor,NPCIndex,Effect,X,Y)
---```
function setnpceffect(actor, NPCIndex, Effect, X, Y) end

---删除NPC特效
---* actor 玩家对象
---* NPCIndex NPC索引（NPC配置表中的ID）
---@param actor number|string
---@param NPCIndex integer
---```lua
---delnpceffect(actor,NPCIndex)
---```
function delnpceffect(actor, NPCIndex) end

---关闭当前的NPC对话框
---* actor 玩家对象
---@param actor number|string
---```lua
---close(actor)
---```
function close(actor) end

---给NPC注册Lua消息
---* msgId 消息ID
---* NPCIndex NPC索引（NPC配置表中的ID）
---@param msgId integer
---@param NPCIndex integer
---```lua
---regnpcmsg(msgId,NPCIndex)
---```
function regnpcmsg(msgId, NPCIndex) end

---获取NPC对象的Idx
---* NPC NPC对象
---@param NPC number|string
---@return integer "NPC索引（NPC配置表中的ID）"
---```lua
---local npc = getnpcbyindex(33)
---release_print(getnpcindex(npc))
---```
function getnpcindex(NPC) end

---调用其他NPC的lua函数
---* actor 玩家对象
---* NPCIndex NPC索引（NPC配置表中的ID）<br>特殊:<br> npcid:QF=999999999<br>QM=999999996<br>LuaCond=999999995<br>LuaFunc=999999994
---* delayTime 延迟时间ms,0立即执行
---* func 函数名
---* sParam 参数
---@param actor number|string
---@param NPCIndex integer
---@param delayTime integer
---@param func string
---@param sParam string
---```lua
---callfunbynpc(actor, 999999999, 1000, 'test', 'abc=1')
----------------以下代码写在Qfunction里------------
---function test(actor, p1)
---    release_print(actor, p1)
---end
--------------------------------------------------
---```
function callfunbynpc(actor, NPCIndex, delayTime, func, sParam) end

---打开NPC大窗口
---* path 玩家对象
---* pos 显示位置
---* x X坐标
---* y Y坐标
---* height 高度
---* width 宽度
---* bool 是否显示关闭按钮
---* closeX 关闭按钮X坐标
---* closeY 关闭按钮Y坐标
---* isMove 是否可以移动(0不移动 1移动)
---@param path string
---@param pos integer
---@param x integer
---@param y integer
---@param height integer
---@param width integer
---@param bool integer
---@param closeX integer
---@param closeY integer
---@param isMove integer
---```lua
---openmerchantbigdlg(path,pos,x,y,height,width,bool,closeX,closeY,isMove)
---```
function openmerchantbigdlg(path, pos, x, y, height, width, bool, closeX, closeY, isMove) end

---获取当前虚拟机id[npcid]
---@return integer "npcID（NPC配置表中的ID） 特殊npcid:QF=999999999,QM=999999996,LuaCond=999999995,LuaFunc=999999994"
---```lua
---local npci=getsysindex()
---```
function getsysindex() end

---NPC界面文本发送
---* actor 玩家对象
---* msg 界面文本内容，支持普通文本和自定义UI标签
---@param actor number|string
---@param msg string
---```lua
--- -- 基础对话调用
--- say(actor, "你好，欢迎来到游戏！")
--- 
--- -- 自定义输入
--- -- 自定义输入 @@InPutString22_X  X=1开启敏感字过滤   X=2昵称敏感字检测(更加严格)
--- -- 比如 @@InPutString22_1表示输入的内容开启敏感字过滤
--- -- @@InPutString22_2表示输入的内容开启昵称敏感字检测(更加严格)
--- say(actor, "<请输入充值卡卡号/@@InPutInteger12>\\<请输入充值卡卡号/@@InPutString22>")
--- 
--- -- 对应触发回调
--- function InPutInteger12(actor)
---     local msg = getconst(actor,"<$NPCPARAMS(1,N12)>")
---     release_print("自定义输入框传入内容",msg)
--- end
--- function InPutString22(actor)
---     local msg = getconst(actor,"<$NPCPARAMS(1,S22)>")
---     release_print("自定义输入框传入内容",msg)
--- end
---
--- -- UI绘制
--- local msg = [[
--- <Img|move=1|img=public/bg_npc_01.png|loadDelay=1|bg=1|reset=1|show=0>
--- <Button|x=546|y=0|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
--- <Text|x=50|y=50|text=自定义UI测试|color=255|size=20>
--- <Input|x=50.0|y=100.0|width=145|height=25|size=18|errortips=1|mincount=6|color=255|maxcount=100|inputid=1|isChatInput=0|type=1|text=默认文本>
--- <Button|x=380.0|y=100.0|nimg=public/1900000660.png|submitInput=1|pimg=public/1900000661.png|size=18|color=1003|text=输入框测试|link=@myscriptfunc,1,2,3>
--- ]]
--- say(actor, msg)
---
--- -- 脚本回调示例
--- -- 注意:如果需要传递参数到脚本接口，只需要在后面接 逗号 参数
--- -- 不支持老传奇传递参数的方式，lua里全部通过 @xxxx,1,2,3 这种方式传递参数
--- function myscriptfunc(actor,...)
---     local constValue = getconst(actor,"<$NPCINPUT(1)>")
---     release_print("输入框内容："..constValue)
---     release_print("携带参数:",...)
---     close(actor)
--- end
---```
---```tips
---- UI标签通用属性
---id: 元素ID (禁止使用 default_x)
---x, y: 坐标 (ax, ay 为锚点)
---width, height: 宽高 (percentwidth, percentheight 为百分比)
---link: 响应事件脚本命令 (如 @func)
---tips: 鼠标悬停提示文本 (tipsx, tipsy 偏移, tipWidth 宽度)
---
---- 常用标签详解
---
---**1. 显示文本 <Text>**
---text: 文本内容
---color: 颜色 (支持闪烁 {255,254,253})
---size: 字体大小
---scrollWidth: 滚动区域宽度 (配合 scrollWay, scrollTime, scrollHeight)
---platform: 平台 1 PC端 2 手机端
---
---**2. 图片 <Img|>**
---img: 图片路径
---bg: 是否为背景 (1=是)
---move: 是否可移动 (1=是)
---reset: 重置界面坐标 (1=是)
---show: 显示位置 0左上 1右上 2左下 3右下 4中间
---scale9l/r/t/b: 九宫拉伸参数
---bagPos: 背包位置 1左边 0右边
---grey: 灰化显示
---
---**3. 按钮 <Button>**
---nimg: 正常图片路径
---pimg: 按下图片路径
---mimg: 鼠标经过图片路径
---text: 按钮文本 (color, size 设置样式)
---clickInterval: 点击间隔(ms)
---
---**4. 输入框 <Input|>**
---inputid: 输入框ID (用于提交数据)
---type: 输入类型 0任意文本 1数字 2密码
---text: 默认内容
---place: 占位提示文本
---mincount/maxcount: 最小/最大字符数
---errortips: 输入类型不符提醒
---
---**5. 复选框 <CheckBox>**
---checkboxid: 复选框ID
---nimg/pimg: 未选/选中图片
---default: 默认状态 1选中 0未选
---submit: 点击是否提交
---
---**6. 特效 <Effect>**
---effectid: 特效ID
---effecttype: 0普通 1NPC模型 2怪物模型 3技能特效
---act: 动作 0待机 1走 2攻击...
---dir: 方向
---speed: 速度
---scale: 缩放
---
---**7. 倒计时 <COUNTDOWN>**
---time: 倒计时时间(秒)
---count: 循环次数
---showWay: 显示方式 1详细 0仅秒数
---link: 结束触发脚本
---
---**8. 道具/装备展示**
---<ItemShow>: 展示指定物品 (itemid, itemcount, showtips, link, dblink)
---<EquipShow>: 展示指定装备位 (index, showtips, showstar)
---<BAGITEMS>: 展示背包物品 (condition, select, count, row, link, selecttype)
---<EQUIPITEMS>: 展示穿戴装备 (positions, select, count, row)
---<DBItemShow>: 数据库物品展示 (makeindex)
---<ITEMBOX>: 物品放入框 (boxindex, stdmode, img)
---
---**9. 容器/布局**
---<Layout>: 容器 (width, height, color)
---<ListView>: 列表容器 (children={id1,id2}, direction, bounce, margin)
---
---**10. 其他组件**
---<RText>: 富文本
---<Frames>: 序列帧动画 (prefix, suffix, count, speed, loop)
---<Slider>: 滑动条 (sliderid, ballimg, barimg, bgimg, maxvalue)
---<MenuItem>: 下拉菜单 (menuid, itemname, select, link)
---<ScrapePic>: 刮刮乐 (showimg, maskimg, clearhei, link)
---```
function say(actor, msg) end

---增加自定义按钮
---* actor 玩家对象
---* windowId 主窗口ID
---* buttonId 按钮ID
---* icon 图标内容
---@param actor number|string
---@param windowId integer
---@param buttonId integer
---@param icon string
---```tips
---参数1:主窗口ID
---101 主界面左上 建议开始微调坐标 0 0
---102 主界面右上 建议开始微调坐标 -65 0
---103 主界面左下 建议开始微调坐标 0 -92
---104 主界面右下 建议开始微调坐标 -62 -92
---105 主界面左中 建议开始微调坐标 0 0
---106 主界面上中 建议开始微调坐标 0 0
---107 主界面右中 建议开始微调坐标 -62 0
---108 主界面下中 建议开始微调坐标 0 -92
---109 主界面切换按钮
---110 主界面任务界面
---1101 主界面最顶左上
---1102 主界面最顶右上
---1103 主界面最顶左下
---1104 主界面最顶右下
---
---
---2      角色-外框主面板-(切换页签按钮也会在)
---
---3      角色-装备-上层
---3001   角色-装备-下层
---
---301    别人装备界面-上层
---3002   别人装备界面-下层
---
---4      角色-状态
---5      角色-属性
---6      角色-技能
---7      角色-背包
---8      小地图
---9      行会 行会列表
---10     行会 行会创建
---11     行会 主面板
---12     行会 行会成员
---14     邮件
---15     好友
---
---16     大仓库面板
---19     设置 保护
---20     设置 拾取
---21     设置 战斗
---22     设置 操作
---23     角色-称号
---24     角色-脚本面板2
---25     角色-脚本面板3
---26     角色-脚本面板4
---27     角色-脚本面板5
---28     角色-脚本面板6
---29     拍卖行 主面板
---30     拍卖行 世界拍卖
---31     拍卖行 行会拍卖
---32     拍卖行 我的竞拍
---33     拍卖行 我的上架
---34     拍卖行 竞价
---35     拍卖行 一口价
---36     拍卖行 上架
---37     拍卖行 下架
---38     拍卖行 超时
---39     角色-时装
---3901   角色-查看别人时装
---
---3902   时装界面-下层
---40     充值界面
---41     首饰盒
---42     合成面板
---43     怪物大血条
---44     答题验证界面
---45     自定义排行榜
---46     图形验证界面
---
---300    新内挂-基础
---305    新内挂-视距
---302    新内挂-战斗
---303    新内挂-保护
---304    新内挂-挂机
---
---701    商城-装饰
---702    商城-补给
---703    商城-强化
---704    商城-好友
---
---2301   他人称号
---
---3903   时装界面-下层
---4101   查看他人首饰盒
---
---7001   背包第一页
---7002   背包第二页
---7003   背包第三页
---112    PC端聊天栏
---50002  英雄-角色外框主面板(二合一面板不支持挂靠)
---50003  英雄-装备 上层
---53001  英雄-装备 下层
---53003  英雄-查看别人装备-上层
---53002  英雄-查看别人装备-下层
---50004  英雄-状态
---50005  英雄-属性
---50006  英雄-技能
---50007  英雄-背包
---50023  英雄-称号
---52301  查看他人英雄称号
---50024  英雄角色面板 脚本面板2
---50025  英雄角色面板 脚本面板3
---50026  英雄角色面板 脚本面板4
---50027  英雄角色面板 脚本面板5
---50028  英雄角色面板 脚本面板6
---50039  英雄-时装
---53901  查看他人英雄时装
---50041  英雄-首饰盒
---54101  查看他人英雄首饰盒
---17     角色BUFF面板
---1701   查看他人BUFF面板
---50017  英雄BUFF面板
---51701  查人他人英雄BUFF面板
---401    内功状态
---402    内功技能
---403    内功经络
---40301  经络-冲脉
---40302  经络-阴跷
---40303  经络-阴维
---40304  经络-任脉
---40305  经络-奇经
---404    内功连击
---501    英雄内功状态
---502    英雄内功技能
---503    英雄内功经络
---50301  英雄经络-冲脉
---50302  英雄经络-阴跷
---50303  英雄经络-阴维
---50304  英雄经络-任脉
---50305  英雄经络-奇经
---504    英雄内功连击
---```
---```lua
---addbutton(actor,windowId,buttonId,icon)
---```
function addbutton(actor, windowId, buttonId, icon) end

---删除自定义按钮
---* actor 玩家对象
---* windowId 主窗口ID
---* buttonId 按钮ID
---@param actor number|string
---@param windowId integer
---@param buttonId integer
---```lua
---delbutton(actor,windowId,buttonId)
---```
function delbutton(actor, windowId, buttonId) end

---打开OK框
---* actor 玩家对象
---* title OK框标题
---@param actor number|string
---@param title string
---```lua
---openupgradedlg(actor,title)
---```
function openupgradedlg(actor, title) end

---回收OK框物品
---* actor 玩家对象
---* count 数量(针对叠加物品有效)
---@param actor number|string
---@param count integer
---```lua
---takedlgitem(actor,count)
---```
function takedlgitem(actor, count) end

---返回OK框物品到背包
---* actor 玩家对象
---@param actor number|string
---```lua
---reclaimitem(actor)
---```
function reclaimitem(actor) end

---把包裹中的物品放入自定义OK框中
---* actor 玩家对象
---* item 物品名称<br>物品唯一id
---* index OK框编号(0~99)
---@param actor number|string
---@param item integer|string
---@param index integer
---```lua
---bagitemintobox(actor,item,index)
---```
function bagitemintobox(actor, item, index) end

---把自定义OK框物品返回到包裹
---* actor 玩家对象
---* index OK框编号(0~99)
---@param actor number|string
---@param index integer
---```lua
---returnboxitem(actor,index)
---```
function returnboxitem(actor, index) end

---删除自定义OK框中的物品
---* actor 玩家对象
---* index OK框编号(0~99)
---* num 删除数量;参数只有是叠加物品时才会有效，为空则全部删除
---@param actor number|string
---@param index integer
---@param num integer
---```lua
---delboxitem(actor,index,num)
---```
function delboxitem(actor, index, num) end

---获取自定义OK框中的物品
---* actor 玩家对象
---* index OK框编号(0~99)
---@param actor number|string
---@param index integer
---@return string "物品唯一ID"
---```lua
---local item = getboxitem(actor,0)
---```
function getboxitem(actor, index) end

---更新OK框物品
---* actor 玩家对象
---* boxId OK框编号
---@param actor number|string
---@param boxId integer
---```lua
---updateboxitem(actor,boxId)
---```
function updateboxitem(actor, boxId) end

---NPC喊话
---* actor 玩家对象：仅该玩家可见<br>-1：附近可见
---* npcid npcid
---* time 显示时间(秒)
---* str 喊话内容
---@param actor number|string|integer
---@param npcid integer
---@param time integer
---@param str string
---```lua
---NPCTalk(-1,80,10,"全体目光向我看齐")
---```
function NPCTalk(actor, npcid, time, str) end

-- [Source: 接口^人物相关.lua]

---通知客户端显示表单
---* actor 玩家对象
---* FormName 文件名
---* Content Win_Create节点ID<br>(参数用#号拼接)
---@param actor number|string
---@param FormName string
---@param Content string
---```tips
---1. 注意方法二 " 会被转义
---   2. 在服务端文件头必须使用该接口SetFormAllowFunc 才可调用
---```
---```lua
---ShowFormWithContent( actor, FormName, Content )中的 Content 参数
---在客户端文件中使用SL.FormParam[1] 接收 多参数以此类推
---SL.FormParam[1]
---SL.FormParam[2]
---SL.FormParam[3]
---```
function ShowFormWithContent(actor, FormName, Content) end

---设置表单的允许回调函数列表
---* funname 函数名列表
---@param funname table
---```tips
---配合ShowFormWithContent和客户端SubmitForm进行使用
---```
---```lua
---SetFormAllowFunc({"ccc","dddd"})
---
---function ccc(actor,...)
---    release_print("服务端",...)
---    -- ShowFormWithContent(actor, "", "GUI:Win_Open('GMMain/GMMain')")
---end
---
---function dddd(...)
---    release_print("dddd",...)
---end
---```
function SetFormAllowFunc(funname) end

---发送消息
---* actor 玩家对象
---* msgId 消息ID
---* param1 参数1
---* param2 参数2
---* param3 参数3
---* sMsg 消息体
---* sendScope 消息的发送范围类型<br>0=自己<br>1=全服<br>2=当前地图<br>3=视野内<br>4=当前行会<br>5=指定地图id
---* targetMapId 当 sendScope=5 时生效，指定目标地图的ID
---@param actor number|string
---@param msgId integer
---@param param1? integer
---@param param2? integer
---@param param3? integer
---@param sMsg? string
---@param sendScope? integer
---@param targetMapId? string
---```lua
---sendluamsg(actor, 996, 1, 2, 3, "发送给自己的网络消息",0)
---sendluamsg(actor, 996, 4, 5, 6, "发送给全服的网络消息1",1)
---sendluamsg("0", 996, 4, 5, 6, "发送给全服的网络消息2",1) --系统广播支持参数1="0"
---sendluamsg(actor, 996, 7, 8, 9, "发送给当前地图的网络消息",2)
---sendluamsg(actor, 996, 9, 8, 7, "发送给视野内的网络消息",3)
---sendluamsg(actor, 996, 6, 5, 4, "发送给所属行会的网络消息",4)
---sendluamsg(actor, 996, 3, 2, 1, "发送给指定地图网络消息1",5,"3")
---sendluamsg("0", 996, 3, 2, 1, "发送给指定地图网络消息2",5,"3") --地图广播支持参数1="0"
---```
function sendluamsg(actor, msgId, param1, param2, param3, sMsg, sendScope, targetMapId) end

---修改人物名称
---* actor 玩家对象
---* name 要查询的名字
---@param actor number|string
---@param name string
---```lua
---1. 会先执行查询人物名称操作，并触发：queryinghumname;
---2. 会根据查询结果情况触发：humnamefilter（名称被过滤）、namelengthfail（长度不符合要求）、humnameexists（名称已经存在）;
---3. 执行改名操作前触发：changeinghumname，根据改名结果触发：changehumnameok(改名成功)、changehumnamefail(改名失败)。
---
-----正在查询玩家名称
---function queryinghumname(actor)
---    sendmsg(actor, 1, '{"Msg":"正在查询请稍后。。。","Type":9}')
---end
---
-----名称被过滤
---function humnamefilter(actor)
---    sendmsg(actor, 1, '{"Msg":"名称被过滤。。。","Type":9}')
---end
---
-----长度不符合要求
---function namelengthfail(actor)
---    sendmsg(actor, 1, '{"Msg":"长度不符合要求","Type":9}')
---end
---
-----名称已经存在
---function humnameexists(actor)
---    sendmsg(actor, 1, '{"Msg":"名称已经存在","Type":9}')
---end
---
-----正在执行改名操作
---function changeinghumname(actor)
---    sendmsg(actor, 1, '{"Msg":"正在修改请稍后。。。","Type":9}')
---end
---
-----改名成功
---function changehumnameok(actor)
---    sendmsg(actor, 1, '{"Msg":"'..parsetext("你的名字修改成功，旧名称： 新名称：！",actor)..'","Type":9}')
---end
---
-----改名失败
---function changehumnamefail(actor)
---    sendmsg(actor, 1, '{"Msg":"修改名称失败","Type":9}')
---end
---```
function changehumname(actor, name) end

---修改人物名字颜色
---* actor 玩家对象
---* color 颜色索引
---@param actor number|string
---@param color integer
---```lua
---changenamecolor(actor,200)
---
----- 人物名字颜色还原
---changenamecolor(actor)
---```
function changenamecolor(actor, color) end

---刷新人物属性
---* actor 玩家对象
---@param actor number|string
---```lua
---recalcabilitys(actor)
---```
function recalcabilitys(actor) end

---获取人物属性
---* actor 玩家对象
---* id 属性ID（1-20）
---@param actor number|string
---@param id integer
---@return integer "对应的属性值"
---```lua
---local val=gethumability(actor,1)
---release_print("获取人物属性",val)
---```
function gethumability(actor, id) end

---调整人物属性
---* actor 玩家对象
---* id 属性ID<br>1=防御下限<br>2=防御上限<br>3=魔御下限<br>4=魔御上限<br>5=攻击下限<br>6=攻击上限<br>7=魔法下限<br>8=魔法上限<br>9=道术下限<br>10=道术上限<br>11=MaxHP<br>12=MaxMP<br>13=HP恢复<br>14=MP恢复<br>15=毒恢复<br>16=毒躲避<br>17=魔法躲避<br>18=准确<br>19=敏捷<br>20= 幸运
---* value 属性值
---* time 时间(秒)
---@param actor number|string
---@param id integer
---@param value integer
---@param time integer
---```lua
---changehumability(actor,1,100,100)
---release_print("调整人物属性","防御下限",100)
---```
function changehumability(actor, id, value, time) end

---修改人物临时属性（带有效期）
---* actor 玩家对象
---* nWhere 位置 对应cfg_att_score 属性ID
---* nValue 对应属性值
---* nTime 有效时间，秒
---@param actor number|string
---@param nWhere integer
---@param nValue integer
---@param nTime integer
---```lua
---function main(self)
---    changehumnewvalue(self,10,10,10)
---end
---```
function changehumnewvalue(actor, nWhere, nValue, nTime) end

---获取人物临时属性
---* actor 玩家对象
---* nWhere 位置 对应cfg_att_score 属性ID
---@param actor number|string
---@param nWhere integer
---@return integer "属性值"
---```lua
---local val=gethumnewvalue(actor,1)
---release_print("获取人物临时属性",val)
---```
function gethumnewvalue(actor, nWhere) end

---获取人物永久属性
---* actor 玩家对象
---* nIndex 索引
---@param actor number|string
---@param nIndex integer
---@return integer "属性值"
---```lua
---local val=getusebonuspoint(actor,1)
---release_print("获取人物永久属性 攻击下限",val)
---```
function getusebonuspoint(actor, nIndex) end

---设置人物永久属性
---* actor 玩家对象
---* nIndex 索引<br>nIndex 取值<br>1:攻击下限(0~65535)<br>2:攻击上限(0~65535)<br>3:魔法下限(0~65535)<br>4:魔法上限(0~65535)<br>5:道术下限(0~65535)<br>6:道术上限(0~65535)<br>7:防御下限(0~65535)<br>8:防御上限(0~65535)<br>9:魔防下限(0~65535)<br>10:魔防上限(0~65535)<br>11:生命值(支持21亿)<br>12:魔法值(支持21亿)<br>13:准确(支持21亿)<br>14:躲避(支持21亿)<br>15:防御下限(支持21亿)<br>16:防御上限(支持21亿)<br>17:魔防下限(支持21亿)<br>18:魔防上限(支持21亿)
---* nValue 属性值
---@param actor number|string
---@param nIndex integer
---@param nValue integer
---```lua
---setusebonuspoint(actor,1,999)
---release_print("设置人物永久属性 攻击下限",999)
---```
function setusebonuspoint(actor, nIndex, nValue) end

---通过字符串增加对应属性值(参照cfg_equip.xls属性字段)
---* actor 玩家对象
---* attrIndex 自定义属性组名称
---* opt 操作符 +、-、=
---* attrStr 属性字符串
---* type 0或空=计算套装属性增加 1=增加固定值;不计算套装属性(属性加成类无效)
---@param actor number|string
---@param attrIndex string
---@param opt string
---@param attrStr string
---@param type integer
---```lua
---addattlist(actor,"属性组1","+","3#1#100|3#2#100|3#3#10|3#4#10")
---release_print("通过字符串增加对应属性值")
---```
function addattlist(actor, attrIndex, opt, attrStr, type) end

---获取字符串属性
---* actor 玩家对象
---* attrIndex 自定义属性组名称
---@param actor number|string
---@param attrIndex string
---@return string "属性字符串"
---```lua
---local attr_str = getattlist(actor,"自定义属性组1")
---release_print("attr_str",attr_str)
---```
function getattlist(actor, attrIndex) end

---清除字符串属性
---* actor 玩家对象
---* attrIndex 自定义属性组名称
---@param actor number|string
---@param attrIndex string
---```lua
-----删属性
---delattlist(actor,"属性组1")
---```
function delattlist(actor, attrIndex) end

---设置装备部位属性加成(万分比)
---* actor 玩家对象
---* where 装备部位
---* sFlag 操作符(=,+,-)
---* pro 倍数(万分比)
---@param actor number|string
---@param where integer
---@param sFlag string
---@param pro integer
---```lua
---setequipaddvalue(actor,1 ,"+", 15000)
---release_print(actor,"武器部位的属性加成".. getequipaddvalue(actor,1))
---```
function setequipaddvalue(actor, where, sFlag, pro) end

---获取装备部位属性加成(万分比)
---* actor 玩家对象
---* where 装备部位
---@param actor number|string
---@param where integer
---@return boolean "倍数(万分比)"
---```lua
---local val=getequipaddvalue(actor,1)
---release_print("获取装备部位属性加成(万分比)",val)
---```
function getequipaddvalue(actor, where) end

---获取人物标记/标识值
---* actor 玩家对象
---* nIndex 索引（1-800）
---@param actor number|string
---@param nIndex integer
---@return integer "对应属性值"
---```lua
---local val=getflagstatus(actor,15)
---release_print("获取人物标记/标识值 15",val)
---```
function getflagstatus(actor, nIndex) end

---设置人物标记/标识值
---* actor 玩家对象
---* nIndex 索引（1-800）
---* nValue 对应属性值(flag标记只能支持0,1两个值，>0的值视为1)
---@param actor number|string
---@param nIndex integer
---@param nValue integer
---```lua
---setflagstatus(actor,15,0)
---release_print("设置人物标记/标识值 15",0)
---```
function setflagstatus(actor, nIndex, nValue) end

---设置人物经验值
---* actor 玩家对象
---* opt 操作符 + - =
---* count 数量
---* addexp 是否增加聚灵珠经验
---@param actor number|string
---@param opt string
---@param count integer
---@param addexp boolean
---```lua
---changeexp(actor,"=",999,false)
---release_print("设置人物经验值 =",999)
---```
function changeexp(actor, opt, count, addexp) end

---调整人物等级
---* actor 玩家对象
---* opt 操作符 + - =
---* count 数量
---@param actor number|string
---@param opt string
---@param count integer
---```lua
---changelevel(actor,"=",8)
---release_print("调整人物等级 =",8)
---```
function changelevel(actor, opt, count) end

---设置等级锁
---* actor 玩家对象
---* iType 0:解除锁定<br>1锁定到达最大等级时并且不获取怪物经验<br>2:锁定到达最大等级时累积经验(int64)
---* level 锁住最大等级
---@param actor number|string
---@param iType integer
---@param level integer
---```lua
----- 特殊*：changeexp 可以加经验, setbaseinfo 可以突破等级限制
---setlocklevel(actor,1,99)
---```
function setlocklevel(actor, iType, level) end

---改变人物模式
---* actor 玩家对象
---* mode 模式ID(1~24)
---* time 状态时间(秒,1-65535)
---* param1 参数1,12,13,18,20,21代表几率其余代表属性值
---* param2 参数2
---@param actor number|string
---@param mode integer
---@param time integer
---@param param1 integer
---@param param2 integer
---```tips
---* 模式ID:
---  - 1: 无敌
---  - 2: 隐身
---  - 3: HP
---  - 4: MP
---  - 5: 攻击力
---  - 6: 魔法力
---  - 7: 道术力
---  - 8: 攻击速度
---  - 9: 禁止攻击
---  - 10: 锁定
---  - 11: 禁锢
---  - 12: 冰冻
---  - 13: 蛛网
---  - 14: 防麻痹
---  - 15: 防禁锢
---  - 16: 防冰冻
---  - 17: 防蛛网
---  - 18: 麻痹
---  - 19: 护身
---  - 20: 吸血
---  - 21: 吸蓝
---  - 22: 隐身(戒指)
---  - 23: 复活
---  - 24: 破复活
---```
---```lua
-----角色无敌，无敌时长60秒
---changemode(actor, 1, 60)
---
-----禁锢自身10秒,范围3格（权限等级10的gm号无效）
---changemode(actor,11, 10, 3, 0)
---
-----禁锢自身10秒,范围3格(禁锢的是他人，没有禁锢自己)
---changemode(actor,11, 10, 3, 1)
---
-----可以使目标冰冻，冰冻机率1/100(数字越大机率越低)，冰冻时长3秒
---changemode(actor,12,100,1,3)
---
-----可以使目标中蛛网，中网机率1/10(数字越大机率越低)，蛛网时长3秒
---changemode(actor,13,10,1,3)
---
-----10秒内可以防麻痹
---changemode(actor,14,10)
---
-----可以使目标麻痹，麻痹机率1/1(数字越大机率越低)，麻痹时长3秒
---changemode(actor,18,1,1,3)
---
-----10秒内攻击目标，可以吸血，吸血机率100(数字越大机率越高 100表示每次都会吸血)，5000代表吸血百分比50%(比如攻击伤害值是10000，50%的吸血比例，可以吸血5000)
---changemode(actor,20,10,100, 5000)
---```
function changemode(actor, mode, time, param1, param2) end

---顶戴花翎
---* actor 玩家对象
---* where 位置 0-9
---* effType 播放效果<br>0 = 图片名称<br>1 = 特效ID<br>-1 = 取消顶戴
---* resName 图片名或者特效ID
---* x X坐标 (为空时默认X=0)
---* y Y坐标 (为空时默认Y=0)
---* autoDrop 自动补全空白位置0,1(0=掉 1=不掉)
---* selfSee 是否只有自己看见<br>0=所有人都可见;<br>1=仅仅自己可见;
---* posM 播放位置(不填默认为0)<br>0=在角色之上;<br>1=在角色之下;
---@param actor number|string
---@param where integer
---@param effType integer
---@param resName any
---@param x integer
---@param y integer
---@param autoDrop integer
---@param selfSee integer
---@param posM integer
---```lua
-----添加顶戴效果
---seticon(actor, 0, 1, 200, -30, 100, 0, 0, 1)
---
---
---
-----移除顶戴效果
---seticon(actor, 0, -1)
---```
function seticon(actor, where, effType, resName, x, y, autoDrop, selfSee, posM) end

---在人物身上播放特效
---* actor 玩家对象
---* effectId 特效ID
---* offsetX 相对于人物偏移的X坐标
---* offsetY 相对于人物偏移的Y坐标
---* times 播放次数<br>0-一直播放
---* behind 播放模式<br>0-前面<br>1-后面
---* selfShow 仅自己可见<br>0-视野内均可见，<br>1-仅自己可见
---@param actor number|string
---@param effectId integer
---@param offsetX integer
---@param offsetY integer
---@param times integer
---@param behind integer
---@param selfShow integer
---```lua
---playeffect(actor,60120,0,0,0,0,0)
---release_print("在人物身上播放特效")
---```
function playeffect(actor, effectId, offsetX, offsetY, times, behind, selfShow) end

---清除人物身上播放的特效
---* actor 玩家对象
---* effectId 特效ID;传入nil则清除全部特效
---@param actor number|string
---@param effectId integer
---```lua
---clearplayeffect(actor,60120)
---release_print("清除人物身上播放的特效")
---```
function clearplayeffect(actor, effectId) end

---修改人物当前血量
---* actor 玩家(怪物)对象
---* operate 操作符号<br>“+” 增加<br>“-“ 减少<br>“=” 等于
---* nvalue HP点数
---* effId 素材ID
---* delay ~~延时时间(秒)~~<br>不推荐使用,传0即可
---* hitter 伤害来源对象
---* isSend 释放广播飘血<br>0/nil=不广播<br>1=广播
---* isRob 是否强制修改归属<br>0/nil=强制修改归属;<br>1=已有归属的情况不抢归属
---@param actor number|string
---@param operate string
---@param nvalue integer
---@param effId integer
---@param delay integer
---@param hitter number|string
---@param isSend integer
---@param isRob integer
---```lua
---humanhp(actor,"-",1,1,0,actor,0,1)
---release_print("修改人物当前血量",10)
---```
function humanhp(actor, operate, nvalue, effId, delay, hitter, isSend, isRob) end

---修改人物当前MP
---* actor 玩家对象
---* operate 操作符号<br>‘+’-增加<br>‘-‘-减少<br>‘=’-等于
---* nValue MP点数
---@param actor number|string
---@param operate string
---@param nValue integer
---```lua
---humanmp(actor,"=",1562)
---```
function humanmp(actor, operate, nValue) end

---调整HP(血量)的百分比
---* actor 玩家(怪物)对象
---* opt 控制符(=,+,-)
---* value 数值
---@param actor number|string
---@param opt string
---@param value integer
---```lua
---addhpper(actor,"=",40)
---```
function addhpper(actor, opt, value) end

---调整MP(蓝量)的百分比
---* actor 玩家(怪物)对象
---* opt 控制符(=,+,-)
---* value 数值
---@param actor number|string
---@param opt string
---@param value integer
---```lua
---addmpper(actor,"=",40)
---```
function addmpper(actor, opt, value) end

---设置人物伤害吸收
---* actor 玩家对象
---* operate 操作符号<br>‘+’-增加<br>‘-‘-减少<br>‘=’-等于
---* sum 总吸收量
---* rate 吸收比率，千分比<br>1=0.1%，100=10%
---* success 吸收成功率
---@param actor number|string
---@param operate string
---@param sum integer
---@param rate integer
---@param success integer
---```lua
---setsuckdamage(actor,"+",10000,100,100)
---release_print("设置人物伤害吸收")
---```
function setsuckdamage(actor, operate, sum, rate, success) end

---获取人物伤害吸收
---* actor 玩家对象
---@param actor number|string
---@return integer "伤害吸收值"
---```lua
---setsuckdamage(actor,"=",1000,200,95)
---local damage = getsuckdamage(actor)
---release_print("伤害吸收值",damage)
---```
function getsuckdamage(actor) end

---人物变色
---* actor 玩家对象
---* color 颜色(0~255); 255时清除颜色; -1则为转生设置的颜色在人物身体上进行变色
---* time 改变时长(秒)
---@param actor number|string
---@param color integer
---@param time integer
---```lua
---setbodycolor(actor,150,10)
---release_print("人物变色")
---```
function setbodycolor(actor, color, time) end

---播放光环效果
---* actor 玩家对象
---* mapId 地图id
---* x 坐标x
---* y 坐标y
---* type 光环类型<br>1=僵尸钻的地洞<br>3=碎石块<br>4=困魔光<br>5=火墙
---* time 时间（秒）
---* behind 播放模式-0-前面-1-后面
---* selfShow 仅自己可见0-否，视野内均可见，1-是
---@param actor number|string
---@param mapId integer
---@param x integer
---@param y integer
---@param type integer
---@param time integer
---@param behind integer
---@param selfShow integer
---```lua
---local mapID = getbaseinfo(actor,3)
---local x = getbaseinfo(actor,4)
---local y = getbaseinfo(actor,5)
---mobfireburn(actor,mapID,x,y,5,10,0,1)
---release_print("播放光环效果")
---```
function mobfireburn(actor, mapId, x, y, type, time, behind, selfShow) end

---脚本设置防秒杀功能
---* actor 玩家对象
---* maxHp 最大血量(百分比)
---@param actor number|string
---@param maxHp integer
---```lua
---killedprotect(actor,90)
---release_print("你的血量满的时候,敌人第一刀最多砍你90%血量")
---```
---```tips
---当前你血量100%的时候敌方第一刀伤害打掉你多少血量，如果你血量不是100%的时候防秒杀功能不生效
---```
function killedprotect(actor,maxHp) end

---立即杀死角色
---* actor 被杀的对象
---* killer 凶手的对象
---@param actor number|string
---@param killer number|string
---```lua
---local mapID = getbaseinfo(actor,3)
---local x = getbaseinfo(actor,3)
---local y = getbaseinfo(actor,3)
---local mon =  genmon(mapID,x,y,"黑野猪",10,1)
---if mon and mon[1] then
---    kill(actor,mon[1])
---    release_print("立即杀死角色")
---end
---```
function kill(actor, killer) end

---查询人物货币
---* actor 玩家对象
---* id 货币ID（1-100）
---@param actor number|string
---@param id integer
---@return integer "对应货币值"
---```lua
---local num=querymoney(actor,3)
---release_print("查询人物货币 3",num)
---```
function querymoney(actor, id) end

---设置人物货币
---* actor 玩家对象
---* id 货币ID（1-100）
---* opt 操作符 + - =
---* count 数量
---* desc 描述
---* send 是否推送到客户端，true-更新
---@param actor number|string
---@param id integer
---@param opt string
---@param count integer
---@param desc string
---@param send boolean
---@return boolean "是否成功"
---```lua
---changemoney(actor,3,"+",100,"测试",false)
---release_print("设置人物货币 3 +",100)
---```
function changemoney(actor, id, opt, count, desc, send) end

---获取人物通用货币数量(多货币计算)
---* actor 玩家对象
---* moneyName 货币名称
---@param actor number|string
---@param moneyName string
---@return integer "对应货币数"
---```lua
---表：cfg_item.xls表，设置方法：Reserved字段
---货币组分类(数字)#优先扣除顺序，如：22#1 22#2 22#3
---这3个货币是一个类别的，后面的1 2 3 代表扣除的顺序，数字越小越优先扣除。
---getbindmoney(actor,"元宝")
---```
function getbindmoney(actor, moneyName) end

---扣除人物通用货币数量(多货币依次计算)
---* actor 玩家对象
---* moneyName 货币名称
---* count 对应货币值
---* desc 描述
---@param actor number|string
---@param moneyName string
---@param count integer
---@param desc string
---@return boolean "是否成功"
---```lua
---consumebindmoney(actor,"元宝",10000,"抽奖活动")
---```
function consumebindmoney(actor, moneyName, count, desc) end

---设置人物背包格子数
---* actor 玩家对象
---* count 格子大小<br>（不小于46，不大于206）
---@param actor number|string
---@param count integer
---```lua
---setbagcount(actor,50)
---release_print("设置人物背包格子数",50)
---```
function setbagcount(actor, count) end

---获取背包剩余空格数
---* actor 玩家对象
---@param actor number|string
---@return integer "背包剩余格子数"
---```lua
---local bagBlank=getbagblank(actor)
---release_print(bagBlank)
---```
function getbagblank(actor) end

---遍历背包勾选物品
---* actor 玩家对象
---* makeIndex 选中的物品唯一ID<br>多个物品用“,”分隔
---@param actor number|string
---@param makeIndex string
---```lua
---local items = getbagitems(actor)
---if type(items) == "table" and next(items) then
---    local allMakeIndex = table.concat(items, ",")
---    selectbagitems(actor, allMakeIndex)
---    release_print("遍历背包勾选物品",allMakeIndex)
---end
---```
function selectbagitems(actor, makeIndex) end

---穿戴装备
---* actor 玩家对象
---* where 位置
---* makeIndex 物品唯一ID
---@param actor number|string
---@param where integer
---@param makeIndex string
---```lua
---local items = getbagitems(actor)
---if items and type(items) == "table" then
---    for k, makeIndex in ipairs(items) do
---        local itemName = getiteminfo(actor,makeIndex,7)
---        if itemName == "木剑" then
---            takeonitem(actor, 1, makeIndex)
---            break
---        end
---    end
---else
---    release_print("穿戴装备,背包没有物品")
---end
---release_print("穿戴装备")
---```
function takeonitem(actor, where, makeIndex) end

---脱下装备
---* actor 玩家对象
---* where 位置
---* makeIndex 物品唯一ID
---@param actor number|string
---@param where integer
---@param makeIndex string
---```lua
---local makeIndex=GetItemByPos(actor,1)
---if makeIndex then
---    takeoffitem(actor,1,makeIndex)
---end
---```
function takeoffitem(actor, where, makeIndex) end

---开/关首饰盒
---* actor 玩家对象
---* bState 0：关闭，1：开启
---@param actor number|string
---@param bState integer
---```lua
---setsndaitembox(actor,1)
---```
function setsndaitembox(actor, bState) end

---修改武器、衣服外观
---* actor 玩家对象
---* makeIndex 物品唯一Id
---* looks 外观值
---@param actor number|string
---@param makeIndex string
---@param looks integer
---```lua
---local makeIndex=GetItemByPos(actor,1)
---changeitemshape(actor,makeIndex,124)
---```
function changeitemshape(actor, makeIndex, looks) end

---修改武器、衣服特效
---* actor 玩家对象
---* where 位置 0，1
---* effId 特效ID
---* selfSee 是否只有自己看见<br>(1=所有人都可见<br> 0=仅仅自己可见)
---@param actor number|string
---@param where integer
---@param effId integer
---@param selfSee integer
---```lua
---changedresseffect(actor,1,1,1)
---```
function changedresseffect(actor, where, effId, selfSee) end

---修改角色外观(武器、衣服、特效)
---* actor 玩家对象
---* type 0=衣服;1=武器;<br>2=衣服特效(翅膀);<br>3武器特效;<br>4=盾牌;5=盾牌特效<br>6=左手武器;7=左手武器特效
---* shape 外观的shape(角色模型ID),-1表示清除
---* time 时间 (秒)
---* param1 仅在参数1位置为0时有效<br>0=覆盖时装外观<br>1=时装外观优先
---* param2 仅在参数1位置为0时有效<br>0-斗笠、头发不变<br>1-隐藏斗笠<br>2-隐藏头发<br>3-隐藏斗笠和头发 4-隐藏盾牌和盾牌特效
---@param actor number|string
---@param type integer
---@param shape integer
---@param time integer
---@param param1 integer
---@param param2 integer
---```lua
-----衣服特效
---setfeature(actor,0,2,65535,0,3)
---
-----翅膀特效
---setfeature(actor,2,3,65535,0,0)
---
-----清理特效
---for i = 0,7 do
---    setfeature(actor,i,-1)
---end
---```
function setfeature(actor, type, shape, time, param1, param2) end

---给人物装备面板加特效
---* actor 玩家对象
---* effectId 特效ID， 0-删除特效
---* position 显示位置：0-前面 1-后面
---@param actor number|string
---@param effectId integer
---@param position integer
---```lua
---updateequipeffect(actor,23,0)
---```
function updateequipeffect(actor, effectId, position) end

---获取技能信息
---* actor 玩家对象
---* skillId 技能ID
---* type 获取类型:<br>1:等级;<br>2:强化等级;<br>3:熟练度(技能经验值);<br>4:熟练度上限(技能经验值上限);
---@param actor number|string
---@param skillId integer
---@param type integer
---@return integer "返回值(对应属性值) ,没有技能，返回nil"
---```lua
---local data = getskillinfo(actor,11,1)
---```
function getskillinfo(actor, skillId, type) end

---添加技能
---* actor 玩家对象
---* skillId 技能ID
---* level 等级
---@param actor number|string
---@param skillId integer
---@param level integer
---```lua
---addskill(actor, 11, 3)
---```
function addskill(actor, skillId, level) end

---删除技能
---* actor 玩家对象
---* skillId 技能ID
---@param actor number|string
---@param skillId integer
---```lua
---delskill(actor, 11)
---```
function delskill(actor, skillId) end

---删除非本职业技能
---* actor 玩家对象
---@param actor number|string
---```lua
---delnojobskill(actor)
---```
function delnojobskill(actor) end

---删除所有技能
---* actor 玩家对象
---@param actor number|string
---```lua
---clearskill(actor)
---```
function clearskill(actor) end

---是否有该技能
---* actor 玩家对象
---* skillId 技能ID
---@param actor number|string
---@param skillId integer
---@return boolean "是否有该技能"
---```lua
---local job = getbaseinfo(actor,7)
---for _, v in ipairs(skills_cfg[job] or {}) do
---    local isHave=HasSkill(actor,v[2])
---    release_print("是否有该技能",isHave)
---end
---```
function HasSkill(actor, skillId) end

---设置技能等级
---* actor 玩家对象
---* skillId 技能ID
---* flag 类型：<br>1-技能等级<br>2-强化等级<br>3-熟练度(技能经验值)
---* point 等级或点数
---@param actor number|string
---@param skillId integer
---@param flag integer
---@param point integer
---```lua
---setskillinfo(actor,11,1,4)
---```
function setskillinfo(actor, skillId, flag, point) end

---用脚本命令释放技能
---* actor 玩家对象
---* skillId 技能ID
---* type 类型：<br>1-普通技能<br>2-强化技能
---* level 技能等级
---* target 技能对象：<br>1-攻击目标，<br>2-自身
---* flag 是否显示施法动作：<br>0-不显示，1-显示
---@param actor number|string
---@param skillId integer
---@param type integer
---@param level integer
---@param target integer
---@param flag integer
---```lua
---releasemagic(actor,1,1,2,2,1)
---release_print("用脚本命令释放技能")
---```
function releasemagic(actor, skillId, type, level, target, flag) end

---对目标释放技能
---* actor 玩家对象
---* skillId 技能ID
---* sType 类型<br>1-普通技能<br>2-强化技能
---* sLevel 技能等级
---* target 目标对象
---* data 是否显示施法动作<br>0-不显示<br>1-显示
---@param actor number|string
---@param skillId integer
---@param sType integer
---@param sLevel integer
---@param target number|string
---@param data integer
---```lua
---releasemagic_target(actor,skill_id,1,skill_lv,mon,0)
---```
function releasemagic_target(actor, skillId, sType, sLevel, target, data) end

---对坐标释放技能
---* actor 玩家对象
---* skillId 技能ID
---* sType 类型<br>1-普通技能<br>2-强化技能
---* sLevel 技能等级
---* X 目标点X坐标
---* Y 目标点Y坐标
---* data 是否显示施法动作<br>0-不显示<br>1-显示
---@param actor number|string
---@param skillId integer
---@param sType integer
---@param sLevel integer
---@param X integer
---@param Y integer
---@param data integer
---```lua
---releasemagic_pos(actor,skill_id,1,skill_lv,pos_X,pos_Y,0)
---```
function releasemagic_pos(actor, skillId, sType, sLevel, X, Y, data) end

---设置人物攻击力倍数
---* actor 玩家对象
---* rate 攻击威力比率，100=100%
---* time 有效时间，超过时间恢复正常
---@param actor number|string
---@param rate integer
---@param time integer
---```lua
---powerrate(actor,30,40)
---```
function powerrate(actor, rate, time) end

---减少技能CD冷却时间
---* actor 玩家对象
---* skillName 技能名称
---* char 操作符(+/-/=)<br>=0就是还原技能CD
---* time 时间（秒)
---@param actor number|string
---@param skillName string
---@param char string
---@param time integer
---```tips
---废弃-效率低下 [新接口 - SetSkillMaxCD](https://engine-doc.996m2.com/web/#/88/62288 "新接口")
---```
---```lua
---setskilldeccd(actor,"十步一杀","-",5)
---```
function setskilldeccd(actor, skillName, char, time) end

---获取技能初始冷却时间
---* skillName 技能名称
---@param skillName string
---@return integer "冷却时间(毫秒)"
---```lua
---getskillcscd("雷电术")
---```
function getskillcscd(skillName) end

---获取当前技能冷却时间
---* actor 玩家对象
---* skillName 技能名称
---@param actor number|string
---@param skillName string
---@return integer "冷却时间(毫秒)"
---```tips
---废弃-效率低下 [新接口 - GetSkillCD](https://engine-doc.996m2.com/web/#/88/62289 "新接口 - GetSkillCD")
---```
---```lua
---getskilldqcd(actor,"倚天劈地")
---```
function getskilldqcd(actor, skillName) end

---重置技能冷却时间
---* actor 玩家对象
---* skillInfo 技能名称/技能ID
---* time 减免的cd时间(秒)<br>传入0则重置技能CD
---@param actor number|string
---@param skillInfo integer|string
---@param time integer
---```tips
---废弃-效率低下
---```
---```lua
---skillrestcd(actor,10,0)
---```
function skillrestcd(actor, skillInfo, time) end

---获取技能等级
---* actor 玩家对象
---* skillId 技能ID
---@param actor number|string
---@param skillId integer
---@return integer "技能等级"
---```lua
---getskilllevel(actor,10)
---```
function getskilllevel(actor, skillId) end

---获取技能强化等级
---* actor 玩家对象
---* skillId 技能ID
---@param actor number|string
---@param skillId integer
---@return integer "技能强化等级"
---```lua
---getskilllevelup(actor,10)
---```
function getskilllevelup(actor, skillId) end

---获取技能熟练度
---* actor 玩家对象
---* skillId 技能ID
---@param actor number|string
---@param skillId integer
---@return integer "技能熟练度(技能经验值)"
---```lua
---getskilltrain(actor,10)
---```
function getskilltrain(actor, skillId) end

---增加技能威力
---* actor 玩家对象
---* skillName 技能名称
---* value 威力值
---* type 计算方式(0按点数计算,1按百分比计算)
---@param actor number|string
---@param skillName string
---@param value integer
---@param type integer
---```lua
---setmagicpower(actor,"雷电术",100,1)
---```
function setmagicpower(actor, skillName, value, type) end

---增加技能防御力
---* actor 玩家对象
---* skillName 技能名称
---* value 抵消威力值
---* type 计算方式(0按点数计算,1按百分比计算)
---@param actor number|string
---@param skillName string
---@param value integer
---@param type integer
---```lua
---setmagicdefpower(play,"雷电术",500,0)
---```
function setmagicdefpower(actor, skillName, value, type) end

---根据技能id获取技能名字
---* skillId 技能id
---@param skillId integer
---@return string "技能名字"
---```lua
---local skillName=getskillname(11)
---```
function getskillname(skillId) end

---根据技能名字获取技能id
---* skillName 技能名称
---@param skillName string
---@return integer "技能id"
---```lua
---local skillId=getskillindex("雷电术")
---```
function getskillindex(skillName) end

---改变技能特效
---* actor 玩家对象
---* skillName 技能名称
---* effectId 特效id,=0为关闭<br>(cfg_skill_present.xls表id)
---* effectId2 持续性ID(魔法盾BUFF表id/火墙/群体雷电术/其他的技能无效)
---@param actor number|string
---@param skillName string
---@param effectId integer
---@param effectId2 integer
---```lua
---setmagicskillefft(actor,"雷电术", 33)
---```
function setmagicskillefft(actor, skillName, effectId, effectId2) end

---根据玩家名获取玩家对象
---* actorName 玩家名字
---@param actorName string
---@return number|string "玩家对象 失败返回 '' 空字符串"
---```lua
---local userName=getbaseinfo(actor,1)
---local player=getplayerbyname(userName)
---```
function getplayerbyname(actorName) end

---根据玩家唯一ID获取玩家对象
---* id 玩家唯一id
---@param id string
---@return number|string "玩家对象"
---```lua
---local userId=getbaseinfo(actor,2)
---local player=getplayerbyid(userId)
---```
function getplayerbyid(id) end

---添加称号
---* actor 玩家对象
---* name 称号物品名称
---* use 开启激活，1激活
---@param actor number|string
---@param name string
---@param use integer
---@return boolean "是否成功"
---```lua
---function main(self)
---    if confertitle(self, "君临天下") then
---        release_print(self,"添加成功")
---    else
---        release_print(self,"添加失败")
---    end
---end
---```
function confertitle(actor, name, use) end

---删除称号
---* actor 玩家对象
---* name 称号物品名称
---@param actor number|string
---@param name string
---@return boolean "是否成功"
---```lua
---function main(play)
---    if deprivetitle(play, "君临天下") then
---        release_print(play,"删除成功")
---    else
---        release_print(play,"删除失败")
---    end
---end
---```
function deprivetitle(actor, name) end

---检测人物称号
---* actor 玩家对象
---* title 称号
---@param actor number|string
---@param title string
---@return boolean "返回值，是否有该称号"
---```lua
---local isHave=checktitle(actor,"称号一")
---release_print("检测人物称号一 是否拥有",isHave)
---```
function checktitle(actor, title) end

---获取人物所有称号
---* actor 玩家对象
---@param actor number|string
---@return table "返回称号列表(称号id和截至时间戳)"
---```lua
---local titlelist = newgettitlelist(actor)
---for titleID, time in pairs(titlelist or {}) do
---    local titleName = getstditeminfo(titleID,1)
---    release_print("称号",titleName,titleID,time)
---end
---```
function newgettitlelist(actor) end

---改变称号时间
---* actor 玩家对象
---* titleName 称号名称
---* operation 操作符（+,-,=）
---* cour 时间(+,-传入操作时间(秒), =传入时间戳)
---@param actor number|string
---@param titleName string
---@param operation string
---@param cour integer
---```lua
---local titleName = "修罗·混沌战神"
---confertitle(actor, titleName, 1)
---changetitletime(actor, titleName, "+", 200)
---```
function changetitletime(actor, titleName, operation, cour) end

---完美封号系统
---* actor 玩家对象
---* levelName 称号文本，和名字一起显示
---@param actor number|string
---@param levelName string
---```lua
-----"\\"为换行符，换行显示在名字上方，添加此换行符后需在设置里关闭只显示人名的选项，否则将不做显示
-----显示在名字上方
---setranklevelname(actor,"%s\\[击杀xx人]")
---
---
---
-----显示在名字后方
---setranklevelname(actor,"%s[击杀xx人]")
---```
function setranklevelname(actor, levelName) end

---修改攻击模式
---* actor 玩家对象
---* attackMode 攻击模式：<br>0-全体攻击<br>1-和平攻击<br>2-夫妻攻击<br>3-师徒攻击<br>4-编组攻击<br>5-行会攻击<br>6-红名攻击<br>7-国家攻击
---@param actor number|string
---@param attackMode integer
---```lua
---changeattackmode(actor,6)
---release_print("修改攻击模式 红名模式")
---```
function changeattackmode(actor, attackMode) end

---强制修改攻击模式
---* actor 玩家对象
---* attackMode 攻击模式<br>-1-提前结束强制状态
---* time 强制切换时间时间
---@param actor number|string
---@param attackMode integer
---@param time integer
---```lua
---setattackmode(actor,3,50)
---```
function setattackmode(actor, attackMode, time) end

---获取当前攻击模式
---* actor 玩家对象
---@param actor number|string
---@return integer "攻击模式： 0-全体攻击 1-和平攻击 2-夫妻攻击 3-师徒攻击 4-编组攻击 5-行会攻击 6-红名攻击 7-国家攻击 8-阵营攻击 9-区服攻击"
---```lua
---local attackMode=getattackmode(actor)
---```
function getattackmode(actor) end

---打开仓库面板
---* actor 玩家对象
---* isOpenUI 0/nil=打开UI<br>1=只下发数据
---@param actor number|string
---@param isOpenUI integer
---```lua
---openstorage(actor,1)
---```
function openstorage(actor, isOpenUI) end

---新解锁仓库格子
---* actor 玩家对象
---* nCount 新解锁的格子数
---@param actor number|string
---@param nCount integer
---```tips
---最大支持240格 ,cfg_game_data.xls表 字段：warehouse_max_num 设置最大总仓库格子数
---```
---```lua
---changestorage(actor,20)
---release_print("新解锁仓库格子 20")
---```
function changestorage(actor, nCount) end

---获取仓库剩余格子数
---* actor 玩家对象
---@param actor number|string
---@return integer "仓库剩余格子数"
---```lua
---local blankNum=getsblank(actor)
---```
function getsblank(actor) end

---获取玩家仓库最大格子数
---* actor 玩家对象
---@param actor number|string
---@return integer "仓库最大格子数"
---```lua
---local size=getssize(actor)
---```
function getssize(actor) end

---跳转地图（随机坐标）
---* actor 玩家对象
---* mapId 装备对地图ID象
---@param actor number|string
---@param mapId string
---```lua
---local mapID = getbaseinfo(actor,3)
---map(actor,mapID)
---release_print("跳转地图（随机坐标）")
---```
function map(actor, mapId) end

---飞地图（指定坐标）
---* actor 玩家对象
---* mapId 地图ID
---* nX X坐标
---* nY Y坐标
---* nRange 范围
---* effect 是否播放传送特效<br>0=播放<br>1=不播放
---@param actor number|string
---@param mapId string
---@param nX integer
---@param nY integer
---@param nRange integer
---@param effect integer
---```lua
---local mapID = getbaseinfo(actor,3)
---local x = getbaseinfo(actor,4)
---local y = getbaseinfo(actor,5)
---mapmove(actor,mapID,x+100,y+100,10)
---```
function mapmove(actor, mapId, nX, nY, nRange, effect) end

---导航玩家到指定位置
---* actor 玩家对象
---* X X坐标
---* Y Y坐标
---@param actor number|string
---@param X integer
---@param Y integer
---```lua
---gotonow(actor,330, 330)
---
---
---
-----QFunction-0.lua
---
---
---
-----寻路开启
---function findpathbegin(actor)
---    release_print("findpathstop",getbaseinfo(actor,1),getconst(actor, ""),getconst(actor, ""))
---end
-----寻路中断
---function findpathstop(actor)
---    release_print("findpathstop",getbaseinfo(actor,1))
---end
-----寻路结束
---function findpathend(actor)
---    release_print("findpathend",getbaseinfo(actor,1))
---end
---```
function gotonow(actor, X, Y) end

---获取所有玩家对象列表(遍历玩家列表)
---* offline 是否剔除离线挂机玩家<br>0/nil=不剔除<br>1=剔除
---@param offline integer
---```lua
---local player_list = getplayerlst(0)
---for i, player  in ipairs(player_list or {}) do
---    release_print("在线玩家",i,getbaseinfo(player,1),"角色是否离线挂机:",getbaseinfo(player,61))
---end
---```
function getplayerlst(offline) end

---获取玩家GM权限值
---* actor 玩家对象
---@param actor number|string
---@return integer "GM权限值"
---```lua
---local GM=getgmlevel(actor)
---```
function getgmlevel(actor) end

---设置玩家GM权限值
---* actor 玩家对象
---* gmlevel GM权限值
---@param actor number|string
---@param gmlevel integer
---```lua
---setgmlevel(actor,10)
---release_print("设置玩家GM权限值")
---```
function setgmlevel(actor, gmlevel) end

---复活
---* actor 玩家对象
---@param actor number|string
---```lua
---realive(actor)
---```
function realive(actor) end

---人物强制掉线(踢人下线)
---* actor 玩家对象
---@param actor number|string
---```lua
---kick(actor)
---```
function kick(actor) end

---延时跳转
---* actor 玩家对象
---* time 时间(毫秒)
---* func 触发函数 函数名 使用 aa_cc 带底杠规则(消除部分隐患)
---* del 换地图是否删除此延时(0或为空时=不删除 1=删除)
---@param actor number|string
---@param time integer
---@param func string
---@param del integer
---```lua
---delaygoto(actor,1000,"test_jump,ceshi,44",0)
---
---
---
-----QFunction-0.lua
---function test_jump(actor,...)
---    release_print(getbaseinfo(actor,1),...)
---end
---```
function delaygoto(actor, time, func, del) end

---删除延迟
---* actor 玩家对象
---* func 需要删除的延时函数<br>不填为清除全部
---@param actor number|string
---@param func string
---```lua
----- 对照组
---delaygoto(actor, 5000, "test_jump0", 0)
---release_print("delaygoto-延时跳转触发===0")
---function test_jump0(actor, ...)
---    release_print("test_jump0")
---end
---
----- 删除组
---delaygoto(actor, 5000, "test_jump1", 0)
---release_print("delaygoto-延时跳转触发===1")
---cleardelaygoto(actor, "test_jump1")
---release_print("cleardelaygoto-删除延迟触发===1")
---function test_jump1(actor, ...)
---    release_print("test_jump1")
---end
---```
function cleardelaygoto(actor, func) end

---延时消息跳转
---* actor 玩家对象
---* time 时间(毫秒)
---* func 触发函数
---@param actor number|string
---@param time integer
---@param func string
---```lua
---delaymsggoto(actor, 2000, "@test_jump,ceshi,55")
---
---
---
-----QFunction-0.lua
---function test_jump(actor,...)
---    release_print(getbaseinfo(actor,1),...)
---end
---```
function delaymsggoto(actor, time, func) end

---增加附加伤害效果
---* actor 玩家对象
---* targetX X坐标
---* targetY Y坐标
---* range 影响范围
---* power 攻击力
---* addType 附加类型：<br>0.无,1.击退,2.冻结,<br>3.麻痹,4.吸血,5.吸蓝,<br>6.真实伤害数值,<br>7.蛛网效果,8.红毒,<br>9.绿毒,10.定身,<br>11.防禁锢,<br>12.最大hp百分比真实伤害,<br>13.当前hp百分比真实伤害
---* addValue 附加属性值：<br>1.击退距离;2.冻结时间;<br>3.麻痹时间;4.吸血值;<br>5.吸蓝值;6.真实伤害值;<br>7.蛛网时间;8;红毒时间;<br>9.绿毒时间;<br>10.定身时间(定身时间单位是毫秒);<br>11.防禁锢时间(秒);<br>12.最大hp百分比真实伤害的值;<br>13.当前hp百分比真实伤害的值
---* checkState 是否检查防冻结/麻痹/石化/冰冻/蛛网/红毒/绿毒属性<br>0=直接设置状态;1=检查后设置状态)
---* targetType 目标类型(0或空=所有目标;1=仅人物;2=仅怪物)
---* sffectId 目标身上播放的特效ID
---* harmNum 群体伤害目标个数
---@param actor number|string
---@param targetX integer
---@param targetY integer
---@param range integer
---@param power integer
---@param addType integer
---@param addValue integer
---@param checkState integer
---@param targetType integer
---@param sffectId integer
---@param harmNum integer
---```lua
---local mapID = getbaseinfo(actor,3)
---local x = getbaseinfo(actor,4)
---local y = getbaseinfo(actor,5)
---rangeharm(actor,x+3,y+3,5,999,2,2,0,0,60085,10)
---```
function rangeharm(actor, targetX, targetY, range, power, addType, addValue, checkState, targetType, sffectId, harmNum) end

---获取人物战斗力
---* actor 玩家对象
---@param actor number|string
---@return number "战斗力"
---```lua
---getfightpower(actor)
---```
function getfightpower(actor) end

---设置人物战斗力
---* actor 玩家对象
---* power 战斗力
---@param actor number|string
---@param power number
---```lua
---setfightpower(actor, "888")
---```
function setfightpower(actor, power) end

---获取推广包ID
---* actor 玩家对象
---@param actor number|string
---@return number "推广包id"
---```lua
---getpromoteid(actor)
---```
function getpromoteid(actor) end

---调整人物下次攻击倍率
---* actor 玩家对象
---* num 倍率
---* obj 默认actor，调整对象
---@param actor number|string
---@param num integer
---@param obj number|string
---```lua
---SetNextDamage(actor,num,obj)
---```
function SetNextDamage(actor, num, obj) end

---魔法盾减伤
---* actor 玩家对象
---* per 减伤万分比数值
---* type 减伤类型（0-所有，1-仅物理伤害，2-仅魔法伤害）
---@param actor number|string
---@param per integer
---@param type integer
---```lua
---SetSheildDec(actor,per,type)
---```
function SetSheildDec(actor, per, type) end

---获取玩家登录账号id
---* actor 玩家对象
---@param actor number|string
---@return string "玩家登录账号id"
---```lua
---local accountid = GetUserAccount(actor)
---
---release_print("获取玩家登录账号id",accountid,type(accountid))
---```
function GetUserAccount(actor) end

---获取等级锁
---* actor 玩家对象
---@param actor number|string
---@return integer "锁住的最大等级,无锁定返回0,失败返回-1"
---```lua
---local var=getlocklevel(actor)
---```
function getlocklevel(actor) end

---全身所有装备星星数量总和
---* actor 玩家对象
---@param actor number|string
---@return integer "全身所有装备星星数量总和,失败返回-1"
---```lua
---local StarCountAll=GetStarCountAll(actor)
---release_print("StarCountAll",StarCountAll)
---```
function GetStarCountAll(actor) end

---获取剩余复活时间
---* actor 玩家对象
---* type 0/nil=复活戒指时间,1=套装复活时间
---@param actor number|string
---@param type integer
---@return integer "复活时间,失败返回-1"
---```lua
---local revivaltime=GetRevivalTime(actor)
---```
function GetRevivalTime(actor, type) end

---开启一键拾取按钮
---* actor 玩家对象
---* set 0:关闭,1:开启
---@param actor number|string
---@param set integer
---```lua
---SetAutoPick(actor,1)
---```
function SetAutoPick(actor, set) end

---获取人物背包最大格子数
---* actor 玩家对象
---@param actor number|string
---@return integer "背包最大格子数"
---```lua
---local count=GetBagMaxCount(actor)
---release_print("获取背包最大格子数",count)
---```
function GetBagMaxCount(actor) end

---获取角色技能最大冷却时间
---* actor 玩家对象
---* skillId 技能id
---@param actor number|string
---@param skillId integer
---@return integer "技能最大冷却时间（毫秒）"
---```lua
---local cd=GetSkillMaxCD(actor,11)
---release_print("获取角色技能最大冷却时间",cd)
---```
function GetSkillMaxCD(actor, skillId) end

---设置角色技能最大冷却时间
---* actor 玩家对象
---* skillId 技能id
---* time 冷却时间（毫秒）
---@param actor number|string
---@param skillId integer
---@param time integer
---```lua
---SetSkillMaxCD(actor,11,10000)
---release_print("设置角色技能最大冷却时间")
---```
function SetSkillMaxCD(actor, skillId, time) end

---设置角色技能剩余冷却时间
---* actor 玩家对象
---* skillId 技能id
---* time 冷却时间（毫秒）
---@param actor number|string
---@param skillId integer
---@param time integer
---```lua
---SetSkillCD(actor,11,10000)
---release_print("设置角色技能剩余冷却时间")
---```
function SetSkillCD(actor, skillId, time) end

---获取角色技能剩余冷却时间
---* actor 玩家对象
---* skillId 技能id
---@param actor number|string
---@param skillId integer
---@return integer "技能剩余冷却时间（毫秒）"
---```lua
---cd=GetSkillCD(actor,11)
---release_print("获取角色技能剩余冷却时间",cd)
---```
function GetSkillCD(actor, skillId) end

---获取角色所有属性基准值
---* actor 玩家对象
---@param actor number|string
---@return table "所有属性值基准值"
---```tips
---等级表 + buff + 装备 + 套装 + 接口 但是还未计算万分比或百分比等加成的属性
---注意 buff与 addattlist 有多种算法需 M2-选项-功能设置-其他设置 最下方
---当选1.以人物基础属性...等附加属性时，buff的基准值和万分比全包含在内
---当选2.以人物实际总属性...属性加成未生效时，buff的基准值和万分比都不包含在内
---当选3.以人物实际总属性...属性加成生效时，buff的基准值计算在内但万分比不包含在内
---接口 changehumnewvalue 包含
---接口 setusebonuspoint 不包含
---```
---```lua
---local attr = AttrTabPre(actor)
---for key, value in pairs(attr or {}) do
---    release_print("attr",key,value)
---end
---```
function AttrTabPre(actor) end

---设置杀怪掉落是否绑定
---* actor 玩家对象
---* isbind 是否开启绑定
---@param actor number|string
---@param isbind boolean
---@return boolean "成功时返回true，失败返回false"
---```tips
---1. equip/item表新增AQ列，配绑定规则
---   2. 爆出这个物品的时候，就会被加上这个绑定规则
---   3. 退出游戏时失效,即登录需要重新设定
---```
---```lua
---local cc = SetBind(actor,true)
---release_print(tostring(cc),type(cc))
---```
function SetBind(actor, isbind) end

---获取杀怪掉落是否绑定
---* actor 玩家对象
---@param actor number|string
---@return boolean "true or false"
---```lua
---local ccc = GetBind(actor)
---release_print(tostring(ccc),type(ccc))
---```
function GetBind(actor) end

---获取角色所有技能
---* actor 玩家对象
---@param actor number|string
---@return table "技能列表"
---```lua
---local skill_list = getallskills(actor)
---for _, skillID in ipairs(skill_list or {}) do
---    release_print("技能", skillID )
---end
---```
function getallskills(actor) end

---添加系统延时回调
---* time 时间(毫秒)
---* funcName 触发函数
---@param time integer
---@param funcName string
---```lua
---globaldelaygoto(1000,"grobal_jump,a,b,c")
---```
function globaldelaygoto(time, funcName) end

---删除系统延时回调
---* funcName 需要删除的延时函数<br>不填为清除全部
---* value 是否忽视标签参数<br>0=不忽视,要完整填写添加时的参数<br>1=忽视,只判断函数名
---@param funcName string
---@param value integer
---```lua
---globalcleardelaygoto("grobal_jump,a,b,c",0)
---globalcleardelaygoto("grobal_jump",1)
---```
function globalcleardelaygoto(funcName, value) end

---人物飘血飘字特效
---* target 飘血飘字的主体，一般为受攻击者
---* type 显示类型<br>1- 伤害，<br>2- 暴击伤害，<br>4- 加HP，<br>5- 格挡，<br>8- 扣减HP和MP，<br>9- 伤害，<br>10-扣减MP，<br>11- 致命一击<br>对应cfg_damage_number表里的ID
---* damage 显示的点数
---* hitter 可看到飘血飘字的主体，一般为攻击者
---@param target number|string
---@param type integer
---@param damage integer
---@param hitter number|string
---```lua
---[[
---参数1[target]可以为玩家对象、怪物对象
---参数4[hitter]可以传入字符串“*”表示该飘血飘字特效为广播特效，即视野范围内玩家均可见
---]]
---sendattackeff(monobj,1,999,"*")
---```
function sendattackeff(target, type, damage, hitter) end

---设定人物攻击飘血飘字类型
---* actor 玩家对象
---* type 显示类型<br>1- 伤害，<br>2- 暴击伤害，<br>4- 加HP，<br>5- 格挡，<br>8- 扣减HP和MP，<br>9- 伤害，<br>10-扣减MP，<br>11- 致命一击<br>对应cfg_damage_number表里的ID
---@param actor number|string
---@param type integer
---```tips
---1. 支持在bufftriggerhpchange使用
---```
---```lua
---setattackefftype(actor,1)
---```
function setattackefftype(actor, type) end

---停止自动挂机
---* actor 玩家对象
---@param actor number|string
---```lua
---stopautoattack(actor)
---```
function stopautoattack(actor) end

---采集挖矿等进度条操作
---* actor 玩家对象
---* time 进度条时间，秒
---* succ 成功后跳转的函数
---* msg 提示消息
---* canStop 能否中断<br>0-不可中断<br>1-可以中断
---* fail 中断触发的函数
---@param actor number|string
---@param time integer
---@param succ string
---@param msg string
---@param canStop integer
---@param fail string
---```lua
---showprogressbardlg(actor,5,"@func_1","进度条测试..", 1,"@func_2")
---
---
---[[注:跳转函数不能附带参数]]
---function func_1(actor)
---    release_print("func_1",getbaseinfo(actor,1))
---end
---
---
---function func_2(actor)
---    release_print("func_2",getbaseinfo(actor,1))
---end
---```
function showprogressbardlg(actor, time, succ, msg, canStop, fail) end

---改变玩家速度
---* actor 玩家对象
---* type 速度类型：<br>1-移动速度<br>2-攻击速度<br>3-施法速度
---* level 速度等级 -10~10<br>0-原始速度，<br>-1时间间隔减少10%<br>+1时间间隔增加10%
---@param actor number|string
---@param type integer
---@param level integer
---```lua
---changespeed(actor,1,3)
---```
function changespeed(actor, type, level) end

---百分比修改速度
---* actor 玩家对象
---* model 计算方式<br>1=移动速度<br>2=攻击速度<br>3=魔法速度
---* value 速度值<br>0=原速度(大于0=加速 -=减速)
---* time 有效时间秒<br>(为空=表示不限制时间,最大值65535)
---@param actor number|string
---@param model integer
---@param value integer
---@param time integer
---```lua
---changespeedex(actor,1,50,65535)
---```
function changespeedex(actor, model, value, time) end

---设置玩家穿人穿怪
---* actor 玩家对象
---* type 模式：0-恢复默认；1-穿人；2-穿怪；3-穿人穿怪
---* time 时间(秒)
---* objType 对象 ：0-玩家；1-宝宝
---@param actor number|string
---@param type integer
---@param time integer
---@param objType integer
---```lua
---throughhum(actor,1,10,1)
---```
function throughhum(actor, type, time, objType) end

---设置当前攻击目标
---* hitter 攻击者(玩家/英雄/怪物)
---* target 被攻击者(玩家/英雄/怪物)
---@param hitter number|string
---@param target number|string
---```tips
---当攻击者为玩家时，仅用于获取玩家攻击对象前的强制设置，无法设置玩家真实攻击目标
---```
---```lua
---settargetcert(actor,target)
---```
function settargetcert(hitter, target) end

---判断对象是否可被攻击
---* hitter 攻击对象(玩家/英雄/怪物)
---* target 被攻击对象(玩家/英雄/怪物)
---@param hitter number|string
---@param target number|string
---@return boolean "true:可以被攻击 false:不可被攻击"
---```lua
---local canBeTarget=ispropertarget(hitter,target)
---```
function ispropertarget(hitter, target) end

---增加气泡
---* actor 玩家对象
---* id ID
---* name 显示名称
---* func 函数名(多参数用逗号分割)
---@param actor number|string
---@param id integer
---@param name string
---@param func string
---```lua
---addbutshow(actor,1,"测试气泡","@testjump,参数1,参数2,参数3")
---
---
---
---function testjump(actor,...)
---    release_print(...)
---end
---```
function addbutshow(actor, id, name, func) end

---删除气泡
---* actor 玩家对象
---* id 气泡ID
---@param actor number|string
---@param id integer
---```lua
---delbutshow(actor,1)
---```
function delbutshow(actor, id) end

---获取角色朝向前一格玩家对象
---* actor 玩家对象
---@param actor number|string
---@return number|string "获取对面人物对象"
---```lua
---local otherPlayer = getoppositeobj(actor)
---release_print("对面玩家",getbaseinfo(otherPlayer,1))
---```
function getoppositeobj(actor) end

---调用游戏面板
---* actor 玩家对象
---* nId 面板ID
---* nState 0=打开<br>1=打开面板重复点按钮不会关闭,除非主动点关闭按钮(一般做任务配合新手引导用到)<br>2=关闭当前面板ID
---* rankWnd 面板ID(新排行榜用)
---* isHero 0/nil=玩家<br>1=英雄(新排行榜用)
---@param actor number|string
---@param nId integer
---@param nState integer
---@param rankWnd integer
---@param isHero boolean
---```tips
---1 角色-装备
---2 角色-状态
---3 角色-属性
---4 角色-技能
---5 角色-称号
---6 角色-首饰盒
---7 背包
---8 摆摊
---9 商城-热销
---10 商城-装饰
---11 商城-功能
---12 商城-节日
---13 行会-主界面
---14 行会-成员列表
---15 行会-行会列表
---16 邮件
---17 组队
---18 附近玩家
---19 BUFF面板
---300 设置-基础
---301 设置-视距
---302 设置-战斗
---303 设置-保护
---304 设置-挂机
---305 设置-帮助
---
---24 小地图
---25 技能设置
---26 充值
---27 拍卖行
---28 好友
---29 退出
---30 打开创建行会界面
---31 打开行会(智能打开)
---32 排行榜面板
---33 面对面交易面板
---34 强制小退   
---35 交易行
---36 切换按钮
---37 时装界面
---110 1 展开任务栏 (不填写参数2,自动收缩)
---110 2 折叠任务栏 (不填写参数2,自动收缩)
---111 盒子礼包面板(参数3= 1打开特权称号(页签)参数3=2打开每日礼包(页签) 参数3=3打开超级礼包(页签)
---112 1 展开小地图 (不填写参数2,自动收缩)
---112 2 折叠小地图 (不填写参数2,自动收缩)
---113 PC分辨率面板
---114 PC表情发送面板
---116 玩家/怪物显示面板
---300 新内挂面板
---
---701 996客服系统
---
---601 求购行
---
---401    内功状态
---402    内功技能
---403    内功经络
---404    内功连击
---
---501    英雄内功状态
---502    英雄内功技能
---503    英雄内功经络
---504    英雄内功连击
---;-----------------------英雄面板
---41 英雄-装备
---42 英雄-状态
---43 英雄-属性
---44 英雄-技能
---45 英雄-称号
---46 英雄-首饰盒
---47 英雄-背包
---48 英雄-时装界面
---49 英雄-BUFF面板
---```
---```lua
---openhyperlink(actor,113,0)
---```
function openhyperlink(actor, nId, nState, rankWnd, isHero) end

---开启自动挂机
---* actor 玩家对象
---@param actor number|string
---```lua
---startautoattack(actor)
---```
function startautoattack(actor) end

---离线挂机
---* actor 玩家对象
---* time 离线时间（分）
---@param actor number|string
---@param time integer
---```lua
---offlineplay(actor,100)
---```
function offlineplay(actor, time) end

---剔除离线挂机角色
---* mapId 地图号,<br>“*”表示全部地图
---* level 剔除等级<br>低于此等级均剔除<br>“*”表示所有
---* count 最大剔除玩家数<br>“*”表示所有
---@param mapId string
---@param level integer|string
---@param count integer|string
---```lua
---tdummy("ey3",50,10)
---```
function tdummy(mapId, level, count) end

---获取玩家好友列表
---* actor 玩家对象
---@param actor number|string
---@return table "好友的名字列表"
---```lua
---local list = getfriendnamelist(actor)
---for key, value in pairs(list or {}) do
---    release_print(key,value)
---end
---```
function getfriendnamelist(actor) end

---人物转生控制
---* actor 玩家对象
---* rLevel 转生次数<br>一次转多少级(数值范围为1-255)
---* level 转生后等级<br>代表转生后人物的等级，0为不改变人物当前等级
---* num 分配点数<br>转生后可以得到的点数，此点数可能按比例换成人物属性点(数值范围 1 - 20000)
---@param actor number|string
---@param rLevel integer
---@param level integer
---@param num integer
---```lua
---renewlevel(actor,20,84,5)
---```
function renewlevel(actor, rLevel, level, num) end

---调整人物转生属性点
---* actor 玩家对象
---* sFlag 操作符(=,+)
---* value 点数(0-1000)
---@param actor number|string
---@param sFlag string
---@param value integer
---```lua
---bonuspoint(actor,"+",100)
---release_print("调整人物转生属性点 + 100")
---```
function bonuspoint(actor, sFlag, value) end

---获取人物转生属性点
---* actor 玩家对象
---@param actor number|string
---@return integer "人物转生属性点"
---```lua
---local zsPoint=getbonuspoint(actor)
---```
function getbonuspoint(actor) end

---复位属性点数
---* actor 玩家对象
---@param actor number|string
---```lua
---local fwPoint=restbonuspoint(actor)
---```
function restbonuspoint(actor) end

---获取玩家pk等级
---* actor 玩家对象
---@param actor number|string
---@return integer "pk等级 0.白名;1.黄名;2.红名; 3.灰名"
---```lua
---pkLevel=getpklevel(actor)
---```
function getpklevel(actor) end

---给按钮增加红点
---* actor 玩家对象
---* win_id 窗口ID
---* btn_id 按钮ID/任务栏填任务ID
---* x X坐标
---* y Y坐标
---* type 红点模式<br>0=图片<br>1=特效
---* mode 红点模式=0(填图片路径)<br>红点模式=1(填特效编号)
---@param actor number|string
---@param win_id integer
---@param btn_id integer
---@param x integer
---@param y integer
---@param type integer
---@param mode integer
---```lua
---reddot(actor, 104, 7, 15, 15, 1, 5055)
---```
function reddot(actor, win_id, btn_id, x, y, type, mode) end

---给按钮删除红点
---* actor 玩家对象
---* win_id 窗口ID
---* btn_ind 按钮ID/任务栏填任务ID
---@param actor number|string
---@param win_id integer
---@param btn_ind integer
---```lua
---reddel(actor, 104, 7)
---```
function reddel(actor, win_id, btn_ind) end

---拾取道具飞入背包按钮动作
---* actor 玩家对象
---* win_id 窗口ID
---* btn_id 按钮ID
---@param actor number|string
---@param win_id integer
---@param btn_id integer
---```lua
---setpickitemtobag(actor,104,7)
---```
function setpickitemtobag(actor, win_id, btn_id) end

---吸怪功能
---* actor 玩家对象
---* max 最大范围
---* min 最小范围
---* monLevel 怪物等级<br>=0则嘲讽/吸引所以级别怪物
---* type 0=不嘲讽玩家<br>1=嘲讽玩家
---* isMove 0=怪物漂移到人物边<br>1=怪物瞬移到目前人物坐标<br>2=怪物瞬移到目前人物面前
---* unLimit 0=无限制<br>1=怪物/人物攻击目标不归属自己的不可被吸
---@param actor number|string
---@param max integer
---@param min integer
---@param monLevel integer
---@param type integer
---@param isMove integer
---@param unLimit integer
---```lua
-----无法吸取安全区内目标
---monmove(actor,10, 2, 0, 0, 2, 0)
---```
function monmove(actor, max, min, monLevel, type, isMove, unLimit) end

---人物显示一个放大的虚影
---* actor 玩家对象
---* opacity 透明度(0~255)
---* time 显示时间(秒)
---@param actor number|string
---@param opacity integer
---@param time integer
---```lua
---showphantom(actor,100,3)
---```
function showphantom(actor, opacity, time) end

---获取人物身上装备属性值命令
---* actor 玩家对象
---* model 类型(1，装备表里基础数据)
---* attrId 属性ID
---* where [装备位置](https://engine-doc.996m2.com/web/#/91/51214 "装备位置")(-2操作物品)
---* MakeIndex 物品唯一ID
---@param actor number|string
---@param model integer
---@param attrId integer
---@param where integer
---@param MakeIndex string
---@return string "属性组"
---```lua
-----根据装备位获取属性
---local attr_str = getitemattidvalue(actor,2,4,1)
---
---
---
-----根据物品获取属性
---local attr_str = getitemattidvalue(actor,2,4,-2,itemobj)
---```
function getitemattidvalue(actor, model, attrId, where, MakeIndex) end

---获取角色所有属性
---* actor 玩家对象
---@param actor number|string
---@return table "所有属性值"
---```lua
---local attr = attrtab(actor)
---for key, value in pairs(attr or {}) do
---    release_print("attr",key,value)
---end
---```
function attrtab(actor) end

---是否在骑马
---* actor 玩家对象
---@param actor number|string
---@return boolean "是否在骑马"
---```lua
---local isRide=checkonhorse(actor)
---```
function checkonhorse(actor) end

---上马
---* actor 玩家对象
---* horseAppr 坐骑外观
---* horseEff 坐骑特效外观
---* horseFature 人物骑马外观
---* Type 坐骑类型 0=单人 1=双人 2=连体
---@param actor number|string
---@param horseAppr integer
---@param horseEff integer
---@param horseFature integer
---@param Type integer
---```lua
---ridehorse(actor,1000,1050,200,0)
---release_print("上马")
---```
function ridehorse(actor, horseAppr, horseEff, horseFature, Type) end

---下马
---* actor 玩家对象
---@param actor number|string
---```lua
---dismounthorse(actor)
---```
function dismounthorse(actor) end

---添加足迹特效
---* actor 玩家对象
---* effectId 特效id
---* modle 播放模式<br>0/nil=两步播放<br>1=单步播放
---@param actor number|string
---@param effectId integer
---@param modle integer
---```lua
---setmoveeff(actor,17,1)
---```
function setmoveeff(actor, effectId, modle) end

---给视野内玩家发送自定义广播消息
---* actor 玩家对象
---* varIndex 属性id(1~5)
---* varValue 属性值
---@param actor number|string
---@param varIndex integer
---@param varValue integer
---```lua
---[[服务端]]
---setotherparams(actor,1,2133)
---
---
---
---[[客户端]]
---SL:RegisterLUAEvent(LUA_EVENT_ACTOR_GMDATA_UPDATE, "ACTOR_GM_DATA", function (tab)
---SL:dump(tab,"自定义数据改变")
---SL:dump(SL:GetMetaValue("ACTOR_GM_DATA",tab.id),"获取actor的GM自定义数据")
---end)
---[[足迹示例]]
---local function moveEvent(data)
---local actorID = data and data.id
---if actorID then
---    local posX = SL:GetMetaValue("ACTOR_POSITION_X", actorID)
---    local posY = SL:GetMetaValue("ACTOR_POSITION_Y", actorID)
---    local effectID = SL:GetMetaValue("ACTOR_GM_DATA", actorID)[1]
---    if effectID ~= 0 and posX and posY then
---        local actBegin = data.act
---        if actBegin == 1 or actBegin == 6 or actBegin == 17 then
---            local eff = GUI:Effect_Create(GUI:Attach_SceneB(), string.format("foot_effect%s_%s%s", actorID, posX, posY), posX, posY, 0, effectID)
---            if eff then
---                GUI:Effect_addOnCompleteEvent(eff, function()
---                    GUI:removeFromParent(eff)
---                end)
---            end
---        end
---    end
---end
---end
---SL:RegisterLUAEvent(LUA_EVENT_PLAYER_ACTION_BEGIN, "GUIUtil", moveEvent)
---SL:RegisterLUAEvent(LUA_EVENT_NET_PLAYER_ACTION_BEGIN, "GUIUtil", moveEvent)
---```
function setotherparams(actor, varIndex, varValue) end

---收摊
---* actor 玩家对象
---@param actor number|string
---```lua
---StopShop(actor)
---```
function StopShop(actor) end

---禁止摆摊
---* actor 玩家对象
---@param actor number|string
---```tips
---注意:当前接口需在摆摊触发(startmyshop)中使用
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
function ForbidMyShop(actor) end

---骰子功能
---* actor 玩家对象
---* num 动画数量<br>比如3就是会出现3个骰子转动
---* funcName 动画结束触发
---@param actor number|string
---@param num integer
---@param funcName string
---```lua
---[[骰子的显示顺序和点数 对应 私人变量 D0 D1 D2 D3 D4 D5]]
---SetInt(0,actor,"D0",1)
---
---playdice(actor,1,"@test_jump,传参")
---
----- QFunction-0.lua
---function test_jump(actor,...)
---    release_print("test_jump,qf",getbaseinfo(actor,1),...)
---end
---```
function playdice(actor, num, funcName) end

---开启宝箱
---* actor 玩家对象
---* boxIndex 宝箱ID
---* num 次数(不读数据表次数,只认这里的次数)
---@param actor number|string
---@param boxIndex integer
---@param num integer
---```lua
---opendragonbox(actor,15,1)
---release_print("开启宝箱")
---```
function opendragonbox(actor, boxIndex, num) end

---立即推送前端变量
---* actor 玩家对象
---@param actor number|string
---```lua
---sendredvartoclient(actor)
---```
function sendredvartoclient(actor) end

---设置人物照亮范围（光照）
---* actor 玩家对象
---* value 人物照亮范围值<br>-1=读装备的光照值
---@param actor number|string
---@param value integer
---```lua
-----注:黑夜模式需在`M2-假人设置-光照系统-是否免蜡`中开启
---
---setcandlevalue(actor,-1)
---```
function setcandlevalue(actor, value) end

---获取自定义排行榜缓存数据
---* rankIndex 自定义排行榜页签
---* isHero 人物还是英雄<br>(0:人物,1:英雄)
---@param rankIndex table
---@param isHero integer
---@return string "排行榜数据(json格式)"
---```lua
---local rank_index = 1
---local rank_list = json2tbl(getsortdata(rank_index,0))
---```
function getsortdata(rankIndex, isHero) end

---镖车自动寻路到指定坐标
---* actor 玩家对象
---* aimX 目标X坐标
---* aimY 目标Y坐标
---* range 人物离镖车距离内自动寻路<br>取值范围：0-12<br>0-不检测
---@param actor number|string
---@param aimX integer
---@param aimY integer
---@param range integer
---```lua
---dartmap(actor,aimX,aimY,range)
---```
function dartmap(actor, aimX, aimY, range) end

---人物下线，镖车存活设置
---* actor 玩家对象
---* time 镖车存活时间，秒
---* isDie 下线是否消失<br>0-消失，1-时间到达消失
---@param actor number|string
---@param time integer
---@param isDie integer
---```tips
---此接口为覆盖操作,以最后一次设置的时间为准来决定实体的行为（消失时间）。比如第一次设置是 darttime(actor,500,1)，第二次是 darttime(actor,5,1)，那么到第 5 个时间单位时，两个宝宝都会一起消失
---```
---```lua
---darttime(actor,time,isDie)
---```
function darttime(actor, time, isDie) end


---获取玩家模式时间
---* actor 玩家对象
---* modeID 模式ID(1~24)
---@param actor number|string
---@param modeID integer
---@return integer "剩余时间(秒)"
---```tips
---模式ID:
---  - 1: 无敌
---  - 2: 隐身
---  - 3: HP
---  - 4: MP
---  - 5: 攻击力
---  - 6: 魔法力
---  - 7: 道术力
---  - 8: 攻击速度
---  - 9: 禁止攻击
---  - 10: 锁定
---  - 11: 禁锢
---  - 12: 冰冻
---  - 13: 蛛网
---  - 14: 防麻痹
---  - 15: 防禁锢
---  - 16: 防冰冻
---  - 17: 防蛛网
---  - 18: 麻痹
---  - 19: 护身
---  - 20: 吸血
---  - 21: 吸蓝
---  - 22: 隐身(戒指)
---  - 23: 复活
---  - 24: 破复活
---```
---```lua
---local timeLeft = getmodetime(actor, 1)
---release_print("无敌模式剩余时间:", timeLeft)
---```
function getmodetime(actor, modeID) end

-- [Source: 接口^任务相关.lua]

---新建任务
---* actor 玩家对象
---* nId 任务ID
---* param1 参数1，用来替换任务内容里的%s
---* param2 参数2，用来替换任务内容里的%s
---* param3 参数3，用来替换任务内容里的%s
---* param4 参数4，用来替换任务内容里的%s
---* param5 参数5，用来替换任务内容里的%s
---* param6 参数6，用来替换任务内容里的%s
---* param7 参数7，用来替换任务内容里的%s
---* param8 参数8，用来替换任务内容里的%s
---* param9 参数9，用来替换任务内容里的%s
---* param10 参数10，用来替换任务内容里的%s
---@param actor number|string
---@param nId integer
---@param param1 string
---@param param2 string
---@param param3 string
---@param param4 string
---@param param5 string
---@param param6 string
---@param param7 string
---@param param8 string
---@param param9 string
---@param param10 string
---```tips
---任务表:cfg_newtask.xls
---```
---```lua
----- 参数替换任务内容文本，是依次替换的
---function main(actor)
---    newpicktask(actor,12,GetInt(0,actor,'任务状态'),GetInt(0,actor,'当前杀怪数量'))
---end
---```
function newpicktask(actor, nId, param1, param2, param3, param4, param5, param6, param7, param8, param9, param10) end

---刷新进行中任务状态
---* actor 玩家对象
---* nId 任务ID
---* param1 参数1，用来替换任务内容里的%s
---* param2 参数2，用来替换任务内容里的%s
---* param3 参数3，用来替换任务内容里的%s
---* param4 参数4，用来替换任务内容里的%s
---* param5 参数5，用来替换任务内容里的%s
---* param6 参数6，用来替换任务内容里的%s
---* param7 参数7，用来替换任务内容里的%s
---* param8 参数8，用来替换任务内容里的%s
---* param9 参数9，用来替换任务内容里的%s
---* param10 参数10，用来替换任务内容里的%s
---@param actor number|string
---@param nId integer
---@param param1 string
---@param param2 string
---@param param3 string
---@param param4 string
---@param param5 string
---@param param6 string
---@param param7 string
---@param param8 string
---@param param9 string
---@param param10 string
---```tips
---任务表:cfg_newtask.xls
---```
---```lua
---newchangetask(actor,1,"替换内容")
---```
function newchangetask(actor, nId, param1, param2, param3, param4, param5, param6, param7, param8, param9, param10) end

---完成任务
---* actor 玩家对象
---* nId 任务ID
---@param actor number|string
---@param nId integer
---```lua
---newcompletetask(actor,1)
---```
function newcompletetask(actor, nId) end

---删除任务
---* actor 玩家对象
---* nId 任务ID
---@param actor number|string
---@param nId integer
---```lua
---newdeletetask(actor,1)
---```
function newdeletetask(actor, nId) end

---任务置顶显示
---* actor 玩家对象
---* nId 任务ID
---@param actor number|string
---@param nId integer
---```tips
---客户端只支持1个任务置顶显示
---```
---```lua
---tasktopshow(actor,2)
---```
function tasktopshow(actor, nId) end

---增加系统任务计时
---* actor 玩家对象
---* funcName 回调函数名<br>需以dingshicf_开头
---* time 倒计时时间(毫秒)
---* model 0=上线需重新开启否则消失<br>1=上线直接执行
---* isClear 0=开启新的<br>1=上线刷新当前时间
---@param actor number|string
---@param funcName string
---@param time integer
---@param model integer
---@param isClear integer
---```lua
-----QFunction-0.lua
---function dingshicf_1(actor)
---end
---
---
---dsfuncall(actor,"dingshicf_1",10 * 1000 ,1 ,1)
---```
function dsfuncall(actor, funcName, time, model, isClear) end

---删除系统任务计时
---* actor 玩家对象
---* funcName 回调函数名
---@param actor number|string
---@param funcName string
---```lua
---deldsfuncall(actor,"dingshicf_func")
---```
function deldsfuncall(actor, funcName) end

---改变系统任务计时
---* actor 玩家对象
---* funcName 回调函数名
---* model 1=开启<br>0=停止
---@param actor number|string
---@param funcName string
---@param model integer
---```lua
---cngdsfuncallstate(actor,"dingshicf_func",1)
---```
function cngdsfuncallstate(actor, funcName, model) end

-- [Source: 接口^假人相关.lua]

---获取服务器假人数量
---@return integer "假人数量"
---```lua
---local dummyNum=GetDummyPlayCount()
---```
function GetDummyPlayCount() end

---获取地图假人数量
---* mapId 地图id
---@param mapId string
---@return integer "假人数量"
---```lua
---GetMapDummyPlayCount(mapId)
---```
function GetMapDummyPlayCount(mapId) end

---检测是否是假人
---* actor 假人对象
---@param actor number|string
---```lua
---local function getMapIDXY(actor)
---local mapID = getbaseinfo(actor, 3)
---local x = getbaseinfo(actor, 4)
---local y = getbaseinfo(actor, 5)
---return mapID, x, y
---end
---
---local mapID, x, y = getMapIDXY(actor)
---local players = getobjectinmap(mapID, x, y, 100, 1)
---for k, v in pairs(players) do
---    local bool = IsDummy(v)
---    local name = getbaseinfo(v, 1)
---    release_print(name, "IsDummy-检测是否是假人", bool)
---end
---```
function IsDummy(actor) end

---假人自动寻路到当前地图坐标
---* actor 假人对象
---* x 地图坐标
---* y 地图坐标
---@param actor number|string
---@param x integer
---@param y integer
---```lua
---local function getMapIDXY(actor)
---local mapID = getbaseinfo(actor, 3)
---local x = getbaseinfo(actor, 4)
---local y = getbaseinfo(actor, 5)
---return mapID, x, y
---end
---
---local mapID, x, y = getMapIDXY(actor)
---local players = getobjectinmap(mapID, x, y, 100, 1)
---for k, v in pairs(players) do
---    local bool = IsDummy(v)
---    if bool then
---        dummygoto(v, x - 10, y - 10)
---    end
---end
---```
function dummygoto(actor, x, y) end

---假人是否锁定目标攻击
---* actor 假人对象
---* type 0=随机搜索，1=锁定
---@param actor number|string
---@param type integer
---```lua
---dummylocktarget(v,1)
---```
function dummylocktarget(actor, type) end

---踢出所有假人
---```lua
---kickdummy()
---```
function kickdummy() end

---假人停止行动
---* actor 假人对象
---@param actor number|string
---```lua
---dummystopex(actor)
---```
function dummystopex(actor) end

---假人开始行动
---* actor 假人对象
---@param actor number|string
---```lua
---dummystartex(actor)
---```
function dummystartex(actor) end

---假人登录
---* actor 玩家对象
---* mapId 地图id
---* x 地图坐标x
---* y 地图坐标y
---* range 范围
---* job 职业(0=战士 1=法师 2=道士 3=随机)
---* num 数量
---* interval 间隔
---* mode 登录模式(0=顺序 1=倒顺 2=随机)
---* sexy 性别(0=男 1=女)
---@param actor number|string
---@param mapId string
---@param x integer
---@param y integer
---@param range integer
---@param job integer
---@param num integer
---@param interval integer
---@param mode integer
---@param sexy integer
---```lua
---dummylogon(actor,mapID,x+3,y+3,3,0,1,10,0,0)
---```
function dummylogon(actor, mapId, x, y, range, job, num, interval, mode, sexy) end

-- [Source: 接口^关系相关.lua]

---建立关系
---* actor 玩家对象
---* role 接收者对象
---* netid 关系id(100~255)
---@param actor number|string
---@param role number|string
---@param netid integer
---@return boolean "是否建立参成功"
---```tips
---1. 关系id来自关系表:cfg_relation.xls;2. 建立关系前请先确保该id存在于cfg_relation.xls中
---```
---```lua
---local mapID = getbaseinfo(actor,3)
---local x = getbaseinfo(actor,4)
---local y = getbaseinfo(actor,5)
---local playerTab=getobjectinmap(mapId,x,y,10,1)
---release_print(tbl2json(playerTab))
---for k,v in pairs(playerTab) do
---    if v==actor then
---    else
---        SetPlayNet(actor,v,100)
---        release_print("设置人物关系ID100",getbaseinfo(v,1))
---        break
---    end
---end
---```
function SetPlayNet(actor, role, netid) end

---解散关系
---* netIndex 关系唯一id
---@param netIndex string
---@return boolean "是否解散成功"
---```lua
---DisPlayNet(netIndex)
---```
function DisPlayNet(netIndex) end

---获取关系成员
---* actor 玩家对象
---* netid 关系序号
---* online 0：全部成员 1：在线成员
---@param actor number|string
---@param netid integer
---@param online integer
---@return string "关系成员json格式"
---```lua
---str=GetNetMem(actor,100，0)
---release_print("获取关系成员 100",str)
---str=GetNetMem(actor,101,0)
---release_print("获取关系成员 101",str)
---```
function GetNetMem(actor, netid, online) end

---获取关系成员允许召唤状态
---* actor 玩家对象
---* netid 关系id
---@param actor number|string
---@param netid integer
---@return boolean "允许召唤状态"
---```lua
---GetNetCallState(actor,101)
---```
function GetNetCallState(actor, netid) end

---设置关系成员允许召唤状态
---* actor 玩家对象
---* netid 关系id
---* isSet 是否允许召唤
---@param actor number|string
---@param netid integer
---@param isSet boolean
---```lua
---SetNetCallState(actor,101,true)
---```
function SetNetCallState(actor, netid, isSet) end

---获取人物关系ID
---* actor 玩家对象
---* role 接受者对象
---@param actor number|string
---@param role number|string
---@return string "关系ID"
---```lua
---local netid=GetPlayNet(actor,v)
---release_print("获取人物关系ID",getbaseinfo(v,1),type(netid),netid)
---```
function GetPlayNet(actor, role) end

---将玩家踢出关系
---* netIndex 关系唯一id
---* userid 玩家唯一id
---@param netIndex string
---@param userid string
---@return boolean "是否成功"
---```lua
---local netmem=GetNetMem(actor,101)
---release_print(tbl2json(netmem),"根据关系ID获取成员列表101")
---local tbl=json2tbl(netmem)
---for k,v in pairs(tbl) do
---    local userid=getbaseinfo(kickPlayer,2)
---    local returnval=DelPlayNet(v.n,userid)
---    local name=getbaseinfo(kickPlayer,1)
---    release_print("将玩家踢出人物关系ID",returnval,name,v.n,userid)
---end
---```
function DelPlayNet(netIndex, userid) end

---设置关系的等级
---* actor 玩家对象
---* netIndex 关系唯一id
---* level 等级 0/1
---@param actor number|string
---@param netIndex string
---@param level integer
---@return boolean "是否设置成功"
---```lua
---local netmem=GetNetMem(actor,100)
---local tbl=json2tbl(netmem)
---local returnval=SetNetRank(actor,tbl[1].n,1)
---release_print("设置关系的等级",1,returnval,tbl[1].n)
---netmem=GetNetMem(actor,101)
---tbl=json2tbl(netmem)
---returnval=SetNetRank(actor,tbl[1].n,1)
---release_print("设置关系的等级",1,returnval,tbl[1].n)
---```
function SetNetRank(actor, netIndex, level) end

---获取关系的等级
---* actor 玩家对象
---* netIndex 关系唯一id
---@param actor number|string
---@param netIndex string
---@return integer "等级"
---```lua
---local netmem=GetNetMem(actor,100)
---local tbl=json2tbl(netmem)
---local returnval=GetNetRank(actor,tbl[1].n)
---release_print("获取关系的等级",returnval,tbl[1].n)
---netmem=GetNetMem(actor,101)
---tbl=json2tbl(netmem)
---returnval=GetNetRank(actor,tbl[1].n)
---release_print("获取关系的等级",returnval,tbl[1].n)
---```
function GetNetRank(actor, netIndex) end

-- [Source: 接口^内功.lua]

---学习内功
---* actor 玩家对象
---@param actor number|string
---```lua
---readskillng(actor)
---```
function readskillng(actor) end

---获取内功等级
---* actor 玩家对象
---@param actor number|string
---@return integer "内功等级"
---```lua
---local ngLevel=getnglevel(actor)
---release_print("获取内功等级",ngLevel )
---```
function getnglevel(actor) end

---调整人物内功等级
---* actor 玩家对象
---* opt 控制符(=,+,-)
---* value 等级
---@param actor number|string
---@param opt string
---@param value integer
---```lua
---changenglevel(actor,"+",1)
---release_print("调整人物内功等级 + 1" )
---```
function changenglevel(actor, opt, value) end

---调整人物内功经验
---* actor 玩家对象
---* opt 控制符(=,+,-)
---* value 经验
---@param actor number|string
---@param opt string
---@param value integer
---```lua
---changengexp(actor,"+",999)
---release_print("调整人物内功经验 + 999" )
---```
function changengexp(actor, opt, value) end

---开启经络页签
---* actor 玩家对象
---* pulse 经络<br>0=冲脉<br>1=阴跷<br>2=阴维<br>3=任脉3<br>4=奇经
---* isOpen 0=关闭<br>1=开启
---@param actor number|string
---@param pulse integer
---@param isOpen integer
---```lua
---setpulsestate(actor,0,1)
---setpulsestate(actor,1,1)
---setpulsestate(actor,2,1)
---setpulsestate(actor,3,1)
---setpulsestate(actor,4,1)
---release_print("开启经络页签" )
---```
function setpulsestate(actor, pulse, isOpen) end

---开启经络穴位
---* actor 玩家对象
---* pulse 经络<br>0=冲脉<br>1=阴跷<br>2=阴维<br>3=任脉3<br>4=奇经
---* acupoint 穴位（1~5,经络的五个穴位）
---@param actor number|string
---@param pulse integer
---@param acupoint integer
---```lua
---openpulse(actor,0,1)
---release_print("开启经络穴位" )
---```
function openpulse(actor, pulse, acupoint) end

---修改经络的修炼等级格式
---* actor 玩家对象
---* pulse 经络<br>0=冲脉<br>1=阴跷<br>2=阴维<br>3=任脉3<br>4=奇经
---* opt 控制符(=,+,-)
---* level 等级
---@param actor number|string
---@param pulse integer
---@param opt string
---@param level integer
---```lua
---changepulselevel(actor,0,"+",1)
---release_print("修改经络的修炼等级格式" )
---```
function changepulselevel(actor, pulse, opt, level) end

---学习内功/连击技能
---* actor 玩家对象
---* skillName 技能名称
---* skillLevel 技能等级
---@param actor number|string
---@param skillName string
---@param skillLevel integer
---```lua
---addskillex(actor,"万剑归宗",1)
---release_print("学习内功/连击技能" )
---```
function addskillex(actor, skillName, skillLevel) end

---设置杀怪内功经验倍数
---* actor 玩家对象
---* pro 倍率<br>倍数除以100为真正的倍率(200为2倍经验，150为1.5倍)
---* time 有效时间(秒)
---@param actor number|string
---@param pro integer
---@param time integer
---```lua
---function main(actor)
---    killpulseexprate(actor,1000 ,10)
---    release_print("您当前杀怪内功经验倍数为10倍，有效时间10秒。")
---end
---```
function killpulseexprate(actor, pro, time) end

---设置地图杀怪内功经验倍数
---* actor 玩家对象
---* mapId 地图id(`*`代表所有地图)
---* pro 倍率<br>倍数除以100为真正的倍率<br>例如200为2倍经验
---@param actor number|string
---@param mapId string
---@param pro integer
---```lua
---plusemapkillmonexprate(actor,"*",300)
---release_print("设置杀怪内功经验倍数 3" )
---```
function plusemapkillmonexprate(actor, mapId, pro) end

---调整人物的当前内力值
---* actor 玩家对象
---* sFlag 操作符(=,+,-)
---* value 内力值
---* model 计算方式<br>0=点数<br>1=万分比
---@param actor number|string
---@param sFlag string
---@param value integer
---@param model integer
---```lua
---addinternalforce(actor,"+",10,0)
---release_print("调整人物的当前内力值 + 10" )
---```
function addinternalforce(actor, sFlag, value, model) end

-- [Source: 接口^变量相关^临时变量.lua]

---设置Int临时变量
---* Type 类型0:玩家，1:行会，2:地图，3：物品，4：NPC，5:怪物，6:英雄
---* actor <font color="#FF0000" style="font-family: Fixedsys;font-size: 15px;">类型=玩家-填对象<br>类型=行会-填对象<br>类型=物品-填makeid<br>类型=地图-填地图ID<br>类型=NPC-填NPCID<br>类型=怪物-填对象 <br>类型=英雄-填对象</font>
---* sVarName 变量名
---* nValue 变量值
---@param Type integer
---@param actor any
---@param sVarName string
---@param nValue integer
---```tips
---1. 所有变量都不可重名
---   2.分身宝宝属于怪物类型
---   3.命名时切勿使用 sys_ 作为变量名前缀，该前缀引擎占用
---```
---```lua
---SetTempInt(0,actor,"SetTempIntActor",1111)
---release_print("设置Int临时变量 actor")
---
---
---local guild=findguild(1,"红花会")
---local guildId=getguildinfo(guild,0)
---SetTempInt(1,guildId,"SetTempIntGuild",2222)
---release_print("设置Int临时变量 guild")
---
---
---local makeIndex=GetItemByPos(actor,1)
---SetTempInt(3,makeIndex,"SetTempIntItem",3333)
---release_print("设置Int临时变量 item")
---```
function SetTempInt(Type, actor, sVarName, nValue) end

---获取Int临时变量
---* Type 类型0:玩家，1:行会，2:地图，3：物品，4：NPC，5:怪物，6:英雄
---* actor <font color="#FF0000" style="font-family: Fixedsys;font-size: 15px;">类型=玩家-填对象<br>类型=行会-填对象<br>类型=物品-填makeid<br>类型=地图-填地图ID<br>类型=NPC-填NPCID <br>类型=怪物-填对象<br>类型=英雄-填对象</font>
---* sVarName 变量名
---@param Type integer
---@param actor any
---@param sVarName string
---@return integer "临时变量值"
---```tips
---1. 所有变量都不可重名
---   2.分身宝宝属于怪物类型
---   3.命名时切勿使用 sys_ 作为变量名前缀，该前缀引擎占用
---```
---```lua
---local var=GetTempInt(0,actor,"SetTempIntActor")
---release_print("获取Int临时变量 actor",var)
---
---
---local guild=findguild(1,"红花会")
---local guildId=getguildinfo(guild,0)
---local var=GetTempInt(1,guildId,"SetTempIntGuild")
---release_print("获取Int临时变量 guild",var)
---
---
---local makeIndex=GetItemByPos(actor,1)
---local var=GetTempInt(3,makeIndex,"SetTempIntItem")
---release_print("获取Int临时变量 item",var)
---```
function GetTempInt(Type, actor, sVarName) end

---设置Str临时变量
---* Type 类型0:玩家，1:行会，2:地图，3：物品，4：NPC，5:怪物，6:英雄
---* actor <font color="#FF0000" style="font-family: Fixedsys;font-size: 15px;">类型=玩家-填对象<br>类型=行会-填对象<br>类型=物品-填makeid<br>类型=地图-填地图ID<br>类型=NPC-填NPCID <br>类型=怪物-填对象 <br>类型=英雄-填对象</font>
---* sVarName 变量名
---* nValue 变量值
---@param Type integer
---@param actor any
---@param sVarName string
---@param nValue string
---```tips
---1. 所有变量都不可重名
---   2.分身宝宝属于怪物类型
---   3.命名时切勿使用 sys_ 作为变量名前缀，该前缀引擎占用
---```
---```lua
---SetTempStr(0,actor,"SetTempStrActor","1111111")
---release_print("设置Str临时变量 actor")
---
---
---local guild=findguild(1,"红花会")
---local guildId=getguildinfo(guild,0)
---SetTempStr(1,guildId,"SetTempStrGuild","2222222")
---release_print("设置Str临时变量 guild")
---
---
---local makeIndex=GetItemByPos(actor,1)
---SetTempStr(3,makeIndex,"SetTempStrItem","3333333")
---release_print("设置Str临时变量 item")
---```
function SetTempStr(Type, actor, sVarName, nValue) end

---获取Str临时变量
---* Type 类型0:玩家，1:行会，2:地图，3：物品，4：NPC，5:怪物，6:英雄
---* actor <font color="#FF0000" style="font-family: Fixedsys;font-size: 15px;">类型=玩家-填对象<br>类型=行会-填对象<br>类型=物品-填makeid<br>类型=地图-填地图ID<br>类型=NPC-填NPCID<br>类型=怪物-填对象<br>类型=英雄-填对象</font>
---* sVarName 变量名
---@param Type integer
---@param actor any
---@param sVarName string
---@return string "临时变量值"
---```tips
---1. 所有变量都不可重名
---   2.分身宝宝属于怪物类型
---   3.命名时切勿使用 sys_ 作为变量名前缀，该前缀引擎占用
---```
---```lua
---local var=GetTempStr(0,actor,"SetTempStrActor")
---release_print("获取Str临时变量 actor",var)
---
---
---local guild=findguild(1,"红花会")
---local guildId=getguildinfo(guild,0)
---local var=GetTempStr(1,guildId,"SetTempStrGuild")
---release_print("获取Str临时变量 guild",var)
---
---
---local makeIndex=GetItemByPos(actor,1)
---local var=GetTempStr(3,makeIndex,"SetTempStrItem")
---release_print("获取Str临时变量 item",var)
---```
function GetTempStr(Type, actor, sVarName) end

---设置系统Int临时变量
---* varName 变量名
---* value 变量值
---@param varName string
---@param value integer
---```tips
---1. 所有变量都不可重名
---   2.命名时切勿使用 sys_ 作为变量名前缀，该前缀引擎占用
---```
---```lua
---SetSysTempInt("SetSysTempInt",1997)
---release_print("设置系统Int临时变量" )
---```
function SetSysTempInt(varName, value) end

---获取系统Int临时变量
---* varName 变量名
---@param varName string
---@return integer "变量值"
---```tips
---1. 所有变量都不可重名
---   2.命名时切勿使用 sys_ 作为变量名前缀，该前缀引擎占用
---```
---```lua
---local var=GetSysTempInt("SetSysTempInt")
---release_print("获取系统Int临时变量",var)
---```
function GetSysTempInt(varName) end

---设置系统Str临时变量
---* varName 变量名
---* value 变量值
---@param varName string
---@param value string
---```tips
---1. 所有变量都不可重名
---   2.命名时切勿使用 sys_ 作为变量名前缀，该前缀引擎占用
---```
---```lua
---SetSysTempStr("SetSysTempStr","7777777")
---release_print("设置系统Str临时变量" )
---```
function SetSysTempStr(varName, value) end

---获取系统Str临时变量
---* varName 变量名
---@param varName string
---@return string "变量值"
---```tips
---1. 所有变量都不可重名
---   2.命名时切勿使用 sys_ 作为变量名前缀，该前缀引擎占用
---```
---```lua
---local var=GetSysTempStr("SetSysTempStr")
---release_print("获取系统Str临时变量",var)
---```
function GetSysTempStr(varName) end

-- [Source: 接口^变量相关^其他.lua]

---删除多个变量名
---* Type 类型<br>0:玩家，1:行会，2:地图，<br>3:物品，4:NPC，5:怪物，<br>6:英雄，7:宠物，8:国家
---* actor <font color="#FF0000" style="font-family: Fixedsys;font-size: 15px;">类型=玩家-填对象<br>类型=行会-填对象<br>类型=物品-填MakeIndex<br>类型=地图-填地图ID<br>类型=NPC-填NPCID<br>类型=怪物-填对象<br>类型=英雄-填对象<br>类型=宠物-填对象<br>类型=国家-填国家ID</font>
---* sVarName 变量名，用#拼接
---@param Type integer
---@param actor any
---@param sVarName string
---@return boolean "删除成功返回true，若执行后数据库中还存在该变量返回false"
---```tips
---1. 将该变量从数据库移除
---   2.actor 为-1时该类型的变量会全部删除慎重使用
---   3.该接口删除指从数据库移除该变量
---```
---```lua
---DelVar(1, gid, "等级#别名")
---local var_name = "玩家Int变量#玩家Int变量#玩家Str变量#玩家Str变量"
---local var = DelVar(0,actor,var_name)
---release_print("删除变量,var",var)
---```
function DelVar(Type, actor, sVarName) end

---删除多个系统变量
---* sysVarName 变量名，用#拼接
---@param sysVarName string
---@return boolean "删除成功返回true，若执行后数据库中还存在该变量返回false"
---```tips
---1. 将该变量从数据库移除
---   2.该接口删除指从数据库移除该变量
---```
---```lua
---local var_name = "系统Int变量#系统Str变量"
---local var = DelSysVar(var_name)
---release_print("删除系统变量,var",var)
---```
function DelSysVar(sysVarName) end

---刷新物品变量到前端
---* actor 玩家对象
---* makeIndex 物品唯一id
---@param actor number|string
---@param makeIndex string
---```tips
---1. 客户端使用 SL:GetSerCustomVar 获取
---```
---```lua
---local var_name = "物品int变量"
---local item = GetItemByPos(actor, 1)
---if item == "0" then release_print("角色当前没有穿戴武器") return end
---local bool = SetInt(3, item,var_name, GetInt(3, item, var_name) + 1)
---release_print("设置对象int型变量,bool",bool,"value",GetInt(3, item, var_name))
---SendItemVarToc(actor, item)
---```
function SendItemVarToc(actor, makeIndex) end

---设置离线玩家变量值
---* actor GM玩家
---* targetName 目标玩家名
---* varName 变量名
---* varValue 变量值
---* isInt 变量类型<br>0=字符，1=数字
---@param actor number|string
---@param targetName string
---@param varName string
---@param varValue integer|string
---@param isInt integer
---```tips
---actor需要是GM权限等级=10的玩家,当前接口主要用于修改线上玩家的异常数据,不建议在具体玩法中使用
---```
---```lua
--- local gmName = getbaseinfo(actor, 1)
--- local gmLevel = getgmlevel(actor)
--- local targetName = "亡灵逝雪"
--- local varName = "自定义int变量"
--- local varValue = 999
--- local isInt = 1
--- SetOffLinePlayVar(actor,targetName, varName, varValue, isInt)
---```
function SetOffLinePlayVar(actor, targetName, varName, varValue, isInt) end

---请求离线玩家变量
---* UserID 玩家唯一id
---* varname 变量名称
---@param UserID string
---@param varname string
---@return boolean "是否成功"
---```tips
---1. 异步操作请求后，在 on_offline_var 触发中获取变量值
---```
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
---    release_print("UserID",UserID)
---    release_print("UserName",UserName)
---    release_print("varName",varName)
---    release_print("varValue",varValue)
---end
---```
function OffLineVar(UserID, varname) end

---获取目标全部变量
---* type 类型
---* obj 目标对象
---@param type integer
---@param obj number|string
---@return string|nil "全部变量"
---```lua
---local mujian = getbagitems(actor, "木剑", 0)
-----失败时返回ninl 成功时返回变量 或者 "" 或者变量json
---local list = GetObjVar(3, mujian[1])
---print(list)
---```
function GetObjVar(type, obj) end

---设置目标全部变量
---* type 类型
---* obj 目标对象
---* json 目标对象
---@param type integer
---@param obj number|string
---@param json string
---```tips
---覆盖目标的全部变量，该操作相当于拷贝变量
---```
---```lua
---local mujian = getbagitems(actor, "木剑", 0)
---local list = GetObjVar(3, mujian[1])
---print(list)
---local jia = getbagitems(actor, "布衣(男)", 0)
---SetObjVar(3, jia[1], list)
---local lists = GetObjVar(3,jia[1])
---print(lists)
---```
function SetObjVar(type, obj, json) end

-- [Source: 接口^变量相关^变量排序.lua]

---注册变量排行
---* varName 变量名
---* type 注册类型，<br>0为全玩家（包括离线）<br>1为在线玩
---* isRealTime 0=非自动排序; 1=自动排序<br>非自动排序为获取时进行排序，即每次调用GetVarRank时排序，获取时在游戏线程中排序，对游戏线程有消耗<br>自动排序为变量改变后引擎自动排序，需要异步获取排序数据，在排序线程中处理，对游戏线程无消耗
---* rankNum 排序数量
---* isDescence 是否降序0降序，1升序
---@param varName string
---@param type integer
---@param isRealTime integer
---@param rankNum integer
---@param isDescence integer
---```tips
---1.注册为全玩家类型为异步操作,须在加载QF文件时注册
---    2.注册变量名只能为玩家变量
---    3.支持普通,临时变量
---      4.不建议使用期限变量（TLInt）注册排行：到期后不会自动从排行榜移除；如需到期清理，请在到期时调用 DelVar 删除
---	   5.非实时排序时，rankNum与isDescence无效可不填，以获取接口为准
---```
---```lua
---RegRankVar("RANK",1,1,500,1)
---release_print("注册排行榜")
---```
function RegRankVar(varName, type, isRealTime, rankNum, isDescence) end

---获取变量排行的排名
---* varName 变量名
---* num 排行数量
---* type 0为降序10-->0<br>1为升序0-->10
---@param varName string
---@param num integer
---@param type integer
---@return table "排行数据"
---```lua
---local tab=GetRankVar("actorint",10,1)
---release_print(tbl2json(tab),"获取排行榜排名")
---```
function GetRankVar(varName, num, type) end

---注销变量排行
---* varName 变量名
---@param varName string
---```lua
---UnRegRankVar("actorint")
---release_print("注销排行榜")
---```
function UnRegRankVar(varName) end

---是否注册了排行榜
---* sVName 变量名
---@param sVName string
---@return boolean "是否注册了该排行榜"
---```lua
---local ishave=HasRankVar("RANK")
---release_print("是否有该排行榜",ishave)
---```
function HasRankVar(sVName) end

---获取玩家排行
---* actor 玩家对象
---* sVName 排行变量名
---@param actor number|string
---@param sVName string
---@return integer, integer "排名，值"
---```lua
---local rank,var=GetPlayRankVar(actor,"RANK")
---release_print("获取玩家排行","排名",rank,"值",var)
---```
function GetPlayRankVar(actor, sVName) end

-- [Source: 接口^变量相关^普通变量.lua]

---获取对象int型变量
---* Type 类型<br>0:玩家，1:行会，2:地图，<br>3:物品，4:NPC，5:怪物，<br>6:英雄，7:宠物，8:国家
---* actor <font color="#FF0000" style="font-family: Fixedsys;font-size: 15px;">类型=玩家-填对象<br>类型=行会-填对象<br>类型=物品-填MakeIndex<br>类型=地图-填地图ID<br>类型=NPC-填NPCID<br>类型=怪物-填对象<br>类型=英雄-填对象<br>类型=宠物-填对象<br>类型=国家-填国家ID</font>
---* sVarName 变量名
---@param Type integer
---@param actor any
---@param sVarName string
---@return integer "变量值"
---```tips
---1. 所有变量都不可重名
---   2.分身宝宝属于怪物类型
---   3.命名时切勿使用 sys_ 作为变量名前缀，该前缀引擎占用
---   4.M2-选项-功能设置-其他设置-变量设置-变量名大小写敏感
---```
---```lua
---local var=GetInt(0,actor,"sVarName")
---```
function GetInt(Type, actor, sVarName) end

---设置对象int型变量
---* Type 类型<br>0:玩家，1:行会，2:地图，<br>3:物品，4:NPC，5:怪物，<br>6:英雄，7:宠物，8:国家
---* actor <font color="#FF0000" style="font-family: Fixedsys;font-size: 15px;">类型=玩家-填对象<br>类型=行会-填对象<br>类型=物品-填MakeIndex<br>类型=地图-填地图ID<br>类型=NPC-填NPCID<br>类型=怪物-填对象<br>类型=英雄-填对象<br>类型=宠物-填对象<br>类型=国家-填国家ID</font>
---* sVarName 变量名
---* nValue 变量值
---@param Type integer
---@param actor any
---@param sVarName string
---@param nValue integer
---```tips
---1. 所有变量都不可重名
---   2.分身宝宝属于怪物类型
---   3.命名时切勿使用 sys_ 作为变量名前缀，该前缀引擎占用
---   4.M2-选项-功能设置-其他设置-变量设置-变量名大小写敏感
---```
---```lua
---SetInt(3,MakeIndex,"int",100)
---```
function SetInt(Type, actor, sVarName, nValue) end

---获取对象str型变量
---* Type 类型<br>0:玩家，1:行会，2:地图，<br>3:物品，4:NPC，5:怪物，<br>6:英雄，7:宠物，8:国家
---* actor <font color="#FF0000" style="font-family: Fixedsys;font-size: 15px;">类型=玩家-填对象<br>类型=行会-填对象<br>类型=物品-填MakeIndex<br>类型=地图-填地图ID<br>类型=NPC-填NPCID <br>类型=怪物-填对象<br>类型=英雄-填对象<br>类型=宠物-填对象<br>类型=国家-填国家ID</font>
---* sVarName 变量名
---@param Type integer
---@param actor any
---@param sVarName string
---@return string "变量值"
---```tips
---1. 所有变量都不可重名
---   2.分身宝宝属于怪物类型
---   3.命名时切勿使用 sys_ 作为变量名前缀，该前缀引擎占用
---   4.M2-选项-功能设置-其他设置-变量设置-变量名大小写敏感
---```
---```lua
---local var=GetStr(0,actor,"sVarName")
---```
function GetStr(Type, actor, sVarName) end

---设置对象str型变量
---* Type 类型<br>0:玩家，1:行会，2:地图，<br>3:物品，4:NPC，5:怪物，<br>6:英雄，7:宠物，8:国家
---* actor <font color="#FF0000" style="font-family: Fixedsys;font-size: 15px;">类型=玩家-填对象<br>类型=行会-填对象<br>类型=物品-填MakeIndex<br>类型=地图-填地图ID<br>类型=NPC-填NPCID <br>类型=怪物-填对象<br>类型=英雄-填对象<br>类型=宠物-填对象<br>类型=国家-填国家ID</font>
---* sVarName 变量名
---* nValue 变量值
---@param Type integer
---@param actor any
---@param sVarName string
---@param nValue string
---```tips
---1. 所有变量都不可重名
---   2.分身宝宝属于怪物类型
---   3.命名时切勿使用 sys_ 作为变量名前缀，该前缀引擎占用
---   4.M2-选项-功能设置-其他设置-变量设置-变量名大小写敏感
---```
---```lua
---SetStr(3,makeid,"int","100")
---```
function SetStr(Type, actor, sVarName, nValue) end

---设置系统int变量
---* varName 变量名
---* value 变量值
---* itype 合区类型 默认0<br>0:保留主区<br>1:保留副区(多副区以最后一个为准)<br>2:取大（字符型不可用）<br>3:取小（字符型不可用）<br>4:相加（字符型不可用）<br>5:相连（整数型不可用）<br>6:删除
---@param varName string
---@param value integer
---@param itype integer
---```tips
---1. 所有变量都不可重名
---   2.命名切勿使用 sys_ 作为变量名前缀，该前缀引擎占用
---   3.M2-选项-功能设置-其他设置-变量设置-变量名大小写敏感
---```
---```lua
-----系统变量示例
---SetSysInt("testSysIntVar",1998)
---release_print("设置系统int变量" )
---```
function SetSysInt(varName, value, itype) end

---获取系统int变量
---* varName 变量名
---@param varName string
---@return integer "变量值"
---```tips
---1. 所有变量都不可重名
---   2.命名切勿使用 sys_ 作为变量名前缀，该前缀引擎占用
---   3.M2-选项-功能设置-其他设置-变量设置-变量名大小写敏感
---```
---```lua
---local var=GetSysInt("testSysIntVar")
---release_print("获取系统int变量",var)
---```
function GetSysInt(varName) end

---设置系统str变量
---* varName 变量名
---* value 变量值
---* itype 合区类型 默认0<br>0:保留主区<br>1:保留副区(多副区以最后一个为准)<br>2:取大（字符型不可用）<br>3:取小（字符型不可用）<br>4:相加（字符型不可用）<br>5:相连（整数型不可用）<br>6:删除
---@param varName string
---@param value string
---@param itype integer
---```tips
---1. 所有变量都不可重名
---   2.命名切勿使用 sys_ 作为变量名前缀，该前缀引擎占用
---   3.M2-选项-功能设置-其他设置-变量设置-变量名大小写敏感
---```
---```lua
-----系统变量示例
---SetSysStr("testSysStrVar","1997年 我学会了开汽车")
---release_print("设置系统str变量" )
---```
function SetSysStr(varName, value, itype) end

---获取系统str变量
---* varName 变量名
---@param varName string
---@return string "变量值"
---```tips
---1. 所有变量都不可重名
---   2.命名切勿使用 sys_ 作为变量名前缀，该前缀引擎占用
---   3.M2-选项-功能设置-其他设置-变量设置-变量名大小写敏感
---```
---```lua
---local var=GetSysStr("testSysStrVar")
---release_print("获取系统str变量",var)
---```
function GetSysStr(varName) end

-- [Source: 接口^变量相关^期限变量.lua]

---设置Int期限变量
---* Type 类型0:玩家，1:行会，2:地图，3：物品，4：NPC，5:怪物，6:英雄
---* actor <font color="#FF0000" style="font-family: Fixedsys;font-size: 15px;">类型=玩家-填对象<br>类型=行会-填对象<br>类型=物品-填makeid<br>类型=地图-填地图ID<br>类型=NPC-填NPCID <br>类型=怪物-填对象 <br>类型=英雄-填对象</font>
---* sVarName 变量名
---* nValue 变量值
---* time 到期清理时间戳(整型)
---@param Type integer
---@param actor any
---@param sVarName string
---@param nValue integer
---@param time integer
---@return boolean "是否设置成功"
---```tips
---1. 所有变量都不可重名
---2.分身宝宝属于怪物类型
---3.命名时切勿使用 sys_ 作为变量名前缀，该前缀引擎占用
---4.不提供到期触发，消耗过大
---
---[<u>友情封装：天变量-周变量</u>](https://engine-doc.996m2.com/web/#/91/52211 "友情封装：天变量-周变量")<br>&emsp;&emsp;&emsp;[<u>友情封装：天变量系统</u>](https://engine-doc.996m2.com/web/#/91/52212 "友情封装：天变量系统")
---```
---```lua
---local nowtime = os.time() + 20
---local var_name = "玩家IntTL变量"
---local bool = SetTLInt(0, actor, var_name, GetTLInt(0, actor, var_name) + 1, nowtime)
---release_print("设置对象int型TL变量,bool", bool, "value", GetTLInt(0, actor, var_name))
---```
function SetTLInt(Type, actor, sVarName, nValue, time) end

---获取Int期限变量
---* Type 类型0:玩家，1:行会，2:地图，3：物品，4：NPC，5:怪物，6:英雄
---* actor <font color="#FF0000" style="font-family: Fixedsys;font-size: 15px;">类型=玩家-填对象<br>类型=行会-填对象<br>类型=物品-填makeid<br>类型=地图-填地图ID<br>类型=NPC-填NPCID<br>类型=怪物-填对象 <br>类型=英雄-填对象</font>
---* sVarName 变量名
---* 1 0
---* 2 0
---@param Type integer
---@param actor any
---@param sVarName string
---@return number "变量值，过期时返回0; 默认0"
---@return number "变量剩余刷新时间，过期返回0; 默认0"
---```tips
---1. 所有变量都不可重名
---   2.分身宝宝属于怪物类型
---   3.命名时切勿使用 sys_ 作为变量名前缀，该前缀引擎占用
---   4.不提供到期触发，消耗过大
---```
---```lua
---local var_name = "玩家IntTL变量"
---release_print("获取对象int型TL变量", GetTLInt(0, actor, var_name))
---```
function GetTLInt(Type, actor, sVarName) end

---设置Str期限变量
---* Type 类型0:玩家，1:行会，2:地图，3：物品，4：NPC，5:怪物，6:英雄
---* actor <font color="#FF0000" style="font-family: Fixedsys;font-size: 15px;">类型=玩家-填对象<br>类型=行会-填对象<br>类型=物品-填makeid<br>类型=地图-填地图ID<br>类型=NPC-填NPCID <br>类型=怪物-填对象<br>类型=英雄-填对象</font>
---* sVarName 变量名
---* nValue 变量值
---* time 到期清理时间戳(整型)
---@param Type integer
---@param actor any
---@param sVarName string
---@param nValue string
---@param time integer
---@return boolean "是否设置成功"
---```tips
---1. 所有变量都不可重名
---   2.分身宝宝属于怪物类型
---   3.命名时切勿使用 sys_ 作为变量名前缀，该前缀引擎占用
---   4.不提供到期触发，消耗过大
---```
---```lua
---local nowtime = os.time() + 20
---local var_name = "玩家StrTL变量"
---local bool = SetTLStr(0, actor, var_name, GetTLStr(0, actor, var_name) .. "#1", nowtime)
---release_print("设置对象str型TL变量,bool", bool, "value", GetTLStr(0, actor, var_name))
---```
function SetTLStr(Type, actor, sVarName, nValue, time) end

---获取Str期限变量
---* Type 类型0:玩家，1:行会，2:地图，3：物品，4：NPC，5:怪物，6:英雄
---* actor <font color="#FF0000" style="font-family: Fixedsys;font-size: 15px;">类型=玩家-填对象<br>类型=行会-填对象<br>类型=物品-填makeid<br>类型=地图-填地图ID<br>类型=NPC-填NPCID <br>类型=怪物-填对象 <br>类型=英雄-填对象</font>
---* sVarName 变量名
---@param Type integer
---@param actor any
---@param sVarName string
---@return string "变量值，过期时返回 '' 空字符串"
---@return number "变量剩余刷新时间，过期返回0; 默认0"
---```tips
---1. 所有变量都不可重名
---   2.分身宝宝属于怪物类型
---   3.命名时切勿使用 sys_ 作为变量名前缀，该前缀引擎占用
---   4.不提供到期触发，消耗过大
---```
---```lua
---local var_name = "玩家StrTL变量"
---release_print("获取对象str型TL变量", GetTLStr(0, actor, var_name))
---```
function GetTLStr(Type, actor, sVarName) end

---设置系统int型TL变量
---* sVarName 变量名
---* nValue 变量值
---* time 到期清理时间戳(整型)
---@param sVarName string
---@param nValue integer
---@param time integer
---@return boolean "是否设置成功"
---```tips
---1. 所有变量都不可重名
---   2.命名时切勿使用 sys_ 作为变量名前缀，该前缀引擎占用
---   3.不提供到期触发，消耗过大
---```
---```lua
---local nowtime = os.time() + 20
---local var_name = "系统IntTL变量qweqweqwep"
---local bool = SetSysTLInt(var_name,11,nowtime)
---release_print("设置系统int型TL变量,bool",bool,"value",GetSysTLInt(var_name))
---```
function SetSysTLInt(sVarName, nValue, time) end

---获取系统int型TL变量
---* sVarName 变量名
---* 1 0
---* 2 0
---@param sVarName string
---@return number "变量值，过期时返回0; 默认0"
---@return number "变量剩余刷新时间，过期返回0; 默认0"
---```tips
---1. 所有变量都不可重名
---   2.命名时切勿使用 sys_ 作为变量名前缀，该前缀引擎占用
---   3.不提供到期触发，消耗过大
---```
---```lua
---local var_name = "系统IntTL变量qweqweqwep"
---local var,time = GetSysTLInt(var_name)
---release_print("获取系统int型TL变量,var",var,"time",time)
---```
function GetSysTLInt(sVarName) end

---设置系统str型TL变量
---* sVarName 变量名
---* nValue 变量值
---* time 到期清理时间戳(整型)
---@param sVarName string
---@param nValue string
---@param time integer
---@return boolean "是否设置成功"
---```tips
---1. 所有变量都不可重名
---   2.命名时切勿使用 sys_ 作为变量名前缀，该前缀引擎占用
---   3.不提供到期触发，消耗过大
---```
---```lua
---local nowtime = os.time() + 20
---local var_name = "系统StrTL变量ooo"
---local bool = SetSysTLStr(var_name,GetSysTLStr(var_name).."#1",nowtime)
---release_print("设置系统int型TL变量,bool",bool,"value",GetSysTLStr(var_name))
---```
function SetSysTLStr(sVarName, nValue, time) end

---获取系统str型TL变量
---* sVarName 变量名
---@param sVarName string
---@return string "变量值，过期时返回 '' 空字符串; 默认'' "
---@return number "变量剩余刷新时间，过期返回0; 默认0"
---```tips
---1. 所有变量都不可重名
---   2.命名时切勿使用 sys_ 作为变量名前缀，该前缀引擎占用
---   3.不提供到期触发，消耗过大
---```
---```lua
---local var_name = "系统StrTL变量ooo"
---local var,time = GetSysTLStr(var_name)
---release_print("获取系统Str型TL变量,var",var,"time",time)
---```
function GetSysTLStr(sVarName) end

-- [Source: 接口^变量相关^键值对变量.lua]

---获取对象键值对变量值
---* Type 类型<br>0:玩家，1:行会，2:地图，<br>3:物品，4:NPC，5:怪物，<br>6:英雄，7:宠物，8:国家
---* actor <font color="#FF0000" style="font-family: Fixedsys;font-size: 15px;">类型=玩家-填对象<br>类型=行会-填对象<br>类型=物品-填MakeIndex<br>类型=地图-填地图ID<br>类型=NPC-填NPCID<br>类型=怪物-填对象<br>类型=英雄-填对象<br>类型=宠物-填对象<br>类型=国家-填国家ID</font>
---* sVarName 变量名
---* Key 键值
---@param Type integer
---@param actor any
---@param sVarName string
---@param Key string
---@return string "变量值"
---```lua
---local varName = "player_data"
---local param1 = GetKeyValue(0, actor, varName, "1")
---local param2 = GetKeyValue(0, actor, varName, "2")
---local param3 = GetKeyValue(0, actor, varName, "3")
---local param4 = GetKeyValue(0, actor, varName, "A")
---local params = GetStr(0, actor, varName)
---release_print("获取键值对1:", tostring(param1))
---release_print("获取键值对2:", tostring(param2))
---release_print("获取键值对3:", tostring(param3))
---release_print("获取键值对A:", tostring(param4))
---release_print("获取所有变量值:", tostring(params))
---```
function GetKeyValue(Type, actor, sVarName, Key) end

---设置对象键值对变量值
---* Type 类型<br>0:玩家，1:行会，2:地图，<br>3:物品，4:NPC，5:怪物，<br>6:英雄，7:宠物，8:国家
---* actor <font color="#FF0000" style="font-family: Fixedsys;font-size: 15px;">类型=玩家-填对象<br>类型=行会-填对象<br>类型=物品-填MakeIndex<br>类型=地图-填地图ID<br>类型=NPC-填NPCID<br>类型=怪物-填对象<br>类型=英雄-填对象<br>类型=宠物-填对象<br>类型=国家-填国家ID</font>
---* sVarName 变量名
---* Key 键值
---* Value 变量值
---@param Type integer
---@param actor any
---@param sVarName string
---@param Key string
---@param Value string
---@return string "变量值"
---```lua
---local varName = "player_data"
---local result1 = SetKeyValue(0, actor, varName, "1", playerName)
---local result2 = SetKeyValue(0, actor, varName, "2", "51")
---local result3 = SetKeyValue(0, actor, varName, "3", "10000")
---local result4 = SetKeyValue(0, actor, varName, "A", 996)
---release_print("设置键值对1:", tostring(result1))
---release_print("设置键值对2:", tostring(result2))
---release_print("设置键值对3:", tostring(result3))
---release_print("设置键值对A:", tostring(result4))
---```
function SetKeyValue(Type, actor, sVarName, Key, Value) end

-- [Source: 接口^国家系统.lua]

---创建国家
---* nIndex 国家ID (1~100)
---* name 国家名称
---* maxNum 限制人数
---@param nIndex integer
---@param name string
---@param maxNum integer
---@return boolean "true成功 false失败"
---```lua
---createnation(5,'华夏',100)
---```
function createnation(nIndex, name, maxNum) end

---判断国家是否存在
---* nIdx 国家id
---@param nIdx integer
---@return boolean "是否存在"
---```lua
---local ishas=HasNation(nIdx)
---```
function HasNation(nIdx) end

---删除国家
---* nId 国家ID
---@param nId integer
---```lua
---delnation(nId)
---```
function delnation(nId) end

---加入/退出国家
---* actor 玩家对象
---* nIndex 国家ID (1~100),填0退出国家
---* JobIndex 职位编号（0-9 不填 默认为0）
---@param actor number|string
---@param nIndex integer
---@param JobIndex integer
---```lua
---JoinNation(actor,5,9) --加入国家
---JoinNation(actor,0) --退出国家
---```
function JoinNation(actor, nIndex, JobIndex) end

---获取角色国家ID
---* actor 玩家对象
---@param actor number|string
---@return integer "国家id"
---```lua
---GetPlayNation(actor)
---```
function GetPlayNation(actor) end

---获取角色在国家的职位
---* actor 玩家对象
---@param actor number|string
---@return integer "职位"
---```lua
---GetPlayNationRank(actor)
---```
function GetPlayNationRank(actor) end

---设置角色在国家的职位
---* actor 玩家对象
---* jobIndex 职位编号
---@param actor number|string
---@param jobIndex integer
---@return boolean "是否成功"
---```lua
---SetPlayNationRank(actor,3)
---release_print("设置角色在国家的职位" )
---```
function SetPlayNationRank(actor, jobIndex) end

---修改国家职位名称
---* nIndex 国家ID (1~100)
---* jobIndex 职位编号
---* jobName 职位名称
---@param nIndex integer
---@param jobIndex integer
---@param jobName string
---```lua
---SetNationRank(5,3,'汉奸')
---```
function SetNationRank(nIndex, jobIndex, jobName) end

---获取国家职位名称
---* nIndex 国家ID (1~100)
---* jobIndex 职位编号
---@param nIndex integer
---@param jobIndex integer
---@return string "职位名称"
---```lua
---local jobName = GetNationRank(nation_id,jobIndex)
---```
function GetNationRank(nIndex, jobIndex) end

---获取国家成员数
---* nIndex 国家ID (1~100)
---@param nIndex integer
---@return integer "获取国家成员数"
---```lua
---local num = GetNationMemberCount(nation_id)
---```
function GetNationMemberCount(nIndex) end

---获取国家名称
---* nation_id 国家ID
---@param nation_id integer
---@return string "国家名称"
function GetNationName(nation_id) end


---判断国家之间是否宣战
---* nationIDX1 国家ID
---* nationIDX2 国家ID
---@param nationIDX1 integer
---@param nationIDX2 integer
---@return boolean "true=宣战,false=不宣战"
function iswarnation(nationIDX1, nationIDX2) end

-- [Source: 接口^地图相关.lua]

---添加镜像地图
---* oldMap 原地图ID(在地图配置文件中存在的地图)
---* newMap 新地图ID
---* newName 新地图名
---* time 有效时间(秒)<br>最大值210,000秒
---* backMap 回城地图(有效时间结束后，传回去的地图)
---* miniMapId 小地图编号
---* posMX 回城地图的X坐标
---* posMY 回城地图的Y坐标
---* range 回城地图的范围
---@param oldMap string
---@param newMap string
---@param newName string
---@param time integer
---@param backMap string
---@param miniMapId string
---@param posMX integer
---@param posMY integer
---@param range integer
---@return boolean "是否成功创建"
---```lua
---function main(actor)
---    name_1 = name_1 and name_1 + 1 or 1
---    --地图
---    local oldMapId = "0"
---    local newMapId = "0" .. getbaseinfo(actor, 2).. name_1 --新地图
---    local mapName = string.format("比奇[%d]",name_1)
---    local mapTime = 10 --地图持续时间
---    --删除地图
---    delmirrormap(newMapId)
---    --创建镜像地图
---    addmirrormap(oldMapId, newMapId, mapName, mapTime, 3,1,333,333)
---    --刷怪
---    genmon(newMapId,14,14,"练功稻草人",10,10)
---    --进入地图
---    map(actor, newMapId)
---end
---```
function addmirrormap(oldMap, newMap, newName, time, backMap, miniMapId, posMX, posMY, range) end

---删除镜像地图
---* mapId 地图ID
---@param mapId string
---```lua
---local name_1 = name_1 and name_1 + 1 or 1
-----地图
---local oldMapId  = "0"
---local newMapId  = "0" .. getbaseinfo(actor, 2).. name_1  --新地图
---local mapName   = string.format("比奇[%d]",name_1)
---local mapTime   = 10   --地图持续时间
---local mapID= getbaseinfo(actor,3)
-----创建镜像地图
---local isSuccess=addmirrormap(oldMapId, newMapId, mapName, mapTime, mapID,1,333,333)
---if isSuccess then
---    delmirrormap(newMapId)
---    release_print("删除镜像地图 ")
---end
---```
function delmirrormap(mapId) end

---获取/设置 镜像地图剩余时间
---* mapId 地图ID
---* time 设置地图有效时间
---@param mapId string
---@param time integer
---@return integer "返回地图有效时间"
---```lua
---local name_1 = name_1 and name_1 + 1 or 1
-----地图
---local oldMapId  = "0"
---local newMapId  = "0" .. getbaseinfo(actor, 2).. name_1  --新地图
---local mapName   = string.format("比奇[%d]",name_1)
---local mapTime   = 10   --地图持续时间
---local mapID= getbaseinfo(actor,3)
-----创建镜像地图
---local isSuccess=addmirrormap(oldMapId, newMapId, mapName, mapTime, mapID,1,333,333)
---if isSuccess then
---    local leftTime=mirrormaptime(newMapId)
---    release_print("获取/设置 镜像地图剩余时间,剩余 ",leftTime)
---end
---```
function mirrormaptime(mapId, time) end

---检测镜像地图是否存在
---* mapId 地图ID
---@param mapId string
---@return boolean "是否存在"
---```lua
---local name_1 = name_1 and name_1 + 1 or 1
-----地图
---local oldMapId  = "0"
---local newMapId  = "0" .. getbaseinfo(actor, 2).. name_1  --新地图
---local mapName   = string.format("比奇[%d]",name_1)
---local mapTime   = 10   --地图持续时间
---local mapID= getbaseinfo(actor,3)
-----创建镜像地图
---local isSuccess=addmirrormap(oldMapId, newMapId, mapName, mapTime, mapID,1,333,333)
---local isLive=checkmirrormap(newMapId)
---release_print("检测镜像地图是否存在",isLive)
---```
function checkmirrormap(mapId) end

---添加地图特效
---* id 特效播放ID，用于区分多个地图特效
---* mapId 地图ID
---* X 坐标X
---* Y 坐标Y
---* effId 特效ID
---* time 持续时间（秒）<br>0/-1不限时间
---* mode 模式:(0~4，0所有人可见，1自己可见，2组队可见，3行会成员可见，4敌对可见)
---* actor 玩家对象<br>模式1~4需填
---* effectModel 特效播放模式<br>0=在人物/怪物后面<br>1=在人物/怪物前面
---@param id integer
---@param mapId string
---@param X integer
---@param Y integer
---@param effId integer
---@param time integer
---@param mode integer
---@param actor number|string
---@param effectModel integer
---```lua
---local mapID = getbaseinfo(actor,3)
---local x = getbaseinfo(actor,4)
---local y = getbaseinfo(actor,5)
---mapeffect(2001,mapID,x,y,100000,900,0)
---```
function mapeffect(id, mapId, X, Y, effId, time, mode, actor, effectModel) end

---删除地图特效
---* id 特效播放ID
---@param id integer
---```lua
---delmapeffect(2001)
---```
function delmapeffect(id) end

---在地图上放置物品
---* actor 玩家对象
---* mapId 地图ID
---* X 坐标X
---* Y 坐标Y
---* range 范围
---* itemName 物品名
---* count 数量
---* time 时间（秒）
---* hint 是否掉落提示
---* take 是否立即拾取
---* onlySelf 仅自己拾取
---* xyinOrder true-按位置顺序，<br>true-随机位置
---* overlap 单个物品叠加数量，装备无效
---* isAuto true=可自动拾取<br>false=不可自动拾取<br>(onlyself=true时生效)
---@param actor number|string
---@param mapId string
---@param X integer
---@param Y integer
---@param range integer
---@param itemName string
---@param count integer
---@param time integer
---@param hint boolean
---@param take boolean
---@param onlySelf boolean
---@param xyinOrder boolean
---@param overlap integer
---@param isAuto boolean
---```lua
---local mapID = getbaseinfo(actor,3)
---local x = getbaseinfo(actor,4)
---local y = getbaseinfo(actor,5)
---throwitem(actor,mapID,x+1,y+1,5,"木剑",1,20,false,false,true,false)
---```
function throwitem(actor, mapId, X, Y, range, itemName, count, time, hint, take, onlySelf, xyinOrder, overlap, isAuto) end

---在地图上生成掉落物品
---* mapId 地图id
---* actor 归属对象<br>填nil则无归属<br>且拾取cd时间会被设置为0
---* X x坐标
---* Y y坐标
---* json 掉落json
---* data 物品来源(参考设置物品来源)
---@param mapId integer
---@param actor number|string
---@param X integer
---@param Y integer
---@param json string
---@param data string
---@return table "物品makeindex列表"
---```lua
---local items = {
---    ["木剑"] = 100,
---    ["金币"] = 996,
---}
---local data = {
---    ["map"] = mapID, --地图号
---    ["source"] = 5, --来源：1-GM生成，2-NPC，3-商城，4-NPC商店, 5-怪物掉落，6-系统给["与，7-挖矿，8-批量生成，9-宝箱
---    ["mon"] = "白野猪", --掉落的怪物
---    ["player"] = "玩家人物名称qf",
---    -- ["time"]=os.date("%Y-%m-%d %H:%M:%S", os.time()), --掉落或生成的时间，为空时，设置为系统时间
---}
---local itemList = gendropitem(mapID,actor,x,y,tbl2json(items),tbl2json(data))
----- local itemList = gendropitem(mapID,nil,x,y,tbl2json(items),tbl2json(data))
---```
function gendropitem(mapId, actor, X, Y, json, data) end

---清理地图上指定名字的物品
---* mapId 地图ID
---* X 坐标X
---* Y 坐标Y
---* range 范围
---* itemName 物品名
---@param mapId string
---@param X integer
---@param Y integer
---@param range integer
---@param itemName string
---```lua
---local function getMapIDXY(actor)
---local mapID = getbaseinfo(actor, 3)
---local x = getbaseinfo(actor, 4)
---local y = getbaseinfo(actor, 5)
---return mapID, x, y
---end
---
---local mapID, x, y = getMapIDXY(actor)
---clearitemmap(mapID, x, y, 100, "木剑")
---```
function clearitemmap(mapId, X, Y, range, itemName) end

---设定地图定时器
---* mapId 地图ID
---* index 计时器ID
---* second 时长（秒）
---* func 触发跳转的函数(多参数用逗号分割)
---@param mapId string
---@param index integer
---@param second integer
---@param func string
---```lua
---setenvirontimer(0,1,10,"@test_jump,aaa,bbb")
---
---
---
---[[跳转函数参数1为系统对象,传递的参数从参数2开始]]
---function test_jump(sysobj,...)
---    release_print(...)
---end
---```
function setenvirontimer(mapId, index, second, func) end

---关闭地图定时器
---* mapId 地图ID
---* index 计时器ID
---@param mapId string
---@param index integer
---```lua
---local mapID= getbaseinfo(actor,3)
---setenvirofftimer(mapID,1)
---release_print("关闭地图定时器")
---```
function setenvirofftimer(mapId, index) end

---判断地图定时器是否存在
---* mapId 地图id
---* timerId 计时器id
---@param mapId string
---@param timerId integer
---@return boolean "true=存在 false=不存在"
---```lua
---local mapID = getbaseinfo(actor,3)
---local isHave=hasenvirtimer(mapID,1)
---release_print("判断地图定时器是否存在",isHave)
---```
function hasenvirtimer(mapId, timerId) end

---获取地图上指定范围内的对象
---* mapId 地图ID
---* X 坐标X
---* Y 坐标Y
---* range 范围
---* flag 标记值，二进制位表示：<br>1-玩家，2-怪物<br>4-NPC，8-物品<br>~~16-地图事件(不可用)~~<br>32-人形怪<br>64-英雄<br>128-分身
---@param mapId string
---@param X integer
---@param Y integer
---@param range integer
---@param flag integer
---@return table "对象列表"
---```lua
---local mapID = getbaseinfo(actor,3)
---local x = getbaseinfo(actor,4)
---local y = getbaseinfo(actor,5)
---local objList=getobjectinmap(mapID,x,y,10,2)
---release_print(tbl2json(objList),"获取地图上指定范围内的对象")
---```
function getobjectinmap(mapId, X, Y, range, flag) end

---获取怪物位置及复活时间(仅支持小地图上提示的怪物)
---* mapId 地图ID
---* model 0=屏蔽数字<br>1=不屏蔽数字
---@param mapId string
---@param model integer
---@return string "怪物Json数据"
---```lua
---// 返回结果示例：
---{"mon":[{"name":"火龙神","x":476,"y":484,"time":0},{"name":"火龙神","x":359,"y":409,"time":0}],"count":2}
---// 其中time=0时表示，怪物已经复活，大于0时表示怪物将于N秒后复活
---```
function getmonrefresh(mapId, model) end

---增加动态地图连接
---* name 连接名称
---* mapFrom 地图ID
---* X1 X(小于0时随机坐标)
---* Y1 Y(小于0时随机坐标)
---* range 范围
---* mapTo 到达地图号
---* X2 到达地图X(小于0时随机坐标)
---* Y2 到达地图Y(小于0时随机坐标)
---* time 有效时间秒
---@param name string
---@param mapFrom string
---@param X1 integer
---@param Y1 integer
---@param range integer
---@param mapTo string
---@param X2 integer
---@param Y2 integer
---@param time integer
---@return boolean "是否添加成功"
---```lua
---local mapID = getbaseinfo(actor,3)
---addmapgate("测试",mapID,333,333,10,"ey3",333,333,100)
---```
function addmapgate(name, mapFrom, X1, Y1, range, mapTo, X2, Y2, time) end

---获取动态地图连接
---* name 连接名称
---* mapFrom 地图ID
---@param name string
---@param mapFrom string
---@return table "返回table结果： result[1]-X坐标（int） result[2]-Y坐标（int） result[3]-目标地图（string） result[4]-目标地图X坐标（int） result[5]-目标地图Y坐标（int）"
---```lua
---local mapID = getbaseinfo(actor,3)
---local data=getmapgate("测试",mapID)
---release_print(tbl2json(data),"获取动态地图连接")
---```
function getmapgate(name, mapFrom) end

---删除动态地图连接
---* name 连接名称
---* mapId 地图ID
---@param name string
---@param mapId string
---```lua
---local mapID = getbaseinfo(actor,3)
---delmapgate("测试",mapID)
---```
function delmapgate(name, mapId) end

---根据名称获取地图基础信息
---* mapId 地图id
---* nIndex 0：地图宽<br>1：地图高<br>2: 地图编号<br>3: 地图名称<br>4: 小地图编号<br>5: 地图参数(对应mapflag)<br>6: 背景音乐
---@param mapId string
---@param nIndex integer
---@return integer "返回地图基础信息"
---```lua
---local mapID = getbaseinfo(actor,3)
---local mapInfo=getmapinfo(mapID,0)
---release_print("根据名称获取地图基础信息",mapInfo)
---```
function getmapinfo(mapId, nIndex) end

---判断地图坐标是否为空
---* mapid 地图id
---* nX 地图x坐标
---* nY 地图y坐标
---@param mapid string
---@param nX integer
---@param nY integer
---@return boolean "返回地图坐标是否为空"
---```lua
---local mapID = getbaseinfo(actor,3)
---local isEmpty=isemptyinmap(mapID,100,100)
---release_print("判断地图坐标是否为空",isEmpty)
---```
function isemptyinmap(mapid, nX, nY) end

---获取地图指定范围内的怪物对象列表
---* mapId 地图Id
---* monName 怪物名，为空 or * 为检测所有怪
---* nX 坐标X
---* nY 坐标Y
---* nRange 范围
---@param mapId string
---@param monName string
---@param nX integer
---@param nY integer
---@param nRange integer
---@return number|string "怪物对象"
---```lua
---local mapID = getbaseinfo(actor,3)
---local x = getbaseinfo(actor,4)
---local y = getbaseinfo(actor,5)
---local data=getmapmon(mapID,"黑野猪",x,y,100)
---release_print(tbl2json(data),"获取地图指定范围内的怪物对象列表")
---```
function getmapmon(mapId, monName, nX, nY, nRange) end

---获取地图玩家对象列表
---* mapId 地图ID
---* bIgnoreDied 是否忽略死亡角色<br>1:忽略<br>0:不忽略
---* bIgnoreDummy 是否忽略假人<br>1:忽略<br>0:不忽略
---@param mapId string
---@param bIgnoreDied integer
---@param bIgnoreDummy integer
---@return table/string "存在玩家返回玩家列表 地图内无人返回”0”"
---```lua
---local players = getplaycount("0",1,1)
---release_print("players",type(players))
---for index, player in ipairs(type(players) == "table" and players or {}) do
---    release_print("player",index, getbaseinfo(player,1))
---end
---```
function getplaycount(mapId, bIgnoreDied, bIgnoreDummy) end

---获取指定地图玩家数量
---* actor 玩家对象<br>可传入系统对象"0"
---* mapId 地图ID
---* isAllGain 是否全部获取<br>0=全部获取<br>1=排除已死亡的
---@param actor number|string
---@param mapId string
---@param isAllGain integer
---@return integer "玩家数量"
---```lua
---local playerNum = getplaycountinmap("0","3",0)
---release_print("playerNum",playerNum)
---```
function getplaycountinmap(actor, mapId, isAllGain) end

---获取指定地图怪物数量
---* mapId 地图ID
---* monId 怪物id<br>传入-1获取所有怪物
---* isAllMon 是否忽略宝宝<br>true:忽略<br>false:不忽略
---@param mapId string
---@param monId integer
---@param isAllMon boolean
---@return integer "怪物数量"
---```lua
---local mapID = getbaseinfo(actor,3)
---local monNum=getmoncount(mapID,-1,false)
---release_print("获取指定地图怪物数量",monNum)
---```
function getmoncount(mapId, monId, isAllMon) end

---把某个地图中的玩家全部移动到另外一个地图
---* actor 玩家对象
---* aMapId 移动前地图Id
---* bMapId 移动后地图Id
---* X x坐标
---* Y y坐标
---* range 范围
---@param actor number|string
---@param aMapId string
---@param bMapId string
---@param X integer
---@param Y integer
---@param range integer
---```lua
---movemapplay(actor,0,3,333,333,5)
---```
function movemapplay(actor, aMapId, bMapId, X, Y, range) end

---设置地图杀怪经验倍数
---* actor 玩家对象
---* mapId 地图id( * 号表示所有地图)
---* much 倍率 为杀怪经验倍数，倍数除以100为真正的倍率(200 为 2 倍经验，150 为1.5倍,0表示关闭地图的杀怪经验倍数)
---@param actor number|string
---@param mapId string
---@param much integer
---```lua
---local mapID = getbaseinfo(actor,3)
---mapkillmonexprate(actor,mapID,3000)
---```
function mapkillmonexprate(actor, mapId, much) end

---随机杀死地图中的怪物
---* mapId 地图Id
---* monsterName 怪物名字
---* num 数量(1-255)
---* isDrop 是否掉落物品<br> 0=掉落<br> 1=不掉落
---@param mapId string
---@param monsterName string
---@param num integer
---@param isDrop integer
---```lua
---local mapID = getbaseinfo(actor,3)
---randomkillmon(mapID,"黑野猪",3,0)
---```
function randomkillmon(mapId, monsterName, num, isDrop) end

---编组地图传送
---* actor 玩家对象
---* mapId 地图ID
---* X x坐标
---* Y y坐标
---* level 可以传送最低等级(可以为空，为空时不检测队员的等级直接传送)
---* value 传送范围。（以队长为中心传送队友，0为不需要范围）
---* obj 触发字段(可以为空)
---@param actor number|string
---@param mapId string
---@param X integer
---@param Y integer
---@param level integer
---@param value integer
---@param obj number|string
---```lua
---groupmapmove(actor,3,333,333,nil,0,"testjump")
---function testjump(actor)
---    release_print("testjump",getbaseinfo(actor,1))
---end
---```
function groupmapmove(actor, mapId, X, Y, level, value, obj) end

---根据地图id返回地图名
---* mapId 地图Id
---@param mapId string
---@return string "地图名"
---```lua
---getmapname(mapId)
---```
function getmapname(mapId) end

---检测地图逻辑格
---* mapId 地图Id
---* x x坐标
---* y y坐标
---* type 逻辑格类型:<br>1.能否到达;<br>2.安全区;<br>3.攻城区;
---@param mapId string
---@param x integer
---@param y integer
---@param type integer
---@return boolean "地图逻辑格的实际属性是否与指定属性类型相同 true:相同 false:不相同"
---```lua
---local mapID = getbaseinfo(actor,3)
---local x = getbaseinfo(actor,4)
---local y = getbaseinfo(actor,5)
---local isSame=gridattr(mapID,x,y,1)
---release_print("检测地图逻辑格",isSame)
---```
function gridattr(mapId, x, y, type) end

---获取当前地图行会成员数量
---* mapId 地图编号
---* guildName 行会名字或 * (等于未加入行会角色)
---@param mapId string
---@param guildName string
---```lua
---local num = maphanghcyguild(3,"*")
---```
function maphanghcyguild(mapId, guildName) end

---获取当前地图怪物状态
---* mapId 地图编号
---* monName 怪物名称，*表示所有怪物
---* model 怪物名字格式<br>0=显示名称(不带数字)<br>1=表内名称(带数字)
---* param 0=获取表格内刷的怪物状态<br>1=获取表格内和脚本刷的怪物状态
---@param mapId string
---@param monName string
---@param model integer
---@param param? integer
---@return table "地图怪物状态"
---```tips
---注意:
---刷怪表cfg_mongen.xls 第7列第10列字段必须填1，(脚本刷的怪剩余刷新时间都为0，多只相同名字的怪死亡后 只能获取到一只的信息)
---cfg_monster.xls表23列是否是boss字段必须填1
---返回值说明:
---怪物名称#剩余HP百分比#剩余刷新时间（单位秒，存在的怪物刷新时间为0）#当前X坐标#当前Y坐标#归属玩家名字
---```
---```lua
---local info = mapbossinfo(mapID,"*",1)
---release_print("地图怪物状态",tbl2json(info))
---```
function mapbossinfo(mapId, monName, model, param) end

---开启/关闭地图参数
---* mapId 地图编号
---* mapEvent 地图参数,参考mapinfo.txt配置说明
---* model1 不填表示关闭此地图参数，填地图参数里的需要的参数<br>不需要传参的地图事件也需要传入一个值
---* param2 地图参数里的需要的参数
---@param mapId string
---@param mapEvent string
---@param model1 string
---@param param2 string
---```lua
-----开启地图事件,3号地图全局每5秒加100点
---setmapmode(3,"INCHP","5" ,"-100")
-----关闭间隔扣血地图事件
---setmapmode(3,"INCHP")
---
---
-----开启地图事件,3号地图禁止喊话
---setmapmode(3,"QUIZ","这代表任意值")
-----关闭禁止喊话地图事件
---setmapmode(3,"QUIZ")
---```
function setmapmode(mapId, mapEvent, model1, param2) end

---增加天气
---* mapId 地图ID
---* model 天气效果<br>1=黄沙效果<br>2=花瓣效果<br>3=下雪效果
---* time 有效时间(秒)
---@param mapId string
---@param model integer
---@param time integer
---```lua
---local mapID = getbaseinfo(actor,3)
---setweathereffect(mapID,2,10 )
---```
function setweathereffect(mapId, model, time) end

---删除天气
---* mapId 地图ID
---* model 天气效果<br>0=关闭所有效果<br>1=黄沙效果<br>2=花瓣效果<br>3=下雪效果
---@param mapId string
---@param model integer
---```lua
---local mapID = getbaseinfo(actor,3)
---delweathereffect(mapID,0 )
---```
function delweathereffect(mapId, model) end

---获取当前地图随机xy坐标
---* actor 玩家对象
---* mapid 地图id
---@param actor number|string
---@param mapid string
---@return integer, integer "x,y"
---```lua
---GetMapRandXY(actor,mapid)
---```
function GetMapRandXY(actor, mapid) end

---设置杀怪经验倍数
---* actor 玩家对象
---* rate 倍率<br>倍数除以100为真正的倍率(200 为 2 倍经验，150 为1.5倍)
---* time 有效时间
---@param actor number|string
---@param rate number
---@param time number
---```lua
---killmonexprate(actor,500,3000)
---```
function killmonexprate(actor, rate, time) end

-- [Source: 接口^定时器.lua]

---添加全局定时器
---* id 定时器ID
---* tick 执行间隔，秒
---@param id integer
---@param tick integer
---```lua
---setontimerex(23, 5)
---
---
-----触发函数为ontimerex 拼接 定时器id
---function ontimerex23()
---end
---```
function setontimerex(id, tick) end

---移除定时器
---* id 定时器ID
---@param id integer
---```lua
---setofftimerex(23)
---```
function setofftimerex(id) end

---判断全局定时器是否存在
---* timerId 计时器id
---@param timerId integer
---@return boolean "true=存在 false=不存在"
---```lua
---hastimerex(timerId)
---```
function hastimerex(timerId) end

---添加个人定时器
---* actor 玩家对象
---* id 定时器ID
---* runTick 执行间隔，秒
---* runTime 执行次数，>0执行完成后，自动移除
---@param actor number|string
---@param id integer
---@param runTick integer
---@param runTime integer
---```lua
---setontimer(actor, 1, 5, 1)
---
---
---
-----触发函数为ontimer 拼接 定时器id
---function ontimer1(actor)
---end
---```
function setontimer(actor, id, runTick, runTime) end

---移除个人定时器
---* actor 玩家对象
---* id 定时器ID
---@param actor number|string
---@param id integer
---```lua
---setofftimer(actor, 1)
---```
function setofftimer(actor, id) end

---判断玩家定时器是否存在
---* actor 玩家对象
---* timerId 计时器id
---@param actor number|string
---@param timerId integer
---@return boolean "true=存在 false=不存在"
---```lua
---hastimer(actor,timerId)
---```
function hastimer(actor, timerId) end

-- [Source: 接口^宠物相关.lua]

---创建宠物
---* actor 玩家对象
---* monName 自定义怪物名称
---* level 怪物等级
---@param actor number|string
---@param monName string
---@param level integer
---```lua
---createpet(actor,"小狐狸",1)
---release_print("创建宠物" )
---```
function createpet(actor, monName, level) end

---召唤宠物
---* actor 玩家对象
---* index 宠物序号
---@param actor number|string
---@param index integer
---```lua
---recallpet(actor,0)
---release_print("召唤宠物" )
---```
function recallpet(actor, index) end

---获取宠物
---* actor 玩家对象
---* index 宠物序号或’X’表示当前宠物
---@param actor number|string
---@param index integer|string
---@return number|string "返回宠物对象"
---```lua
---local pet=getpet(actor,1)
-----local pet=getpet(actor,"X")
---release_print("获取宠物",pet )
---```
function getpet(actor, index) end

---收回宠物
---* actor 玩家对象
---* index 宠物序号
---@param actor number|string
---@param index integer
---```lua
---unrecallpet(actor,0)
---release_print("收回宠物" )
---```
function unrecallpet(actor, index) end

---删除宠物
---* actor 玩家对象
---* index 宠物序号
---@param actor number|string
---@param index integer
---```lua
---delpet(actor,0)
---release_print("删除宠物" )
---```
function delpet(actor, index) end

---宠物穿装备
---* actor 玩家对象
---* index 宠物序号
---* item 装备名称，多个装备用#分隔
---@param actor number|string
---@param index integer
---@param item string
---```lua
---pettakeon(actor,0,"木剑")
---release_print("宠物穿装备" )
---```
function pettakeon(actor, index, item) end

---宠物脱装备
---* actor 玩家对象
---* index 宠物序号
---* item 装备名称，多个装备用#分隔，-1表示脱下全部装备
---@param actor number|string
---@param index integer
---@param item integer|string
---```lua
---pettakeoff(actor,0,-1)
---release_print("宠物脱装备" )
---```
function pettakeoff(actor, index, item) end

---获取宠物数量
---* actor 玩家对象
---@param actor number|string
---@return integer "宠物数量"
---```lua
---local petNum=getpetcount(actor)
---release_print("获取宠物数量" ,petNum)
---```
function getpetcount(actor) end

---获取宠物身上装备列表
---* actor 玩家对象
---* index 宠物序号
---@param actor number|string
---@param index integer
---```lua
---local data=getpetbodyitem(actor,0)
---release_print(data,"获取宠物身上装备列表" )
---```
function getpetbodyitem(actor, index) end

---设置宠物模式
---* actor 玩家对象
---* mode 宠物模式:<br>1-跟随;<br>2-攻击;<br>3-被动(被攻击时才设定目标);<br>4-休息
---@param actor number|string
---@param mode integer
---```lua
---setpetmode(actor,2)
---release_print("设置宠物模式" )
---```
function setpetmode(actor, mode) end

---获取宠物状态
---* actor 玩家对象
---* index 宠物序号
---@param actor number|string
---@param index integer
---@return integer "宠物状态： 0-收回状态， 1-召唤出状态， 2-死亡状态"
---```lua
---local petCondition=petstate(actor,0)
---release_print("获取宠物状态",petCondition )
---```
function petstate(actor, index) end

---增加宠物属性
---* actor 玩家对象
---* index 宠物序号
---* attrName 自定义属性组名
---* opt 操作符 + - =
---* attr 属性字符串
---@param actor number|string
---@param index integer
---@param attrName string
---@param opt string
---@param attr string
---```lua
---addpetattlist(actor,0,"属性3","=","3#1#100000|3#3#100000|3#4#100000", 1)
---release_print("增加宠物属性" )
---```
function addpetattlist(actor, index, attrName, opt, attr) end

---清除宠物属性
---* actor 玩家对象
---* index 宠物序号
---* attrName 装备清空对应属性组的属性;<br>nil=清除所有属性组对象
---@param actor number|string
---@param index integer
---@param attrName string
---```lua
---delpetattlist(actor,0,"属性3")
---release_print("清除宠物属性" )
---```
function delpetattlist(actor, index, attrName) end

---置换宠物属性
---* actor 玩家对象
---* index 宠物序号
---* monIndex 怪物IDX
---@param actor number|string
---@param index integer
---@param monIndex integer
---```lua
---petmon(actor,0,1393)
---release_print("置换宠物属性" )
---```
function petmon(actor, index, monIndex) end

---改变宠物外观
---* actor 玩家对象
---* petIndex 宠物序号,X表示当前宠物
---* appr 怪物外观ID(怪物Appr)<br>0=还原
---@param actor number|string
---@param petIndex integer|string
---@param appr integer
---```lua
---setpetappr(actor,0,3)
---release_print("改变宠物外观" )
---```
function setpetappr(actor, petIndex, appr) end

---增加宠物攻击表现
---* actor 玩家对象
---* index 宠物序号或’X’表示当前宠物
---* skillId 增加的攻击表现ID，为cfg_monattack表中的ID
---@param actor number|string
---@param index integer
---@param skillId integer
---```lua
---addpetskill(actor,0,13)
---release_print("增加宠物攻击表现" )
---```
function addpetskill(actor, index, skillId) end

---获取宠物蛋信息
---* actor 玩家对象
---* itemMakeIndex 物品MakeIndex
---* type 需要返回的数值<br>1-转生等级;<br>2-等级;<br>3-经验;<br>0-同时返回三个值
---@param actor number|string
---@param itemMakeIndex string
---@param type integer
---@return integer "宠物蛋信息"
---```lua
---local petInfo=getpetegglevel(actor,itemMakeIndex,2)
---release_print("获取宠物蛋信息",petInfo )
---```
function getpetegglevel(actor, itemMakeIndex, type) end

---设置宠物蛋等级
---* actor 玩家对象
---* itemMakeIndex 物品MakeIndex
---* level 等级，-1表示不修改值
---* zLevel 转生等级，-1表示不修改值
---* exp 经验值，-1表示不修改值
---@param actor number|string
---@param itemMakeIndex string
---@param level integer
---@param zLevel integer
---@param exp integer
---```lua
---setpetegglevel(actor,itemMakeIndex,5,-1,-1)
---release_print("设置宠物蛋等级" )
---```
function setpetegglevel(actor, itemMakeIndex, level, zLevel, exp) end

---返回复活的宠物对象
---* actor 玩家对象
---* index 宠物序号
---* nHp 复活后的HP量
---* type 0-绝对值，1-百分比
---@param actor number|string
---@param index integer
---@param nHp integer
---@param type integer
---```lua
---local petObj=realivepet(actor,0,99,0)
---release_print("返回复活的宠物对象",petObj )
---```
function realivepet(actor, index, nHp, type) end

---收回宠物为物品
---* actor 玩家对象
---* index 宠物序号
---@param actor number|string
---@param index integer
---```lua
---retractpettoitem(actor,0)
---release_print("收回宠物为物品" )
---```
function retractpettoitem(actor, index) end

---清除宠物所有技能
---* actor 玩家对象
---* index 宠物序号
---@param actor number|string
---@param index integer
---```lua
---ClearPetSkill(actor,index)
---```
function ClearPetSkill(actor, index) end

-- [Source: 接口^对象通用.lua]

---解析文本
---* text 文本内容
---* actor 玩家对象
---@param text string
---@param actor number|string
---@return string "文本"
---```tips
---不推荐使用
---```
---```lua
---local petIdx=1
---local str=parsetext("删除前-MAXHP-",actor)
---release_print("解析文本",str)
---```
function parsetext(text, actor) end

---获取人物/怪物 相关信息
---* object 玩家/怪物 对象
---* nID 类型(详见说明)
---* param3 参数3<br>(仅ID=1时，可用)
---@param object number|string
---@param nID integer
---@param param3? integer
---@return any "返回值"
---```tips
---说明
---nID对应值分别为：
----1=是否玩家 (true:玩家)
---0=是否死亡 (true:死亡状态)
---1=对象名称 (返回值字符型)，当对象为怪物时，param3=0/nil，返回怪物显示名(即去除了尾部的数字)，param3=1时返回怪物默认名(怪物表中配置的名字)，param3=2时返回怪物实际名(游戏内实际展示的名字)
---2=对象唯一ID ?(返回值字符型) = userid
---3=对象当前地图ID (返回值字符型)
---4=对象当前X坐标
---5=对象当前Y坐标
---6=对象当前等级
---7=对象当前职业 (0-战 1-法 2-道)
---8=对象当前性别
---9=对象当前血量(HP)
---10=对象当前血量上限(MAXHP)
---11=对象当前蓝量(MP)
---12=对象当前蓝量上限(MAXMP)
---13=对象当前经验(Exp)
---14=对象当前经验上限(MaxExp)
---15=对象物防下限
---16=对象物防上限
---17=对象魔防下限
---18=对象魔防上限
---19=对象物攻下限
---20=对象物攻上限
---21=对象魔攻下限
---22=对象魔攻上限
---23=对象道攻下限
---24=对象道攻上限
---25=对象幸运值
---26=对象HP恢复
---27=对象MP恢复
---28=对象中毒恢复
---29=毒物躲避
---30=对象魔法躲避
---//31=对象准确(无法设置)
---32=对象敏捷
---33=发型
---34=背包物品数量(仅人物)
---35=队伍成员数量(仅人物)
---36=行会名(仅人物)
---37=是否会长(仅人物)
---38=宠物数量
---39=转生等级(仅人物)
---40=杀怪经验倍数(仅人物)
---41=杀怪经验时间(仅人物)
---42=显示延时TIMERECALL还剩多少秒(仅人物)
---43=人物杀怪爆率倍数(仅人物)
---44=复活时间
---45=地图名MAPTITLE
---46=PK点
---47=是否新人(仅人物)
---48=是否安全区
---49=是否摆摊中(仅人物)
---50=是否交易中(仅人物)
---51=自定义扩展属性，需要提供 参数3:属性ID(cfg_att_score.xls设置：1~161,200~399)
---52=穿人/怪方式 0=恢复/1=穿人/2=穿怪/3=穿人穿怪
---53=登录状态，0：正常，1：断线重连(仅人物)
---54=主人UserId
---55=Idx
---56=颜色(0~255)
---57=最后杀死的怪物Index(仅人物)
---58=时装显示状态(仅人物)
---59=主人对象
---60=是否在攻沙/攻城区域(bool)
---61=是否为离线挂机状态(bool)
---62=获取怪物表自定义常量(25列)
---63=人物背包大小
---64=获取对象当前的身体颜色值
---65=获取对象的回城地图
---67=获取对象的攻击对象
---68=怪物归属对象
---69=获取对象当前的方向
---70=获取对象国家
---71=获取属性的当前值(1/HP,2/MP,94/负重,96/装备负重,98/腕力,100/内力值,105/斗转星移值,150/经验值,156/内功经验,159/背包大小)
---```
---```lua
--- local base_cfg = {
---     {idx = -1, desc = "是否玩家"},
---     {idx = 0, desc = "是否死亡"},
---     {idx = 1, desc = "对象名称"},
---     {idx = 2, desc = "对象唯一ID"},
---     {idx = 3, desc = "对象当前地图ID"},
---     {idx = 4, desc = "对象当前X坐标"},
---     {idx = 5, desc = "对象当前Y坐标"},
---     {idx = 6, desc = "对象当前等级"},
---     {idx = 7, desc = "对象当前职业(0-战 1-法 2-道)"},
---     {idx = 8, desc = "对象当前性别(0-男 1-女)"},
---     {idx = 9, desc = "对象当前血量(HP)"},
---     {idx = 10, desc = "对象当前血量上限(MAXHP)"},
---     {idx = 11, desc = "对象当前蓝量(MP)"},
---     {idx = 12, desc = "对象当前蓝量上限(MAXMP)"},
---     {idx = 13, desc = "对象当前经验(Exp)"},
---     {idx = 14, desc = "对象当前经验上限(MaxExp)"},
---     {idx = 15, desc = "对象物防下限"},
---     {idx = 16, desc = "对象物防上限"},
---     {idx = 17, desc = "对象魔防下限"},
---     {idx = 18, desc = "对象魔防上限"},
---     {idx = 19, desc = "对象物攻下限"},
---     {idx = 20, desc = "对象物攻上限"},
---     {idx = 21, desc = "对象魔攻下限"},
---     {idx = 22, desc = "对象魔攻上限"},
---     {idx = 23, desc = "对象道攻下限"},
---     {idx = 24, desc = "对象道攻上限"},
---     {idx = 25, desc = "对象幸运值"},
---     {idx = 26, desc = "对象HP恢复"},
---     {idx = 27, desc = "对象MP恢复"},
---     {idx = 28, desc = "对象中毒恢复"},
---     {idx = 29, desc = "毒物躲避"},
---     {idx = 30, desc = "对象魔法躲避"},
---     {idx = 32, desc = "对象敏捷"},
---     {idx = 33, desc = "发型"},
---     {idx = 34, desc = "背包物品数量"},
---     {idx = 35, desc = "队伍成员数量"},
---     {idx = 36, desc = "行会名"},
---     {idx = 37, desc = "是否会长"},
---     {idx = 38, desc = "宠物数量"},
---     {idx = 39, desc = "转生等级"},
---     {idx = 40, desc = "杀怪经验倍数"},
---     {idx = 41, desc = "杀怪经验时间"},
---     {idx = 42, desc = "显示延时TIMERECALL还剩多少秒"},
---     {idx = 43, desc = "人物杀怪爆率倍数"},
---     {idx = 44, desc = "复活时间"},
---     {idx = 45, desc = "地图名MAPTITLE"},
---     {idx = 46, desc = "PK点"},
---     {idx = 47, desc = "是否新人"},
---     {idx = 48, desc = "是否安全区"},
---     {idx = 49, desc = "是否摆摊中"},
---     {idx = 50, desc = "是否交易中"},
---     {idx = 51, desc = "自定义扩展属性，需要提供 参数3:属性ID(cfg_att_score.xls设置：1~161,200~399)", params = {1}},
---     {idx = 52, desc = "穿人/怪方式"},
---     {idx = 53, desc = "登录状态(0：正常，1：断线重连)"},
---     {idx = 54, desc = "主人UserId"},
---     {idx = 55, desc = "Idx"},
---     {idx = 56, desc = "颜色"},
---     {idx = 57, desc = "最后杀死的怪物Index"},
---     {idx = 58, desc = "时装显示状态"},
---     {idx = 59, desc = "主人对象"},
---     {idx = 60, desc = "是否在攻沙/攻城区域"},
---     {idx = 61, desc = "是否为离线挂机状态"},
---     {idx = 62, desc = "获取怪物表自定义常量"},
---     {idx = 63, desc = "人物背包大小"},
---     {idx = 64, desc = "获取对象当前的身体颜色值"},
---     {idx = 65, desc = "获取对象的回城地图"},
---     {idx = 67, desc = "获取对象的攻击对象"},
---     {idx = 68, desc = "怪物归属对象"},
---     {idx = 69, desc = "获取对象当前的方向"},
---     {idx = 70, desc = "获取对象国家"},
---     {idx = 71, desc = "获取对象属性的当前值，需要提供 参数3:属性ID(支持的属性ID有1,2,94,96,98,100,105,150,156,159)", params = {1}},
--- }
--- for _, v in ipairs(base_cfg) do
---     local idx = v.idx
---     local desc = v.desc
---     local params = v.params or {}
---     local ret = getbaseinfo(actor, idx, table.unpack(params))
---     local _type = type(ret)
---     if _type == "table" then
---         ret = tbl2json(ret)
---     end
---     release_print(string.format("%s[%s] 返回值: %s(%s)", desc, idx, ret, _type))
--- end
---```
function getbaseinfo(object, nID, param3) end

---设置人物/怪物相关信息
---* object 玩家对象
---* nID 类型（详见说明）
---* value 属性值
---@param object number|string
---@param nID integer
---@param value integer
---```tips
---nID对应值分别为：
---6：设置等级
---7: 职业
---8: 性别
---9: 当前HP
---11: 当前MP
---15=物防下限
---16=物防上限
---17=魔防下限
---18=魔防上限
---19=物攻下限
---20=物攻上限
---21=魔攻下限
---22=魔攻上限
---23=道攻下限
---24=道攻上限
---25=幸运值
---26=HP恢复
---27=MP恢复
---28=中毒恢复
---29=毒物躲避
---30=魔法躲避
---31=准确
---32=敏捷
---33: 发型
---39：转生等级（仅人物）
---40：杀怪经验倍数（仅人物）
---41：杀怪经验时间（仅人物）
---43：人物杀怪爆率倍数（仅人物）
---46：人物PK点（仅人物）
---50=行为方式，只针对宠物，包含多个行为时，求和（1：禁止攻击玩家，2：不可被攻击，4：优先攻击 玩家攻击对象，8：优先攻击 玩家受击对象，16：不可被玩家攻击，允许被怪攻击 ）
---51=叛变（仅怪物）
---52=穿人/怪方式 0=恢复/1=穿人/2=穿怪/3=穿人穿怪
---56=颜色（0~255）
---57=设置时装显示状态(仅人物)
---58=设置对象的身体颜色
---67=设置对象的攻击对象，参数3为对象，空，0，为清空目标 （object为玩家时无效）
---68=怪物归属对象
---69=设置对象当前的方向
---```
---```lua
---setbaseinfo(actor,7,2)
---release_print("设置人物/怪物相关信息")
---```
function setbaseinfo(object, nID, value) end

---对象是否存在
---* object 玩家/怪物 对象
---@param object number|string
---@return boolean "对象是否存在"
---```lua
---release_print("isnotnull-对象是否存在", isnotnull(object))
---```
function isnotnull(object) end

---判断对象是否为玩家
---* object 判断对象
---@param object number|string
---@return boolean "true=是玩家 false=不是玩家"
---```lua
---local isLive = isplayer(actor)
---release_print("判断对象是否为玩家", isLive)
---```
function isplayer(object) end

---判断对象是否为人形怪
---* object 判断对象
---@param object number|string
---@return boolean "true=是人形怪 false=不是人形怪"
---```lua
---local isLive = isplaymon(actor)
---release_print("判断对象是否为人形怪", isLive)
---```
function isplaymon(object) end

---判断对象是否为宝宝
---* object 判断对象是否为宝宝
---@param object number|string
---@return boolean "true=是宝宝 false=不是宝宝"
---```lua
---local isLive = ismob(actor)
---release_print("判断对象是否为宝宝", isLive)
---```
function ismob(object) end

---判断对象是否为怪物
---* object 判断对象
---@param object number|string
---@return boolean "true=是怪物 false=不是怪物"
---```lua
---local isLive = ismon(actor)
---release_print("判断对象是否为怪物", isLive)
---```
function ismon(object) end

---改变 人/怪物 状态
---* object 玩家/怪物 对象
---* id 状态id(其他id无效)<br>0=绿毒;1=红毒<br>3=紫毒;5=麻痹<br>12=冰冻;13=蛛网
---* time 时间(秒)
---* value 威力，只针对绿毒有用
---* model 0=不进行防护的判断<br>1=判断防全毒、防麻痹、防冰冻、防蛛网状态
---@param object number|string
---@param id integer
---@param time integer
---@param value integer
---@param model integer
---```lua
-----绿毒
---makeposion(mon, 0, 10, 10)
-----紫毒,需自己在buff表配置颜色
---makeposion(actor,3,10)
---```
function makeposion(object, id, time, value, model) end

---检测 人/怪物 状态
---* object 玩家/怪物 对象
---* type 类型:<br>1.魔法盾<br>2.护体神盾<br>3.无极真气<br>4.幽灵盾<br>5.神圣战甲术<br>6.隐身术<br>7.冰冻<br>8.麻痹<br>9.锁定<br>10.蛛网<br>11.中毒<br>12.禁止行为
---* forbid 参数2=11,传入毒类型<br>0=全毒;1=绿毒;2=红毒;<br>==============<br>参数2=12,传入禁止行为<br>1=禁止走<br>2=禁止跑<br>3=禁止攻击<br>4=禁止施法<br>5=禁止使用物品<br>6=禁止说话<br>7=禁止飞<br>8=锁血
---@param object number|string
---@param type integer
---@param forbid integer
---@return boolean, integer "true：存在 false：不存在, 状态的剩余时间(禁止行为无法获取剩余时间)"
---```lua
---local bool,endTime = checkhumanstate(actor,8)
---if bool then
---    release_print("剩余时间", endTime)
---end
---
---
---local config = {
---    [1] = "禁止走",
---    [2] = "禁止跑",
---    [3] = "禁止攻击",
---    [4] = "禁止施法",
---    [5] = "禁止使用物品",
---    [6] = "禁止说话",
---    [7] = "禁止飞",
---    [8] = "锁血",
---}
---for i, state in ipairs(config) do
---    local bool = checkhumanstate(actor,12,i)
---    release_print("检测角色的禁止行为",bool,state)
---end
---```
function checkhumanstate(object, type, forbid) end

---使用脚本命令解毒（红绿毒）
---* object 玩家/怪物 对象
---* opt -1，解所有毒;0,绿毒;1,红毒;3,紫毒;5,麻痹;6,冰冻;7,蛛网
---@param object number|string
---@param opt integer
---```lua
---detoxifcation(actor,-1)
---release_print("使用脚本命令解毒（红绿毒）")
---```
function detoxifcation(object, opt) end

---回到最近经过的城市安全区
---* actor 玩家对象
---@param actor number|string
---```lua
---gohome(actor)
---```
function gohome(actor) end

---在线泡点经验
---* actor 玩家对象
---* eveTime 间隔时间
---* experience 经验
---* isSafe 是否安全区<br>(0为任何地方)
---* mapId 地图号（任何地图使用"*"）
---* opt 聚灵珠是否能获取经验<br>(0=不可以 1= 可以)
---* allTime 泡点获得经验的时间<br>时间：秒(上限100万秒)
---* level 等级(多少级以下获得经验)
---@param actor number|string
---@param eveTime integer
---@param experience integer
---@param isSafe integer
---@param mapId string
---@param opt integer
---@param allTime integer
---@param level integer
---```lua
-----地图3安全区内每1秒种得到10个经验点 泡经验时间为60秒 100级以下才可以泡经验
---setautogetexp(actor,1,10,1,"3",1,60,100)
---```
function setautogetexp(actor, eveTime, experience, isSafe, mapId, opt, allTime, level) end

---播放音乐声音
---* actor 玩家对象
---* index 播放文件的索引<br>对应声音配置表id(cfg_sound.xls)
---* times 循环播放次数
---* flag 播放模式:<br>0.播放给自己<br>1.播放给全服<br>2.播放给同一地图<br>4.播放给同屏人物
---@param actor number|string
---@param index integer
---@param times integer
---@param flag integer
---```lua
---playsound(actor,index,times,flag)
---```
function playsound(actor, index, times, flag) end

---表格转换成字符串
---* data 表
---@param data table
---@return string "相应字符串"
---```lua
---local cfg = {"a","b","c"}
---local str = tbl2json(cfg)
---
---release_print("str",str)
---```
function tbl2json(data) end

---字符串转换成表格
---* str 字符串
---@param str string
---@return table "转换后的表"
---```lua
---local str='["a","b","c"]'
---local cfg = json2tbl(str)
---for k, v in ipairs(cfg) do
---    release_print(k,v)
---end
---```
function json2tbl(str) end

---拉取客户端充值接口
---* actor 玩家对象
---* money 金额
---* type 充值方式：<br>1-支付宝，<br>2-花呗，<br>3-微信
---* falgId 充值货币ID
---* productId 产品ID
---@param actor number|string
---@param money integer
---@param type integer
---@param falgId integer
---@param productId integer
---```tips
---在游戏上架苹果商店时，产品ID需要与苹果后台申请的挡位配置保持一致。请根据实际申请的挡位填写相应的产品ID。没有上架苹果商城也可使用产品ID，配合服务端配置表[cfg_ChargeProduct.xls](https://engine-doc.996m2.com/server/index.php?s=/api/attachment/visitFile&sign=8cd6eefcef12d139c4723d82718f916e "[cfg_ChargeProduct.xls")。此配置表中的产品ID会在充值触发时返回。注意：当拉起充值传入了产品ID并且大于0时,系统会自动验证配置表中的货币类型和金额是否与参数2（货币类型）和参数4（金额）一致,验证失败将无法拉起充值。比如:你后台配置的货币ID为  1:10元宝   那么元宝的ID为2  那么下面的拉起充值填写ID 必须为2
---```
---```lua
---pullpay(actor,100,1,2)
---```
function pullpay(actor, money, type, falgId, productId) end

---执行GM命令
---* actor 玩家对象
---* GM GM命令
---* param1 GM命令参数1
---* param2 GM命令参数2
---* param3 GM命令参数3
---* param4 GM命令参数4
---* param5 GM命令参数5
---* param6 GM命令参数6
---* param7 GM命令参数7
---* param8 GM命令参数8
---* param9 GM命令参数9
---* param10 GM命令参数10
---@param actor number|string
---@param GM string
---@param param1 string
---@param param2 string
---@param param3 string
---@param param4 string
---@param param5 string
---@param param6 string
---@param param7 string
---@param param8 string
---@param param9 string
---@param param10 string
---```lua
---gmexecute(actor,"ForcedWallConQuestwar")
---```
function gmexecute(actor, GM, param1, param2, param3, param4, param5, param6, param7, param8, param9, param10) end

---播放屏幕特效
---* actor 玩家对象
---* id 创建的特效编号
---* effectId 特效ID
---* X 在屏幕上的X坐标
---* Y 在屏幕上的Y坐标
---* speed 播放速度
---* times 播放次数，0-持续播放
---* type 播放模式<br>0-自己<br>1-所有人
---@param actor number|string
---@param id integer
---@param effectId integer
---@param X integer
---@param Y integer
---@param speed integer
---@param times integer
---@param type integer
---```lua
---screffects(actor,999, 4004 ,550 ,300 ,1 ,0 ,0)
---release_print("播放屏幕特效")
---```
function screffects(actor, id, effectId, X, Y, speed, times, type) end

---关闭屏幕特效
---* actor 玩家对象
---* id 创建的特效编号
---* type 播放模式<br>0-自己<br>1-所有人
---@param actor number|string
---@param id integer
---@param type integer
---```lua
---deleffects(actor,999,0)
---release_print("关闭屏幕特效")
---```
function deleffects(actor, id, type) end

---获取常量
---* actor 玩家对象<br>可用`"0"`，取系统玩家对象
---* varName 常量名称，支持带尖括号和不带尖括号<$Name>或$Name
---@param actor number|string
---@param varName string
---```lua
---local serverName = getconst("0", "")
---local account = getconst(actor, "")
---release_print("获取常量",account,serverName)
---```
function getconst(actor, varName) end

---屏幕震动
---* actor 玩家对象
---* type 模式(0~4)<br>0.仅自己;<br>1.在线所有人;<br>2屏幕范围内人物;<br>3.当前地图上所有人;<br>4.指定地图上所有人;
---* level 震级(1~3)
---* num 次数
---* mapId 地图ID(模式等于4时，需要该参数)
---@param actor number|string
---@param type integer
---@param level integer
---@param num integer
---@param mapId integer
---```lua
---scenevibration(actor,0,1,1)
---```
function scenevibration(actor, type, level, num, mapId) end

---客户端复制
---* actor 玩家对象
---* str 文本内容
---@param actor number|string
---@param str string
---```lua
---mircopy(actor,str)
---```
function mircopy(actor, str) end

---游戏中打开网站
---* actor 玩家对象
---* web 网站
---@param actor number|string
---@param web string
---```lua
---openwebsite(actor,"www.baidu.com")
---release_print("游戏中打开网站")
---```
function openwebsite(actor, web) end

---MD5加密
---* str 需要加密的文本
---@param str string
---@return string "MD5加密值"
---```lua
---local str=md5str("www.baidu.com")
---release_print("MD5加密",str)
---```
function md5str(str) end

---等概率或者按权限随机获取分割字符串
---* str 需要获取随机的字符串
---* param1 0=系统权重随机,有几个字符串就是几份之一<br>1=按#位权重随机总权重为各项位权重的总和
---* param2 0=返回值都显示#权重数字<br>1=返回值都不显示#权重数字<br>2=返回值1显示,返回值2不显示<br>3=返回值2显示,返回值1不显示
---@param str string
---@param param1 integer
---@param param2 integer
---@return string "随机到的字符串"
---@return string "剩余的字符串"
---```lua
---local result1, result2 = ransjstr("测试1#2000|测试2#10000|测试3#5000", 1, 3)
---release_print("result1", result1, ", result2", result2)
---```
function ransjstr(str, param1, param2) end

---自定义日志
---* actor 玩家对象
---* logAct 日志ID<br>大于等于10000以上
---* logInfo 日志内容<br>支持变量,常量等
---* param1 整数型(可空)<br>最大支持21亿
---* param2 整数型(可空)<br>最大支持21亿
---* param3 整数型(可空)<br>最大支持21亿
---* param4 整数型(可空)<br>最大支持21亿
---* param5 整数型(可空)<br>最大支持21亿
---@param actor number|string
---@param logAct integer
---@param logInfo string
---@param param1 integer
---@param param2 integer
---@param param3 integer
---@param param4 integer
---@param param5 integer
---```lua
---logact(actor,10001,"玩家：通过日志测试扣除100元宝获得屠龙*1",1,2,3,4,5)
---```
function logact(actor, logAct, logInfo, param1, param2, param3, param4, param5) end

---日志上报接口
---* actor 玩家对象
---* jsonStr 日志json
---@param actor number|string
---@param jsonStr string
---```lua
---local str = parsetext(
---    string.format('{"event_name":"query_equip","map":{"servid":"","server_name":"","role_id":"","role_name":"","role_level":"","proType":"%s","equipName":"%s"}}',"装备", "木剑"),actor
---    )
---    senddiymsg(actor, str)
---    release_print("自定义日志" )
---```
function senddiymsg(actor, jsonStr) end

---打印脚本总耗时(微秒)
---* actor 玩家对象
---* onoff 1=开始计时<br>2=结束计时，并打印耗时信息
---@param actor number|string
---@param onoff integer
---```lua
---printusetime(actor,1)
---for i = 1, 100, 1 do
---    release_print("打印耗时",i)
---end
---printusetime(actor,2)
---```
function printusetime(actor, onoff) end

---前端勾选面板控制命令
---* actor 玩家对象
---* type 0=允许添加<br>1=允许交易<br>2=允许挑战<br>3=允许组队<br>4=允许查看<br>5=允许添加为行会成员
---* time 1=允许(勾选)<br>0=不允许(不勾选)(秒)
---@param actor number|string
---@param type integer
---@param time integer
---```lua
---for i = 0, 5 do
---    clientswitch(actor,i,1)
---end
---```
function clientswitch(actor, type, time) end

---拉起微信和qq等功能
---* actor 玩家对象
---* model 功能模式：<br>1：拉起 QQ<br>2：跳转 QQ 好友<br>3：跳转 QQ 群<br>4：拉起微信
---* param1 当model=2 时：填 QQ 号<br>当model=3 时：填 QQ 群号
---* param2 当model=3 时：填 QQ 群 Key
---@param actor number|string
---@param model integer
---@param param1 integer
---@param param2 string
---```lua
----- 示例 1：拉起 QQ
---sendforqqwx(actor, 1)
---
----- 示例 2：跳转至指定 QQ 好友
----- 参数 3：目标 QQ 号
---sendforqqwx(actor, 2, 2881xxxx84)
---
----- 示例 3：跳转至指定 QQ 群
----- 参数 3：QQ 群号
----- 参数 4：QQ 群 Key (Key 获取地址：https://qun.qq.com/join.html)
---sendforqqwx(actor, 3, 2881xxxx84, "https://qm.qq.com/cgi-bin/qm/qr?k=W_xxxx&jump_from=webapi&authKey=xxxx")
---
----- 示例 4：拉起微信
---sendforqqwx(actor, 4)
---```
function sendforqqwx(actor, model, param1, param2) end

---发送邮件
---* userId 玩家UserId，如果是玩家名，需要在前面加#，如:#张三
---* id 自定义邮件ID
---* label 邮件标题
---* memo 邮件内容
---* rewards 附件内容：物品1#数量#绑定标记&物品2#数量#绑定标记，&分组，#分隔绑定标记值参考物品帮助
---@param userId string
---@param id integer
---@param label string
---@param memo string
---@param rewards string
---```lua
----- 根据玩家的userId发送
---local userId = getbaseinfo(actor, 2)
---sendmail(userId, 1, "id测试", "物品发放", "木剑#2")
-----根据玩家的名字发送
---sendmail("#修改名称", 1, "名字测试", "物品发放", "木剑#2")
---```
function sendmail(userId, id, label, memo, rewards) end

---获取对象类型
---* object 对象
---@param object number|string
---@return integer "对象类型"
---```tips
---OBJ_GAMEPLAY          = 0;    //游戏玩家
---OBJ_HERO              = 1;    //英雄
---OBJ_GUARD             = 11;   //守卫
---OBJ_PET               = 5;    //宝宝，技能召唤的，或脚本生成的
---OBJ_NPC               = 50;   //NPC
---OBJ_MONSTER           = 51;   //怪物
---OBJ_DARTCAR           = 87;   //镖车
---OBJ_PICKUPMON         = 88;   //拾取精灵
---OBJ_MONPLAY           = 150;  //人形怪
---OBJ_CJMON             = 300;  //采集类怪
---OBJ_EVENTMON          = 200;  //事件类怪物，暂未实现
---OBJ_PETS              = 450;  //宠物，宠物系统创建的
---```
---```lua
---local itype=GetObjType(mon)
---release_print("获取对象类型",getbaseinfo(mon,1,1),"type:",itype)
---```
function GetObjType(object) end

---表格转换成字符串(保留主键)
---* str 表格
---@param str table
---@return string "字符串"
---```lua
----- 稀疏数组表现测试
---local tbl_1 = {
---    [6] = "a",
---    [9] = "b",
---    [996] = "c",
---    [9966] = "d",
---    [9999] = "e",
---    [99999] = "f",
---    [999999] = "g",
---}
---local result_1 = tbl2jsonex(tbl_1)
---release_print(string.format("result_1:%s",result_1))
---
---
---
---local tbl_2 = {
---    "A","B","C","D","E","F","G"
---}
---local result_2 = tbl2jsonex(tbl_2)
---release_print(string.format("result_2:%s",result_2))
---```
function tbl2jsonex(str) end

---字符串转换成表格(序列化)
---* str 字符串
---@param str string
---@return table "表格"
---```lua
---local str_1 = nil
---local str_2 = ""
---local str_3 = "1234567890"
---local str_4 = "{\"key\": \"value\""
---
---
---
---local result_1 = json2tblex(str_1)
---local result_2 = json2tblex(str_2)
---local result_3 = json2tblex(str_3)
---local result_4 = json2tblex(str_4)
---
---
---
---release_print(string.format("str_1:%s,type:%s,result_1:%s,type:%s",str_1,type(str_1),result_1,type(result_1)))
---release_print(string.format("str_2:%s,type:%s,result_2:%s,type:%s",str_2,type(str_2),result_2,type(result_2))) -- 传入空字符串的情况下和json2tbl有差异
---release_print(string.format("str_3:%s,type:%s,result_3:%s,type:%s",str_3,type(str_3),result_3,type(result_3)))
---release_print(string.format("str_4:%s,type:%s,result_4:%s,type:%s",str_4,type(str_4),result_4,type(result_4)))
---```
function json2tblex(str) end

-- [Source: 接口^怪物相关.lua]

---刷怪
---* mapId 地图id
---* x 坐标X
---* y 坐标Y
---* monName 怪物名称
---* range 范围
---* count 数量
---* color 颜色(0~255)
---@param mapId string
---@param x integer
---@param y integer
---@param monName string
---@param range integer
---@param count integer
---@param color integer
---@return table "怪物列表"
---```lua
---genmon("0",289,613,"稻草人",10,10)
---```
function genmon(mapId, x, y, monName, range, count, color) end

---刷怪(拓展)
---* mapId 地图id
---* x 坐标X
---* y 坐标Y
---* monName 怪物名称
---* range 范围
---* count 数量
---* owner 归属对象<br>填0则无指定归属
---* color 颜色(0~255)
---* showName 怪物自定义名称
---* isFilt 是否过滤数字<br>0过滤，1不过滤
---* countryName 国家名称
---* nAttack 是否可攻击同国家的玩家<br>0=不可以<br>1=可以
---* nNatMonPK 不同国家怪物是否可PK<br>0=不可以<br>1=可以
---* nPlayerPk 人物是否可以攻击相同国家怪物<br>0=可以<br>1=不可以
---* nNg 是否是内功怪<br>0=普通怪<br>1=内功怪
---@param mapId string
---@param x integer
---@param y string
---@param monName string
---@param range integer
---@param count integer
---@param owner number|string
---@param color integer
---@param showName string
---@param isFilt integer
---@param countryName string
---@param nAttack integer
---@param nNatMonPK integer
---@param nPlayerPk integer
---@param nNg integer
---@return table "怪物列表"
---```lua
---genmonex(3,333,333,"神兽",1,2,0,255,"神兽\\(新)",1)
---
---local countryName = "华夏"
---local mons = genmonex(mapID,x,y,"练功稻草人",10,5,0,255,string.format("稻草人[%s]",countryName),1,countryName,1,1,1,1)
---for _, mon in ipairs(mons or {}) do
---    release_print("========================")
---    release_print("monName",getbaseinfo(mon,1,0))
---    release_print("monPosM",getbaseinfo(mon,1,4),getbaseinfo(mon,1,5))
---end
---```
function genmonex(mapId, x, y, monName, range, count, owner, color, showName, isFilt, countryName, nAttack, nNatMonPK, nPlayerPk, nNg) end

---杀怪1
---* mapId 地图id
---* monName 怪物全名，空 或者 * 杀死全部
---* count 数量，0所有
---* drop 是否掉落物品，true不掉落
---* trigger 是否不触发killmon,true不触发，默认为false触发
---@param mapId string
---@param monName string
---@param count integer
---@param drop boolean
---@param trigger boolean
---```lua
---function main(self)
---    killmonsters(0,"*",5,true)
---end
---```
function killmonsters(mapId, monName, count, drop, trigger) end

---杀怪2
---* actor 玩家对象
---* mon 怪物对象
---* drop 是否掉落物品，true掉落
---* trigger 是否触发killmon
---* showDie 是否显示死亡动画<br>=false视为系统杀怪,将不会掉落物品与经验
---@param actor number|string
---@param mon number|string
---@param drop boolean
---@param trigger boolean
---@param showDie boolean
---```lua
---local mapID = getbaseinfo(actor,3)
---local x = getbaseinfo(actor,4)
---local y = getbaseinfo(actor,5)
---local mons = genmonex(mapID,x,y,"鸡",5,2,0,255,"鸡123\\(新0.o)",0)
---for i, mon in ipairs(mons or {}) do
---    killmonbyobj(actor,mon,true,true,true)
---end
---```
function killmonbyobj(actor, mon, drop, trigger, showDie) end

---清掉地图某范围的怪物
---* mapId 地图id
---* X 坐标X
---* Y 坐标Y
---* range 范围
---* monName 怪物名 *表示所有怪物
---* isDrop 是否爆物品<br>0=不爆;1=爆
---* isClear 是否清尸体<br>0=不清;1=清
---@param mapId string
---@param X integer
---@param Y integer
---@param range integer
---@param monName string
---@param isDrop integer
---@param isClear integer
---```lua
---killmapmon( mapID,x,y, 10, "*", 0,1)
---```
function killmapmon(mapId, X, Y, range, monName, isDrop, isClear) end

---杀怪物品再爆
---* actor 玩家对象
---* count 怪物物品掉落增加次数
---@param actor number|string
---@param count integer
---```lua
---monitems(actor,2)
---```
function monitems(actor, count) end

---指定怪物的爆出
---* actor 玩家对象
---* itemName 怪物名称
---* value 可爆出次数<br>最大多爆20次
---* delayTime 延迟毫秒数
---@param actor number|string
---@param itemName string
---@param value integer
---@param delayTime integer
---```lua
-----接口需要杀怪触发[killmon]中使用
---function killmon(actor, monobj)
---    if getbaseinfo(monobj,1) == "食人花" then
---        monitemsex(actor,"练功稻草人",2,5000)
---    end
---end
---```
function monitemsex(actor, itemName, value, delayTime) end

---召唤宝宝
---* actor 玩家对象
---* monName 怪物名称
---* level 宝宝等级(最高为7)
---* time 叛变时间(分钟)
---* param1 预留(填0)
---* param2 预留(填0)
---* param3 设置大于0，检测时不计算该宝宝数量(仅M2控制的召唤数量)
---@param actor number|string
---@param monName string
---@param level integer
---@param time integer
---@param param1 integer
---@param param2 integer
---@param param3 integer
---@return number|string "宝宝对象"
---```lua
---local mon = recallmob(actor,"神兽",7,30,1)
---release_print("成功召唤",getbaseinfo(mon,1))
---```
function recallmob(actor, monName, level, time, param1, param2, param3) end

---召唤宝宝2
---* actor 玩家对象
---* Name 怪物名称
---* x 怪物当前地图出生点X
---* y 怪物当前地图出生点Y
---* lv 怪物等级
---* num 数量
---* time 叛变时间(秒) 不填 则为10天
---* color 是否自动变色
---* count 检测时不计算该宝宝数量
---* upgard 宝宝不升级
---* hide_name 隐藏主人名
---* attr 继承人物伤害百分比
---* hp_value 宝宝血量数值
---* buff_id BUFF ID 多个BUFF ID用#号连接
---@param actor number|string
---@param Name string
---@param x integer
---@param y integer
---@param lv integer
---@param num integer
---@param time integer
---@param color integer
---@param count integer
---@param upgard integer
---@param hide_name integer
---@param attr integer
---@param hp_value integer
---@param buff_id string
---```lua
---local mons = recallmobex(actor, "练功稻草人", x, y, 0, 5, 65535, 0, 1, 1, 1)
---for i, mon in ipairs(mons or {}) do
---    release_print("召唤宝宝",i,getbaseinfo(mon,1))
---end
---```
function recallmobex(actor, Name, x, y, lv, num, time, color, count, upgard, hide_name, attr, hp_value, buff_id) end

---把怪物设置成宝宝
---* mon 怪物对象
---* actor 玩家对象
---* time 叛变时间（秒）
---@param mon number|string
---@param actor number|string
---@param time integer
---```lua
---function main(self)
---    local mon = genmon(0,289,613,"黑野猪",10,1)
---    setmonmaster(mon[1],self,10)
---end
---```
function setmonmaster(mon, actor, time) end

---遍历宠物(宝宝)列表
---* actor 玩家对象
---* nIndex 索引(0开始)
---@param actor number|string
---@param nIndex integer
---@return number|string "怪物对象"
---```lua
---function main(self)
---    local ncount=getbaseinfo(self,38)
---    for i = 0 ,ncount-1 do
---        mon = getslavebyindex(self, i)
---        setbaseinfo(mon,20,getbaseinfo(mon,20)+10)
---    end
---    release_print('你的所有宝宝增加10点攻击')
---end
---```
function getslavebyindex(actor, nIndex) end

---修改宝宝名称
---* mon 宝宝对象
---* name 宝宝新名字
---@param mon number|string
---@param name string
---```lua
---local ncount = getbaseinfo(actor, 38)
---for i = 0, ncount - 1 do
---    local mon = getslavebyindex(actor, i)
---    changemonname(mon, "newNameBaby")
---end
---```
function changemonname(mon, name) end

---修改宝宝属性值
---* actor 玩家对象
---* mon 宝宝对象
---* attr 属性位置
---* method 操作符(+ - =)
---* value 属性值
---* time 有效时间
---@param actor number|string
---@param mon number|string
---@param attr integer
---@param method string
---@param value integer
---@param time integer
---```lua
---local ncount = getbaseinfo(actor, 38)
---for i = 0, ncount - 1 do
---    local mon = getslavebyindex(actor, i)
---    if mon and isnotnull(mon) then
---        changemobability(actor, mon, 5, "+", 999, 65535)
---        changemobability(actor, mon, 6, "+", 999, 65535)
---        changemobability(actor, mon, 11, "+", 1000000, 65535)
---    end
---end
---```
---```tips
---属性位置详情：
--- 1=防御下限 
--- 2=防御上限 
--- 3=魔御下限 
--- 4=魔御上限 
--- 5=攻击下限 
--- 6=攻击上限 
--- 7=魔法下限 
--- 8=魔法上限
--- 9=道术下限 
--- 10=道术上限 
--- 11=MaxHP 
--- 12=MaxMP 
--- 13=攻击加速(百分比)
--- 14=移动加速(百分比)
--- 注意属性13和14和TXT同名接口位置相反
---```
function changemobability(actor, mon, attr, method, value, time) end

---获取宝宝等级
---* mon 宝宝对象
---@param mon number|string
---@return integer "宝宝等级"
---```lua
---local ncount=getbaseinfo(actor,38)
---for i = 0 ,ncount-1 do
---    local mon =  getslavebyindex(actor, i)
---    local level=getslavelevel(mon)
---    release_print(getbaseinfo(mon,1),"等级为",level)
---end
---```
function getslavelevel(mon) end

---修改宝宝等级
---* actor 玩家对象
---* mon 宝宝对象
---* operate 操作符号(+,-,=)
---* nLevel 等级
---@param actor number|string
---@param mon number|string
---@param operate string
---@param nLevel integer
---```lua
---local ncount = getbaseinfo(actor, 38)
---for i = 0, ncount - 1 do
---    local mon = getslavebyindex(actor, i)
---    changeslavelevel(actor, mon, "-", 1)
---    local level = getslavelevel(mon)
---    release_print(getbaseinfo(mon, 1), "修改后的宝宝等级为", level)
---end
---```
function changeslavelevel(actor, mon, operate, nLevel) end

---根据唯一id获取怪物对象
---* mapId 地图id
---* monUserId 怪物唯一id(UserID)
---@param mapId string
---@param monUserId string
---@return number|string "怪物对象"
---```tips
---新三端中对象=唯一ID,该接口已无实际意义,保留防止转版本时报错
---```
function getmonbyuserid(mapId, monUserId) end

---返回怪物基础信息
---* index 怪物的IDX
---* id id<br>1-怪物名称；<br>2-怪物名字颜色；<br>3-杀死怪物获得的经验值；
---@param index integer
---@param id integer
---@return integer|string "怪物基础信息"
---```lua
---function main(self)
---    local monname = getmonbaseinfo(10001,1)
---    release_print(self,monname)
---end
---```
function getmonbaseinfo(index, id) end

---检测范围内怪物数量
---* mapId 地图Id
---* monName 怪物名，为空 or * 为检测所有怪
---* nX 坐标X
---* nY 坐标Y
---* nRange 范围
---@param mapId string
---@param monName string
---@param nX integer
---@param nY integer
---@param nRange integer
---@return integer "数量"
---```lua
---local function getMapIDXY(actor)
---local mapID = getbaseinfo(actor, 3)
---local x = getbaseinfo(actor, 4)
---local y = getbaseinfo(actor, 5)
---return mapID, x, y
---end
---
---local mapID, x, y = getMapIDXY(actor)
---release_print('该范围有' .. checkrangemoncount(mapID, '', x, y, 100) .. '只怪')
---```
function checkrangemoncount(mapId, monName, nX, nY, nRange) end

---召唤小精灵
---* actor 玩家对象
---* monName 精灵名称
---@param actor number|string
---@param monName string
---```lua
---createsprite(actor,monName)
---```
function createsprite(actor, monName) end

---检测小精灵
---* actor 玩家对象
---* monName 精灵名称,为空 则检测全部
---@param actor number|string
---@param monName? string
---@return boolean "返回值，是否有小精灵"
---```lua
---local isHave=checkspritelevel(actor,"拾取精灵")
---release_print("检查是否有小精灵",isHave)
---```
function checkspritelevel(actor, monName) end

---回收小精灵
---* actor 玩家对象
---@param actor number|string
---```lua
---releasesprite(actor)
---```
function releasesprite(actor) end

---小精灵拾取模式
---* actor 玩家对象
---* mode 模式<br>0=以人物为中心捡取<br>1=以小精灵为中心捡取<br>3=以小精灵为中心小精灵一个个捡取<br>4=以人物为中心小精灵一个个捡取<br>5=新人物自动拾取设置
---* range 范围
---* interval 间隔，最小500ms
---@param actor number|string
---@param mode integer
---@param range integer
---@param interval integer
---```lua
---pickupitems(actor,0,10,1000)
---```
function pickupitems(actor, mode, range, interval) end

---小精灵停止拾取
---* actor 玩家对象
---@param actor number|string
---```lua
---stoppickupitems(actor)
---```
function stoppickupitems(actor) end

---在指定位置优先打指定的怪
---* actor 玩家对象
---* map 地图
---* X X坐标
---* Y Y坐标
---* monName 优先攻击的怪物名称
---@param actor number|string
---@param map string
---@param X integer
---@param Y integer
---@param monName string
---```lua
---local mapID = getbaseinfo(actor,3)
---local x = getbaseinfo(actor,4)
---local y = getbaseinfo(actor,5)
---killmobappoint(actor,mapID,x,y,"黑野猪")
---```
function killmobappoint(actor, map, X, Y, monName) end

---临时增加怪物爆出物品
---* obj 人物、怪物对象
---* mon 怪物对象
---* itemName 物品名称
---@param obj number|string
---@param mon number|string
---@param itemName string
---```lua
---additemtodroplist(actor,mon,"木剑")
---```
function additemtodroplist(obj, mon, itemName) end

---嘲讽怪物
---* actor 玩家对象
---* distance 距离人物格子数
---* grade 受嘲讽影响的怪物等级上限（不大于指定等级均会被吸引）
---@param actor number|string
---@param distance integer
---@param grade integer
---```lua
---dotaunt(actor,5,60)
---```
function dotaunt(actor, distance, grade) end

---单独嘲讽怪物
---* actor 玩家对象
---* monster_obj 指定要吸引的怪物对象
---@param actor number|string
---@param monster_obj number|string
---```lua
---local mapID = getbaseinfo(actor, 3)
---local x = getbaseinfo(actor, 4)
---local y = getbaseinfo(actor, 5)
---local monList = getmapmon(mapID, "黑野猪", x, y, 100)
---dotauntex(actor, monList[1])
---```
function dotauntex(actor, monster_obj) end

---宝宝嘲讽
---* actor 玩家对象
---* index 第几个宝宝（第一个宝宝为0）
---* range 距离格子数
---* levelMax 受嘲讽影响的怪物等级上限（不大于指定等级均会被吸引）
---@param actor number|string
---@param index integer
---@param range integer
---@param levelMax integer
---```lua
---mobdotaunt(actor,0,10,60)
---```
function mobdotaunt(actor, index, range, levelMax) end

---调整宝宝攻击人物的威力倍率
---* actor 玩家对象
---* petName 宝宝名称(带数字和不带数字都可以)
---* pro 攻击人物威力倍率(威力倍数为0时不攻击人物, 110=攻击人物倍数1.1倍)
---@param actor number|string
---@param petName string
---@param pro integer
---```lua
---changeslaveattackhumpowerrate(actor,"神兽",3000)
---```
function changeslaveattackhumpowerrate(actor, petName, pro) end

---怪物寻路/巡逻
---* actor 怪物对象
---* posX x坐标集<br>多坐标;分割<br>最多传入9个
---* posY y坐标集<br>多坐标;分割<br>最多传入9个
---* model 0=寻路<br>1=巡逻
---@param actor number|string
---@param posX integer|string
---@param posY integer|string
---@param model integer
---```lua
---local mons = genmon(3,333,333,"练功稻草人",1,2)
---for _, mon in ipairs(mons or {}) do
---    -- monmission(mon,"340;340;333;333","333;340;340;333",0) -- 寻路[寻路结束后触发missionend]
---    monmission(mon,"340;340;333;333","333;340;340;333",1) -- 巡逻
---end
---
---
---
-----QFunction-0.lua
---function missionend(sysobj,monobj)
---    release_print("missionend,寻路结束",getbaseinfo(monobj,ConstCfg.gbase.name))
---end
---```
function monmission(actor, posX, posY, model) end

---怪物寻路
---* mapId 地图id
---* x x坐标串联
---* y y坐标串联
---* monX 刷怪坐标x
---* monY 刷怪坐标y
---* count 数量
---* range 范围
---* monName 怪物名字
---* target 目标
---* country 国家
---* attackSelfPlayer 是否攻击本国玩家(0,1)
---* attackPVP 不同国家怪物是否PK(0,1)
---* monNameColor 怪物名字颜色
---* diableSelfPlayerAttack 是否禁止本国玩家攻击(0,1)
---@param mapId string
---@param x string
---@param y string
---@param monX string
---@param monY string
---@param count integer
---@param range integer
---@param monName string
---@param target string
---@param country string
---@param attackSelfPlayer integer
---@param attackPVP integer
---@param monNameColor integer
---@param diableSelfPlayerAttack integer
---```lua
---mission(mapID,"333","333",x,y,10,10,"练功稻草人",nil,countName,1,1,255,1)
---```
function mission(mapId, x, y, monX, monY, count, range, monName, target, country, attackSelfPlayer, attackPVP,
                 monNameColor, diableSelfPlayerAttack) end

---命令移动怪物
---* monName 怪物名字
---* mapId 地图ID
---* posX1 老坐标X
---* posY1 老坐标Y
---* posX2 新坐标X
---* posY2 新坐标Y
---@param monName string
---@param mapId string
---@param posX1 integer
---@param posY1 integer
---@param posX2 integer
---@param posY2 integer
---```lua
---local mapID = getbaseinfo(actor,3)
---local x = getbaseinfo(actor,4)
---local y = getbaseinfo(actor,5)
---movemontopos("黑野猪",mapID,x,y,x+300,y+300)
---```
function movemontopos(monName, mapId, posX1, posY1, posX2, posY2) end

---获取怪物原始各项数据库字段值参数
---* monInfo 怪物ID/怪物名称
---* fieldName 字段名(看下方示例)
---@param monInfo integer|string
---@param fieldName string
---@return string "表格数据"
---```lua
---local config = {
---    {"idx","0列"},
---    {"name","1列"},
---    {"race","2列"},
---    {"raceimg","3列"},
---    {"appr","4列"},
---    {"level","5列"},
---    {"lifeattrib","6列"},
---    {"cooleye","7列"},
---    {"exp","8列"},
---    {"hp","9列","生命值"},
---    {"mp","9列","魔法值"},
---    {"dc","9列","攻击下限"},
---    {"maxdc","9列","攻击上限"},
---    {"mc","9列","魔法"},
---    {"sc","9列","道术"},
---    {"ac","9列","物防下限"},
---    {"ac1","9列","物防上限"},
---    {"mac","9列","魔防下限"},
---    {"mac1","9列","魔防上限"},
---    {"speed","10列"},
---    {"hitpoint","11列"},
---    {"walkspeed","12列"},
---    {"walkstep","13列"},
---    {"walkwait","14列"},
---    {"attackspeed","15列"},
---    {"attribute","16列"},
---    {"color","17列"},
---    {"rehealthcd","18列"},
---    {"type","19列"},
---    {"viewrange","20列"},
---    {"droptype","21列"},
---    {"through","22列"},
---    {"isboss","23列"},
---    {"homerate","24列"},
---    {"monparam1","25列"},
---    {"attacklist","26列"},
---    {"bigtipid","27列"},
---    {"noshow","28列"},
---    {"isngmon","29列"},
---    {"bodyleathery","30列"},
---    {"butchrate","30列"},
---}
---for _, v in ipairs(config) do
---    release_print("对应monster表",v[2],v[1]..(v[3] or ""),getdbmonfieldvalue("[BOSS]沃玛教主3",v[1]))
---end
---```
function getdbmonfieldvalue(monInfo, fieldName) end

---重置怪物生成计时器
---* mapId 地图ID
---* monPosX 怪物X坐标
---* monPosY 怪物Y坐标
---* monName 怪物名称
---@param mapId string
---@param monPosX integer
---@param monPosY integer
---@param monName string
---```lua
---local mapID = getbaseinfo(actor,3)
---local x = getbaseinfo(actor,4)
---local y = getbaseinfo(actor,5)
---resetmongentick(mapID,x,y,"鸡")
---release_print("重置怪物生成计时器")
---```
function resetmongentick(mapId, monPosX, monPosY, monName) end

---让怪物释放自定义技能
---* mon 怪物对象
---* skillId 自定义技能id
---* X 目标点X坐标
---* Y 目标点Y坐标
---* target 目标对象
---@param mon number|string
---@param skillId integer
---@param X integer
---@param Y integer
---@param target number|string
---```lua
---local mapID = getbaseinfo(actor,3)
---local x = getbaseinfo(actor,4)
---local y = getbaseinfo(actor,5)
---local mons = genmon(mapID,x,y,"黑野猪",1,2)
---for _, mon in ipairs(mons or {}) do
---    mon_docustommagic(mon,1001,x,y,actor)
---    release_print("让怪物释放自定义技能")
---end
---```
function mon_docustommagic(mon, skillId, X, Y, target) end

---添加自定义怪物攻击表现
---* mon 怪物对象
---* skillId 攻击表现id
---@param mon number|string
---@param skillId integer
---```lua
---local mapID = getbaseinfo(actor,3)
---local x = getbaseinfo(actor,4)
---local y = getbaseinfo(actor,5)
---local mons = genmon(mapID,x,y,"黑野猪",1,2)
---for _, mon in ipairs(mons or {}) do
---    addmonattack(mon,11)
---    release_print("添加自定义怪物攻击表现")
---end
---```
function addmonattack(mon, skillId) end

---设置宝宝叛变时间
---* mon 宝宝对象
---* time 时间（秒）
---@param mon number|string
---@param time integer
---```lua
---local mons = getslavebyindex(actor,0)
---setmobtreachery(mons,10)
---release_print("设置宝宝叛变时间",10)
---```
function setmobtreachery(mon, time) end

---获取宝宝叛变时间
---* mon 宝宝对象
---@param mon number|string
---@return integer "宝宝叛变时间"
---```lua
---local mons = getslavebyindex(actor,0)
---local time=getmobtreachery(mons)
---release_print("获取宝宝叛变时间",time)
---```
function getmobtreachery(mon) end

---单独吸引怪物
---* actor 玩家对象
---* monster_obj 指定要吸引的特定怪物
---* isMove 0=怪物漂移到人物边<br>1=怪物瞬移到当前人物坐标<br>2=怪物瞬移到当前人物面前
---* unLimit 0=无限制<br>1=怪物/人物攻击目标不归属自己的不可被吸
---@param actor number|string
---@param monster_obj number|string
---@param isMove integer
---@param unLimit integer
---```lua
----- 吸引并控制怪物移动（漂移）
---monmoveex(actor, monster_obj, 0, 0)
---
---
----- 瞬移到当前人物坐标
---monmoveex(actor, monster_obj, 1, 0)
---
---
----- 瞬移到当前人物面前
---monmoveex(actor, monster_obj, 2, 1)
---```
function monmoveex(actor, monster_obj, isMove, unLimit) end

-- [Source: 接口^攻城.lua]

---获取玩家沙巴克身份
---* actor 玩家对象
---@param actor number|string
---@return integer "0-非沙巴克成员 1-沙巴克成员 2-沙巴克老大"
---```lua
---local identity=castleidentity(actor)
---release_print("获取玩家沙巴克身份",identity )
---```
function castleidentity(actor) end

---沙巴克基本信息
---* nID 信息索引
---@param nID integer
---@return integer "返回值 ``` 说明 nID对应值分别为： 1=沙城名称，返回string 2=沙城行会名称，返回string 3=沙城行会会长名字，返回string 4=占领天数，返回number 5=当前是否在攻沙状态，返回Bool 6=沙城行会副会长名字列表，返回table ```"
---```lua
---local info=castleinfo(1)
---release_print("沙巴克基本信息",info )
---```
function castleinfo(nID) end

---脚本命令设置沙巴克归属
---* guild 行会名称
---* param 是否忽略触发@beforgetcastle<br>0=不忽略<br>1=忽略
---@param guild number|string
---@param param integer
---```lua
---setcastleguild("对对对", 0)
---
---
---
-----QFunction-0.lua
---function beforgetcastle(sysObj,guildName)
---    release_print("行会名",guildName)
---end
---```
function setcastleguild(guild, param) end

---获取攻城列表
---@return table "攻城列表"
---```lua
---local guild_list = getcastlewarlist()
---release_print("guild_list",tbl2json(guild_list))
---```
function getcastlewarlist() end

---把行会添加到攻城列表
---* name 行会名
---* day 天数
---@param name string
---@param day integer
---```lua
---addtocastlewarlist("红花会",3)
---release_print("把行会添加到攻城列表" )
---```
function addtocastlewarlist(name, day) end

---强制把行会添加到攻城列表
---* name 行会名<br>传入"*"所有行会
---@param name string
---```lua
---addtocastlewarlistex("红花会",3)
---release_print("强制把行会添加到攻城列表" )
---```
function addtocastlewarlistex(name) end

---所有行会在当晚同时攻城
---```lua
---addattacksabukall()
---release_print("所有行会在当晚同时攻城" )
---```
function addattacksabukall() end

---修复城门,城墙等
---```tips
---1. 攻沙期间无法修复城门/城墙
---```
---```lua
---repaircastle()
---```
function repaircastle() end

---雇佣沙巴克弓箭手/卫士
---* monId 弓箭手/卫士ID
---* monType 类型<br>0/nil=弓箭手<br>1=卫士
---@param monId integer
---@param monType integer
---```lua
----- monID对应的是SabukW.txt配置中的Archer/Guard的id
----- 示例:1号弓箭手信息
----- Archer_1_X=662
----- Archer_1_Y=333
----- Archer_1_Name=弓箭手
----- Archer_1_HP=2000
----- 示例:2号护卫信息
----- Guard_2_X=649
----- Guard_2_Y=301
----- Guard_2_Name=护卫
----- Guard_2_HP=1000
---function main(actor)
---    for i = 1,24 do
---        castlearchergen(i)
---        release_print("雇佣弓箭手",i)
---    end
---    for i = 1,8 do
---        castlearchergen(i,1)
---        release_print("雇佣护卫",i)
---    end
---end
---```
function castlearchergen(monId, monType) end

---清理沙巴克归属
---```lua
---resetcastle()
---release_print("清理沙巴克归属" )
---```
function resetcastle() end

-- [Source: 接口^文本操作.lua]

---删除Envir目录下的指定文件
---* path 文件路径
---@param path string
---```lua
---delfile("/QuestDiary/abc.txt")
---```
function delfile(path) end

---获取Envir文件夹下文件列表
---@return table "Envir文件夹下文件列表"
---```lua
---local envir=getenvirfilelist()
---release_print(type(envir),envir)
---```
function getenvirfilelist() end

---加载csv表格内容
---* fileName 文件名
---@param fileName string
---```lua
---newreadcsv("QuestDiary/test.csv")
---release_print("csv表预加载成功")
---```
function newreadcsv(fileName) end

---读取表里面的第几行第几列内容(0行0列开始)
---* fileName 文件名
---* row 行数
---* col 列数
---@param fileName string
---@param row integer
---@param col integer
---@return string "表内数据"
---```lua
---local str = newdqcsv("QuestDiary/test.csv",4,0)
---release_print("第4行,第0列",str)
---```
function newdqcsv(fileName, row, col) end

---获取当前表格最大行数、和获取表格最大列数
---* fileName 文件名
---* type 读取目标：0-行数，1-列数
---@param fileName string
---@param type integer
---@return integer "行数，列数"
---```lua
---local w = gethlcsv("QuestDiary/test.csv",0)
---local h = gethlcsv("QuestDiary/test.csv",1)
---release_print("行数",w)
---release_print("列数",h)
---```
function gethlcsv(fileName, type) end

---取字符串在csv表格中的行号
---* fileName 文件名
---* str 字符串
---* rowLimit 行数限制，格式：开始行号-结束行号
---* col 查找的列数
---* findType 查找类型：<br>0-在开始哪行;<br>1-在最后哪行;
---@param fileName string
---@param str string
---@param rowLimit string
---@param col integer
---@param findType integer
---@return integer "行号"
---```lua
---local param = getgjcsv("QuestDiary/test.csv","2","0-5",0,0)
---release_print("字符串'2'在0列开始第"..param.."行")
---```
function getgjcsv(fileName, str, rowLimit, col, findType) end

---读取表格
---* path 表格路径
---@param path string
---@return table "返回表格内所有数据内容"
---```lua
---local readPath = "../DATA/cfg_npclist.xls"
---local config = readexcel(readPath)
---release_print("readexcel",readPath,type(config))
---for i, cfg in ipairs(config or {}) do
---    release_print("============================")
---    -- if i > 10 then return end
---    if type(cfg) == "table" then
---        for j, value in ipairs(cfg) do
---            release_print("config",i,j,value)
---        end
---    end
---end
---```
function readexcel(path) end

---敏感词汇检测
---* str 要检测的文本
---@param str string
---@return boolean,string "true：有敏感词,敏感词"
---```lua
---exisitssensitiveword(str)
---```
function exisitssensitiveword(str) end

---获取文件列表
---* path 文件路径
---@param path string
---@return table "'Mir200\Envir'下的路径"
---```lua
---local list = GetFileList()
---release_print(type(list))
---dump(list)
---
---
---
---local list = GetFileList("DATA")
---release_print(type(list))
---dump(list)
---```
function GetFileList(path) end

---gbk 转 utf-8
---* str gbk
---@param str string
---@return string "转后字符"
---```lua
---gbktoutf8(str)
---```
function gbktoutf8(str) end

---utf-8 转 gbk
---* str 玩家对象
---@param str string
---@return string "转后字符"
---```lua
---utf8togbk(str)
---```
function utf8togbk(str) end

---读取Ini文件中的字段值（带Cache）
---* fileName 文件名
---* section 配置项区
---* item 配置项
---@param fileName string
---@param section string
---@param item string
---@return string "配置项值"
---```lua
---local str = readinibycache("QuestDiary/test.ini","Setup","temp1")
---release_print("str",str)
---
---
---操作速度会比不带cache的快很多，问题就是，在M2运行过程中，只能用脚本操作，手动操作的无效。
---如果ini文件不存在手动操作的情况下，就用带Cache命令操作。
---带Cache的特点是，对ini的操作只打开一次，然后一直在内存缓存，所以只命令操作才有效，手动操作无效。
---关闭引擎时候才会保存到INI文件内，引擎运行期间一直内存中运行，所以启动引擎后手动修改INI文件信息是无效的。
---
---
---
---在没有手动操作ini的情况下，推荐用带cache的。不带cache的比较耗时。
---比如提现：操作会删除提现记录属于手动操作，所以需要使用不带cache的命令；但计算战斗力属于内部引擎操作无手动干预，可以使用带cache的！
---```
function readinibycache(fileName, section, item) end

---写入Ini文件中的字段值（带Cache）
---* fileName 文件名
---* section 配置项区
---* item 配置项
---* value 配置项值
---@param fileName string
---@param section string
---@param item string
---@param value string
---```lua
---local str = writeinibycache("QuestDiary/test.ini","Setup","temp1"，"1111111")
---
---
---操作速度会比不带cache的快很多，问题就是，在M2运行过程中，只能用脚本操作，手动操作的无效。
---如果ini文件不存在手动操作的情况下，就用带Cache命令操作。
---带Cache的特点是，对ini的操作只打开一次，然后一直在内存缓存，所以只命令操作才有效，手动操作无效。
---关闭引擎时候才会保存到INI文件内，引擎运行期间一直内存中运行，所以启动引擎后手动修改INI文件信息是无效的。
---
---
---
---在没有手动操作ini的情况下，推荐用带cache的。不带cache的比较耗时。
---比如提现：操作会删除提现记录属于手动操作，所以需要使用不带cache的命令；但计算战斗力属于内部引擎操作无手动干预，可以使用带cache的！
---```
function writeinibycache(fileName, section, item, value) end

---删除Ini文件配置区（带Cache）
---* fileName 文件名
---* section 配置项区
---@param fileName string
---@param section string
---```lua
---delinisectionbycache("QuestDiary/test.ini","Setup")
---
---
---操作速度会比不带cache的快很多，问题就是，在M2运行过程中，只能用脚本操作，手动操作的无效。
---如果ini文件不存在手动操作的情况下，就用带Cache命令操作。
---带Cache的特点是，对ini的操作只打开一次，然后一直在内存缓存，所以只命令操作才有效，手动操作无效。
---关闭引擎时候才会保存到INI文件内，引擎运行期间一直内存中运行，所以启动引擎后手动修改INI文件信息是无效的。
---
---
---
---在没有手动操作ini的情况下，推荐用带cache的。不带cache的比较耗时。
---比如提现：操作会删除提现记录属于手动操作，所以需要使用不带cache的命令；但计算战斗力属于内部引擎操作无手动干预，可以使用带cache的！
---```
function delinisectionbycache(fileName, section) end

---删除Ini文件配置项（带Cache）
---* fileName 文件名
---* section 配置项区
---* item 配置项
---@param fileName string
---@param section string
---@param item string
---```lua
---deliniitembycache("QuestDiary/test.ini","Setup","temp1")
---
---
---操作速度会比不带cache的快很多，问题就是，在M2运行过程中，只能用脚本操作，手动操作的无效。
---如果ini文件不存在手动操作的情况下，就用带Cache命令操作。
---带Cache的特点是，对ini的操作只打开一次，然后一直在内存缓存，所以只命令操作才有效，手动操作无效。
---关闭引擎时候才会保存到INI文件内，引擎运行期间一直内存中运行，所以启动引擎后手动修改INI文件信息是无效的。
---
---
---
---在没有手动操作ini的情况下，推荐用带cache的。不带cache的比较耗时。
---比如提现：操作会删除提现记录属于手动操作，所以需要使用不带cache的命令；但计算战斗力属于内部引擎操作无手动干预，可以使用带cache的！
---```
function deliniitembycache(fileName, section, item) end

---创建文本文件
---* path 文件路径
---@param path string
---```lua
--- --在Envir\QuestDiary目录中建立了一个文件.
---createfile('../QuestDiary/abc.txt')
---```
function createfile(path) end

---写入指定文本文件
---* path 文件路径
---* str 写入文本
---* line 写入行数(0~65535)
---@param path string
---@param str string
---@param line integer
---```lua
---addtextlist('../QuestDiary/abc.txt','aaa',0)
---addtextlist('../QuestDiary/abc.txt','bbb',1)
---addtextlist('../QuestDiary/abc.txt','ccc',2)
---addtextlist('../QuestDiary/abc.txt','ddd',3)
---addtextlist('../QuestDiary/abc.txt','eee',4)
---addtextlist('../QuestDiary/abc.txt','aaa|bbb|ccc|ddd|eee',5)
---```
function addtextlist(path, str, line) end


---从文件中随机获取一行字符串
---* path 文件路径
---* line 指定行(0~1000)<br>传入-1随机取某一行的字符串
---@param path string
---@param line integer
---@return string "随机行字符串"
---```lua
---local str = getrandomtext('../QuestDiary/abc.txt',-1)
---release_print('getrandomtext',str)
---```
function getrandomtext(path, line) end

---获取文本文件指定行的内容
---* path 文件路径
---* line 指定行
---@param path string
---@param line integer
---@return string,string "字符串,返回值2<br>当有内容中存在`:`时,会将`:`号后的字符分割返回"
---```lua
---    abc.txt中的文本内容,当行内有`:`号时,
---    [[
---        aaa:99999
---        bbbvvv
---    ]]
---    local line = 0
---    local res1,res2 = getliststring('../QuestDiary/abc.txt',line)
---    release_print('getliststring',line,res1,res2)
---
---
---
---    -- M2打印结果
---    `getliststring,0,aaa,99999`
---
---
---
---    local line = 1
---    local res1,res2 = getliststring('../QuestDiary/abc.txt',line)
---    release_print('getliststring',line,res1,res2)
---
---
---
---    -- M2打印结果
---    `getliststring,1,bbbvvv,`
---```
function getliststring(path, line) end


---获取文本文件指定行的内容[根据符号分割]
---* path 文件路径
---* line 指定行
---* symbol 符号
---@param path string
---@param line integer
---@param symbol string
---```lua
---local tbl = getliststringex('../QuestDiary/abc.txt',5,'|')
---for i,v in ipairs(tbl or {}) do
---    release_print("文本",i,v)
---end
---```
function getliststringex(path, line, symbol) end

---读取Ini文件中的字段值
---* filename 文件名
---* section 配置项区
---* item 配置项
---@param filename string
---@param section string
---@param item string
---@return string "配置项值"
function readini(filename, section, item) end

---写入Ini文件中的字段值
---* filename 文件名
---* section 配置项区
---* item 配置项
---* value 配置项值
---@param filename string
---@param section string
---@param item string
---@param value string
function writeini(filename, section, item, value) end

---删除Ini文件配置区
---* filename 文件名
---* section 配置项区
---@param filename string
---@param section string
function delinisection(filename, section) end

---删除Ini文件配置项
---* filename 文件名
---* section 配置项区
---* item 配置项
---@param filename string
---@param section string
---@param item string
function deliniitem(filename, section, item) end

---取字符串在列表中的下标
---* path 文件路径
---* str 字符串
---@param path string
---@param str string
---@return integer "字符串所在行<br>未找到返回9999999"
---```lua
---local pos = getstringpos('../QuestDiary/abc.txt','aaa')
---release_print('getstringpos',type(pos),pos)
---```
function getstringpos(path, str) end

---删除文本文件的内容
---* path 文件路径
---* line 指定行
---* model 删除模式<br>0=删除行<br>1=清空行<br>2=删除随机行(参数2失效)
---@param path string
---@param line integer
---@param model integer
---```lua
-----删除第0行
---deltextlist('../QuestDiary/abc.txt',1,0)
-----清空第0行
---deltextlist('../QuestDiary/abc.txt',1,1)
-----随机删除一行
---deltextlist('../QuestDiary/abc.txt',nil,2)
---```
function deltextlist(path, line, model) end

---清除列表内容
---* path 文件路径
---@param path string
---```lua
---clearnamelist('../QuestDiary/abc.txt')
---```
function clearnamelist(path) end

---检查字符串是否在指定文件中
---```tips
---* 注:不区分大小写
---```
---* path 文件路径
---* str 字符串
---@param path string
---@param str string
---@return boolean "true=在文件中<br>false=不在文件中"
---```lua
---local res1 = checktextlist('../QuestDiary/abc.txt','ccc')
---release_print('checktextlist',res1)
---```
function checktextlist(path, str) end

---检查字符串是否在指定文件中
---* path 文件路径
---* str 字符串
---* model 检测模式:<br>0=列表中,是否包含被检测的字符<br>1=被检测的字符是否包含列表中的某一行内容
---@param path string
---@param str string
---@param model integer
---@return boolean "true=在文件中,false=不在文件中"
---```lua
---local res1 = checkcontainstextlist('../QuestDiary/abc.txt','ddd',0)
---local res2 = checkcontainstextlist('../QuestDiary/abc.txt','ddddddd',0)
---local res3 = checkcontainstextlist('../QuestDiary/abc.txt','dd',1)
---local res4 = checkcontainstextlist('../QuestDiary/abc.txt','ddddddd',1)
---release_print('checkcontainstextlist',res1,res2,res3,res4)
---```
function checkcontainstextlist(path, str, model) end

-- [Source: 接口^物品操作.lua]

---给物品
---* actor 玩家对象
---* itemName 物品名称
---* qty 数量
---* bind 物品规则
---* desc 描述
---@param actor number|string
---@param itemName string
---@param qty integer
---@param bind integer
---@param desc string
---@return string "(最后一个物品唯一id)"
---```tips
---1. 不建议使用在叠加物品
---   2.一次性给多个物品的情况，此物品在添加背包触发后，注意可能被回收的情况 生成失败则返回nil
---```
---```lua
---function main(self)
---    local bo = giveitem(self,"木剑",1)
---    if bo then
---        release_print("你获得一把木剑")
---    else
---        release_print("包裹已满")
---    end
---end
---```
function giveitem(actor, itemName, qty, bind, desc) end

---给物品直接装备
---* actor 玩家对象
---* where [装备位置](https://engine-doc.996m2.com/web/#/91/51214 "装备位置")
---* itemName 物品名称
---* qty 数量
---* bind 物品规则
---* desc 描述
---@param actor number|string
---@param where integer
---@param itemName string
---@param qty integer
---@param bind integer
---@param desc string
---@return boolean "是否成功"
---```lua
---giveonitem(actor,1,"木剑",1,0,"测试")
---```
function giveonitem(actor, where, itemName, qty, bind, desc) end

---拿物品
---* actor 玩家对象
---* itemName 物品名称
---* itemNum 数量
---* ignoreJP 忽略极品<br>0：所有都扣除<br>1：极品不扣除
---* desc 描述
---@param actor number|string
---@param itemName string
---@param itemNum integer
---@param ignoreJP integer
---@param desc string
---@return boolean "true：成功 false：失败"
---```lua
---if not takeitem(actor,"木剑",2) then
---    release_print("物品扣除失败")
---end
---```
function takeitem(actor, itemName, itemNum, ignoreJP, desc) end

---拿物品(拓展)
---* actor 玩家对象
---* itemName 物品名称
---* itemNum 数量
---* bind 0=忽略<br>1=扣除非绑定物品<br>2=扣除绑定物品
---* desc 描述
---@param actor number|string
---@param itemName string
---@param itemNum integer
---@param bind integer
---@param desc string
---@return boolean "true：成功 false：失败"
---```lua
---if not takeitemex(actor, "木剑", 3,1,"奖励") then
---    release_print("物品扣除失败")
---end
---```
function takeitemex(actor, itemName, itemNum, bind, desc) end

---根据唯一ID删除仓库物品
---* actor 玩家对象
---* itemMakeId 删除唯一ID物品
---@param actor number|string
---@param itemMakeId string
---```lua
---local items = getstorageitems(actor)
---for k,itemMakeIndex in ipairs(items or {}) do
---    release_print("根据唯一ID删除仓库物品",getiteminfo(actor,itemMakeIndex,7))
---    delstorageitem(actor,itemMakeIndex)
---end
---```
function delstorageitem(actor, itemMakeId) end

---根据idx删除仓库物品
---* actor 玩家对象
---* itemIndex 删除所有Idx物品
---@param actor number|string
---@param itemIndex string
---```lua
---local items = getstorageitems(actor)
---for k,v in ipairs(items or {}) do
---    local itemIndex=getiteminfo(actor,v,2)
---    release_print("根据物品ID删除仓库物品",getiteminfo(actor,v,7))
---    delstorageitembyidx(actor,itemIndex)
---    break
---end
---```
function delstorageitembyidx(actor, itemIndex) end

---获取物品信息
---* actor 玩家对象
---* makeIndex 物品唯一Id
---* id ~~1:唯一ID~~<br>2:物品ID<br>3:剩余持久<br>4:最大持久<br>5:叠加数量<br>6:绑定状态<br>7:物品名称<br>8:修改后物品名称
---@param actor number|string
---@param makeIndex string
---@param id integer
---@return any "相应物品信息"
---```lua
---local makeIndex=GetItemByPos(actor,1)
---local makeIndex=getiteminfo(actor,makeIndex,1)
-----release_print("1.唯一ID:",makeIndex) --只做占用，无实际意义
-----local itemId=getiteminfo(actor,makeIndex,2)
---release_print("2.物品ID:",itemId)
---local duration=getiteminfo(actor,makeIndex,3)
---release_print("3.剩余持久:",duration)
---local maxDuration=getiteminfo(actor,makeIndex,4)
---release_print("4.最大持久:",maxDuration)
---local stackNum=getiteminfo(actor,makeIndex,5)
---release_print("5.叠加数量:",stackNum)
---local bind=getiteminfo(actor,makeIndex,6)
---release_print("6.绑定状态:",bind)
---local itemName=getiteminfo(actor,makeIndex,7)
---release_print("7.物品名称:",itemName)
---```
function getiteminfo(actor, makeIndex, id) end

---获取物品基础信息
---* iteminfo 物品Id/物品名称
---* id 0:idx<br>1:名称<br>2:StdMode<br>3:Shape<br>4:重量<br>5:AniCount<br>6:最大持久<br>7:叠加数量<br>8:价格（price）<br>9:使用条件<br>10:使用等级<br>11:自定义常量(29列)<br>12:自定义常量(30列)<br>13:道具颜色
---@param iteminfo string
---@param id integer
---@return any "对应数值，不存在为0"
---```lua
---local makeIndex=GetItemByPos(actor,1)
---local itemId=getiteminfo(actor,makeIndex,2)
---local idx=getstditeminfo(itemId,0)
---release_print("0.idx:",idx)
---local makeName=getstditeminfo(itemId,1)
---release_print("1.名称:",makeName)
---local stdMode=getstditeminfo(itemId,2)
---release_print("2.stdMode:",stdMode)
---local shape=getstditeminfo(itemId,3)
---release_print("3.shape:",shape)
---local weight=getstditeminfo(itemId,4)
---release_print("4.重量:",weight)
---local aniCount=getstditeminfo(itemId,5)
---release_print("5.aniCount:",aniCount)
---local maxDuration=getstditeminfo(itemId,6)
---release_print("6.最大持久:",maxDuration)
---local stackNum=getstditeminfo(itemId,7)
---release_print("7.叠加数量:",stackNum)
---local price=getstditeminfo(itemId,8)
---release_print("8.价格:",price)
---local useCondition=getstditeminfo(itemId,9)
---release_print("9.使用条件:",useCondition)
---local useLevel=getstditeminfo(itemId,10)
---release_print("10.使用等级:",useLevel)
---local constant29=getstditeminfo(itemId,11)
---release_print("11.自定义常量(29列):",constant29)
---local constant30=getstditeminfo(itemId,12)
---release_print("12.自定义常量(30列):",constant30)
---local itemColor=getstditeminfo(itemId,13)
---release_print("13.道具颜色:",itemColor)
---```
function getstditeminfo(iteminfo, id) end

---获取物品基础属性
---* itemId 物品ID
---* id 对应属性表的属性ID
---@param itemId integer
---@param id integer
---@return integer "对应数值，不存在为0"
---```lua
---function main(self)
---    local makeIndex=GetItemByPos(self,0)
---    if makeIndex then
---        local itemid = getiteminfo(self,makeIndex,2)
---        release_print( "关联物品0成功，唯一ID：" .. getiteminfo(self,makeIndex,1) .."\\物品名称："
---        ..getstditeminfo(itemid,1)
---        .."\\基础防御下限："..getstditematt(itemid,9)
---        .."\\基础防御上限："..getstditematt(itemid,10)
---        )
---    else
---        release_print( "关联物品0失败")
---    end
---end
---```
function getstditematt(itemId, id) end

---刷新物品信息到前端
---* actor 玩家对象
---* makeIndex 物品唯一Id
---@param actor number|string
---@param makeIndex string
---```lua
---function main(self)
---    local makeIndex=GetItemByPos(actor,1)
---    if makeIndex then
---        local itemid = getiteminfo(self, makeIndex, 2)
---
---        refreshitem(self, makeIndex);
---        recalcabilitys(self)
---    else
---        release_print( "关联物品0失败")
---    end
---end
---```
function refreshitem(actor, makeIndex) end

---根据物品唯一id替换模板数据
---* actor 玩家对象
---* itemMakeId 唯一ID
---* itemIndex 新的模板数据的物品ID
---@param actor number|string
---@param itemMakeId string
---@param itemIndex integer
---```lua
---changeitemidx(actor,makeIndex,20000)
---release_print("将物品唯一ID转换成道具表里对应的IDX物品,背包内没有物品")
---```
function changeitemidx(actor, itemMakeId, itemIndex) end

---增加限次使用物品的次数
---* actor 玩家对象
---* itemMakeId 唯一ID
---* num 次数
---@param actor number|string
---@param itemMakeId string
---@param num integer
---```lua
---addfunitemdura(actor,makeIndex,50)
---release_print("增加限次使用物品的次数")
---```
function addfunitemdura(actor, itemMakeId, num) end

---获取物品持久度
---* actor 玩家对象
---* itemMakeId 唯一ID
---@param actor number|string
---@param itemMakeId string
---@return integer "持久度"
---```tips
---可用来获取聚灵珠的经验值
---```
---```lua
---local duration=getdura(actor,makeIndex)
---release_print("获取物品持久度",duration)
---```
function getdura(actor, itemMakeId) end

---修改物品持久度
---* actor 玩家对象
---* itemMakeId 唯一ID
---* char 操作符(+ - =)
---* dura 持久度
---@param actor number|string
---@param itemMakeId string
---@param char string
---@param dura integer
---```lua
---setdura(actor,makeIndex,"=",30)
---release_print("修改物品持久度,背包内没有物品")
---```
function setdura(actor, itemMakeId, char, dura) end

---修改装备内观Looks值
---* actor 玩家对象
---* itemPos [装备位置](https://engine-doc.996m2.com/web/#/91/51214 "装备位置")(-2操作物品唯一Id)
---* char 操作符(+ - =)
---* picture 内观图片
---* makeIndex 物品唯一Id
---@param actor number|string
---@param itemPos integer
---@param char string
---@param picture integer
---@param makeIndex string
---```lua
-----根据装备位设置内观Looks值
---setitemlooks(actor,1,"=",85)
---
---
-----根据装备唯一Id设置内观Looks值
---setitemlooks(actor,-2,"=",85,makeIndex)
---```
function setitemlooks(actor, itemPos, char, picture, makeIndex) end

---通过物品唯一id拿走物品
---* actor 玩家对象
---* ids 物品唯一ID，逗号(,)串联
---* count 叠加物品扣除数量，<br>不填此参数，默认全部扣除<br>不可叠加物品全部扣除
---* desc 描述
---@param actor number|string
---@param ids string
---@param count integer
---@param desc string
---@return boolean "是否扣除成功"
---```lua
---local items = getbagitems(actor)
---if type(items) == "table" and next(items) then
---    for k,makeIndex in ipairs(items) do
---        local isSuccess=delitembymakeindex(actor,makeIndex,1,"测试")
---        release_print("通过物品唯一id拿走物品是否成功",isSuccess)
---        break
---    end
---else
---    release_print("背包内没有物品")
---end
---```
function delitembymakeindex(actor, ids, count, desc) end

---使用物品（吃药、使用特殊物品等）
---* actor 玩家对象
---* itemName 物品名称
---* count 数量
---@param actor number|string
---@param itemName string
---@param count integer
---```lua
---eatitem(actor,"金创药(小量)",1)
---```
function eatitem(actor, itemName, count) end

---设置物品来源（使用物品唯一Id）
---* actor 玩家对象
---* makeIndex 物品唯一Id
---* source json字符串
---@param actor number|string
---@param makeIndex string
---@param source string
---```lua
-----source格式同setthrowitemly
---setthrowitemly2(actor,makeIndex,{
---    map: "0", //地图号
---    source: 5, //来源：1-GM生成，2-NPC，3-商城，4-NPC商店, 5-怪物掉落，6-系统给与，7-挖矿，8-批量生成，9-宝箱
---    mon:"白野猪", //掉落的怪物
---    player:"玩家人物名称",
---    time:"2021-11-11 00:00:00" //掉落或生成的时间，为空时，设置为系统时间
---})
---```
function setthrowitemly2(actor, makeIndex, source) end

---设置物品来源
---* source json字符串
---@param source string
---```lua
---local source={
---    map="0", --地图号
---    source=5,  --来源：1-GM生成，2-NPC，3-商城，4-NPC商店, 5-怪物掉落，6-系统给与，7-挖矿，8-批量生成，9-宝箱
---    mon="白野猪",  --掉落的怪物
---    player="玩家人物名称",
---    time="2021-11-11 00:00:00"  --掉落或生成的时间，为空时，设置为系统时间
---}
---setthrowitemly(tbl2json(source))
---giveitem(actor,"木剑",1,128,"测试")
---```
function setthrowitemly(source) end

---获取物品来源（使用物品唯一Id）
---* actor 玩家对象
---* makeIndex 物品唯一Id
---@param actor number|string
---@param makeIndex string
---@return string "json字符串"
---```lua
---local makeIndex = GetItemByPos(actor,1)
---local source=getthrowitemly(actor,makeIndex)
---release_print(tbl2json(json2tbl(source)),"获取物品来源")
---```
function getthrowitemly(actor, makeIndex) end

---设置物品特效
---* actor 玩家对象
---* itemPos [装备位置](https://engine-doc.996m2.com/web/#/91/51214 "装备位置")(-2操作物品唯一Id)
---* bagEffectId 背包特效编号
---* inEffectId 内观特效编号
---* order1 背包特效层级<br>0=前;1=后
---* order2 内观特效层级<br>0=前;1=后
---* makeIndex 物品唯一Id
---@param actor number|string
---@param itemPos integer
---@param bagEffectId integer
---@param inEffectId integer
---@param order1 integer
---@param order2 integer
---@param makeIndex string
---```lua
-----根据装备位设置特效
---setitemeffect(actor,1,5111,6063,1,1)
---
---
---
---
-----根据物品唯一Id设置特效
---setitemeffect(actor,-2,6307,6063,nil,nil,itemMakeIndex)
---```
function setitemeffect(actor, itemPos, bagEffectId, inEffectId, order1, order2, makeIndex) end

---根据物品获取Json
---* actor 玩家对象
---* makeIndex 物品唯一Id
---@param actor number|string
---@param makeIndex string
---@return string "json字符串  ``` {  "MakeIndex":xxxx,  "Idx":xxxx,  "Name":xxxx,  "Dura":xxxx,  "DuraMax":xxxx,  "Overlap":xxxx,  "AddValue0":xxxx,  "AddValue1":xxxx,  "ExAbil":xxxx } ```"
---```lua
---local makeIndex=GetItemByPos(actor,1)
---release_print(makeIndex)
---local json=getitemjson(actor,makeIndex)
---release_print("根据物品获取Json",json)
---```
function getitemjson(actor, makeIndex) end

---根据json字符串给物品
---* actor 玩家对象
---* json json字符串
---* desc 描述
---* saveType 1 = 保留JSON中的来源信息(地图/时间)<br>其他 = 不保留<br>默认为 0 = 不保留
---@param actor number|string
---@param json string
---@param desc string
---@param saveType integer
---@return string "生成的物品唯一Id"
---```lua
---local json={
---    "BT1":xxx,
---    "Idx":xxxx,
---    "Name":xxxx,
---    "Dura":xxxx,
---    "Overlap":xxxx,
---    "AddValue0":xxxx,
---    "AddValue1":xxxx,
---    "ExAbil":xxxx"}
---    giveitembyjson(actor,tbl2json(json),"测试")
---```
function giveitembyjson(actor, json, desc, saveType) end

---根据物品获取前端显示的Json
---* actor 玩家对象
---* makeIndex 物品唯一Id
---@param actor number|string
---@param makeIndex string
---@return string "json字符串"
---```lua
----- 后端获取
---function main(actor)
---    local makeIndex=GetItemByPos(actor,1)
---    if makeIndex then
---        local itemJson=getitemjsonex(makeIndex)
---        release_print("根据物品获取前端显示的Json",itemJson)
---        sendluamsg(actor, 996, 1, 2, 3, itemJson)
---    else
---        release_print("根据物品获取前端显示的Json,没有装备")
---    end
---end
---
---
----- 前端收到后转换成itemData
---SL:RegisterLuaNetMsg(996, function (msgID, arg1, arg2, arg3, jsonstr)
---SL:Print("LUA EVENT 996", msgID, arg1, arg2, arg3, jsonstr)
---local data = jsonstr and SL:JsonDecode(jsonstr) or nil
---if data then
---    SL:dump(data,"接收到的原数据")
---    local itemData =  SL:TransItemDataIntoChatShow(data)
---    SL:dump(itemData,"转换后的ItemData")
---end
---end)
---```
function getitemjsonex(actor, makeIndex) end

---关闭指定装备对比提示
---* actor 玩家对象
---* order 1=物品唯一ID 2=物品IDX 3=物品名称
---* str 参数1的值
---@param actor number|string
---@param order integer
---@param str string
---```lua
---nothintitem(actor,3,"木剑")
---```
function nothintitem(actor, order, str) end

---设置物品绑定状态
---* actor 玩家对象
---* makeIndex 物品唯一Id
---* bind 物品规则
---* state 绑定状态<br>0=不绑定<br>1=绑定
---@param actor number|string
---@param makeIndex string
---@param bind integer
---@param state integer
---```lua
----- 物品状态配置表 - 使用位运算标志
---local ITEM_STATE_CONFIG = {
---    [1] = "禁止扔",
---    [2] = "禁止交易",
---    [4] = "禁止存",
---    [8] = "禁止修",
---    [16] = "禁止出售",
---    [32] = "禁止爆出",
---    [64] = "丢弃消失",
---    [128] = "死亡必爆(死亡爆出来后，该属性就会删除，在捡起来戴上，就没有死亡必爆了)",
---    [256] = "禁止摆摊或上架拍卖行",
---    [512] = "掉落提示",
---    [1024] = "爆出消失",
---    [2048] = "上线消失",
---    [4096] = "禁止英雄使用",
---    [8192] = "禁止携带在人物左手镯位置",
---    -- [16384] = "禁止捡取", -- 已注释的配置保留
---    [32768] = "下线必掉",
---    [65536] = "禁止脱下",
---    [131072] = "禁止人物使用",
---}
---
---
---local rule = 0
---for flag in pairs(ITEM_STATE_CONFIG) do
---    rule = rule + flag
---end
---
---
----- 捡取任意物品前触发(注*拾取绑定在新三端中推荐使用 SetDropBindState 接口)
---function pickupitemfrontex(actor, makeIndex)
---    -- 设置物品状态
---    setitemstate(actor, makeIndex, rule, 1)
---
---    -- 遍历配置并检查状态
---    for flag, description in pairs(ITEM_STATE_CONFIG) do
---        local state = checkitemstate(actor, makeIndex, flag)
---        release_print("状态:", flag, description)
---        release_print("state:", type(state), tostring(state))
---    end
---
---    -- 获取并输出绑定规则
---    local bindingRule = getiteminfo(actor, makeIndex, 6)
---    release_print("绑定规则:", type(bindingRule), bindingRule)
---end
---```
function setitemstate(actor, makeIndex, bind, state) end

---判断绑定状态
---* actor 玩家对象
---* makeIndex 物品唯一Id
---* bind 绑定类型
---@param actor number|string
---@param makeIndex string
---@param bind integer
---@return boolean "true = 绑定 false = 非绑定"
---```lua
---local makeIndex = GetItemByPos(actor,1)
---if makeIndex then
---    local isBind=checkitemstate(actor,makeIndex,0)
---    release_print("判断绑定状态,是否绑定",isBind)
---else
---    release_print("判断绑定状态,没有装备")
---end
---```
function checkitemstate(actor, makeIndex, bind) end

---判断角色是否有该物品
---* actor 玩家对象
---* itemMakeIndex 物品唯一id
---@param actor number|string
---@param itemMakeIndex string
---@return integer "返回值 0-装备，1-背包 2-仓库, -1-不存在"
---```lua
---local makeIndex=GetItemByPos(actor,1)
---if makeIndex then
---    local isHave=hasitem(actor,makeIndex)
---    release_print("判断角色是否有该物品,是否有该物品",isHave) --0-装备，1-背包,2-仓库, -1-不存在
---else
---    release_print("判断角色是否有该物品,没有装备")
---end
---```
function hasitem(actor, itemMakeIndex) end

---修复所有装备
---* actor 玩家对象
---@param actor number|string
---```lua
---[[
---需要在npc脚本中使用,且文件头需设置itemstype表储存需要修复的装备位置
---Mir200\Envir\Market_Def\第一大陆\装备修复-3.lua
---]]
---itemstype = {1,2,3,4,5,6,7,8,9,10}
---function main(actor)
---    local msg =[[\]]
---    release_print(actor,msg)
---end
---function chijiu(actor)
---    local makeIndex = GetItemByPos(actor,1)
---    setdura(actor,itemMakeId,"=",2000)
---end
---function xiufu(actor)
---    repairall(actor)
---end
---```
function repairall(actor) end

---调整人物身上物品装备名字颜色
---* actor 玩家对象
---* makeIndex 物品唯一Id
---* color 颜色(0-255)颜色=0时恢复默认颜色
---@param actor number|string
---@param makeIndex string
---@param color integer
---```lua
---local makeIndex = GetItemByPos(actor,1)
---if makeIndex then
---    changeitemnamecolor(actor,makeIndex,150)
---else
---    release_print("调整人物身上物品装备名字颜色,没有装备")
---end
---```
function changeitemnamecolor(actor, makeIndex, color) end

---获取装备名字的颜色
---* actor 玩家对象
---* makeIndex 装备唯一Id
---@param actor number|string
---@param makeIndex string
---@return integer "颜色值:1~255(0=表格配置颜色)"
---```lua
---local item = GetItemByPos(actor,1)
---if item and item ~= "0" then
---    local color = getitemnamecolor(actor,item)
---    release_print("检测装备名字的颜色",color)
---else
---    release_print("检测装备名字的颜色,没有装备")
---end
---```
function getitemnamecolor(actor, makeIndex) end

---修改物品/装备名称
---* actor 玩家对象
---* itemMakeIndex 物品唯一ID
---* itemName 装备名字
---@param actor number|string
---@param itemMakeIndex string
---@param itemName string
---```lua
---changeitemname(actor,itemMakeIndex,"测试道具_lua22")
---```
function changeitemname(actor, itemMakeIndex, itemName) end

---获取物品原始各项数据库字段值参数
---* itemData 物品ID/物品名称
---* fieldName 字段名
---@param itemData integer|string
---@param fieldName string
---@return integer|string "物品原始各项数据库字段值参数"
---```lua
---local config = {
---    {"Name", "1列"},
---    {"StdMode", "2列"},
---    {"Shape", "3列"},
---    {"Weight", "4列"},
---    {"Anicount", "5列"},
---    {"Source", "6列"},
---    -- {"Reserved", "7列"},      --接口无法获取,服务器不读取
---    {"Looks", "8列"},
---    {"DuraMax", "9列"},
---    {"Attribute", "10列"},
---    {"Need", "11列"},
---    {"NeedLevel", "12列"},
---    {"NeedLevelParam", "12列","NeedLevel#后的数据"},
---    {"Price", "13列"},
---    {"Color", "14列"},
---    {"OverLap", "15列"}, --装备无法获取堆叠数量,固定返回值为0
---    -- {"Suit", "16列"}, --当前引擎已取消16列
---    {"Article", "17列"},
---    {"Job", "18列"},
---    {"effectParam", "19列"},
---    -- {"Desc", "20列"}, --接口无法获取,服务器不读取
---    -- {"pickset", "21列"}, --接口无法获取,服务器不读取
---    -- {"guangzhu", "22列"}, --接口无法获取,服务器不读取
---    -- {"auctionby", "23列"}, --接口无法获取,服务器不读取
---    {"sEffect", "24列"},
---    {"bEffect", "25列"},
---    {"rizhi", "27列"},
---    {"zblmtkz", "28列"},
---    {"ITEMPAEAM1", "29列"},
---    {"ITEMPAEAM2", "30列"},
---    -- {"Comparison", "31列"}, --接口无法获取,服务器不读取
---    {"suit", "32列"}, --32列的suitid更名为suit
---    {"Insurance", "33列"},
---    -- {"pickCondition", "34列"},--接口无法获取,服务器不读取
---}
---for _, v in ipairs(config) do
---    release_print("对应item/equip表",v[2],v[1]..(v[3] or ""),getdbitemfieldvalue("20000元宝", v[1]))
---end
---```
function getdbitemfieldvalue(itemData, fieldName) end

---获取背包物品数量
---* actor 玩家对象
---* itemName 物品名称
---* model 物品绑定状态<br>0=忽略;<br>1=非绑定;<br>2=绑定;
---@param actor number|string
---@param itemName string
---@param model integer
---@return integer "对应物品的数量"
---```lua
---local itemNum = getbagitemcount(actor,"木剑")
---release_print("itemNum",itemNum)
---```
function getbagitemcount(actor, itemName, model) end

---根据索引返回背包物品信息
---* actor 玩家对象
---* index 索引号,0开始
---@param actor number|string
---@param index integer
---@return string "物品唯一ID"
---```lua
---local makeIndex=getiteminfobyindex(actor,0)
---release_print("根据索引返回背包物品信息",makeIndex)
---```
function getiteminfobyindex(actor, index) end

---整理背包里的物品
---* actor 玩家对象
---@param actor number|string
---```lua
---refreshbag(actor)
---```
function refreshbag(actor) end

---获取仓库所有物品
---* actor 玩家对象
---@param actor number|string
---@return table "物品唯一Id列表"
---```lua
---getstorageitems(actor)
---```
function getstorageitems(actor) end

---获取背包物品列表
---* actor 玩家对象
---* itemName 道具名字
---* isBind 是否绑定<br>0=忽略<br>1=非绑定<br>2=绑定
---@param actor number|string
---@param itemName string
---@param isBind integer
---@return table "道具列表（唯一Id）"
---```lua
---local items
---if sMsg == "1" then
---    release_print("获取背包所有物品")
---    items = getbagitems(actor)
---elseif sMsg == "2" then
---    release_print("获取背包所有非绑定物品")
---    items = getbagitems(actor,nil,1)
---elseif sMsg == "3" then
---    release_print("获取背包所有绑定物品")
---    items = getbagitems(actor,nil,2)
---elseif sMsg == "4" then
---    release_print("获取背包非绑定木剑")
---    items = getbagitems(actor,"木剑",1)
---elseif sMsg == "5" then
---    release_print("获取背包绑定木剑")
---    items = getbagitems(actor,"木剑",2)
---elseif sMsg == "6" then
---    release_print("获取背包所有木剑")
---    items = getbagitems(actor,"木剑")
---end
---if type(items) ~= "table" then return end
---for i, itemobj in pairs(items or {}) do
---    local isBind = getiteminfo(actor,itemobj,6)
---    local itemName = getiteminfo(actor,itemobj,7)
---    release_print("item["..i.."]",itemName,isbind)
---end
---```
function getbagitems(actor, itemName, isBind) end

---从装备位扣除物品
---* actor 玩家对象
---* where [装备位置](https://engine-doc.996m2.com/web/#/91/51214 "装备位置")
---* desc 描述
---@param actor number|string
---@param where integer
---@param desc string
---@return boolean "true=扣除成功 false=扣除失败"
---```tips
---不推荐使用
---   与 getposbystdmode 一起使用时 如果是共享装备位（例如戒指手镯等）
---   会导致删除的位置不准确
---```
---```lua
---local isSuccess=delbodyitem(actor,1,"测试")
---release_print("从装备位扣除物品,是否成功扣除",isSuccess)
---```
function delbodyitem(actor, where, desc) end

---根据StdMode获取装备位
---* stdMode 道具StdMode
---@param stdMode integer
---@return integer "[装备位置](https://engine-doc.996m2.com/web/#/91/51214 "装备位置")"
---```lua
---local stdMode=getstditeminfo("木剑",2)
---local equipPos=getposbystdmode(stdMode)
---release_print("根据StdMode获取装备位",equipPos)
---```
function getposbystdmode(stdMode) end

---批量检测背包物品
---* actor 玩家对象
---* itemStr 物品名称#物品数量&物品名称#物品数量 (&=和的意思)
---* isBind 0=不检测;<br>1.非绑定<br>2.绑定
---* model 参数1中的物品名称是ID还是道具名称<br>0=道具名称<br>1=道具ID）
---@param actor number|string
---@param itemStr string
---@param isBind integer
---@param model integer
---@return boolean "是否满足条件"
---```lua
---local isHave=checkitems(actor,"金创药(小量)#100",0,0)
---release_print("批量检测背包物,是否满足",isHave)
---```
function checkitems(actor, itemStr, isBind, model, desc) end

---批量拿走背包物品
---* actor 玩家对象
---* itemStr 物品名称#物品数量&物品名称#物品数量 (&=和的意思)
---* isBind 存入变量名<br>判断扣除道具中是否有绑定的<br>0.非绑定<br>1.绑定
---* model 参数2中的物品名称是ID还是道具名称<br>0=道具名称<br>1=道具ID）
---* isBindFirst 0=按照默认顺序<br>1=优先绑定
---* desc 备注
---@param actor number|string
---@param itemStr string
---@param isBind string
---@param model integer
---@param isBindFirst integer
---@param desc string
---@return boolean "是否扣除成功"
---```lua
---local varName = "N0"
---local isSuccess=takes(actor,"木剑#3",varName,0,0,"批量拿走背包物品")
---release_print("批量拿走背包物品,是否成功",tostring(isSuccess),GetInt(0,actor,varName))
---```
function takes(actor, itemStr, isBind, model, isBindFirst, desc) end

---扣除角色穿戴的装备
---* actor 玩家对象
---* itemName 装备名称
---* num 扣除物品数量
---* desc 描述
---@param actor number|string
---@param itemName string
---@param num integer
---@param desc string
---@return boolean "是否扣除成功 传入数量大于1时返回值不准确 使用前注意先判断是否满足扣除条件"
---```tips
---不推荐使用
---   多数量时未全部扣除也会返回true
---```
---```lua
---local bool = takew(actor,"力量戒指",2)
---release_print("是否扣除成功,takew",bool)
---```
function takew(actor, itemName, num, desc) end

---批量给予物品
---* actor 玩家对象
---* itemStr 物品参数<br>物品名称#数量#绑定状态&物品名称#数量#绑定状态
---* desc 描述
---@param actor number|string
---@param itemStr string
---@param desc string
---```lua
---local itemStr = "木剑#1#128&开天#1"
---gives(actor,itemStr,"[gives]刷物品测试")
---```
function gives(actor, itemStr, desc) end

---检测身上佩戴的装备
---* actor 玩家对象
---* item_name 装备名称
---* item_num 检测数量
---@param actor number|string
---@param item_name string
---@param item_num integer
---@return boolean "是否穿戴"
---```lua
---if not checkitemw(actor,"金手镯",2) then
---    release_print(actor,"请先佩戴两个金手镯~")
---    return
---end
---```
function checkitemw(actor, item_name, item_num) end

---返回前端面板消息[合成系统]
---* actor 玩家对象
---* index 合成表idx
---* json json信息
---@param actor number|string
---@param index integer
---@param json string
---```lua
---function g_compounditem10000(actor,idx)
---    local data_json = string.format('{"action":"event","data":{"recog":%s,"param1":%s}}',"-2",idx)
---    sendactionofjson(actor,idx,data_json)
---end
---```
function sendactionofjson(actor, index, json) end

---增加回收组别
---* actor 玩家对象
---* recyclingType 回收组别，对应表中group字段(支持多类别配置用“;”分割)
---@param actor string
---@param recyclingType string
---```lua
---addrecyclingtype(actor,recyclingType)
---```
function addrecyclingtype(actor, recyclingType) end

---删除回收组别
---* actor 玩家对象
---* index 回收组别索引，-1表示清空回收组别
---@param actor string
---@param index string
---```lua
---delrecyclingtype(actor,index)
---```
function delrecyclingtype(actor, index) end

---执行回收
---* actor 玩家对象
---@param actor number|string
---```lua
---execrecycling(actor)
---```
function execrecycling(actor) end

---执行自动回收
---* actor 玩家对象
---* interval 检测间隔时间（单位：秒）
---* maxBagSpace 执行回收的背包空格
---@param actor string
---@param interval integer
---@param maxBagSpace integer
---```lua
-----执行自动回收,2(间隔2秒检测一次) 10(背包格子 <= 10)
---autorecycling(actor,2, 10)
---
---
-----关闭自动回收
---autorecycling(actor)
---```
function autorecycling(actor, interval, maxBagSpace) end

---装备加自定义属性
---* actor 玩家对象
---* itemmakeid 装备唯一id
---* type 属性组
---* job 职业
---* attId 属性id
---* attVar 属性值
---@param actor number|string
---@param itemmakeid string
---@param type integer
---@param job integer
---@param attId integer
---@param attVar integer
---```lua
---local bool1 = additemattr(actor, itemmakeid, 0, 3, 3, 1000)
---local bool2 = additemattr(actor, itemmakeid, 1, 3, 2, 1000)
----- actor：玩家对象
----- itemmakeid：物品唯一id
----- type：属性组
----- job：职业
----- attid：属性id
----- attvar：属性值
----- 注意：属性id 0-255 属性组0-255 单组属性最多100条
----- 职业：0：战士 1：法师 2：道士 3：全职业
---release_print("additemattr-物品加自定义属性","bool1="..tostring(bool1),"bool2="..tostring(bool2))
---```
function additemattr(actor, itemmakeid, type, job, attId, attVar) end

---物品加自定义属性表
---* actor 玩家对象
---* itemmakeid 物品唯一id
---* type 属性组(0-99)
---* job 职业
---* attTab 属性表{属性id = 属性值,属性id=属性值}
---@param actor number|string
---@param itemmakeid string
---@param type integer
---@param job integer
---@param attTab table
---@return boolean "是否添加成功"
---```lua
---local bool1 = additemattrEX(actor, itemmakeid, 0, 3, {[3]=1000,[2]=1000})
----- actor：玩家对象
----- itemmakeid：物品唯一id
----- type：属性组
----- job：职业
----- attTab：{属性id = 属性值,属性id=属性值}
----- 注意：属性id 0-255 属性组0-255 单组属性最多100条
----- 职业：0：战士 1：法师 2：道士 3：全职业
---release_print("additemattrEX-物品加自定义属性","bool1="..tostring(bool1))
---```
function additemattrEX(actor, itemmakeid, type, job, attTab) end

---获取物品自定义属性
---* actor 玩家对象
---* itemmakeid 装备唯一id
---* type 属性组
---@param actor number|string
---@param itemmakeid string
---@param type integer
---@return string "自定义属性"
---```lua
---local b= getitemattrtype(actor,makeid)
---release_print(tbl2json(b),"获取物品自定义属性")
---for index, value in pairs(b) do
---    release_print("getitemattr---"..value.."="..getitemattr(actor,makeid, value))
---end
---release_print("======================================================")
---```
function getitemattr(actor, itemmakeid, type) end

---获取物品自定义属性组
---* actor 玩家对象
---* makeid 物品唯一id
---@param actor number|string
---@param makeid string
---@return table "物品属性组"
---```lua
---local b= getitemattrtype(actor,makeid)
---
---release_print(tbl2json(b),"获取物品自定义属性")
---for index, value in pairs(b) do
---    release_print("getitemattr---"..value.."="..getitemattr(actor,makeid, value))
---end
---release_print("======================================================")
---```
function getitemattrtype(actor, makeid) end

---删除物品自定义属性
---* actor 玩家对象
---* makeIndex 物品唯一Id
---* type 属性组
---* attVar 属性id(为0时清除该组所有属性)
---@param actor number|string
---@param makeIndex string
---@param type integer
---@param attVar integer
---```lua
---local makeIndex=GetItemByPos(actor,1)
---delitemattr(actor, makeIndex, 0,3)
----- actor：玩家对象
----- makeIndex：物品唯一Id
----- type：属性组
----- attvar：属性id(为0时清除该组所有属性)
---release_print("获取物品自定义属性")
---```
function delitemattr(actor, makeIndex, type, attVar) end

---根据装备位置获取装备唯一id
---* actor 玩家对象
---* type [装备位置](https://engine-doc.996m2.com/web/#/91/51214 "装备位置")
---@param actor number|string
---@param type integer
---@return string "装备唯一id<br>(没有穿戴返回`'0'`)"
---```lua
---local makeid =  GetItemByPos(actor, 1)
---local aa,cc = GetInt(3,makeid,"qqqq")
---release_print(aa,cc)
---```
function GetItemByPos(actor, type) end

---物品设置标记
---* actor 玩家对象
---* makeIndex 装备唯一ID
---* index 标记号
---* flag 标记
---@param actor number|string
---@param makeIndex string
---@param index integer
---@param flag integer
---```tips
---废弃-效率低下
---```
---```lua
---for i = 0,31 do
---    local falg = GetItemFlag(actor,item,i) == 0 and 1 or 0
---    SetItemFlag(actor,item,i,falg)
---    release_print("给物品设置标记",i,falg)
---end
---```
function SetItemFlag(actor, makeIndex, index, flag, str) end

---物品获取标记
---* actor 玩家对象
---* makeIndex 装备唯一ID
---* index 标记号
---@param actor number|string
---@param makeIndex string
---@param index integer
---@return integer "标记"
---```tips
---废弃-效率低下
---```
---```lua
---for i = 0,31 do
---    local falg = GetItemFlag(actor,item,i)
---    release_print("物品获取标记",i,falg)
---end
---```
function GetItemFlag(actor, makeIndex, index) end

---物品设置投保次数
---* actor 玩家对象
---* makeIndex 装备唯一ID
---* num 投保次数
---@param actor number|string
---@param makeIndex string
---@param num number
---```lua
---local count = GetInsurance(actor,item) + 1
---local bool = SetInsurance(actor,item,count)
---release_print("物品获取投保次数",count)
---```
function SetInsurance(actor, makeIndex, num) end

---物品获取投保次数
---* actor 玩家对象
---* makeIndex 装备唯一ID
---@param actor number|string
---@param makeIndex string
---@return integer "投保次数"
---```lua
---local count = GetInsurance(actor,item)
---release_print("物品获取投保次数",count)
---```
function GetInsurance(actor, makeIndex) end

---物品设置剩余时间
---* actor 玩家对象
---* makeIndex 装备唯一ID
---* time 时间
---@param actor number|string
---@param makeIndex string
---@param time integer
---```lua
---local _time = GetItemLife(actor,item) + 60
---local bool = SetItemLife(actor,item,_time)
---release_print("物品获取剩余时间 + 60s",_time)
---```
function SetItemLife(actor, makeIndex, time) end

---物品获取剩余时间
---* actor 玩家对象
---* makeIndex 装备唯一ID
---@param actor number|string
---@param makeIndex string
---@return integer "时间"
---```lua
---local _time = GetItemLife(actor,item)
---release_print("物品获取剩余时间",_time)
---```
function GetItemLife(actor, makeIndex) end

---物品设置星级
---* actor 玩家对象
---* makeIndex 装备唯一ID
---* starNum 星星数
---@param actor number|string
---@param makeIndex string
---@param starNum integer
---@return boolean "是否设置成功"
---```lua
---local star = GetItemStar(actor,item) + 1
---local bool = SetItemStar(actor,item,star)
---release_print("物品设置星级",star)
---```
function SetItemStar(actor, makeIndex, starNum) end

---物品获取星级
---* actor 玩家对象
---* makeIndex 装备唯一ID
---@param actor number|string
---@param makeIndex string
---@return integer "星星数"
---```lua
---local star = GetItemStar(actor,item)
---release_print("物品获取星级",star)
---```
function GetItemStar(actor, makeIndex) end

---获取玩家身上所有装备
---* actor 玩家对象
---@param actor number|string
---@return table "玩家装备数据 makeid = index"
---```lua
-----返回结构
---local tab = {
---    makeid1= index1,
---    makeid2= index2,
---    makeid3= index3,
---    makeid4= index4,
---    makeid5= index5,
---}
---
---local data = GetAllEquip(actor)
---for makeid, index in pairs(data) do
---    release_print(makeid,index)
---end
---```
function GetAllEquip(actor) end

---设置物品幸运值
---* actor 玩家对象
---* makeIndex 物品唯一id
---* value 幸运值
---@param actor number|string
---@param makeIndex string
---@param value integer
---```lua
---local makeIndex=GetItemByPos(actor,1)
---SetItemLuck(actor,makeIndex,3)
---release_print("设置物品幸运值")
---```
function SetItemLuck(actor, makeIndex, value) end

---获取物品幸运值
---* actor 玩家对象
---* makeIndex 物品唯一id
---@param actor number|string
---@param makeIndex string
---@return integer "幸运值"
---```lua
---local makeIndex=GetItemByPos(actor,1)
---local luck=GetItemLuck(actor,makeIndex)
---release_print("获取物品幸运值",luck)
---```
function GetItemLuck(actor, makeIndex) end

---设置装备开孔状态
---* actor 玩家对象
---* makeIndex 唯一id
---* cellPos 孔位置（0~19）
---* type 0：闭孔，1：开孔
---@param actor number|string
---@param makeIndex string
---@param cellPos integer
---@param type integer
---@return boolean "操作是否成功"
---```lua
---local item = GetItemByPos(actor,1)
---if item then
---    local config = {}
---    for i = 0, 19 do
---        local bool = SetInlayCell(actor,item,i,1)
---        release_print("装备开孔",i,"是否成功",bool,"是否开孔",GetInlayCell(actor,item,i))
---    end
---else
---    release_print("装备开孔,没有装备")
---end
---```
function SetInlayCell(actor, makeIndex, cellPos, type) end

---获取开孔状态
---* actor 玩家对象
---* makeIndex 唯一id
---* cellPos 孔位置
---@param actor number|string
---@param makeIndex string
---@param cellPos integer
---@return boolean "false：未开孔；true：开孔；"
---```lua
---local item = GetItemByPos(actor,1)
---if item then
---    local config = {}
---    for i = 0, 19 do
---        release_print("装备是否开孔",GetInlayCell(actor,item,i))
---    end
---else
---    release_print("装备开孔,没有装备")
---end
---```
function GetInlayCell(actor, makeIndex, cellPos) end

---镶嵌/拆卸宝石
---* actor 玩家对象
---* makeIndex 唯一id
---* cellPos 孔位置（0~19）
---* type 镶嵌宝石idx；0：拆卸宝石不返还；1：拆卸宝石返还
---@param actor number|string
---@param makeIndex string
---@param cellPos integer
---@param type integer
---@return boolean "操作是否成功"
---```lua
---local item = GetItemByPos(actor,1)
---local gemIdx = 50178
---if item then
---    local config = {}
---    for i = 0, 19 do
---        local bool = SetInlayGem(actor,item,i,gemIdx + i)
---        release_print("宝石镶嵌",i,"是否成功",bool,"是否镶嵌",GetInlayGem(actor,item,i))
---    end
---else
---    release_print("宝石镶嵌,没有装备")
---end
---```
function SetInlayGem(actor, makeIndex, cellPos, type) end

---获取宝石镶嵌
---* actor 玩家对象
---* itemMakeIndex 唯一id
---* cellPos 孔位置（0~19）
---@param actor number|string
---@param itemMakeIndex string
---@param cellPos integer
---@return integer "宝石IDX（-1=未镶嵌,0=未开孔；nil=获取出错）"
---```lua
---local item = GetItemByPos(actor,1)
---if item then
---    local config = {}
---    for i = 0, 19 do
---        release_print("获取宝石镶嵌",i,"是否镶嵌",GetInlayGem(actor,item,i))
---    end
---else
---    release_print("宝石镶嵌,没有装备")
---end
---```
function GetInlayGem(actor, itemMakeIndex, cellPos) end

---获取装备镶嵌情况
---* actor 玩家对象
---* makeIndex 唯一id
---@param actor number|string
---@param makeIndex string
---@return table "镶嵌情况"
---```lua
---local item = GetItemByPos(actor,1)
---if item then
---    local config = GetInlayInfo(actor,item)
---    release_print(tbl2json(config),"获取装备镶嵌详情")
---else
---    release_print("宝石镶嵌,没有装备")
---end
---```
function GetInlayInfo(actor, makeIndex) end

---获取物品最大持久度
---* actor 玩家对象
---* makeIndex 唯一id
---@param actor number|string
---@param makeIndex string
---@return integer "物品最大持久度"
---```lua
---local item = GetItemByPos(actor,1)
---if item then
---    local makeIndex=getiteminfo(actor,item,1)
---    release_print("获取物品最大持久度",GetMaxDura(actor,makeIndex))
---end
---```
function GetMaxDura(actor, makeIndex) end

---修改物品最大持久度
---* actor 玩家对象
---* makeIndex 唯一id
---* type "+""-""="
---* value 持久度值
---@param actor number|string
---@param makeIndex string
---@param type string
---@param value integer
---```lua
---local item = GetItemByPos(actor,1)
---if item then
---    local makeIndex=getiteminfo(actor,item,1)
---    SetMaxDura(actor,makeIndex,"+",100)
---    release_print("修改物品持久度",GetMaxDura(actor,makeIndex))
---end
---```
function SetMaxDura(actor, makeIndex, type, value) end

---删除物品
---* actor 玩家对象
---* itemtab 物品table<br>{[物品id]=删除数量}
---* bind 0=忽略 <br>1=扣除非绑定物品<br>2=扣除绑定物品
---* istype 0=仅背包 <br>1=背包和身上 优先背包<br>2=背包和身上 优先身上
---* desc 描述
---@param actor number|string
---@param itemtab table
---@param bind integer
---@param istype integer
---@param desc string
---@return boolean "是否成功"
---```lua
---local itemtab = {
---    [50014] = 1, ---装备
---    [2] = 10000, ---货币
---    [10036] = 3, ---堆叠道具
---}
---local isSuccess=DelItem(actor,itemtab,1,2,"desc")
---release_print("删除物品，是否成功",isSuccess)
---```
function DelItem(actor, itemtab, bind, istype, desc) end

---附加随机极品属性
---* actor 玩家对象
---* item 装备唯一id
---* id 极品属性id，例：ID1#ID2 (cfg_quality.xls表ID)
---* num 最大极品属性条数
---* type 0=叠加<br>1=覆盖
---@param actor number|string
---@param item string
---@param id string
---@param num integer
---@param type integer
---```lua
---local makeIndex=GetItemByPos(actor,1)
---setitemquality(actor,makeIndex,"1#2",1)
---release_print("设置附加随机极品属性")
---```
function SetItemQuality(actor, item, id, num, type) end

---附加固定极品属性
---* actor 玩家对象
---* item 装备唯一id
---* operate 运算符(+,-,=)
---* att 属性ID#数值(cfg_att_score.xls表ID)
---@param actor number|string
---@param item string
---@param operate string
---@param att string
---```lua
---local makeIndex=GetItemByPos(actor,1)
---setquality(actor,makeIndex,"+","1#2|2#3")
---release_print("设置附加固定极品属性")
---```
function SetQuality(actor, item, operate, att) end

---获取极品属性
---* actor 玩家对象
---* makeIndex 唯一id
---@param actor number|string
---@param makeIndex string
---@return string "属性Id#属性值|属性Id#属性值|属性Id#属性值.."
---```lua
---local makeIndex = GetItemByPos(actor, 1)
---local str=GetQuality(actor,makeIndex)
---```
function GetQuality(actor, makeIndex) end

---标记物品为极品
---* actor 玩家对象
---* item 装备唯一ID
---* isJp 0/1是否为极品
---@param actor number|string
---@param item string
---@param isJp integer
---```lua
---local item = GetItemByPos(actor, 1)
---if item then
---    SetItemJP(actor,item,1)
---    release_print("标记物品为极品")
---end
---```
function SetItemJP(actor, item, isJp) end

---判定物品是否极品
---* actor 玩家对象
---* item 装备唯一ID
---@param actor number|string
---@param item string
---@return integer "0/1是否为极品"
---```lua
---local item = GetItemByPos(actor, 1)
---if item then
---    local isJP=isitemjp(actor,item)
---    release_print("判定物品是否极品,是否极品",isJP,type(isJP))
---end
---```
function isitemjp(actor, item) end

---绑定角色掉落规则设置
---* actor 玩家对象
---* param1 1=开启掉落规则<br>0=关闭掉落规则
---@param actor number|string
---@param param1 integer
---```tips
---打怪掉落的物品根据表配置的规则掉落，由命令设置开关
---注:配置道具表(cfg_equip/cfg_item)43列配置绑定规则（道具18列与43列为混合型，关闭规则时只清除43列规则）
---```
---```lua
----- 开启角色掉落规则
---SetDropBindState(actor, 1)
---
---
----- 关闭角色掉落规则
---SetDropBindState(actor, 0)
---```
function SetDropBindState(actor, param1) end

---设置物品自定义属性显示
---* actor 玩家对象
---* itemmakeid 装备唯一id
---* type 属性组别（0-99）
---* desc 内容显示(见上方功能设定：)
---@param actor number|string
---@param itemmakeid string
---@param type integer
---@param desc string
---```tips
---自定义属性标题配置：[跳转](https://engine-doc.996m2.com/web/#/91/91968 "跳转")
---
---json desc参数详情:
---desc = =空时表示清理;
---区域宽:区域高|SFX:特效ID:X坐标:Y坐标:缩放比例|IMG:图片名:X坐标:Y坐标:缩放比例|DESC:备注表ID:X坐标:Y坐标:缩放比例
---```
---```lua
----- 内容显示）=空时表示清理  区域宽:区域高|SFX:特效ID:X坐标:Y坐标:缩放比例|IMG:图片名:X坐标:Y坐标:缩放比例|DESC:备注表ID:X坐标:Y坐标:缩放比例
---local msg = ""
---msg = msg .. "500:116|SFX:6308:-39:110:0.8|SFX:1036:16:60:0.5|SFX:6043:16:22:0.6|IMG:007:130:96:1"
---msg = msg .. "|RTEXT::0:100:1|RTEXT"
---msg = msg .. ":"
---msg = msg .. "\\"
---msg = msg .. "\\"
---msg = msg .. "\\:69:0:1"
---msg = msg .. "|IMG:011:220:00:1"
---msg = msg .. "|IMG:011:220:24:1"
---msg = msg .. "|IMG:011:220:48:1"
---msg = msg .. "|IMG:011:220:72:1"
---msg = string.format(msg, 66, 66, 6600, 6600)
---customitemtext(actor, obj, 1, msg)
---SendItemVarToc(actor, makeindex)
---```
function customitemtext(actor, itemmakeid, type, desc) end

---精准爆率是否允许掉落
---* actor 玩家对象
---* param 1=允许掉落<br>0=阻止掉落
---@param actor number|string
---@param param integer
---```lua
----- 精准爆率需要使用接口 AllowDrop(actor,1) 才允许掉落,默认不掉
---function drop_func(actor,itemName,mon,...)
---    -- 允许掉落
---    AllowDrop(actor,1)
---
---    -- 阻止掉落
---    -- AllowDrop(actor,0)
---end
---```
function AllowDrop(actor, param) end


---获取物品属性组
---* actor 玩家对象
---* item 物品对象
---* attr_id 属性组ID
---@param actor number|string
---@param item number|string
---@param attr_id integer
---@return table "属性组表"
---```lua
---local attr_id = 2
---local attr_tab = GetItemAttrTbl(actor,item,attr_id)
---release_print("物品获取属性组",tbl2json(attr_tab))
---```
function GetItemAttrTbl(actor, item, attr_id) end

---获取物品属性组数量
---* actor 玩家对象
---* item 物品对象
---* attr_id 属性组ID (支持传入-1获取所有属性组的属性条数)
---@param actor number|string
---@param item number|string
---@param attr_id integer
---@return integer "属性组数量"
---```lua
---local attr_id = 2 --支持传入-1获取所有属性组的属性条数
---local count = GetItemAttrCount(actor,item,attr_id)
---release_print("物品获取属性组数量",count)
---```
function GetItemAttrCount(actor, item, attr_id) end

-- [Source: 接口^系统.lua]

---发送视野内广播消息
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
---```tips
---广播消息发送给视野内的客户端(并非聊天框)
---```
---```lua
---sendrefluamsg(actor, 998, 1, 2, 3, "abc")
---```
function sendrefluamsg(actor, msgId, param1, param2, param3, sMsg) end

---发送地图消息
---* mapId 地图id
---* msg 请看上面的功能设定：Json消息内容
---@param mapId integer
---@param msg string
---```tips
---Json消息内容
---参数:Msg      类型:string  注释:消息内容
---参数:FColor   类型:integer 注释:前景色(可为空)
---参数:BColor   类型:integer 注释:背景色(可为空)
---参数:Type     类型:integer 注释:<br>消息类型:<br>1=系统频道;<br>2=行会频道;<br>3=组队频道;<br>4=顶部跑马灯公告;<br>5=屏幕跑马灯公告,可控制Y轴;<br>6=聊天上方公告;<br>8=固定聊天;<br>9=systemtips;<br>10=可控制xy坐标广播;<br>11=屏幕跑马灯公告,系统公告;
---参数:Time     类型:integer 注释:倒计时(秒) (可为空)
---参数:SendName 类型:string  注释:发送人(可为空)
---参数:SendId   类型:string  注释:发送ID（可为空）
---```
---```lua
---local mapID= getbaseinfo(actor,3)
---for i = 1, 13 do
---    sendmapmsg(mapID, '{"Msg":"测试消息[sendmapmsg]'..i..'","Type":'..i..'}')
---end
---```
function sendmapmsg(mapId, msg) end

---设置聊天前缀
---* actor 玩家对象
---* prefix 前缀信息，空则清除聊天前缀
---* color 前缀颜色
---@param actor number|string
---@param prefix string
---@param color integer
---```lua
---setchatprefix(actor,"Prefix",20)
---```
function setchatprefix(actor, prefix, color) end

---打印消息到控制台
---* ... 打印内容
---@param ... any
---```lua
---release_print("打印内容")
---```
function release_print(...) end

---发送自定义颜色的文字信息
---* actor 玩家对象
---* FColor 前景色
---* BColor 背景色
---* Msg 消息内容
---* flag 发送对象：<br>0:自己；<br>1：所有人：<br>2：行会；<br>3：当前地图；<br>4：组队；
---@param actor number|string
---@param FColor integer
---@param BColor integer
---@param Msg string
---@param flag integer
---```lua
---guildnoticemsg(actor,10,50,"Msg",0)
---```
function guildnoticemsg(actor, FColor, BColor, Msg, flag) end

---发送聊天框固顶信息
---* actor 玩家对象
---* type <br>发送对象<br>0-所有人<br>1-自己
---* FColor 字体景色
---* BColor 背景色
---* time 显示时间，自动替换内容中的%d
---* msg 消息内容
---* shoeFlag 是否显示人物名称<br>0-是<br>1-否
---@param actor number|string
---@param type integer
---@param FColor integer
---@param BColor integer
---@param time integer
---@param msg string
---@param shoeFlag integer
---```lua
---sendtopchatboardmsg(actor,1,255,252,10,"Lua聊天框固顶信息剩余[%d]秒",1)
---```
function sendtopchatboardmsg(actor, type, FColor, BColor, time, msg, shoeFlag) end

---发送屏幕中间大字体信息
---* actor 玩家对象
---* FColor 前景色
---* BColor 背景色
---* Msg 消息内容
---* flag <br>发送对象：<br>0=发送给自己；<br>1=发送所有人物；<br>2=发送行会；<br>3=发送国家；<br>4=发送当前地图；<br>7=组队
---* time 显示时间
---* func 倒计时结束后跳转的脚本位置，对应脚本需要放QFunction脚本中，使用跳转时，消息文字提示中必须包含%d，用于显示倒计时时间
---@param actor number|string
---@param FColor integer
---@param BColor integer
---@param Msg string
---@param flag integer
---@param time integer
---@param func string
---```lua
---[[显示30秒：]]
---sendcentermsg(actor,180,251,"这是一个居中显示的公告.",0,30)
---
---[[执行倒计时标签(注意:文字提示中必须包含%d)：]]
---sendcentermsg(actor,180,251,"还剩余%d发放新手奖励.",0,30,"@givenewhumanitem")
---```
function sendcentermsg(actor, FColor, BColor, Msg, flag, time, func) end

---发送屏幕滚动信息
---* actor 玩家对象
---* type <br>模式，发送对象<br>0-所有人<br>1-自己
---* FColor 字体景色
---* BColor 背景色
---* Y Y坐标
---* scroll 滚动次数
---* msg 消息内容
---@param actor number|string
---@param type integer
---@param FColor integer
---@param BColor integer
---@param Y integer
---@param scroll integer
---@param msg string
---```lua
---sendmovemsg(actor,0,10,50,200,2,"发送屏幕滚动信息")
---```
function sendmovemsg(actor, type, FColor, BColor, Y, scroll, msg) end

---屏幕任意坐标发送公告信息
---* actor 玩家对象
---* type <br>消息类型<br>0-全服<br>1-自己<br>2-组队<br>3-行会<br>4-当前地图
---* msg 消息内容
---* FColor 前景色
---* BColor 背景色
---* X X坐标
---* Y Y坐标
---@param actor number|string
---@param type integer
---@param msg string
---@param FColor integer
---@param BColor integer
---@param X integer
---@param Y integer
---```lua
---sendcustommsg(actor,0,"当前是自定义坐标333,33显示0,249色显示",0,249,500,333)
---```
function sendcustommsg(actor, type, msg, FColor, BColor, X, Y) end

---主屏幕弹出公告
---* actor 玩家对象
---* FColor 前景色
---* BColor 背景色
---* msg 公告内容
---* type 模式，发送对象<br>0-自己<br>1-所有人<br>2-行会<br>3-当前地图<br>4-组队
---* time 显示时间
---@param actor number|string
---@param FColor integer
---@param BColor integer
---@param msg string
---@param type integer
---@param time integer
---```lua
---sendmsgnew(actor,FColor,BColor,msg,type,time)
---```
function sendmsgnew(actor, FColor, BColor, msg, type, time) end

---显示倒计时信息提示
---* actor 玩家对象
---* msg 消息内容
---* time 时间，秒
---* FColor 字体景色
---* mapdelete 换地图是否删除<br>0-不删除<br>1-删除
---* tag 跳转的函数字段
---* X X坐标
---@param actor number|string
---@param msg string
---@param time integer
---@param FColor integer
---@param mapdelete integer
---@param tag string
---@param X integer
---```lua
---senddelaymsg(actor,msg,time,FColor,mapdelete,tag,X)
---```
function senddelaymsg(actor, msg, time, FColor, mapdelete, tag, X) end

---过滤全服提示信息
---* actor 玩家对象
---* flag 是否过滤<br>0-不过滤<br>1-过滤
---@param actor number|string
---@param flag integer
---```lua
---local flag = getflagstatus(actor,1) == 0 and 1 or 0
---filterglobalmsg(actor,flag)
---setflagstatus(actor,1,flag)
---```
function filterglobalmsg(actor, flag) end

---弹出窗口消息
---* actor 玩家对象
---* info 弹出内容
---* flag1 确定后跳转的接口
---* flag2 取消后跳转的接口
---@param actor number|string
---@param info string
---@param flag1 string
---@param flag2 string
---```lua
---messagebox(actor,"系统消息\\待填写的文本..","@func_ok,1,2,3","@func_no,4,5,6")
---
---
---
---
---function func_ok(actor,...)
---    release_print("func_ok",...)
---end
---
---
---
---
---function func_no(actor,...)
---    release_print("func_no",...)
---end
---```
function messagebox(actor, info, flag1, flag2) end

---调用触发
---* actor 玩家对象
---* type <br>触发模式：<br>0小组成员触发<br>1行会成员触发<br>2当前地图的人物触发<br>3当前角色范围的人物触发
---* label 跳转后的接口
---* range 触发模式=3时<br>指定的范围大小
---@param actor number|string
---@param type integer
---@param label string
---@param range integer
---```tips
---label 变更为大小写敏感
---```
---```lua
---gotolabel(actor,2,"gotolabelfunc,1,2,3")
---
---function gotolabelfunc(actor,...)
---    release_print("gotolabelfunc",getbaseinfo(actor,1),...)
---end
---```
function gotolabel(actor, type, label, range) end

---新手界面引导功能
---* actor 玩家对象
---* NPCIndex 界面ID
---* btnIndex 按钮索引
---* sMsg 显示的内容
---@param actor number|string
---@param NPCIndex integer|string
---@param btnIndex integer
---@param sMsg string
---```lua
---[[
---参数2：界面ID(主界面ID;0=NPC面板;1=背包道具;2=角色界面;3=英雄背包;7=背包面板;40=英雄头像;200=PC端下方3个按钮;任务主窗口引导=任务的ID  9-12=商城面板
---201=右下角切换按钮 202=玩家主面板 203=英雄主面板)
---参数3：按钮ID(每个界面自己定义的ID)  例如：  id=221就是NPC按钮ID
---当参数1=（1=背包道具）      参数2=物品唯一ID
---当参数1=（7=背包面板)   参数2=按钮ID
---当参数1=（9-12=商城面板）   参数2=商城序号ID
---当参数1=（202=玩家主面板）  参数2=人物1-6装备界面页签
---当参数1=（203=英雄主面板）  参数2=英雄1-6装备界面页签
---参数4：引导文字内容
---]]
---
---
---例子一:
---local str = ""
---say(actor,str)
---navigation(actor,0,221,"测试提示1")
---
---
---例子二:
---navigation(actor,202,1,"测试提示2")
---
---
---例子三: -- 引导背包物品
---itemMakeIndex = getiteminfo(actor,item,1)
---navigation(actor,1,itemMakeIndex,"测试提示3")
---
---
---例子四: -- 引导背包按钮
---addbutton(actor, 7, 996, "")
---navigation(actor,7,996,"测试提示4")
---```
function navigation(actor, NPCIndex, btnIndex, sMsg) end

---查看别人面板信息
---* actor 玩家对象
---* useId 其他玩家的UserID
---* winId 面板ID：101-装备，106-称号，1011-时装
---@param actor number|string
---@param useId string
---@param winId integer
---```lua
---local Players = getplaycount("1001", 1, 1)
---for _, actor_ in ipairs(Players) do
---    local userid = getbaseinfo(actor_, 2)
---    viewplayer(actor, userid, 101)
---end
---```
function viewplayer(actor, useId, winId) end

---调用TXT脚本命令
---* actor 玩家对象
---* filename 文件名
---* label 标签
---@param actor number|string
---@param filename string
---@param label string
---```tips
---不推荐使用
---   lua与txt交互会有一定的额外消耗
---```
---```lua
---[[表示调用执行“测试.txt”文件中的[@测试]标签内容
---“测试.txt”默认读取 Mir200\Envir\Market_def\ 文件夹下，如果有子文件夹，则加载文件名之前]]
---callscript(actor, '测试'， '@测试')
---
---
---
---
---
---[["测试.txt" 位于 Mir200\Envir\Market_def\盟重\ 文件夹下]]
---callscript(actor, '盟重/测试'， '@测试')
---```
function callscript(actor, filename, label) end

---调用传奇脚本命令
---* actor 玩家对象
---* scriptname 脚本接口
---* ... 参数1~参数10
---@param actor number|string
---@param scriptname string
---@param ... any
---```tips
---不推荐使用
---   lua与txt交互会有一定的额外消耗
---```
---```lua
---callscriptex(self, "SENDMSG", 0, "缝合怪")
---```
function callscriptex(actor, scriptname, ...) end

---调用传奇脚本命令2
---* actor 玩家对象
---* scriptName 脚本接口
---* ... 参数1~参数10
---@param actor number|string
---@param scriptName string
---@param ... any
---@return boolean "true/false"
---```tips
---不推荐使用
---   lua与txt交互会有一定的额外消耗
---```
---```lua
---local returnVal=callcheckscriptex(actor,scriptName,arr)
---```
function callcheckscriptex(actor, scriptName, ...) end

---获取全局信息
---* id 0: 全局玩家信息<br>1: 部署时间开始 开发天数 开区天数建议获取常量<$KFDAY><br>2: 部署时间开始 开服时间 开服时间建议获取常量<$showtime><br>3: 合服次数<br>4: 合服时间<br>5: 服务器IP<br>6: 玩家数量<br>7: 背包最大数量<br>8: 引擎版本号（以线上版本为准,测试版、本地版可能存在差异）<br>9：游戏id<br>10：服务器名称获取异常,用常量<$SERVERNAME><br>11：服务器id<br>15：引擎标识，老三端为0，新三端为1
---@param id integer
---@return integer "相应全局信息"
---```lua
---release_print("当前开服天数"..globalinfo(1).."在线玩家数:"..globalinfo(6))
---```
function globalinfo(id) end

---获取服务器上64位时间戳
---@return integer "服务器上64位时间戳"
---```lua
-----系统启动时间,非Unix时间戳;需要获取Unix时间戳使用 os.time()
---release_print(gettcount64())
---```
function gettcount64() end

---加载文件1
---* path 文件路径
---@param path string
---```tips
---`include` 函数用于加载并执行指定的Lua文件。与标准的 `require` 函数不同，`include` 每次调用都会重新加载文件。
---```
---```lua
---ssrNetMsgCfg = include("QuestDiary/net/NetMsgCfg.lua")
---ssrNetMsgCfg = require("Envir/QuestDiary/net/NetMsgCfg")
---```
function include(path) end

---加载文件2
---* path 文件路径
---@param path string
---```tips
---与 `include` 不同，`require` 具有模块缓存机制，同一模块只会被加载一次，提高了性能和内存效率。
---```
---```lua
---ssrNetMsgCfg = include("QuestDiary/net/NetMsgCfg.lua")
---ssrNetMsgCfg = require("Envir/QuestDiary/net/NetMsgCfg")
---```
function require(path) end

---微秒定时器初始化
---```lua
---mmsreset()
---release_print("222222222")
---
---local a = 1+1
---release_print("333333333")
---
---release_print(mmspass(1))
---release_print("4444444444")
---```
function mmsreset() end

---获取微秒定时器经过时间
---* type 类型：<br>0继续记录<br>1停止记录
---@param type integer
---@return integer "获取微秒定时器经过时间"
---```tips
---1. 先初始化然后 再获取
---```
---```lua
---mmsreset()
---
---local a = 1+1
---
---release_print(mmspass(0))
---
---local c = 1+1
---local d = c+1
---local e = d+1
---
---release_print(mmspass(1))
---```
function mmspass(type) end

---HTTP请求(post)
---* url 网页地址
---* format 发送格式 0=TXT; 1=json
---* param1 参数1
---* param2 参数2
---* param3 参数3
---* param4 参数4
---@param url string
---@param format number
---@param param1 string
---@param param2 string
---@param param3 string
---@param param4 string
---```lua
----- 示例1：发送JSON格式数据 (format=0)
---local tempTable = {
---    info = "demo1",
---    uid = actor,
---    name = getbaseinfo(actor,1),
---}
---local tempTable2 = {
---    info = "demo2",
---}
---local tempTable3 = {
---    info = "demo3",
---}
---httppost("http://localhost:8080/test_post.php", 1, tbl2json(tempTable), tbl2json(tempTable2), tbl2json(tempTable3))
---
---
----- 示例2：发送文本格式数据 (format=1)
---httppost("http://localhost:8080/test_post.php", 0, 996, "一段任意编辑的文本信息", "abcdefg")
---```
function httppost(url, format, param1, param2, param3, param4) end

---是否满足指定条件显示（canshowshopitem触发中使用）
---* actor 玩家对象
---* canShow 1-不显示，0-显示
---@param actor number|string
---@param canShow integer
---```lua
---notallowshow(actor,canShow)
---```
function notallowshow(actor, canShow) end

---是否满足指定条件购买（canbuyshopitem触发中使用）
---* actor 玩家对象
---* canBuy 1-不允许购买，0-允许购买
---@param actor number|string
---@param canBuy integer
---```lua
---notallowbuy(actor,canBuy)
---```
function notallowbuy(actor, canBuy) end

---获取IP地址下所有的在线角色名称列表
---* IPAddress IP地址
---* getAllPlayers 是否获取全部玩家列表0/1(默认限制返回200个)
---@param IPAddress string
---@param getAllPlayers integer
---```lua
---local varName = "S1"
---local ipstr = getconst(actor,"")
----- callscriptex(actor,"getplaylistbyip",ipstr,varName)
---local list = getplaylistbyip(ipstr,0)
----- local list = getplaydef(actor,varName)
---release_print("list",ipstr,tbl2json(list))
---```
function getplaylistbyip(IPAddress, getAllPlayers) end

---发送登陆信息[反外挂]
---* userId 玩家唯一ID
---@param userId string
---```lua
---sendloginmsg(userId)
---```
function sendloginmsg(userId) end

---检测登陆信息[反外挂]
---* userId 玩家唯一ID
---@param userId string
---```lua
---logincheckent(userId)
---```
function logincheckent(userId) end

---发送聊天框消息
---* actor 玩家对象
---* type 1:自己<br>2:全服<br>3:行会<br>4:当前地图<br>5:组队
---* msg 消息内容, 详情请看上面的功能设定：Json消息内容
---@param actor number|string
---@param type integer
---@param msg string
---```tips
---msg Json格式: {"Msg":"xxx","FColor":255,"BColor":255,"Type":1,"Time":3,"SendName":"xxx","SendId":"123"}
---参数:Msg       类型:string 注释:消息内容
---参数:FColor    类型:number 注释:前景色(可为空)
---参数:BColor    类型:number 注释:背景色(可为空)
---!!!!!!!!Type:1,2,3,9,12支持富文本格式，Type:4,5,6,8,10,11,13支持原始富文本格式!!!!!!!!!
---参数:Type      类型:number 注释:<br>1 系统频道; <br>2 行会频道; <br>3 组队频道; <br>4 顶部跑马灯公告; <br>5 屏幕跑马灯公告 可控制Y轴; <br>6 聊天上方公告; <br>8 固定聊天; <br>9 systemtips; <br>10 可控制xy坐标广播; <br>11 屏幕跑马灯公告 系统公告; <br>12 系统频道 ~~带超链~~; <br>13 系统公告缩放
---参数:Time      类型:number 注释:倒计时(秒) (可为空)
---参数:SendName  类型:string 注释:发送人(可为空)
---参数:SendId    类型:string 注释:发送ID（可为空）
---```
---```lua
---1 系统频道
---sendmsg(actor,1, '{"Msg":"<a href=\'openwin#31000\'><font color=\'#FF33FF\'>sendmsg[富文本]'.."1"..'</font></a>","Type":1}')
---```
---```lua
---2 行会频道
---sendmsg(actor,1, '{"Msg":"<a href=\'openwin#31000\'><font color=\'#FF33FF\'>sendmsg[富文本]'.."2"..'</font></a>","Type":2}')
---```
---```lua
---3 组队频道
---sendmsg(actor,1, '{"Msg":"<a href=\'openwin#31000\'><font color=\'#FF33FF\'>sendmsg[富文本]'.."3"..'</font></a>","Type":3}')
---```
---```lua
---4 顶部跑马灯公告
---sendmsg(actor,1, '{"Msg":"<sendmsg[原始富文本]4/FCOLOR=254>","Type":4}')
---```
---```lua
---5 屏幕跑马灯公告 可控制Y轴
---sendmsg(actor,1, '{"Msg":"<sendmsg[原始富文本]5/FCOLOR=254>","Type":5,"Y":300}')
---```
---```lua
---6 聊天上方公告
---sendmsg(actor,1, '{"Msg":"<sendmsg[原始富文本]6/FCOLOR=254>","Type":6}')
---```
---```lua
---8 固定聊天
---sendmsg(actor,1, '{"Msg":"<sendmsg[原始富文本]8/FCOLOR=254>","Type":8}')
---```
---```lua
---9 systemtips
---sendmsg(actor,1, '{"Msg":"<a href=\'openwin#31000\'><font color=\'#FF33FF\'>sendmsg[富文本]'.."9"..'</font></a>","Type":9}')
---```
---```lua
---10 可控制xy坐标广播
---sendmsg(actor,1, '{"Msg":"<sendmsg[原始富文本]10/FCOLOR=254>","Type":10,"X":100,"Y":100}')
---```
---```lua
---11 屏幕跑马灯公告 系统公告
---sendmsg(actor,1, '{"Msg":"<sendmsg[原始富文本]11/FCOLOR=254>","Type":11}')
---```
---```lua
---12 系统频道
---sendmsg(actor,1, '{"Msg":"<a href=\'openwin#31000\'><font color=\'#FF33FF\'>sendmsg[富文本]'.."12"..'</font></a>","Type":12}')
---```
---```lua
---13 系统公告缩放
---sendmsg(actor,1, '{"Msg":"<sendmsg[原始富文本]13/FCOLOR=254>","Type":13}')
---```
function sendmsg(actor, type, msg) end

---注册虚拟机index
---* idx 虚拟机编号<br>QF:999999999,QM:999999996
---* scriptfile 文件路径
---@param idx integer
---@param scriptfile string
---```lua
---SetSysIndex(100000,"Script/C/满血恢复表单.lua")
---```
function SetSysIndex(idx, scriptfile) end

---获取当前虚拟机编号
---```lua
---GetSysIndex()
---```
function GetSysIndex() end

---获取服务器名称
---@return string "服务器名称"
---```lua
---local serverName=GetServerName()
---release_print("servername",serverName)
---```
function GetServerName() end

---获取区服部署时间常量
---@return integer "区服部署时间常量"
---```lua
---local CreateServerTime=GetCreateServerTime()
---release_print("CreateServerTime",CreateServerTime)
---```
function GetCreateServerTime() end

---获取区服测试区时间常量
---@return integer "区服测试区时间常量"
---```lua
---local TestServerTime=GetTestServerTime()
---release_print("TestServerTime",TestServerTime)
---```
function GetTestServerTime() end

---获取区服正式区时间常量
---@return integer "区服正式区时间常量"
---```lua
---local StartServerTime=GetStartServerTime()
---release_print("StartServerTime",StartServerTime)
---```
function GetStartServerTime() end

---获取客户端载体
---* actor 玩家对象
---@param actor number|string
---@return integer "客户端载体, 失败返回-1, 1=PC端, 2=移动端, 3=传统PC端"
---```lua
---local ClientFlag=GetClientFlag(actor)
---release_print("ClientFlag",ClientFlag)
---```
function GetClientFlag(actor) end

---获取实时登录渠道ID
---* actor 玩家对象
---@param actor number|string
---@return integer "实时登录渠道ID,失败返回空字符串"
---```lua
---local BoxVar=GetBoxVar(actor)
---release_print("BoxVar",BoxVar)
---```
function GetBoxVar(actor) end

---获取服务器id
---@return integer "服务器id"
---```lua
---local serverid=GetServerIDX()
---release_print("========================",serverid)
---```
function GetServerIDX() end

---获取GameID
---@return integer "GameID"
---```lua
---local GameID=GetGameID()
---release_print("========================",GameID)
---```
function GetGameID() end

---获取ip地址
---* actor 玩家对象
---@param actor number|string
---@return string "ip地址"
---```lua
---local IPAddr=GetIPAddr(actor)
---release_print("========================",IPAddr)
---```
function GetIPAddr(actor) end

---获取登录时间
---* actor 玩家对象
---@param actor number|string
---@return string "登录时间"
---```lua
---local LogInTime=GetLogInTime(actor)
---release_print("========================",LogInTime)
---```
function GetLogInTime(actor) end

---获取登录时长
---* actor 玩家对象
---@param actor number|string
---@return string "登录时长"
---```lua
---local LogInLong=GetLogInLong(actor)
---release_print("========================",LogInLong)
---```
function GetLogInLong(actor) end

---脚本开启变量日志开关
---* type 0：系统变量<br>1：玩家变量<br>2：行会变量<br>3：地图变量<br>4：NPC变量<br>5：物品变量<br>6：怪物变量<br>7：英雄变量<br>8：宠物变量<br>9：国家变量<br>
---* switch 1=开启，0=关闭
---@param type integer
---@param switch integer
---```lua
---setvarlog(type,switch)
---```
function setvarlog(type, switch) end



---请求微信公众号KEY
---* actor 玩家对象
---* type 请求类型，1：绑定，2：解绑，3：验证
---@param actor number|string
---@param type integer
---```lua
--- function triggerchat(actor, sMsg, chat)
---     -- BindWeChat(actor,1)
---     if sMsg == "11" then
---         SetWX(actor,1)
---         sendmsg(actor,1, '{"Msg":"<a href=\'openwin#31000\'><font color=\'#FF33FF\'>[SetWX1111]</font></a>","Type":12}')
---     end
---     if sMsg == "22" then
---         SetWX(actor,2)
---         sendmsg(actor,1, '{"Msg":"<a href=\'openwin#31000\'><font color=\'#FF33FF\'>[SetWX2222]</font></a>","Type":12}')
---     end
---     if sMsg == "33" then
---         SetWX(actor,3)
---         sendmsg(actor,1, '{"Msg":"<a href=\'openwin#31000\'><font color=\'#FF33FF\'>[SetWX3333]</font></a>","Type":12}')
---     end
--- end
--- function bindwechat(actor, key)
---     local cc = string.format('{"Msg":"<a href=\'openwin#31000\'><font color=\'#FF33FF\'>[bindwechat key:%s]</font></a>","Type":12}', key)
---     sendmsg(actor,1, cc)
--- end
--- function bindrewechat(actor, key, name, id,param1)
---     param1 = param1 or "param1"
---     local cc = string.format('{"Msg":"<a href=\'openwin#31000\'><font color=\'#FF33FF\'>[bindwechat key:%s name:%s id:%s,param1:%s,param2:%s]</font></a>","Type":12}', key, name, id, param1)
---     sendmsg(actor,1, cc)
--- end
---```
function SetWX(actor, type) end




-- [Source: 接口^英雄-分身.lua]

---获取英雄对象
---* actor 玩家对象
---@param actor number|string
---@return number|string "返回英雄对象 不存在返回”0”"
---```lua
---local heroObj = gethero(actor)
---release_print("获取英雄对象", heroObj)
---```
function gethero(actor) end

---是否有英雄
---* actor 玩家对象
---@param actor number|string
---@return boolean "true=有英雄 false=没有英雄"
---```lua
---local isHave=hashero(actor)
---release_print("是否有英雄",isHave )
---```
function hashero(actor) end

---判断对象是否为英雄
---* object 判断对象
---@param object number|string
---@return boolean "true=是英雄 false=不是英雄"
---```lua
---local heroObj = gethero(actor)
---local isHero = ishero(heroObj)
---release_print("判断对象是否为英雄", isHero)
---```
function ishero(object) end

---判断英雄是否为唤出状态
---* actor 玩家对象
---@param actor number|string
---@return boolean "英雄是否为唤出状态"
---```lua
---local isCall=isherorecall(actor)
---release_print("判断英雄是否为唤出状态",isCall )
---```
function isherorecall(actor) end

---设置英雄名称
---* actor 玩家对象
---* name 英雄名称
---@param actor number|string
---@param name string
---```lua
---local hero = gethero(actor)
---changeheroname(actor,"诸葛铁蛋")
---release_print("设置英雄名称")
---```
function checkheroname(actor, name) end

---创建英雄
---* actor 玩家对象
---* name 英雄名称
---* job 职业(0-战 1-法 2-道)
---* sex 性别(0-男 1-女)
---@param actor number|string
---@param name string
---@param job integer
---@param sex integer
---```lua
---createhero(actor,"123"..getbaseinfo(actor,1),1,0)
---release_print("创建英雄" )
---```
function createhero(actor, name, job, sex) end

---删除英雄
---* actor 玩家对象
---@param actor number|string
---```lua
---delhero(actor)
---release_print("删除英雄" )
---```
function delhero(actor) end

---召唤英雄
---* actor 玩家对象
---@param actor number|string
---```lua
---recallhero(actor)
---```
function recallhero(actor) end

---收回英雄
---* actor 玩家对象
---@param actor number|string
---```lua
---unrecallhero(actor)
---```
function unrecallhero(actor) end

---英雄改名接口
---* actor 玩家对象
---* heroName 英雄新名字
---@param actor number|string
---@param heroName string
---```lua
---changeheroname(player,role_name.."AA英雄")
---
---
---
-----QFunction-0.lua
---function queryingheroname(player)
---    sendmsg(player, 1, '{"Msg":"英雄正在查询请稍后。。。","Type":9}')
---end
---function queryheronameok(player)
---    sendmsg(player, 1, '{"Msg":"英雄查询成功，该名称可以使用","Type":9}')
---end
---function changeingheroname(player)
---    sendmsg(player, 1, '{"Msg":"英雄正在修改请稍后。。。","Type":9}')
---end
---function changeheronameok(player)
---    sendmsg(player, 1, '{"Msg":"英雄你的名字修改成功","Type":9}')
---end
---function heronameLengthfail(player)
---    sendmsg(player, 1, '{"Msg":"英雄名字长度不允许超过30个字符！","Type":9}')
---end
---function heronamefilter(player)
---    sendmsg(player, 1, '{"Msg":"英雄该名字存在非法字符！","Type":9}')
---end
---function heronameexists(player)
---    sendmsg(player, 1, '{"Msg":"英雄该名字已经被其他玩家占用，请选择其他名字","Type":9}')
---end
---function changeheronamefail(player)
---    sendmsg(player, 1, '{"Msg":"英雄改名失败！","Type":9}')
---end
---```
function changeheroname(actor, heroName) end

---获取英雄模式
---* actor 玩家对象
---@param actor number|string
---@return integer "英雄模式 0=攻击 1=跟随 2= 休息"
---```lua
---local heroMode=getherosta(actor)
---release_print("获取英雄模式",heroMode )
---```
function getherosta(actor) end

---设置英雄模式
---* actor 玩家对象
---* model 英雄模式<br>0=攻击<br>1=跟随<br>2= 休息
---@param actor number|string
---@param model integer
---```lua
---setherosta(actor,1)
---```
function setherosta(actor, model) end

---英雄传送到主体身边
---* actor 玩家对象
---@param actor number|string
---```lua
---herofollow(actor)
---release_print("英雄传送到主体身边" )
---```
function herofollow(actor) end

---召唤自身分身
---* actor 玩家对象
---* time 分身有效时间(秒)
---* num 数量
---* attrPro 继承人物属性百分比
---* color 分身颜色<br>0-255;0不改变颜色
---* dressLook 改变分身衣服外观(0或空为不改变)
---* weaponLook 改变分身武器外观(0或空为不改变)
---* dressEffect 改变分身衣服外观特效(0或空为不改变)
---* weaponEffect 改变分身武器外观特效(0或空为不改变)
---* hpMax 分身血量数值（填0表示按参数4的继承百分比）
---* buffId BUFFID<br>多个BUFF用#号连接
---@param actor number|string
---@param time integer
---@param num integer
---@param attrPro integer
---@param color integer
---@param dressLook integer
---@param weaponLook integer
---@param dressEffect integer
---@param weaponEffect integer
---@param hpMax integer
---@param buffId integer|string
---```lua
---recallself(actor,100,2,50,150,0,0,0,0,0,10208)
---release_print("召唤自身分身")
---```
function recallself(actor, time, num, attrPro, color, dressLook, weaponLook, dressEffect, weaponEffect, hpMax, buffId) end

---获取角色所有分身
---* actor 玩家对象
---@param actor number|string
---@return table "玩家分身列表"
---```lua
---local selflist = clonelist(actor)
---for i, _self in ipairs(selflist or {}) do
---    release_print("分身列表",i,getbaseinfo(_self,1))
---end
---```
function clonelist(actor) end

---杀死角色所有分身
---* actor 玩家对象
---@param actor number|string
---@return table "玩家分身列表"
---```lua
---killcopyself(actor)
---```
function killcopyself(actor) end

---设置英雄忠诚度
---* hero 英雄对象
---* value 忠诚度
---@param hero number|string
---@param value integer
---```lua
---resetcastle(hero,value)
---```
function setheroluck(hero, value) end

---获取英雄忠诚度
---* hero 英雄对象
---@param hero number|string
---@return integer "忠诚度"
---```lua
---local value = getheroluck(hero)
---```
function getheroluck(hero) end

-- [Source: 接口^行会-组队.lua]

---创建行会
---* actor 玩家对象
---* guildName 行会名
---@param actor number|string
---@param guildName string
---```lua
---buildguild(actor,"红花会")
---```
function buildguild(actor, guildName) end

---获取人物所在行会成员数量
---* actor 玩家对象
---@param actor number|string
---@return integer "人物所在行会成员数量"
---```lua
---local guildNum=getguildmembercount(actor)
---release_print("获取人物所在行会成员数量",guildNum)
---```
function getguildmembercount(actor) end

---设置行会成员人数上限
---* guild 玩家对象
---* operate (操作符 + - = )
---* num 数量
---@param guild number|string
---@param operate string
---@param num integer
---```tips
---行会人数下限由M2-选项-参数设置-游戏选项-行会人数控制,该接口设置的值只能大于,小于则无效
---```
---```lua
---local guild=getmyguild(actor)
---changeguildmemberlimit(guild,"=",99)
---release_print("设置行会成员人数上限")
---```
function changeguildmemberlimit(guild, operate, num) end

---获取玩家所在的行会对象
---* actor 玩家对象
---@param actor number|string
---@return number|string "行会对象 没有行会返回'0'"
---```lua
---local guild=getmyguild(actor)
---release_print("获取玩家所在的行会对象",guild)
---```
function getmyguild(actor) end

---搜索行会
---* index 搜索关键词：0-行会ID，1-行会名称
---* key 搜索关键词
---@param index integer
---@param key string
---@return number|string "行会对象"
---```lua
---local guild=findguild(1,"红花会")
---release_print("搜索行会",guild)
---```
function findguild(index, key) end

---获取行会信息
---* guild 行会对象
---* index 索引
---@param guild number|string
---@param index integer
---@return string|table "获取的结果"
---```lua
---local guild=findguild(1,"红花会")
---local keyData={
---    [0]="0-行会ID",
---    [1]="1-行会名称",
---    [2]="2-行会公告",
---    [3]="3-行会成员名单（返回table）",
---    [4]="4-行会掌门人名称",
---    [5]="5-获取行会人数上限",
---}
---release_print("获取行会信息")
---for i=0 , 5 do
---    local guildInfo=getguildinfo(guild,i)
---    if type(guildInfo) =="table" then
---        release_print(tbl2json(guildInfo),keyData[i])
---    else
---        release_print(keyData[i],guildInfo)
---    end
---end
---```
function getguildinfo(guild, index) end

---设置行会信息
---* guild 行会对象
---* index 索引
---* value 要设置的内容
---@param guild number|string
---@param index integer
---@param value string
---```lua
---local guild=findguild(1,"红花会")
---setguildinfo(guild,0,"这是我们红花会的新行会公告！！！！！")
---release_print("设置行会信息")
---```
function setguildinfo(guild, index, value) end

---获取所有行会对象
---@return table "返回行会列表"
---```lua
---local guildMembers=getallguild()
---release_print(tbl2json(guildMembers),"获取所有行会对象")
---```
function getallguild() end

---加入行会
---* actor 玩家对象
---* guildName 行会名
---@param actor number|string
---@param guildName string
---```lua
---addguildmember(actor,"红花会")
---release_print("加入行会")
---```
function addguildmember(actor, guildName) end

---退出行会
---* actorInfo 玩家对象/玩家名/唯一ID
---* guildName 行会名
---* type 参数1类型:<br>0 = 参数1填玩家对象;<br>1 = 参数1填玩家名字;<br>2 = 参数1填玩家唯一ID;<br>唯一id可用于踢离线玩家,不填默认为0
---@param actorInfo number|string
---@param guildName string
---@param type integer
---```lua
---delguildmember(actorInfo,"红花会",0)
---release_print("退出行会")
---```
function delguildmember(actorInfo, guildName, type) end

---设置行会成员在行会中的职位
---* actor 玩家对象
---* pos 在行会中的职位<br>0：会长;<br>1：副会长;<br>2：行会成员1;<br>3：行会成员2;<br>4：行会成员3;
---@param actor number|string
---@param pos integer
---@return boolean "true:设置成功 false:设置失败"
---```lua
---local isSuccess=setplayguildlevel(actor,3)
---release_print("设置行会成员在行会中的职位 是否成功",isSuccess)
---```
function setplayguildlevel(actor, pos) end

---获取行会成员在行会中的职位
---* actor 玩家对象
---@param actor number|string
---@return integer "在行会中的职位 0：会长; 1：副会长; 2：行会成员1; 3：行会成员2; 4：行会成员3; -1:获取失败;"
---```lua
---local job=getplayguildlevel(actor)
---release_print("获取行会成员在行会中的职位",job)
---```
function getplayguildlevel(actor) end

---改变行会名称
---* actor 玩家对象
---* guildName 需要改名的行会名
---* newGuildName 新的行会名字
---@param actor string
---@param guildName string
---@param newGuildName string
---```lua
-----行会改名成功
---function changeguildnameok(...)
---    release_print("changeguildnameok,成功",...)
---end
-----行会改名失败,model:0=参数错误;1=原行会找不到;2=名字不合法;3=新名字重复
---function changeguildnamefail(guild,model,...)
---    release_print("changeguildnamefail,失败",getbaseinfo(guild,1),"model:"..model,...)
---end
---
---
---
---changeguildname(actor,guildName,newName)
---```
function changeguildname(actor, guildName, newGuildName) end

---创建队伍
---* actor 玩家对象
---@param actor number|string
---```lua
---creategroup(actor)
---release_print("创建队伍",job)
---```
function creategroup(actor) end

---添加队员
---* actor 玩家对象
---* memberId 组员UserId
---@param actor number|string
---@param memberId string
---```lua
---local mapID = getbaseinfo(actor,3)
---local x = getbaseinfo(actor,4)
---local y = getbaseinfo(actor,5)
---local playerTab=getobjectinmap(mapId,x,y,10,1)
---local count=1
---for k,v in pairs(playerTab) do
---    local userId=getbaseinfo(v,2)
---    addgroupmember(actor,userId)
---    release_print("添加队员",getbaseinfo(v,1))
---    count=count+1
---    if count>=4 then
---        break
---    end
---end
---```
function addgroupmember(actor, memberId) end

---删除队员
---* actor 玩家对象
---* memberId 组员UserId
---@param actor number|string
---@param memberId string
---```lua
---local membersList=getgroupmember(actor)
---if membersList and #membersList>1 then
---    for k,v in pairs(membersList) do
---        if v~=actor then
---            local userId=getbaseinfo(v,2)
---            delgroupmember(actor,userId)
---            release_print("删除队员",getbaseinfo(v,1))
---            break
---        end
---    end
---else
---    release_print("没有除自身以外队员")
---end
---```
function delgroupmember(actor, memberId) end

---获取队员列表
---* actor 玩家对象
---@param actor number|string
---@return table "队员列表"
---```lua
---local membersList=getgroupmember(actor)
---release_print(tbl2json(membersList),"获取组队成员列表")
---```
function getgroupmember(actor) end

---发起行会战
---* guildName1 宣战行会名字
---* guildName2 敌对行会名字
---* time 时间(分)
---@param guildName1 string
---@param guildName2 string
---@param time integer
---@return boolean "是否发起成功"
---```lua
---local bool = setguildwar(guildName_1,guildName_2,30)
---```
function setguildwar(guildName1, guildName2, time) end

---判断行会之间是否宣战
---* guildName1 行会名字/行会对象
---* guildName2 行会名字/行会对象
---@param guildName1 string
---@param guildName2 string
---@return boolean "是否宣战"
---```lua
-----传入行会对象
---local bool_1 = iswarguild(guild_1,guild_2)
-----传入行会名称
---local bool_2 = iswarguild(guildName_1,guildName_2)
---release_print("是否是宣战关系",bool_1,bool_2)
---```
function iswarguild(guildName1, guildName2) end

---判断行会之间是否结盟
---* guildName1 行会名字/行会对象
---* guildName2 行会名字/行会对象
---@param guildName1 string
---@param guildName2 string
---@return boolean "是否宣战"
---```lua
---local bool_1 = isallyguild(guild_1,guild_2)
---local bool_2 = isallyguild(guildName_1,guildName_2)
---release_print("是否是结盟关系",bool_1,bool_2)
---```
function isallyguild(guildName1, guildName2) end

---解散行会
---* guild 行会对象
---@param guild number|string
---```lua
---local guild=getmyguild(actor)
---CloseGuild(guild)
---```
function CloseGuild(guild) end

-- [Source: 接口^计划任务.lua]

---添加计划任务
---* id 任务计划id，不可重复
---* name 任务计划名称
---* itype 0:指定时间<br>1:每天执行<br>2:每周执行<br>3:每月执行
---* strtime 时间表 详细见示例<br>多时间,拼接
---* strfun 回调函数
---* param 自定义参数，多参数`,`拼接
---@param id integer
---@param name string
---@param itype integer
---@param strtime string
---@param strfun string
---@param param string
---@return boolean "添加是否成功"
---```lua
-----特定时间：2024-9-20 10:04:00执行
---AddScheduled(1,"神兵天降",0,"2024-9-20 10:04:00","@testab","999,adas,1a1a")
---
-----每天执行： 每天的14.15与16.15执行
---AddScheduled(2, "神兵天降2", 1, "14:15:00#16:15:00", "@testab1", "22")
---
-----每周执行： 每周的周五 10.04与周日的14.15执行
---AddScheduled(3, "神兵天降3", 2, "5 10:04:00#0 14:15:10", "@testab2", "999,adas,1a1a")
---
-----每月执行： 每月的20号 10执行
---AddScheduled(4, "神兵天降4", 3, "20 10:00:00", "@testab3", "44")
---
---
-----特定时间执行
---function testab(sysobj,...)
---    local params = {...}
---    release_print("testab",tbl2json(params))
---end
---
-----每天执行
---function testab1(sysobj,...)
---    local params = {...}
---    release_print("testab",tbl2json(params))
---end
---
-----每周执行
---function testab2(sysobj,...)
---    local params = {...}
---    release_print("testab2",tbl2json(params))
---end
---
-----每月执行
---function testab3(sysobj,...)
---    local params = {...}
---    release_print("testab3",tbl2json(params))
---end
---```
function AddScheduled(id, name, itype, strtime, strfun, param) end

---删除计划任务
---* scheduledID 计划任务id
---@param scheduledID integer
---```lua
---DelScheduled(scheduledID)
---```
function DelScheduled(scheduledID) end

---判断计划任务是否存在
---* scheduledID 计划任务id
---@param scheduledID integer
---@return boolean "true=有事件 false=无事件"
---```lua
---HasScheduled(scheduledID)
---```
function HasScheduled(scheduledID) end

-- [Source: 接口^跨服.lua]

---跨服通知触发本服QF
---* id 消息id（1-99）
---* userId 玩家userid<br>=0 以系统对象发送通知,通知所有连接跨服的服务器
---* paramA 传递的字符串1(字符串)
---* paramB 传递的字符串2(字符串)
---@param id integer
---@param userId string
---@param paramA string
---@param paramB string
---```tips
---[跨服详情](https://engine-doc.996m2.com/web/#/91/63249 "跨服详情")
---```
---```lua
--- =====================================================================================
--- 跨服通讯示例
--- =====================================================================================
--- 流程说明:
--- 1. 跨服服务器(KF) -> 本服服务器(BF): 使用 kfbackcall
--- 2. 本服服务器(BF) -> 跨服服务器(KF): 使用 bfbackcall
--- =====================================================================================
---
--- -- 测试入口函数 (请在跨服服务器调用)
--- function kf_test(actor)
---     release_print(string.rep("=", 50))
---
---     -- 校验当前环境是否为跨服服务器
---     if not iskuafuserver() then
---         release_print("[提示] 当前为本服服务器，此测试函数需在跨服服务器环境执行。")
---         return
---     end
---
---     -- 步骤1: 跨服主动通知本服
---     -- 参数: 协议ID(99), 玩家对象, 参数1, 参数2
---     local param1 = "跨服→本服,传递参数长度测试"
---     local param2 = string.rep("abcd|", 2000)
---     kfbackcall(99, actor, param1, param2)
---     -- kfbackcall(99, 0, param1, param2) --参数2=0时,以系统对象通知
---     release_print(string.format("[步骤1] 跨服发起通知 -> 本服 (协议ID: 99) | 参数: %s, %s", param1, #param2))
--- end
---
--- -- 本服接收跨服通知回调
--- -- 对应跨服调用的 kfbackcall(99, ...)
--- function kfsyscall99(actor, arg1, arg2)
---     release_print(string.rep("=", 50))
---     local role_name = isnotnull(actor) and getbaseinfo(actor, 1) or "系统对象"
---     release_print(string.format("[步骤2] 本服收到通知 | 玩家: %s | 参数: %s, %s", role_name, arg1, #arg2))
---
---     -- 步骤2: 本服处理完毕后，回传通知给跨服
---     -- 注意: 使用 bfbackcall 时，玩家必须处于跨服状态(即玩家对象在跨服服务器中有对应实体)
---     local resp1 = "本服→跨服,传递参数长度测试"
---     local resp2 = string.rep("abcd|", 2000)
---     bfbackcall(99, actor, resp1, resp2)
---     -- bfbackcall(99, 0, resp1, resp2)
---     release_print(string.format("[步骤2] 本服回传通知 -> 跨服 (协议ID: 99) | 参数: %s, %s", resp1, #resp2))
--- end
---
--- -- 跨服接收本服回调
--- -- 对应本服调用的 bfbackcall(99, ...)
--- function bfsyscall99(actor, arg1, arg2)
---     release_print(string.rep("=", 50))
---     local role_name = isnotnull(actor) and getbaseinfo(actor, 1) or "系统对象"
---
---     release_print(string.format("[步骤3] 跨服收到回传 | 玩家: %s | 参数: %s, %s", role_name, arg1, #arg2))
---     release_print("[步骤3] 跨服通讯流程闭环结束")
--- end
---```
function kfbackcall(id, userId, paramA, paramB) end

---本服通知触发跨服QF
---* id 消息id（1-99）
---* userId 玩家userid<br>=0 以系统对象发送通知
---* paramA 传递的字符串1(字符串)
---* paramB 传递的字符串2(字符串)
---@param id integer
---@param userId any
---@param paramA string
---@param paramB string
---```tips
---注意:当前接口传入玩家对象时,必须是玩家对象在跨服服务器中,否则无法触发跨服通知
---[跨服详情](https://engine-doc.996m2.com/web/#/91/63249 "跨服详情")
---```
---```lua
--- =====================================================================================
--- 跨服通讯示例
--- =====================================================================================
--- 流程说明:
--- 1. 跨服服务器(KF) -> 本服服务器(BF): 使用 kfbackcall
--- 2. 本服服务器(BF) -> 跨服服务器(KF): 使用 bfbackcall
--- =====================================================================================
---
--- -- 测试入口函数 (请在跨服服务器调用)
--- function kf_test(actor)
---     release_print(string.rep("=", 50))
---
---     -- 校验当前环境是否为跨服服务器
---     if not iskuafuserver() then
---         release_print("[提示] 当前为本服服务器，此测试函数需在跨服服务器环境执行。")
---         return
---     end
---
---     -- 步骤1: 跨服主动通知本服
---     -- 参数: 协议ID(99), 玩家对象, 参数1, 参数2
---     local param1 = "跨服→本服,传递参数长度测试"
---     local param2 = string.rep("abcd|", 2000)
---     kfbackcall(99, actor, param1, param2)
---     -- kfbackcall(99, 0, param1, param2) --参数2=0时,以系统对象通知
---     release_print(string.format("[步骤1] 跨服发起通知 -> 本服 (协议ID: 99) | 参数: %s, %s", param1, #param2))
--- end
---
--- -- 本服接收跨服通知回调
--- -- 对应跨服调用的 kfbackcall(99, ...)
--- function kfsyscall99(actor, arg1, arg2)
---     release_print(string.rep("=", 50))
---     local role_name = isnotnull(actor) and getbaseinfo(actor, 1) or "系统对象"
---     release_print(string.format("[步骤2] 本服收到通知 | 玩家: %s | 参数: %s, %s", role_name, arg1, #arg2))
---
---     -- 步骤2: 本服处理完毕后，回传通知给跨服
---     -- 注意: 使用 bfbackcall 时，玩家必须处于跨服状态(即玩家对象在跨服服务器中有对应实体)
---     local resp1 = "本服→跨服,传递参数长度测试"
---     local resp2 = string.rep("abcd|", 2000)
---     bfbackcall(99, actor, resp1, resp2)
---     -- bfbackcall(99, 0, resp1, resp2)
---     release_print(string.format("[步骤2] 本服回传通知 -> 跨服 (协议ID: 99) | 参数: %s, %s", resp1, #resp2))
--- end
---
--- -- 跨服接收本服回调
--- -- 对应本服调用的 bfbackcall(99, ...)
--- function bfsyscall99(actor, arg1, arg2)
---     release_print(string.rep("=", 50))
---     local role_name = isnotnull(actor) and getbaseinfo(actor, 1) or "系统对象"
---
---     release_print(string.format("[步骤3] 跨服收到回传 | 玩家: %s | 参数: %s, %s", role_name, arg1, #arg2))
---     release_print("[步骤3] 跨服通讯流程闭环结束")
--- end
---```
function bfbackcall(id, userId, paramA, paramB) end

---检测当前服务器是否为跨服服务器
---@return boolean "true=跨服;false=本服"
---```lua
---local isKuafuSever = iskuafuserver()
---release_print("当前服务器是否为跨服服务器",type(isKuafuSever),tostring(isKuafuSever))
---```
function iskuafuserver() end

---检查跨服连接是否正常连接
---@return boolean "跨服连接是否正常连接"
---```lua
---local isKuafuSuc = kuafuconnected()
---release_print("跨服连接是否正常连接",type(isKuafuSuc),tostring(isKuafuSuc))
---```
function kuafuconnected() end

---检测当前人物是否在跨服的地图
---* actor 玩家对象
---@param actor number|string
---@return boolean "true=在跨服;false=在本服"
---```lua
---local isKuafuMap = checkkuafu(actor)
---release_print("当前人物是否在跨服的地图",type(isKuafuMap),tostring(isKuafuMap))
---```
function checkkuafu(actor) end

---所有跨服玩家回本服 根据执行区服自行处理
---* mapid 地图id
---* x 坐标X
---* y 坐标Y
---* range 范围
---@param mapid string
---@param x integer
---@param y integer
---@param range integer
---```tips
---该命令只能在本服使用,跨服使用无效
---```
---```lua
---kuafuusergohome("3",333,333,10)
---```
function kuafuusergohome(mapid, x, y, range) end

---同步行会信息到跨服
---```tips
---1. 该命令只能在本服使用，跨服使用无效；
---   2. 需要在跨服攻城战开启前使用，开启后无法使用；
---   3. 使用接口同步后，不需要玩家提前进入跨服，本服行会也能参与到跨服沙巴克活动中。
---```
---```lua
---if not iskuafuserver() then
---    SynGuildToKuafu()
---end
---```
function SynGuildToKuafu() end

-- [Source: 接口^通区系统.lua]

---通区写入内容
---* type 触发对象类型：<br>0-系统，1-角色，2-账号
---* idx 设置取回数据时的触发编号<br>type=0时触发`@tongreadkeyX`,<br>type=1/2时触发`@tongreadkeytouserX`<br>注:必须为文本型数字
---* obj 目标对象：type=0填0，type=1填角色唯一ID，type=2填账号ID
---* key 键名，50字节(一个游戏最大200个key)
---* value 键值，上限8000字节
---@param type number
---@param idx string
---@param obj number|string
---@param key string
---@param value string
---```tips
---[详细说明](https://engine-doc.996m2.com/web/#/38/6726 "详细说明")
---```
---```lua
----- 写入系统通区
---tongwritekey(0, "1010", 0, "ces1", gettcount64())
---
---function tongreadkey1010(actor,key,value)
---    sendmsg("0",2, '{"Msg":"tongreadkey1010-取出系统key：['..key.."]取出值:["..value..']'..'","Type":1}')
---end
---
---
---
----- 写入角色通区
---tongwritekey(1, "1011", actor, "ces2",gettcount64())
---
---function tongreadkeytouser1011(actor,key,value)
---    sendmsg("0",2, '{"Msg":"tongreadkeytouser1011-取出角色key：['..key.."]取出值:["..value..']'..'","Type":1}')
---end
---
---
----- 写入账号通区
---tongwritekey(2, "1012", GetUserAccount(actor), "ces3",gettcount64())
---
---function tongreadkeytouser1012(actor,key,value)
---    sendmsg("0",2, '{"Msg":"tongreadkeytouser1012-取出账号key：['..key.."]取出值:["..value..']'..'","Type":1}')
---end
---```
function tongwritekey(type, idx, obj, key, value) end

---通区读取内容
---* type 0=系统</br>1=角色</br>2=账号
---* num 触发编号</br>(注:当参数一=2时,该区有几个角色在线都会同时触发)
---* obj 参数一：0本参数填0(number类型)=系统</br>参数一：1=角色ID</br>参数一：2=账号ID
---* key 50字节(最大200个key)
---@param type integer
---@param num integer
---@param obj integer|string
---@param key string
---```tips
---[详细说明](https://engine-doc.996m2.com/web/#/38/6726 "详细说明")
---```
---```lua
---tongreadkey(type,num,obj,key)
---```
function tongreadkey(type, num, obj, key) end

---通区上传文件
---* num 触发编号
---* file 默认QD下</br>例:通区测试\996m2.txt</br>(文本大小上限1M)
---* name 文件名</br>例:996m2.txt
---@param num integer
---@param file string
---@param name string
---```lua
---tongupload(num,file,name)
---```
function tongupload(num, file, name) end

---通区下载文件
---* num 触发编号
---* name 文件名</br>例:996m2.txt
---* path 存储文件到本地路径,默认QD下</br>例:通区测试\996m2.txt
---@param num integer
---@param name string
---@param path string
---```lua
---tongdownload(num,name,path)
---```
function tongdownload(num, name, path) end

---批量操作
---* operate 0=赋值<br>1=删除<br>2=删除指定key
---* value 参数1=0时设置所有的值<br>参数1=2时为要删除的key
---@param operate integer
---@param value string
---```lua
---tongclearkeyex(operate,value)
---```
function tongclearkeyex(operate, value) end

---获取所有Key
---@return string "所有key的字符串，每个key之间用&隔开"
---```lua
---tonggetkeylistex()
------注：在tonggetkeylist()触发下会返回所有key的值 格式为key&key&key&key
---function tonggetkeylist(actor,num,keylist) end
------keylist为:56182939359&56182938921&56182938375&
---```
function tonggetkeylistex() end

-- [Source: 接口^阵营系统.lua]

---设置阵营ID
---* actor 玩家/怪物 对象
---* campid 阵营id
---@param actor number|string
---@param campid integer
---```lua
---setcamp(actor,1)
---```
function setcamp(actor, campid) end

---获取阵营ID
---* actor 玩家/怪物 对象
---@param actor number|string
---@return integer "阵营id"
---```lua
---local campid=getcamp(actor)
---```
function getcamp(actor) end
