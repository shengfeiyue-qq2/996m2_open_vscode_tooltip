
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


-- [Source: 元变量^游戏基础.lua]

---打印所有能获取的元变量
---```lua
---local aa = SL:PrintAllMetaValue()
---print(type(aa),aa)
---```
function SL:PrintAllMetaValue() end

---打印所有元变量Key
---```lua
---SL:PrintMetaKey()
---```
function SL:PrintMetaKey() end

---屏幕宽
---@return integer "屏幕的宽度"
---```lua
---local cc = SL:Get_SCREEN_WIDTH()
---print(cc,type(cc))
---```
function SL:Get_SCREEN_WIDTH() end

---屏幕高
---@return integer "屏幕的高度"
---```lua
---local cc = SL:Get_SCREEN_HEIGHT()
---print(cc,type(cc))
---```
function SL:Get_SCREEN_HEIGHT() end

---是否刘海屏
---@return boolean "是否刘海屏" table
---@return table "{x = 刘海屏偏移坐标x, y = y, width = 减去刘海屏幕宽, height = 屏幕高}"
---```lua
---local cc,bb = SL:Get_NOTCH_PHONE_INFO()
---print(cc,type(cc))
---print(bb,type(bb))
---```
function SL:Get_NOTCH_PHONE_INFO() end

---安卓平台
---@return boolean "true/false"
---```lua
---local cc = SL:Get_PLATFORM_ANDROID()
---print(cc,type(cc))
---```
function SL:Get_PLATFORM_ANDROID() end

---iOS平台
---@return boolean "true/false"
---```lua
---local cc = SL:Get_PLATFORM_IOS()
---print(cc,type(cc))
---```
function SL:Get_PLATFORM_IOS() end

---Windows平台
---@return boolean "ture/false"
---```lua
---local cc = SL:Get_PLATFORM_WINDOWS()
---print(cc,type(cc))
---```
function SL:Get_PLATFORM_WINDOWS() end

---手机平台(包含安卓和iOS)
---@return boolean "true/false"
---```lua
---local cc = SL:Get_PLATFORM_MOBILE()
---print(cc,type(cc))
---```
function SL:Get_PLATFORM_MOBILE() end

---是否PC操作模式
---@return boolean "true/false"
---```lua
---local cc = SL:Get_IS_PC_OPER_MODE()
---print(cc,type(cc))
---```
function SL:Get_IS_PC_OPER_MODE() end

---操作模式(PC=1, 手机=2)
---@return number "(PC=1, 手机=2)"
---```lua
---local cc = SL:Get_CURRENT_OPERMODE()
---print(cc,type(cc))
---```
function SL:Get_CURRENT_OPERMODE() end

---游戏ID
---@return string "游戏ID"
---```lua
---local cc = SL:Get_GAME_ID()
---print(cc,type(cc))
---```
function SL:Get_GAME_ID() end

---渠道ID
---@return string "渠道ID"
---```lua
---local cc = SL:Get_CHANNEL_ID()
---print(cc,type(cc))
---```
function SL:Get_CHANNEL_ID() end

---APK包名
---@return string "包名"
---```lua
---local cc = SL:Get_PACKAGE_NAME()
---print(cc,type(cc))
---```
function SL:Get_PACKAGE_NAME() end

---APK版本名
---@return string "版本名"
---```lua
---local cc = SL:Get_VERSION_NAME()
---print(cc,type(cc))
---```
function SL:Get_VERSION_NAME() end

---APK版本号
---@return string "版本号"
---```lua
---local cc = SL:Get_VERSION_CODE()
---print(cc,type(cc))
---```
function SL:Get_VERSION_CODE() end

---原始/本地客户端版本号
---@return string "版本号"
---```lua
---local cc = SL:Get_LOCAL_RES_VERSION()
---print(cc,type(cc))
---```
function SL:Get_LOCAL_RES_VERSION() end

---热更客户端版本号
---@return string "版本号"
---```lua
---local cc = SL:Get_REMOTE_RES_VERSION()
---print(cc,type(cc))
---```
function SL:Get_REMOTE_RES_VERSION() end

---GM资源版本号
---@return string "版本号"
---```lua
---local cc = SL:Get_REMOTE_GM_RES_VERSION()
---print(cc,type(cc))
---```
function SL:Get_REMOTE_GM_RES_VERSION() end

---PC唯一设备ID
---@return string "设备ID"
---```lua
---local cc = SL:Get_DEVICE_UNIQUE_ID()
---print(cc,type(cc))
---```
function SL:Get_DEVICE_UNIQUE_ID() end

---推广员ID
---@return string "推广员ID"
---```lua
---local cc = SL:Get_PROMOTE_ID()
---print(cc,type(cc))
---```
function SL:Get_PROMOTE_ID() end

---游戏帧率
---@return number "游戏帧率"
---```lua
---local cc = SL:Get_FPS()
---print(cc,type(cc))
---```
function SL:Get_FPS() end

---网络类型
---@return number "0 : wifi<br>1 : 蜂窝<br>-1: 未识别"
---```lua
---local cc = SL:Get_NET_TYPE()
---print(cc,type(cc))
---```
function SL:Get_NET_TYPE() end

---手机电量
---@return number "（0~100）"
---```lua
---local cc = SL:Get_BATTERY()
---print(cc,type(cc))
---```
function SL:Get_BATTERY() end

---获取cfg_game_data配置
---* param 表中的key值
---@param param string
---@return number "cfg_game_data配置"
---```lua
---local cc = SL:Get_GAME_DATA(DEFAULT_FONT_SIZE)
---print(cc,type(cc))
---```
function SL:Get_GAME_DATA(param) end

---是否是SDK登录
---@return boolean "是否是SDK登录 true/false"
---```lua
---local cc = SL:Get_IS_SDK_LOGIN()
---print(cc,type(cc))
---```
function SL:Get_IS_SDK_LOGIN() end

---是否是996盒子登录
---@return boolean "是否是996盒子登录 true/false"
---```lua
---local cc = SL:Get_BOX996_LOGIN()
---print(cc,type(cc))
---```
function SL:Get_BOX996_LOGIN() end

---是否是996云真机
---@return boolean "是否是996云真机 true/false"
---```lua
---local cc = SL:Get_CLOUD996_DEVICE()
---print(cc,type(cc))
---```
function SL:Get_CLOUD996_DEVICE() end

---获取易盾的反外挂数据
---@return number "反外挂数据"
---```lua
---local cc = SL:Get_YIDUN_DATA()
---print(cc,type(cc))
---```
function SL:Get_YIDUN_DATA() end

---PC端Y轴适配
---@return number "PC端Y轴适配"
---```lua
---local cc = SL:Get_PC_POS_Y()
---print(cc,type(cc))
---```
function SL:Get_PC_POS_Y() end

---PC端 是否开启NP反外挂
---@return boolean "PC端 是否开启NP反外挂 true/false"
---```lua
---local cc = SL:Get_PC_NP_STATUS()
---print(cc,type(cc))
---```
function SL:Get_PC_NP_STATUS() end

-- [Source: 游戏^Actor.lua]

---快速选择目标
---* data type:<br>&emsp;0: 玩家<br>&emsp;50: 怪物<br>&emsp;400: 英雄<br>imgNotice: 没有目标时是否创建范围圈<br>systemTips: 没有目标时是否弹提示
---@param data table
---```lua
---SL:QuickSelectTarget({type=50,imgNotice=true,systemTips=true})
---```
function SL:QuickSelectTarget(data) end

---控件加入到元变量自动刷新的组件
---* metaValue 传入已配置元变量的字符串 <br>&<元变量KEY/参数>& <br>例 : <br> 红点变量U91: &<REDKEY/U91>& <br>角色名: &<USER_NAME>&
---* widget 文本控件 Text
---@param metaValue string
---@param widget userdata
---```lua
---local Text_count = GUI:Text_Create(GUI:Attach_LeftBottom(), "MONEY_COUNT", 200, 100, 16, "#00FF00", "")
---SL:CustomAttrWidgetAdd("元宝数量: &&", Text_count)
----- 多货币
----- SL:CustomAttrWidgetAdd("货币1,2总数量: &&", Text_count)
---```
function SL:CustomAttrWidgetAdd(metaValue, widget) end

---检测控件是否可视
---* node 控件
---* touchPos 当前接触坐标
---@param node table
---@param touchPos table
---@return boolean "控件是否可视 true/false"
---```lua
---GUI:addMouseMoveEvent(node, {
---    onEnterFunc = function(touchPos)
---        if SL:CheckNodeCanCallBack(node, touchPos) then
---            local info = {
---                str = "tttt",
---                worldPos = touchPos,
---            }
---            UIOperator:OpenCommonDescTipsUI(info)
---        end
---    end,
---    onLeaveFunc = function()
---        UIOperator:CloseCommonDescTipsUI()
---    end
---})
---```
function SL:CheckNodeCanCallBack(node, touchPos) end

-- [Source: 游戏^交易-宝箱.lua]

---请求进行交易
---* uid 玩家id
---@param uid integer
---```lua
---SL:RequestTrade(uid)
---```
function SL:RequestTrade(uid) end

---请求获取宝箱物品奖励
---```lua
---SL:RequestGetGoldBoxReward()
---```
function SL:RequestGetGoldBoxReward() end

---请求再开启宝箱
---```lua
---SL:RequestOpenGoldBox()
---```
function SL:RequestOpenGoldBox() end

-- [Source: 游戏^内功.lua]

---请求内功技能数据
---* isHero 是否请求英雄
---@param isHero boolean
---```lua
---SL:RequestInternalSkillData(isHero)
---```
function SL:RequestInternalSkillData(isHero) end

---请求经络穴位激活
---* typeID 经络ID
---* aucPointID 穴位ID
---* isHero 是否请求英雄
---@param typeID integer
---@param aucPointID integer
---@param isHero boolean
---```tips
---旧接口名：SL:RequestAucPointOpen
---```
---```lua
---SL:RequestMeridianAcuPointOpen(typeID, aucPointID, isHero)
---```
function SL:RequestMeridianAcuPointOpen(typeID, aucPointID, isHero) end

---修炼经络
---* typeID 经络ID
---* isHero 是否请求英雄
---@param typeID integer
---@param isHero boolean
---```lua
---SL:RequestMeridianLevelUp(typeID, isHero)
---```
function SL:RequestMeridianLevelUp(typeID, isHero) end

---设置连击技能
---* key 键位 (1, 2, 3, 4)
---* skillID 技能ID
---* isHero 是否请求英雄
---@param key integer
---@param skillID integer
---@param isHero boolean
---```lua
---SL:RequestSetComboSkill(key, skillID, isHero)
---```
function SL:RequestSetComboSkill(key, skillID, isHero) end

---请求设置内功条前置开关 并刷新显示
---* show 是否开启 默认true
---@param show boolean
---```tips
---旧接口名：SL:RequestNGHudShow
---```
---```lua
---SL:RequestInternalHudShow(show)
---```
function SL:RequestInternalHudShow(show)
end

-- [Source: 游戏^坐标转换.lua]

---世界坐标转化为地图坐标
---* worldX 世界坐标X
---* worldY 世界坐标Y
---@param worldX integer
---@param worldY integer
---@return number "地图坐标X"
---@return number "地图坐标Y"
---```lua
---SL:Print(SL:ConvertWorldPos2MapPos(100, 100))
---SL:Print(type(SL:ConvertWorldPos2MapPos(100, 100)))
---```
function SL:ConvertWorldPos2MapPos(worldX, worldY) end

---地图坐标转化为世界坐标
---* mapX 地图坐标X
---* mapY 地图坐标Y
---* centerOfGrid 是否在地图格中心
---@param mapX integer
---@param mapY integer
---@param centerOfGrid boolean
---@return number "世界坐标X"
---@return number "世界坐标Y"
---```lua
---SL:Print(SL:ConvertMapPos2WorldPos(100, 100))
---SL:Print(type(SL:ConvertMapPos2WorldPos(100, 100)))
---```
function SL:ConvertMapPos2WorldPos(mapX, mapY, centerOfGrid) end

---世界坐标转化为屏幕坐标
---* worldX 世界坐标X
---* worldY 世界坐标Y
---@param worldX integer
---@param worldY integer
---@return number "屏幕坐标X"
---@return number "屏幕坐标Y"
---```lua
---SL:Print(SL:ConvertWorldPos2Screen(100, 100))
---SL:Print(type(SL:ConvertWorldPos2Screen(100, 100)))
---```
function SL:ConvertWorldPos2Screen(worldX, worldY) end

---屏幕坐标转化为世界坐标
---* screenX 屏幕坐标X
---* screenY 屏幕坐标Y
---@param screenX integer
---@param screenY integer
---@return number "世界坐标X"
---@return number "世界坐标Y"
---```lua
---SL:Print(SL:ConvertScreen2WorldPos(100, 100))
---SL:Print(type(SL:ConvertScreen2WorldPos(100, 100)))
---```
function SL:ConvertScreen2WorldPos(screenX, screenY) end

-- [Source: 游戏^基础.lua]

---日志打印
---```lua
---SL:release_print("打印内容！！")
---```
function SL:release_print(...) end

---DEBUG下日志打印(Print)
---```lua
---SL:Print("打印内容！！Print")
---```
function SL:Print(...) end

---DEBUG下日志打印(PrintEx)
---```lua
---SL:PrintEx("打印内容！！PrintEx")
---```
function SL:PrintEx(...) end

---DEBUG下日志打印(PrintTraceback)
---```lua
---SL:PrintTraceback()
---```
function SL:PrintTraceback(...) end

---DEBUG下日志打印(dump)
---* data 需要打印的表
---* desciption 打印表描述
---* nesting 需要打印的深度
---@param data table
---@param desciption string
---@param nesting integer
---```lua
---local Tab={[1]=105,["ut"]=8000,["da"]=13000}
---SL:dump(Tab,"tj:")
---```
function SL:dump(data, desciption, nesting) end

---json字符串解密
---* jsonStr json字符串
---* isfilter 是否过滤违禁词 默认为true
---@param jsonStr string
---@param isfilter boolean
---@return table "json table"
---```lua
----- [[{"index":1, "value":2}]] --> {index = 1, value = 2}
---
---local jsonStr = [[{"index":1, "value":2}]]
---local jsonData = SL:JsonDecode(jsonStr)
---SL:dump(jsonData,"jsonTable")
---```
function SL:JsonDecode(jsonStr, isfilter) end

---json字符串加密
---* jsonData json表
---* isfilter 是否过滤违禁词 默认为true
---@param jsonData table
---@param isfilter boolean
---@return string "json string"
---```lua
----- {index = 1, value = 2} --> [[{"index":1, "value":2}]
---
---local tab = {"1","2"}
---local jsonStr = SL:JsonEncode(tab)
---SL:Print(jsonStr)
---```
function SL:JsonEncode(jsonData, isfilter) end

---存储字符到本地
---* key 字段名
---* data 数据
---@param key any
---@param data table|integer|string
---```lua
----- 把数据 t 存储到本地配置的 key 字段里
---local t = {
---    val1 = "111", val2 = "222"
---}
---local jsonStr = SL:JsonEncode(t)
---SL:SetLocalString("key", jsonStr)
---```
function SL:SetLocalString(key, data) end

---从本地读取字符
---* key 字段名
---@param key any
---@return string "字符"
---```lua
----- 把数据从本地存储配置中取出来
---local data = {}
---local jsonStr = SL:GetLocalString("key")
---if jsonStr and string.len(jsonStr) > 0 then
---    local jsonData = SL:JsonDecode(jsonStr)
---    if jsonData then
---        data = jsonData
---    end
---end
---SL:dump( data )
---```
function SL:GetLocalString(key) end

---打开引导
---* data 数据结构参考提示, 参考示例
---@param data table
---```tips
---mainIdx— int 如若指引界面加在主界面节点 需要配置对应标识 :
---1--左上; 2 --中上; 3 --右上; 4 --左下; 5 --中下; 6 --右下;
---```
---```lua
---local function callback()
---    SL:Print("callback".....)
---end
---local data = {}
---data.dir = 8 -- 方向（1~8）从左按瞬时针
---data.guideWidget = btn_close -- 当前节点
---data.guideParent = _parent -- 父窗口
---data.guideDesc = "测试" -- 文本描述
---data.clickCB = callback -- 回调
---data.autoExcute = 3 -- 自动执行秒数
---data.isForce = true -- 强制引导
---
---SL:StartGuide(data)
---```
---```lua
----- 针对引导一些引擎原生界面 必需参数 :
----- id — int 提供的原生界面指引ID
----- param — int 指引参数 提供的一些原生界面对应位置指引所需参数 比如任务ID
---SL:StartGuide({
---    id = 1,              -- 背包引导窗口ID
---    param = 2682001,     -- 背包物品唯一ID
---    guideDesc = "测试引导"
---})
---```
function SL:StartGuide(data) end

---关闭引导
---```lua
---SL:CloseGuide( )
---```
function SL:CloseGuide() end

---表中的对应 id 的颜色转换成 RGB 格式
---* id cfg_colour_style 表中的对应 id
---@param id integer
---@return table "{r = 255, g = 255, b = 255}"
---```tips
---1. ===>> [颜色编码](https://engine-doc.996m2.com/web/#/91/51244 "颜色编码")
---```
---```lua
---SL:dump(SL:GetColorByStyleId(10))
---```
function SL:GetColorByStyleId(id) end

---表中的对应 id 的颜色转换成 16进制 格式
---* id cfg_colour_style 表中的对应 id
---@param id integer
---@return string "16进制 格式"
---```lua
---SL:dump(SL:GetHexColorByStyleId(10))
---```
function SL:GetHexColorByStyleId(id) end

---表中的对应 id 的颜色大小
---* id cfg_colour_style 表中的对应 id
---@param id integer
---@return integer "size"
---```lua
---SL:Print(SL:GetSizeByStyleId(10))
---```
function SL:GetSizeByStyleId(id) end

---Color3B颜色转化为hex 16进制
---* color3B 例: {r = 255, g = 255, b = 255}
---@param color3B table
---@return string "16进制 "#FFFFFF""
---```lua
---SL:release_print(SL:GetColorHexFromRGB({r = 255, g = 255, b = 255}))
---```
function SL:GetColorHexFromRGB(color3B) end

---播放按钮点击音效
---```lua
---SL:PlayBtnClickAudio()
---```
function SL:PlayBtnClickAudio() end

---播放音效
---* id cfg_sound表对应id
---* isLoop 是否循环
---@param id integer
---@param isLoop boolean
---```lua
---SL:PlaySound(50004, false)
---```
function SL:PlaySound(id, isLoop) end

---播放登陆-选角音效
---```lua
---SL:PlaySelectRoleAudio()
---```
function SL:PlaySelectRoleAudio() end

---播放宝箱内选中音效
---```lua
---SL:PlayFlashBoxAudio()
---```
function SL:PlayFlashBoxAudio() end

---播放开宝箱音效
---```lua
---SL:PlayOpenBoxAudio()
---```
function SL:PlayOpenBoxAudio() end

---停止所有音效
---```lua
---SL:StopAllAudio()
---```
function SL:StopAllAudio() end

---停止音效
---* id cfg_sound表对应id
---@param id integer
---```lua
---SL:StopSound(50004)
---```
function SL:StopSound(id) end

---资源下载
---* path 保存的文件路径
---* url 下载资源地址
---* downloadCB 回调函数
---@param path string
---@param url string
---@param downloadCB function
---```lua
---SL:DownLoadRes("res/02.png", "https://engine-doc.996m2.com/Public/Uploads/2022-08-09/62f25c9fe04c0.png",test)
---
---function test(...)
---    print("test",...)
---end
---```
function SL:DownLoadRes(path, url, downloadCB) end

---小地图资源下载
---* mapId 小地图Id
---* callback 回调函数
---@param mapId integer
---@param callback function
---```lua
---local function callBack(isOk, path) -- isOk 下载是否成功, path 返回小地图路径
---if isOk then
---    print("下载成功")
---else
---    print("下载失败")
---end
---print("小地图路径",path)
---end
---SL:DownloadMiniMapRes(100, callBack)
---```
function SL:DownloadMiniMapRes(mapId, callback) end

---删除GM缓存资源
---* filePath 文件路径
---@param filePath string
---```lua
---SL:RemoveGMResFile(filePath)
---```
function SL:RemoveGMResFile(filePath) end

---向服务器发送一个表单
---* filename 文件名
---* funcName 函数名
---* param 参数(最大长度4000字符)
---@param filename string
---@param funcName string
---@param param string
---```tips
---1. 每次都有被发包 服务端没做好验证的，包括数值超出了意料之外的小数,负数之类的导致被刷
---   2. 提交表单过程中以下违禁词不可用
---   3. 违禁词：`lib` `function` `then` `end` `_G` `return` `index` `set` `load` `_`
---   4. 在服务端文件头必须使用该接口SetFormAllowFunc 才可调用
---   5. 服务端文件路径MirServer\Mir200\Envir\Script
---```
---```lua
---多个参数可用#号拼接，过多参数建议传table
---SL:SubmitForm("新手引导", "fzhuansheng", "1".."#".."2")
---
---
---local table = SL:JsonEncode({1,2,3})
---SL:SubmitForm("新手引导", "fzhuansheng", table)
---```
function SL:SubmitForm(filename, funcName, param) end

---获取文件列表
---* path 文件路径
---@param path string
---@return table ""dev"下的路径"
---```lua
---dump(SL:GetFilesByPath())
---print("=========================================")
---dump(SL:GetFilesByPath("res"))
---```
function SL:GetFilesByPath(path) end

---获取服务端推送物品的自定义变量
---* key 物品：makeindex
---@param key integer
---@return table "物品所有的自定义变量值"
---```lua
---local cc = SL:GetSerCustomVar(itemData.MakeIndex)
---dump(cc)
---```
function SL:GetSerCustomVar(key) end

-- [Source: 游戏^定时器.lua]

---开启一个定时器
---* callback 回调函数
---* time 时间
---@param callback function
---@param time number
---@return number "定时器ID"
---```tips
---1.SL:Schedule 与 SL:UnSchedule 为相关接口
---```
---```lua
---local function test()
---SL:Print("callBack")
---end
---local id=SL:Schedule(test(), 3)
---SL:Print(id)
---```
function SL:Schedule(callback, time) end

---停止一个定时器
---* scheduleID 定时器ID
---@param scheduleID number
---```tips
---1.SL:Schedule 与 SL:UnSchedule 为相关接口
---```
---```lua
---local function test()
---SL:Print("callBack")
---end
---local id=SL:Schedule(test(), 3)
---SL:Print(id)
---SL:UnSchedule(id)
---```
function SL:UnSchedule(scheduleID) end

---开启一个单次定时器
---* callback 回调函数
---* time 时间
---@param callback function
---@param time number
---```lua
----- 0.5s后执行一次 callback
---SL:ScheduleOnce(callback, 0.5)
---```
function SL:ScheduleOnce(callback, time) end

---开启一个定时器, 绑定node节点
---* node bode节点
---* callback 回调函数
---* time 时间
---@param node table
---@param callback function
---@param time number
---@return table "定时器动作对象"
---```lua
---local node = GUI:Node_create(parent, "Node", 0 , 0)
----- node 节点每隔0.5s执行一次 callback
---SL:schedule(node, callback, 0.5)
---```
function SL:schedule(node, callback, time) end

---开启一个单次定时器, 绑定node节点
---* node node节点
---* callback 回调函数
---* time 时间
---@param node table
---@param callback function
---@param time number
---```lua
----- node 节点0.5s后执行一次 callback
---SL:scheduleOnce(node, callback, 0.5)
---
----- node 节点取消定时器操作
---GUI:stopAllActions(node)
---```
function SL:scheduleOnce(node, callback, time) end

-- [Source: 游戏^小地图.lua]

---请求地图组队成员数据
---```lua
---SL:RequestMiniMapTeam()
---```
function SL:RequestMiniMapTeam() end

---请求地图怪物数据
---```lua
---SL:RequestMiniMapMonsters()
---```
function SL:RequestMiniMapMonsters() end

-- [Source: 游戏^常用函数.lua]

---颜色转换函数
---* hexStr 16进制字符
---@param hexStr string
---@return table "从16进制字符转为{r, g, b}"
---```lua
---local color = SL:ConvertColorFromHexString("#FFFFFF")
---SL:dump(color)
---```
function SL:ConvertColorFromHexString(hexStr) end

---文件路径是否存在
---* path 文件路径
---@param path string
---@return boolean "文件路径是否存在 true/false"
---```lua
---if SL:IsFileExist("E:/1.png") then
---    SL:Print("文件存在")
---else
---    SL:Print("文件不存在")
---end
---```
function SL:IsFileExist(path) end

---深拷贝
---* data 需深拷贝内容
---@param data table
---@return table "深拷贝内容"
---```lua
---local copyData=SL:CopyData(data)
---```
function SL:CopyData(data) end

---字符串分割
---* str 分割内容
---* delimiter 分割字符
---@param str string
---@param delimiter string
---@return table "拆分后字符"
---```lua
---local spt = SL:Split("11#22#33", "|")
---SL:dump(spt)
---```
function SL:Split(str, delimiter) end

---文本提示
---* str 显示文本
---@param str string
---```lua
---SL:ShowSystemTips("文本提示")
---```
function SL:ShowSystemTips(str) end

---哈希表转成按数组
---* hashTab 转换表
---* sortFunc 排序方法
---@param hashTab table
---@param sortFunc function
---@return table "转换后table"
---```tips
---将hashTab转换成有序table，并可以按sortFunc排序，sortFunc可选参数
---```
---```lua
---local cfg = {["测试表1"] = {"表1", 1},["测试表2"] = {"表2", 2},["测试表3"] = {"表3", 3},["测试表4"] = {"表4", 4},["测试表5"] = {"表5", 5}}
---local function sort_cfg(a, b)
---return a[1] < b[1]
---end
---local new_cfg = SL:HashToSortArray(cfg, sort_cfg)
---SL:dump(new_cfg, "new_cfg")
---```
function SL:HashToSortArray(hashTab, sortFunc) end

---显示提示文本框
---* str 显示文本
---* width 显示宽度, 默认: 1136
---* pos 坐标, 默认: {x = 0, y = 0}
---* anchorPoint 锚点, 默认: {x = 0, y = 1}
---@param str string
---@param width integer
---@param pos table
---@param anchorPoint table
---```lua
---SL:SHOW_DESCTIP("提示文本")
---```
function SL:SHOW_DESCTIP(str, width, pos, anchorPoint) end

---加载文件
---* file 文件名
---@param file string
---```tips
---DEBUG下默认重新加载文件
---```
---```lua
---SL:RequireFile("GUIValue/Test_1")
---```
function SL:RequireFile(file) end

---拆解文件
---* path 文件路径
---* delimiter 指定分隔符
---* callBack 拆解回调方法 传入拆分后table参数
---@param path string
---@param delimiter string
---@param callBack function
---```tips
---以指定分隔符拆解一个文件
---```
---```lua
---local function callback(data)
---SL:PrintTable(data, "LINE======")
---end
---SL:LoadTxtFile("data_config/msg_decoder_config.txt", "#", callback)
---```
function SL:LoadTxtFile(path, delimiter, callBack) end

---数字转换成万、亿单位
---* num 数值
---* places 显示小数点后几位数
---@param num integer
---@param places integer
---@return string "转换后数字"
---```tips
---将数字 num 转换成 xx万、xx亿
---```
---```lua
---local str=SL:GetSimpleNumber(15498516485)
---SL:Print(str)
---```
function SL:GetSimpleNumber(num, places) end

---血量单位显示
---* hp 血量数值
---* pointBit 显示小数点后几位, 默认保留后两位
---@param hp integer
---@param pointBit integer
---@return string "转换后血量"
---```tips
---将血量数值转换有单位显示 过十亿(单位：E) 10w-99999w(单位：W）
---```
---```lua
---local str=SL:HPUnit(151845)
---SL:Print(str)
---```
function SL:HPUnit(hp, pointBit) end

---中文转换成竖着显示
---* str 需转换中文
---@param str string
---@return string "转换后中文字符"
---```lua
---SL:Print(SL:ChineseToVertical("需转换中文"))
---```
function SL:ChineseToVertical(str) end

---阿拉伯数字转中文大写
---* num 需转换阿拉伯数字
---@param num number
---@return string "大写中文数字"
---```lua
---SL:Print(SL:NumberToChinese(199))
---```
function SL:NumberToChinese(num) end

---获取字符串的byte长度
---* str 字符串
---@param str string
---@return number "字符串的byte长度"
---```lua
---SL:Print(SL:GetUTF8ByteLen("str"))
---```
function SL:GetUTF8ByteLen(str) end

---时间格式化成字符串显示
---* sec 秒数
---* isToStr 是否转成字符串输出, 空或false则返回table <br>{d = 天数, h = 小时, m = 分钟, s = 秒}
---* isSimple 是否简化字符串[基于isToStr 为 true]
---@param sec integer
---@param isToStr boolean
---@param isSimple boolean
---@return table "时间格式化成字符串 格式:xx天xx时xx分xx秒"
---```tips
---秒转时分秒
---```
---```lua
---SL:dump(SL:SecondToHMS(640000, isToStr, isSimple))
---```
function SL:SecondToHMS(sec, isToStr, isSimple) end

---数字转化为千分位字符串
---* num 数字
---@param num number
---@return string "千分位字符串无"
---```lua
---SL:release_print(SL:GetThousandSepString(19999999))
---```
function SL:GetThousandSepString(num) end

---lua table转成config配置表
---* tab 需要转换的table
---* name 转出文件名
---* destPath 文件保存的路径, 默认目录：dev/scripts/game_config/
---* sortFunc 外层排序函数
---@param tab table
---@param name string
---@param destPath string
---@param sortFunc function
---```lua
---SL:SaveTableToConfig(tab, name, destPath, sortFunc)
---```
function SL:SaveTableToConfig(tab, name, destPath, sortFunc) end

---十六进制转十进制
---* hexStr 十六进制
---@param hexStr string
---@return number "十进制"
---```lua
---SL:release_print(SL:HexToInt("ABCD"))
---```
function SL:HexToInt(hexStr) end

---MD5加密
---* str 加密字符
---@param str string
---@return string "加密后字符"
---```lua
---SL:release_print(SL:GetStrMD5("需加密字符"))
---```
function SL:GetStrMD5(str) end

---UTF8转GBK编码
---* str 需要转换的字符
---@param str string
---@return string "转换后字符"
---```lua
---SL:UTF8ToGBK(str)
---```
function SL:UTF8ToGBK(str) end

---GBK转UTF8编码
---* str 需要转换的字符
---@param str string
---@return string "转换后字符"
---```lua
---SL:GBKToUTF8(str)
---```
function SL:GBKToUTF8(str) end

---计算两坐标间的平方距离
---* pt1 起始坐标 GUI:p(x, y) 或 <br>{x = x, y = y}
---* pt2 结束坐标 GUI:p(x, y) 或 <br>{x = x, y = y}
---@param pt1 table
---@param pt2 table
---@return number "两坐标间的平方距离"
---```lua
---SL:release_print(SL:GetPointDistanceSQ({x = 10, y = 10}, {x = 100, y = 100}))
---```
function SL:GetPointDistanceSQ(pt1, pt2) end

---计算两坐标间的距离
---* pt1 起始坐标 GUI:p(x, y) 或 <br>{x = x, y = y}
---* pt2 结束坐标 GUI:p(x, y) 或 <br>{x = x, y = y}
---@param pt1 table
---@param pt2 table
---@return number "两坐标间的距离"
---```lua
---SL:release_print(SL:GetPointDistance({x = 10, y = 10}, {x = 100, y = 100}))
---```
function SL:GetPointDistance(pt1, pt2) end

---计算向量长度
---* pt GUI:p(x, y) 或 <br>{x = x, y = y}
---@param pt table
---@return number "向量长度"
---```lua
---SL:release_print(SL:GetPointLength({x = 10, y = 10}))
---```
function SL:GetPointLength(pt) end

---计算向量长度平方
---* pt GUI:p(x, y) 或 <br>{x = x, y = y}
---@param pt table
---@return number "返回向量长度平方无"
---```lua
---SL:release_print(SL:GetPointLengthSQ({x = 10, y = 10}))
---```
function SL:GetPointLengthSQ(pt) end

---计算两点中心点坐标
---* pt1 坐标 GUI:p(x, y) 或 <br>{x = x, y = y}
---* pt2 坐标 GUI:p(x, y) 或 <br>{x = x, y = y}
---@param pt1 table
---@param pt2 table
---@return table "两点中心点坐标"
---```lua
---SL:dump(SL:GetMidPoint({x = 1, y = 1}, {x = 10, y =10}))
---```
function SL:GetMidPoint(pt1, pt2) end

---计算两点相加坐标
---* pt1 坐标 GUI:p(x, y) 或 <br>{x = x, y = y}
---* pt2 坐标 GUI:p(x, y) 或 <br>{x = x, y = y}
---@param pt1 table
---@param pt2 table
---@return table "两点相加坐标"
---```lua
---SL:dump(SL:GetAddPoint({x = 1, y = 1}, {x = 10, y = 10}))
---```
function SL:GetAddPoint(pt1, pt2) end

---计算两点相减坐标
---* pt1 坐标 GUI:p(x, y) 或 <br>{x = x, y = y}
---* pt2 坐标 GUI:p(x, y) 或 <br>{x = x, y = y}
---@param pt1 table
---@param pt2 table
---@return table "两点相减坐标"
---```tips
---pt1坐标 减 pt2坐标
---```
---```lua
---SL:dump(SL:GetSubPoint({x = 1, y = 10}, {x = 1, y = 10}))
---```
function SL:GetSubPoint(pt1, pt2) end

---标准向量化坐标
---* pt 坐标 GUI:p(x, y) 或 <br>{x = x, y = y}
---@param pt table
---@return table "标准向量化坐标"
---```lua
---SL:dump(SL:GetNormalizePoint({x = 15, y = 3}))
---```
function SL:GetNormalizePoint(pt) end

---计算两向量夹角弧度值
---* pt1 坐标 GUI:p(x, y) 或 <br>{x = x, y = y}
---* pt2 坐标 GUI:p(x, y) 或 <br>{x = x, y = y}
---@param pt1 table
---@param pt2 table
---@return number "两向量夹角弧度值"
---```lua
---SL:release_print(SL:GetPointAngle({x = 1, y = 0}, {x = 0, y = 1}))
---```
function SL:GetPointAngle(pt1, pt2) end

---计算两向量夹角角度值
---* pt1 坐标 GUI:p(x, y) 或 <br>{x = x, y = y}
---* pt2 坐标 GUI:p(x, y) 或 <br>{x = x, y = y}
---@param pt1 table
---@param pt2 table
---@return number "两向量夹角角度值"
---```lua
---SL:release_print(SL:GetPointRotate({x = 1, y = 0}, {x = 0, y = 1}))
---```
function SL:GetPointRotate(pt1, pt2) end

---计算自身弧度值
---* pt 坐标 GUI:p(x, y) 或 <br>{x = x, y = y}
---@param pt table
---@return number "自身弧度值"
---```lua
---SL:release_print(SL:GetPointAngleSelf({x = 15, y = 10}))
---```
function SL:GetPointAngleSelf(pt) end

---计算自身角度值
---* pt 坐标 GUI:p(x, y) 或 <br>{x = x, y = y}
---@param pt table
---@return number "自身角度值"
---```lua
----- 获取坐标 pt1 到 pt2 的角度值
---local pt1 = GUI:p(100, 100)
---local pt2 = GUI:p(100, 200)
---local p = SL:GetSubPoint(pt2, pt1)
---local rotate = SL:GetPointRotateSelf(p)
---SL:Print(rotate)
---
----- 两向量夹角 角度值
---local tRotate = SL:GetPointRotate(pt1, pt2)
---SL:Print(tRotate)
---```
function SL:GetPointRotateSelf(pt) end

---获取高16位值
---* value 被操作值
---@param value number
---@return number "高16位值"
---```lua
---SL:release_print(SL:GetH16Bit(15566778899))
---```
function SL:GetH16Bit(value) end

---获取低16位值
---* value 被操作值
---@param value number
---@return number "高16位值"
---```lua
---SL:release_print(SL:GetL16Bit(15566778899))
---```
function SL:GetL16Bit(value) end

---跳转到某个超链
---* id 对应界面的跳转id
---@param id number
---```tips
---Equip               = 1,            -- 角色-装备
---State               = 2,            -- 角色-状态
---Attri               = 3,            -- 角色-属性
---Skill               = 4,            -- 角色-技能
---Title               = 5,            -- 角色-装备
---BestRing            = 6,            -- 角色-首饰盒
---Bag                 = 7,            -- 背包
---Stall               = 8,            -- 摆摊
---StoreHot            = 9,            -- 商城-热销
---StoreBeauty         = 10,           -- 商城-装饰
---StoreEngine         = 11,           -- 商城-功能
---StoreFestival       = 12,           -- 商城-节日
---GuildMain           = 13,           -- 行会-主界面
---GuildMember         = 14,           -- 行会成员列表
---GuildList           = 15,           -- 行会列表
---Mail                = 16,           -- 邮件
---Team                = 17,           -- 组队
---NearPlayer          = 18,           -- 附近玩家
---
---Setting             = 23,           -- 设置
---MiniMap             = 24,           -- 小地图
---SkillSetting        = 25,           -- 技能设置
---StoreRecharge       = 26,           -- 充值
---Auction             = 27,           -- 拍卖行
---Friend              = 28,           -- 好友
---ExitToRole          = 29,           -- 小退
---GuildCreate         = 30,           -- 行会创建
---Guild               = 31,           -- 智能行会界面
---Rank                = 32,           -- 排行榜
---Trade               = 33,           -- 面对面交易 请求
---ForceExitToRole     = 34,           -- 强制小退
---TradingBank         = 35,           -- 交易行
---GuideEnter          = 36,           -- 引导进入
---SuperEquip          = 37,           -- 角色-神装
---HeroEquip           = 41,           -- 英雄-装备
---HeroState           = 42,           -- 英雄-状态
---HeroAttri           = 43,           -- 英雄-属性
---HeroSkill           = 44,           -- 英雄-技能
---HeroTitle           = 45,           -- 英雄-称号
---HeroBestRing        = 46,           -- 英雄-首饰盒
---HeroBag             = 47,           -- 英雄-背包
---HeroSuperEquip      = 48,           -- 英雄-神装
---ReinAttrPoint       = 51,           -- 转生属性点
---Chat                = 52,           -- 聊天
---PCPrivate           = 53,           -- PC 私聊记录页
---
---MagicJointAttack    = 99,           -- 释放合击
---
---AssistChange        = 110,          -- 主界面-任务栏
---Box996              = 111,          -- 盒子称号
---MainMiniMapChange   = 112,          -- 小地图伸缩
---PCResolution        = 113,          -- PC 分辨率设置
---ChatExtendEmoj      = 114,          -- 角色-表情
---ChatExtendBag       = 115,          -- 聊天小框-背包
---MainNear            = 116,          -- 主界面-附近列表
---CallPay             = 117,          -- 调用-支付
---
---SettingBasic        = 300,          -- 基础设置
---SettingWindowRange  = 301,          -- 视距
---SettingFight        = 302,          -- 战斗
---SettingProtect      = 303,          -- 保护
---SettingAuto         = 304,          -- 挂机
---SettingHelp         = 305,          -- 帮助
---
---KeFu                = 310,          -- 调用客服界面
---Compound            = 2201,         -- 合成
---
---PlayerInternalState     = 401,      -- 人物内功状态
---PlayerInternalSkill     = 402,      -- 人物内功技能
---PlayerInternalMeridian  = 403,      -- 人物内功经络
---PlayerInternalCombo     = 404,      -- 人物内功连击
---
---HeroInternalState       = 501,      -- 英雄内功状态
---HeroInternalSkill       = 502,      -- 英雄内功技能
---HeroInternalMeridian    = 503,      -- 英雄内功经络
---HeroInternalCombo       = 504,      -- 英雄内功连击
---
---ReviewGift = 311, -- 好评有礼
---Community = 320, -- 社区帖子
---
---Purchase                = 601,      -- 求购
---
---ManualService996        = 701,  -- 996客服
---```
---```lua
---SL:JumpTo(401)
---```
function SL:JumpTo(id) end

---退出到选角界面
---```tips
---小退时, 有弹窗提示
---```
---```lua
---SL:ExitToRoleUI()
---```
function SL:ExitToRoleUI() end

---退出到选角界面(强制小退)
---```tips
---强制小退, 无弹窗提示
---```
---```lua
---SL:ForceExitToRoleUI()
---```
function SL:ForceExitToRoleUI() end

---退出到登录界面
---```lua
---SL:ExitToLoginUI()
---```
function SL:ExitToLoginUI() end

---退出游戏
---```lua
---SL:ExitGame()
---```
function SL:ExitGame() end

---发送GM命令到聊天
---* msg gm命令
---@param msg string
---```lua
---SL:RequestSendChatGMMsg(msg)
---```
function SL:RequestSendChatGMMsg(msg) end

---创建一个红点到节点
---* targetNode 目标控件
---* offset 偏移位置 例: {x = 5, y = 5}
---@param targetNode table
---@param offset table
---@return table "红点"
---```lua
---local Btn = GUI:Button_Create(GUI:Attach_Bottom(), "BtnOk", 200, 200, "res/public/061302.PNG")
---SL:release_print(SL:CreateRedPoint(Btn))
---```
function SL:CreateRedPoint(targetNode, offset) end

---设置文本样式(按钮、文本)
---* widget 按钮或者文本对象
---* colorID 0 - 255 色值ID
---@param widget userdata
---@param colorID number
---```lua
---local Btn = GUI:Button_Create(GUI:Attach_Bottom(), "Btn", 200, 200, "res/public/061302.PNG")
---SL:SetColorStyle(Btn, 150)
---```
function SL:SetColorStyle(widget, colorID) end

---获取对应色值ID的配置
---* colorID 0 - 255 色值ID
---@param colorID number
---@return table "对应色值ID的配置"
---```lua
---SL:dump(SL:GetColorCfg(150))
---```
function SL:GetColorCfg(colorID) end

---检查是否满足条件
---@return boolean "是否满足条件 true/false"
---```lua
---SL:release_print(SL:CheckCondition(conditionStr))
---```
function SL:CheckCondition(conditionStr) end

---显示气泡提醒
---* id 气泡ID
---* path 气泡图片资源路径
---* callback 气泡点击回调
---@param id number
---@param path string
---@param callback function
---```lua
---SL:AddBubbleTips(UIConst.BubbleTipsID.FriendApply, "res/private/main/bubble_tips/1900012603_1.png", function ()
---    local applyLayer = GUI:GetWindow(nil, UIConst.LAYERID.FriendApplyGUI)
---    if not applyLayer then
---        UIOperator:OpenFriendApplyUI()
---    end
---end)
---```
function SL:AddBubbleTips(id, path, callback) end

---删除气泡提醒
---* ID 气泡ID
---@param ID number
---```lua
---SL:DelBubbleTips(ID)
---```
function SL:DelBubbleTips(ID) end

---重新加载地图
---```lua
---SL:ReloadMap()
---```
function SL:ReloadMap() end

---请求HTTP Get方式
---* url 链接地址
---* httpCB 回调函数
---@param url string
---@param httpCB function
---```lua
---local function httpCB(success, response)
----- success: boolean 请求是否成功
----- response: string 请求返回数据
---end
---SL:HTTPRequestGet("https://www.baidu.com/", httpCB)
---```
function SL:HTTPRequestGet(url, httpCB) end

---请求HTTP Post方式
---* url 链接地址
---* httpCB 回调函数
---* suffix 请求信息
---* head 请求头
---@param url string
---@param httpCB function
---@param suffix string
---@param head table
---```lua
---local function httpCB(success, response)
----- success: boolean 请求是否成功
----- response: string 请求返回数据
---end
---local suffix = "appid=1&device_id=PCDV-6ct5fzZ&game_id=1&platform=0&type=1&username=wuuhui&sign=30a51e6"
---SL:HTTPRequestPost("https://www.baidu.com/", httpCB, suffix)
---```
function SL:HTTPRequestPost(url, httpCB, suffix, head) end

---本地公告展示
---* data 具体参数配置
---@param data table
---```tips
---具体参数配置
---Type = [        -- 公告类型
---    4: 顶部跑马灯公告 (Msg、 FColor、 BColor)
---    5: 屏幕跑马灯公告 可控制Y轴坐标 (Msg、 FColor、 BColor、 Y、 Count)
---    6: 聊天上方公告 (Msg、 FColor、 BColor、 Time、 Label) 
---    9: 普通通用提示 (Msg) 
---    10: 可控制X轴Y轴公告 (Msg、 FColor、 BColor、 X、 Y) 
---    11: 屏幕跑马灯公告 (系统公告) (Type、 Msg、 FColor、 BColor) 
---    12: 系统频道公告 (Msg、 FColor、 BColor) 
---    13: 带缩放效果的公告 可设置Y轴 (Msg、 FColor、 BColor、Y)
---    ]
---
---Msg        -- 提示内容
---FColor     -- 文字色值ID
---BColor     -- 背景色值ID
---X          -- 坐标X
---Y          -- 坐标Y
---Time       -- 倒计时
---Count      -- 播放次数
---Label      -- 响应Link
---```
---```lua
---local data={
---    Type=4,
---    Msg="提示内容",
---    FColor=150,
---    BColor=100,
---    X=200,
---    Y=400,
---    Time=3,
---    Count=3,
---    Label=""
---}
---SL:ShowLocalNoticeByType(data)
---```
function SL:ShowLocalNoticeByType(data) end

---震屏
---* time 震动时间 (毫秒)
---* distance 震动距离
---@param time integer
---@param distance integer
---```lua
----- 无参默认 time为700 、distance为10
---SL:ShakeScene()
---```
function SL:ShakeScene(time, distance) end

---添加UI到原有界面
---* data 包含以下键值对：<br> `index` (number): 原有界面UI编号 (等同之前脚本挂接点id)<br> `subid` (any): 自添加ui编号<br> `content` (any): 自添加ui内容/控件<br> `type` (number, 可选): 类型，不填或为0表示添加，为1表示移除
---@param data table
---```tips
--- 等价于接口 SL:AttachOrUnAttachSUI(data)
---原有界面挂接点id :
---101,      -- 主界面左上
---102,      -- 主界面右上
---103,      -- 主界面左下
---104,      -- 主界面右下
---105,      -- 主界面左中
---106,      -- 主界面上中
---107,      -- 主界面右中
---108,      -- 主界面下中 （不跟随刘海屏变动）
---109,      -- 主界面-按钮模块
---110,      -- 主界面 任务
---111,      -- 主界面 任务组合
---112,      -- PC主界面聊天上方功能栏
---1001,     -- 主界面最底左上
---1002,     -- 主界面最底右上
---1003,     -- 主界面最底左下
---1004,     -- 主界面最底右下
---1101,     -- 主界面最顶左上
---1102,     -- 主界面最顶右上
---1103,     -- 主界面最顶左下
---1104,     -- 主界面最顶右下
---2,        -- 角色面板 大面板
---201,      -- 角色面板 大面板 查看他人
---3,        -- 角色面板 装备
---301,      -- 角色面板 装备 查看别人
---3001,     -- 角色面板 装备 下层
---3002,     -- 角色面板 装备 下层 查看别人
---4,        -- 角色面板 状态
---5,        -- 角色面板 属性
---6,        -- 角色面板 技能
---601,      -- 角色面板 技能 查看别人
---7,        -- 背包面板
---7001,     -- 背包分页按钮1
---7002,     -- 背包分页按钮2
---7003,     -- 背包分页按钮3
---7004,     -- 背包分页按钮4
---8,        -- 小地图
---9,        -- 行会 行会列表
---10,       -- 行会 行会创建
---11,       -- 行会 主面板
---12,       -- 行会 成员
---14,       -- 邮件
---15,       -- 好友
---16,       -- 仓库
---17,       -- 角色面板 buff/天赋
---1701,     -- 角色面板 buff/天赋 查看他人
---23,       -- 角色面板 称号
---2301,     -- 角色面板 称号  查看他人
---29,       -- 拍卖行 主面板
---30,       -- 拍卖行 世界拍卖
---31,       -- 拍卖行 行会拍卖
---32,       -- 拍卖行 我的竞拍
---33,       -- 拍卖行 我的上架
---34,       -- 拍卖行 竞价
---35,       -- 拍卖行 一口价
---36,       -- 拍卖行 上架
---37,       -- 拍卖行 下架
---38,       -- 拍卖行 超时
---39,       -- 角色面板  时装
---3901,     -- 角色面板  时装  查看别人
---3902,     -- 角色面板  时装  下层
---3903,     -- 角色面板  时装  下层 查看他人
---40,       -- 充值
---41,       -- 首饰盒
---4101,     -- 首饰盒  查看他人
---42,       -- 合成
---43,       -- 怪物大血条
---45,       -- 排行榜
---300,      -- 基础设置
---305,      -- 视距
---302,      -- 战斗
---303,      -- 保护
---304,      -- 挂机
---1200,     -- 行会底背景 特殊处理
---701,      -- 商城页签1
---702,      -- 商城页签2
---703,      -- 商城页签3
---704,      -- 商城页签4
---401,      -- 内功状态
---402,      -- 内功技能
---403,      -- 内功经络
---40305,    -- 经络-奇经
---40301,    -- 经络-冲脉
---40302,    -- 经络-阴跷
---40303,    -- 经络-阴维
---40304,    -- 经络-任脉
---404,      -- 内功连击
---50002,    -- 角色面板 大面板
---50003,    -- 角色面板 装备
---50301,    -- 角色面板 装备 查看
---53001,    -- 角色面板 装备 下层
---53002,    -- 角色面板 装备 下层
---50004,    -- 角色面板 状态
---50005,    -- 角色面板 属性
---50006,    -- 角色面板 技能
---50601,    -- 角色面板 技能 查看
---50007,    -- 背包面板
---50023,    -- 角色面板 称号
---52301,    -- 角色面板 称号  查看
---50039,    -- 角色面板  时装
---53901,    -- 角色面板  时装  查
---50041,    -- 首饰盒
---54101,    -- 首饰盒  查看他人
---501,      -- 内功状态
---502,      -- 内功技能
---503,      -- 内功经络
---50305,    -- 经络-奇经
---50301,    -- 经络-冲脉
---50302,    -- 经络-阴跷
---50303,    -- 经络-阴维
---50304,    -- 经络-任脉
---504,      -- 内功连击
---```
---```lua
---local node_x,node_y = 25,53
---local node = GUI:Node_Create(-1, "BagNode", node_x,node_y)
---local btn = GUI:Button_Create(node,"OrganizeButton", 0, 0, "res/public/1900000652.png")
---GUI:Button_setTitleText(btn, "整理")
---GUI:addOnClickEvent(btn, function()
---    SL:RequestRefreshBagPos()
---end)
----- 添加到背包面板
---SL:AttachOrUnAttachGUI({index =  7, subid = 1,content = node})
--------
----- 从背包面板移除
---SL:AttachOrUnAttachGUI({index =  7, subid = 1,type = 1})
---```
function SL:AttachOrUnAttachGUI(data) end

---加载文件2
---* file 文件名
---* reload 是否重载
---@param file string
---@param reload boolean
---```lua
---SL:Require("GUIValue/Test_1",true)
---```
function SL:Require(file, reload) end

-- [Source: 游戏^拍卖行-求购行-交易行.lua]

---请求拍卖行上架列表
---* listType 1: 表示查询自己上架的物品，2: 表示查询参与过的
---@param listType integer
---```lua
---SL:RequestAuctionPutList(listType)
---```
function SL:RequestAuctionPutList(listType) end

---拍卖行请求上架
---* makeindex 物品唯一ID
---* count 数量
---* bidPrice 竞拍价格
---* buyPrice 一口价
---* currencyID 货币ID
---* rebate 折扣
---@param makeindex integer
---@param count integer
---@param bidPrice integer
---@param buyPrice integer
---@param currencyID integer
---@param rebate integer
---```tips
---旧接口名：SL:RequestAuctionPutin
---```
---```lua
---SL:RequestAuctionPutInItem(makeindex, count, bidPrice, buyPrice, currencyID, rebate)
---```
function SL:RequestAuctionPutInItem(makeindex, count, bidPrice, buyPrice, currencyID, rebate) end

---拍卖行请求下架
---* makeindex 物品唯一ID
---@param makeindex integer
---```tips
---旧接口名：SL:RequestAuctionPutout
---```
---```lua
---SL:RequestAuctionPutOutItem(makeindex)
---```
function SL:RequestAuctionPutOutItem(makeindex) end

---拍卖行请求重新上架
---* makeindex 物品唯一ID
---* count 数量
---* bidPrice 竞拍价格
---* buyPrice 一口价
---* currencyID 货币ID
---* rebate 折扣
---@param makeindex integer
---@param count integer
---@param bidPrice integer
---@param buyPrice integer
---@param currencyID integer
---@param rebate integer
---```tips
---旧接口名：SL:RequestAuctionRePutin
---```
---```lua
---SL:release_print("打印内容！！")
---```
function SL:RequestAuctionRePutInItem(makeindex, count, bidPrice, buyPrice, currencyID, rebate) end

---拍卖行请求竞价
---* makeindex 物品唯一ID
---* price 竞拍价
---@param makeindex integer
---@param price integer
---```lua
---SL:RequestAuctionBid(makeindex, price)
---```
function SL:RequestAuctionBid(makeindex, price) end

---拍卖行请求领取竞拍成功物品
---* makeindex 物品唯一ID
---@param makeindex integer
---```lua
---SL:RequestAcquireBidItem(makeindex)
---```
function SL:RequestAcquireBidItem(makeindex) end

---请求求购数据
---* data 请求参数
---@param data table
---```tips
---请求参数
---{
---type      = 类型(int),                    -- 0: 世界求购, 1: 我的求购, 2: 我的已收
---pageIndex = 请求页码(int),
---stdmode     = 筛选的stdmode(string),        -- #分隔需要筛选的stdmode 例: "1#2#3#4"
---currency    = 筛选货币(string),             -- ,分隔需要筛选的货币ID 例: "1,2,3"
---sort        = 排序规则(int),                -- 0: 不排序 1: 单价正序 2: 单价倒序 3: 总价正序 4: 总价倒序
---itemids     = 筛选道具idx(string),         -- ,分隔筛选的道具Index 例: "1001,1002,1003"
---}
---```
---```lua
---SL:RequestPurchaseItemList(data)
---```
function SL:RequestPurchaseItemList(data) end

---请求求购出售物品
---* data 请求参数 {guid = 求购列表标识id, qty = 出售数量}
---@param data table
---```lua
---SL:RequestPurchaseSell(data)
---```
function SL:RequestPurchaseSell(data) end

---请求上架求购物品
---* data 请求参数
---@param data table
---```tips
---请求参数
---{
---    qty     = 求购数量(int),
---    minqty    = 求购最小数量(int),
---    price     = 物品单价(int),
---    itemid    = 道具Index,
---    currency = 货币ID
---}
---```
---```lua
---SL:RequestPurchasePutIn(data)
---```
function SL:RequestPurchasePutIn(data) end

---请求下架求购物品
---* guid 求购列表标识id, 不填则全部下架
---@param guid integer
---```lua
---SL:RequestPurchasePutOut(guid)
---```
function SL:RequestPurchasePutOut(guid) end

---请求取出求购已收物品
---* guid 求购列表标识id, 不填则全部取出
---@param guid integer
---```lua
---SL:RequestPurchaseTakeOut(guid)
---```
function SL:RequestPurchaseTakeOut(guid) end

---请求点击NPC
---* npcID NPCID
---@param npcID integer
---```lua
---SL:RequestNPCTalk(npcID)
---```
function SL:RequestNPCTalk(npcID) end

---交易行截图测试
---```tips
---pc端可以调用调试 报错的话可以查看控制台日志,图片可以在当前项目cache中
---```
---```lua
---SL:TradingTestCapture()
---```
function SL:TradingTestCapture() end

---交易行测试截图是否报错
---* openFunc 打开当前界面方法
---* closeFunc 关闭当前界面方法
---* getNodeFunc 返回一个当前页面父节点panel，会截图这个父节点上所有子节点，并且这个父节点可以获取到getContentSize的可视截图大小
---@param openFunc function
---@param closeFunc function
---@param getNodeFunc function
---```lua
---SL:AddTradingCustomCaptureTaskLua(openFunc, closeFunc, getNodeFunc)
---```
function SL:AddTradingCustomCaptureTaskLua(openFunc, closeFunc, getNodeFunc) end

---删除交易行lua截图任务
---```lua
---SL:RemoveTradingCustomCaptureTask()
---```
function SL:RemoveTradingCustomCaptureTask() end

-- [Source: 游戏^排行榜.lua]

---请求排行榜数据
---* type 类别ID
---* selectType 选择类别
---@param type integer
---@param selectType integer
---```lua
---SL:RequestRankData(type,selectType)
---```
function SL:RequestRankData(type, selectType) end

---请求玩家排行榜数据
---* userID 玩家ID
---* type 玩家/英雄 1玩家 2英雄
---@param userID integer
---@param type integer
---```lua
---SL:RequestPlayerRankData(userID, type)
---```
function SL:RequestPlayerRankData(userID, type) end

-- [Source: 游戏^提升按钮.lua]

---添加提升按钮
---* id 按钮id 必须唯一!!!! (同脚本命令加的id也不能重复)
---* name 按钮展示文本
---* func 点击按钮跳转函数
---@param id integer
---@param name string
---@param func function
---```lua
---SL:AddUpgradeBtn("upgradBtn", "name", function()
---    --do smoething
---end)
---```
function SL:AddUpgradeBtn(id, name, func) end

---删除提升按钮
---* id 按钮id 必须唯一!!!! (同脚本命令加的id也不能重复)
---@param id integer
---```lua
---SL:RemoveUpgradeBtn("upgradBtn")
---```
function SL:RemoveUpgradeBtn(id) end

-- [Source: 游戏^游戏事件函数.lua]

---派发事件 
---* eventID [事件ID](https://engine-doc.996m2.com/web/#/70/52290 "事件ID")
---* data 数据
---@param eventID string
---@param data any
---```tips
---注:具体用法参考GUILayout开源文件
---```
---```lua
-----角色装备数据操作
--- local data = {
---     MakeIndex = makeIndex,
---     Where     = pos,
---     ItemData  = item,
---     opera     = GUIDefine.OperateType.ADD
--- }
--- SL:onLUAEvent(LUA_EVENT_PLAYER_EQUIP_CHANGE, data)
-----变强提醒
--- SL:onLUAEvent(LUA_EVENT_BESTRONG_LIST_REFRESH)
---```
function SL:onLUAEvent(eventID, data) end

---注册控件事件
---* widget 控件对象
---* desc 描述
---* msgtype 窗体事件id
---* callback 回调函数
---@param widget userdata
---@param desc string
---@param msgtype integer
---@param callback function
---```tips
---窗口事件 msgtype
---WND_EVENT_MOUSE_LB_DOWN             = 1                                         -- 鼠标左键按下事件
---WND_EVENT_MOUSE_LB_UP               = 2                                         -- 鼠标左键弹起事件
---WND_EVENT_MOUSE_LB_CLICK            = 3                                         -- 鼠标左键点击事件
---WND_EVENT_MOUSE_LB_DBCLICK          = 4                                         -- 鼠标左键双击事件
---WND_EVENT_MOUSE_RB_DOWN             = 5                                         -- 鼠标右键按下事件
---WND_EVENT_MOUSE_RB_UP               = 6                                         -- 鼠标右键弹起事件         
---WND_EVENT_MOUSE_RB_CLICK            = 7                                         -- 鼠标右键点击事件
---WND_EVENT_MOUSE_RB_DBCLICK          = 8                                         -- 鼠标右键双击事件
---WND_EVENT_MOUSE_MOVE                = 9                                         -- 鼠标移动事件
---WND_EVENT_MOUSE_WHEEL               = 10                                        -- 鼠标滚轮滚动事件
---WND_EVENT_MOUSE_IN                  = 11                                        -- 鼠标进入控件事件
---WND_EVENT_MOUSE_OUT                 = 12                                        -- 鼠标离开控件事件
---
---WND_EVENT_WND_VISIBLE               = 21                                        -- 可见状态发生变化事件
---WND_EVENT_WND_POS_CHANGE            = 22                                        -- 控件位置发生变化事件
---WND_EVENT_WND_SIZECHANGE            = 23                                        -- 窗口大小发生变化事件
---WND_EVENT_WND_DESTROY               = 24                                        -- 窗体被销毁事件
---```
---```lua
---SL:RegisterWndEvent(btn, "npc", WND_EVENT_MOUSE_LB_UP, function()
---    SL:Print("2")
---end)
---```
function SL:RegisterWndEvent(widget, desc, msgtype, callback) end

---注销控件事件
---* widget 控件对象
---* desc 描述
---* msgtype 窗体事件id
---@param widget userdata
---@param desc string
---@param msgtype integer
---```lua
---SL:UnRegisterWndEvent(btn, "npc", WND_EVENT_MOUSE_LB_UP)
---```
function SL:UnRegisterWndEvent(widget, desc, msgtype) end

---添加窗体控件自定义属性
---* widget 控件对象
---* desc 描述
---* key 属性名称
---* value 属性值
---@param widget userdata
---@param desc string
---@param key string
---@param value any
---```lua
---SL:AddWndProperty(btn, "test", "key", 1)
---```
function SL:AddWndProperty(widget, desc, key, value) end

---删除窗体控件自定义属性
---* widget 控件对象
---* desc 描述
---* key 属性名称
---@param widget userdata
---@param desc string
---@param key string
---```lua
---SL:AddWndProperty(btn, "test", "key", 1)
---local a = SL:GetWndProperty(btn, "test", "key")
---SL:Print(a, type(a))
---SL:DelWndProperty(btn, "test", "key")
---```
function SL:DelWndProperty(widget, desc, key) end

---获取窗体控件自定义属性
---* widget 控件对象
---* desc 描述
---* key 属性名称
---@param widget userdata
---@param desc string
---@param key string
---@return any "窗体控件自定义属性"
---```lua
---SL:AddWndProperty(btn, "test", "key", 1)
---local a = SL:GetWndProperty(btn, "test", "key")
---SL:Print(a, type(a))
---SL:DelWndProperty(btn, "test", "key")
---```
function SL:GetWndProperty(widget, desc, key) end

---注册游戏事件回调
---* eventID 事件ID
---* eventTag 事件描述
---* eventCB 回调
---* widget 界面对象
---@param eventID string
---@param eventTag string
---@param eventCB function
---@param widget? userdata
---```lua
---SL:RegisterLUAEvent(LUA_EVENT_ONPLAYLEVELUP, "属性刷新", shuxing)
---```
function SL:RegisterLUAEvent(eventID, eventTag, eventCB, widget) end

---注销游戏事件回调
---* eventID 事件ID
---* eventTag 事件描述
---@param eventID string
---@param eventTag string
---```lua
---SL:UnRegisterLUAEvent(LUA_EVENT_ONPLAYLEVELUP, "属性刷新")
---```
function SL:UnRegisterLUAEvent(eventID, eventTag) end

---刷新玩家HUD角色名
---* actorID 玩家ID
---@param actorID string
---```lua
---SL:OnRefreshActorHUDLabel(actorID)
---```
function SL:OnRefreshActorHUDLabel(actorID) end

---刷新玩家HUD控件(角色名)颜色
---* actorID 玩家ID
---@param actorID string
---```lua
---SL:OnRefreshActorHUDLabelColor(actorID)
---```
function SL:OnRefreshActorHUDLabelColor(actorID) end

---刷新玩家HUD称号封号
---* actorID 玩家ID
---@param actorID string
---```lua
---SL:OnRefreshActorHUDTitle(actorID)
---```
function SL:OnRefreshActorHUDTitle(actorID) end

-- [Source: 游戏^玩家.lua]

---请求玩家称号数据
---```lua
---SL:RequestTitleList()
---```
function SL:RequestTitleList() end

---请求取下称号
---```lua
---SL:RequestDisboardTitle()
---```
function SL:RequestDisboardTitle() end

---请求激活称号
---* titleId 称号id
---@param titleId integer
---```lua
---SL:RequestActivateTitle(titleId)
---```
function SL:RequestActivateTitle(titleId) end

---请求确认加属性点
---* data 加点数据table `{"Bonus":[{"id":1,"value":1}, ...]}`
---* m_nBonusPoint 剩余加点数
---@param data table
---@param m_nBonusPoint integer
---```lua
---SL:RequestAddReinAttrNew(data, m_nBonusPoint)
---```
function SL:RequestAddReinAttrNew(data, m_nBonusPoint) end

---提交任务
---* missionID 任务ID
---@param missionID integer
---```lua
---SL:RequestSubmitMission(missionID)
---```
function SL:RequestSubmitMission(missionID) end

---请求合成
---* compoundID 合成ID
---@param compoundID integer
---```lua
---SL:ResquestCompoundItem(compoundID)
---```
function SL:ResquestCompoundItem(compoundID) end

---请求敏感词检测
---* str 需要检测的文本
---* type 文本类型 <br> 1 : 昵称类<br> 2 : 聊天类<br> 3 : 行会公告
---* callback 检测完毕的回调事件<br> 事件传入参数: param1: boolean 能否通过 param2: 文本
---@param str string
---@param type integer
---@param callback function
---```lua
---SL:RequestCheckSensitiveWord(str, type, callback)
---```
function SL:RequestCheckSensitiveWord(str, type, callback) end

---邀请上马
---* uid 玩家id
---@param uid integer
---```lua
---SL:RequestInvitePlayerInHorse(uid)
---```
function SL:RequestInvitePlayerInHorse(uid) end

-- [Source: 游戏^移动端交互.lua]

---打开QQ
---```lua
---SL:RequestOpenQQ()
---```
function SL:RequestOpenQQ() end

---加QQ
---* id QQ号
---@param id integer
---```lua
---SL:RequestJoinQQ(1558496214)
---```
function SL:RequestJoinQQ(id) end

---加QQ群
---* key QQ群key
---@param key integer
---```lua
---SL:RequestJoinQQGroup(5481569541)
---```
function SL:RequestJoinQQGroup(key) end

---打开微信
---```lua
---SL:RequestOpenWX()
---```
function SL:RequestOpenWX() end

---添加地图特效
---* ID 该地图特效标识 必须唯一!!!!
---* mapID 添加到的地图ID
---* sfxId 特效ID
---* x 地图坐标X
---* y 地图坐标Y
---* loop 是否循环播放特效, 不填默认循环播放
---* showType 显示位置 0:在后面 1: 在前面
---* time 播放次数
---@param ID integer
---@param mapID string
---@param sfxId integer
---@param x number
---@param y number
---@param loop boolean
---@param showType integer
---@param time integer
---```lua
---local mapID = SL:Get_MAP_ID()
---SL:AddMapSpecialEffect(1111, mapID, 10, 295, 305)
---```
function SL:AddMapSpecialEffect(ID, mapID, sfxId, x, y, loop, showType, time) end

---删除地图特效
---* ID 该地图特效标识 必须唯一!!!!
---* mapID 添加到的地图ID
---@param ID integer
---@param mapID string
---```lua
---local mapID = SL:Get_MAP_ID()
---SL:RmvMapSpecialEffect(1111, mapID)
---```
function SL:RmvMapSpecialEffect(ID, mapID) end

---添加Actor特效
---* actorID 玩家id
---* sfxID 特效ID
---* isFront 是否在模型前  默认在前面
---* offX x偏移
---* offY y偏移
---@param actorID integer
---@param sfxID integer
---@param isFront boolean
---@param offX integer
---@param offY integer
---```lua
---SL:AddActorEffect(actorID, sfxID, isFront, offX, offY)
---```
function SL:AddActorEffect(actorID, sfxID, isFront, offX, offY) end

---删除Actor特效
---* actorID 玩家id
---* sfxID 特效ID
---@param actorID integer
---@param sfxID integer
---```lua
---SL:RmvActorEffect(actorID, sfxID)
---```
function SL:RmvActorEffect(actorID, sfxID) end

---强攻
---```lua
---SL:RequestForceAttack()
---```
function SL:RequestForceAttack() end

-- [Source: 游戏^网络.lua]

---发送网络消息(lua)
---* msgID 消息ID
---* p1 数据1
---* p2 数据2
---* p3 数据3
---* sendStr 字符数据
---@param msgID integer
---@param p1 integer
---@param p2 integer
---@param p3 integer
---@param sendStr string
---```lua
----- Lua脚本 接收消息
---function handlerequest(actor, msgID, param1, param2, param3, str)
---    release_print("-----------------------------")
---    release_print(msgID)
---    release_print(param1)
---    release_print(param2)
---    release_print(param3)
---    release_print(str)
---end
---
----- 客户端执行 发送消息
---SL:SendLuaNetMsg(100, 1, 2, 3, "Hello World, This engine, for Lua!")
---```
function SL:SendLuaNetMsg(msgID, p1, p2, p3, sendStr) end

---接收网络消息(lua)
---* msgID 消息ID
---* networkCB 接收消息的函数回调
---* widget 绑定的界面(win)对象， 界面关闭则注销接收回调
---@param msgID integer
---@param networkCB function
---@param widget userdata
---```lua
----- 客户端注册 接收消息
---local function networkCB(msgID, p1, p2, p3, msgData)
---SL:Print(msgID, p1, p2, p3, msgData)
---end
---SL:RegisterLuaNetMsg(1000, networkCB)
---
----- Lua脚本执行
---sendluamsg(actor, 1000, 1, 2, 3, "我是来自服务器的消息 By Lua")
---```
function SL:RegisterLuaNetMsg(msgID, networkCB, widget) end

---发送网络消息(txt)
---* msgID 消息ID
---* p1 数据1
---* p2 数据2
---* p3 数据3
---* sendStr 字符数据
---@param msgID integer
---@param p1 integer
---@param p2 integer
---@param p3 integer
---@param sendStr string
---```lua
----- Lua脚本 接收消息
---;接收来自客户端的消息号 100
---[@Message_100]
---#ACT
---SENDMSG 0 收到消息，<$PARAM1>, <$PARAM2>, <$PARAM3>, <$CUSTMSGPARAM>
---
----- 客户端执行 发送消息
---SL:SendNetMsg(100, 1, 2, 3, "Hello World, This engine, for TXT!")
---```
function SL:SendNetMsg(msgID, p1, p2, p3, sendStr) end

---接收网络消息(txt)
---* msgID 消息ID
---* networkCB 接收消息的函数回调
---* widget 绑定的界面(win)对象， 界面关闭则注销接收回调
---@param msgID integer
---@param networkCB function
---@param widget userdata
---```lua
----- 客户端注册 接收消息
---local function networkCB(msgID, msgData)
---SL:Print(msgID)
---SL:Print(msgData)
---end
---SL:RegisterNetMsg(1000, networkCB)
---
---TXT脚本执行
---SENDCUSTMSG 1000 我是来自服务器的消息, By TXT
---```
function SL:RegisterNetMsg(msgID, networkCB, widget) end

-- [Source: 游戏^聊天-邮件.lua]


---发送[普通消息]到聊天
---* msg 消息内容
---* channel 设置频道, 不设置默认当前聊天频道
---@param msg string
---@param channel integer
---```lua
---SL:RequestSendChatNormalMsg("聊天内容")
---```
function SL:RequestSendChatNormalMsg(msg, channel) end

---发送[系统提示]到聊天框
---* msg 提示内容
---* FColor 字体颜色ID
---* BColor 背景颜色ID
---@param msg string
---@param FColor integer
---@param BColor integer
---```lua
---SL:ShowSystemChat(string.format("自动移动坐标点(%s:%s)不可到达", mapX, mapY), 154, 255)
---```
function SL:ShowSystemChat(msg, FColor, BColor) end

---发送[装备]到聊天
---* channel 设置频道, 不设置默认当前聊天频道
---@param channel integer
---```lua
---SL:RequestSendChatEquipMsg()
---```
function SL:RequestSendChatEquipMsg(channel) end



---新增本地掉落消息到聊天
---* data Msg: 掉落内容富文本<br> FColor: 字体颜色ID <br> BColor: 背景颜色ID <br> dropType: 掉落分类ID (1-10)
---@param data table
---```lua
---SL:AddDropChatMsgShow({
---    FColor = 253,
---    BColor = 255,
---    Msg = "测试掉落物品  从 一只牛 身上掉落在 盟重省(222,333) 附近",
---    dropType = 1,
---})
---```
function SL:AddDropChatMsgShow(data) end

---请求获取邮件列表 一次十条
---```lua
---SL:RequestMailList()
---```
function SL:RequestMailList() end

---删除已读邮件
---```lua
---SL:RequestDelReadMail()
---```
function SL:RequestDelReadMail() end

---读邮件
---* mailId 邮件ID
---@param mailId integer
---```lua
---SL:RequestReadMail(mailId)
---```
function SL:RequestReadMail(mailId) end

---删除邮件
---* mailId 邮件ID
---@param mailId integer
---```lua
---SL:RequestDelMail(mailId)
---```
function SL:RequestDelMail(mailId) end

---邮件全部提取
---```lua
---SL:RequestGetAllMailItems()
---```
function SL:RequestGetAllMailItems() end

---邮件提取
---* mailId 邮件ID
---@param mailId integer
---```lua
---SL:RequestGetMailItems(mailId)
---```
function SL:RequestGetMailItems(mailId) end

-- [Source: 游戏^背包常用函数.lua]

---背包刷新
---```lua
---SL:RequestRefreshBagPos()
---```
function SL:RequestRefreshBagPos() end

---使用物品
---* Index 物品Index
---@param Index integer
---```lua
---SL:RequestUseItemByIndex(Index)
---```
function SL:RequestUseItemByIndex(Index) end

---批量勾选背包物品
---* data 物品唯一ID 数组
---@param data table
---```lua
---SL:RequestSetBagItemChoose(data)
---```
function SL:RequestSetBagItemChoose(data) end

---丢弃物品
---* itemData 装备数据
---@param itemData table
---```lua
---SL:RequestIntoDropBagItem(itemData)
---```
function SL:RequestIntoDropBagItem(itemData) end

-- [Source: 游戏^英雄.lua]

---切换英雄状态
---* type 状态值
---@param type integer
---```lua
---SL:RequestChangeHeroMode(type)
---```
function SL:RequestChangeHeroMode(type) end

---请求英雄称号数据
---```lua
---SL:RequestTitleList_Hero()
---```
function SL:RequestTitleList_Hero() end

---英雄请求取下称号
---```lua
---SL:RequestDisboardTitle_Hero()
---```
function SL:RequestDisboardTitle_Hero() end

---英雄请求激活称号
---* titleId 称号id
---@param titleId integer
---```lua
---SL:RequestActivateTitle_Hero(titleId)
---```
function SL:RequestActivateTitle_Hero(titleId) end

---英雄请求锁定目标
---* actorID actorID
---* isPlayer 是否人物
---@param actorID integer
---@param isPlayer boolean
---```lua
---SL:RequestLockTargetByHero(actorID, isPlayer)
---```
function SL:RequestLockTargetByHero(actorID, isPlayer) end

---英雄取消锁定
---```lua
---SL:RequestCancelLockByHero()
---```
function SL:RequestCancelLockByHero() end

-- [Source: 游戏^行会-组队-好友.lua]

---请求行会申请列表
---```lua
---SL:RequestGuildAllyApplyList()
---```
function SL:RequestGuildAllyApplyList() end

---拒绝行会结盟申请
---* guildID 行会ID
---@param guildID integer
---```lua
---SL:RequestGuildRejectAllyApply(guildID)
---```
function SL:RequestGuildRejectAllyApply(guildID) end

---请求行会成员列表
---```lua
---SL:RequestGuildMemberList()
---```
function SL:RequestGuildMemberList() end

---请求世界行会列表
---* page 分页id
---@param page integer
---```lua
---SL:RequestGuildWorldList(1)
---```
function SL:RequestGuildWorldList(page) end

---邀请玩家入会
---* uid 玩家id
---@param uid integer
---```lua
---SL:RequestGuildInviteMember(uid)
---```
function SL:RequestGuildInviteMember(uid) end

---踢出行会
---* uid 玩家id
---@param uid integer
---```lua
---SL:RequestSubGuildMember(uid)
---```
function SL:RequestSubGuildMember(uid) end

---任命行会职位
---* uid 玩家id
---* rank 职位id 1-5
---@param uid integer
---@param rank integer
---```lua
---SL:RequestGuildAppointRank(uid, 2)
---```
function SL:RequestGuildAppointRank(uid, rank) end

---请求创建队伍
---```lua
---SL:RequestCreateTeam()
---```
function SL:RequestCreateTeam() end

---邀请玩家入队
---* uid 玩家id
---* name 玩家昵称
---@param uid integer
---@param name string
---```lua
---SL:RequestInviteJoinTeam(uid, name)
---```
function SL:RequestInviteJoinTeam(uid, name) end

---拒绝组队邀请
---* uid 玩家id
---@param uid integer
---```tips
---旧接口名：SL:RequestRefuseTeamInvite
---```
---```lua
---SL:RequestTeamInviteRefuse(uid)
---```
function SL:RequestTeamInviteRefuse(uid) end

---同意组队邀请
---```tips
---旧接口名：SL:RequestAgreeTeamInvite
---```
---```lua
---SL:RequestTeamInviteAgree(uid)
---```
function SL:RequestTeamInviteAgree(uid) end

---同意申请入队
---* uid 玩家id
---@param uid integer
---```tips
---旧接口名：SL:RequestApplyAgree
---```
---```lua
---SL:RequestTeamApplyAgree(uid)
---```
function SL:RequestTeamApplyAgree(uid) end

---请求入队申请列表
---```tips
---旧接口名：SL:RequestApplyData
---```
---```lua
---SL:RequestTeamApplyData()
---```
function SL:RequestTeamApplyData() end

---请求附近队伍
---```lua
---SL:RequestNearTeam()
---```
function SL:RequestNearTeam() end

---请求加入队伍
---* uid 队长id
---@param uid integer
---```lua
---SL:RequestApplyJoinTeam(uid)
---```
function SL:RequestApplyJoinTeam(uid) end

---离开队伍
---```lua
---SL:RequestLeaveTeam()
---```
function SL:RequestLeaveTeam() end

---保存允许组队状态
---* status 1允许 0不允许
---@param status integer
---```lua
---SL:Set_TEAM_STATUS_PERMIT( 1)
---```
function SL:Set_TEAM_STATUS_PERMIT(status) end

---踢出队伍
---* uid 玩家id
---@param uid integer
---```lua
---SL:RequestSubTeamMember(uid)
---```
function SL:RequestSubTeamMember(uid) end

---移交队长
---* uid 玩家id
---@param uid integer
---```lua
---SL:RequestTransferTeamLeader(uid)
---```
function SL:RequestTransferTeamLeader(uid) end

---请求好友列表
---```lua
---SL:RequestFriendList()
---```
function SL:RequestFriendList() end

---请求添加好友
---* uname 玩家昵称
---@param uname string
---```lua
---SL:RequestAddFriend(uname)
---```
function SL:RequestAddFriend(uname) end

---删除好友
---* uid 玩家id
---@param uid integer
---```lua
---SL:RequestDelFriend(uid)
---```
function SL:RequestDelFriend(uid) end

---好友加到黑名单
---* uname 玩家昵称
---@param uname string
---```lua
---SL:RequestAddBlacklistByName(uname)
---```
function SL:RequestAddBlacklistByName(uname) end

---移出黑名单
---* uid 玩家id
---@param uid integer
---```lua
---SL:RequestOutBlacklist(uid)
---```
function SL:RequestOutBlacklist(uid) end

---同意好友申请
---* uname 玩家昵称
---@param uname string
---```lua
---SL:RequestAgreeFriendApply(uname)
---```
function SL:RequestAgreeFriendApply(uname) end

---清空好友申请列表
---```lua
---SL:RequestClearFriendApplyList()
---```
function SL:RequestClearFriendApplyList() end

-- [Source: 游戏^装备常用函数.lua]

---检测人物是否可穿戴
---* itemData 装备数据
---@param itemData table
---@return boolean "是否可穿戴"
---```lua
---local canWear=SL:CheckItemUseNeed(itemData)
---```
function SL:CheckItemUseNeed(itemData) end

---检测英雄是否可穿戴
---* itemData 装备数据
---@param itemData table
---@return boolean "是否可穿戴"
---```lua
---local canWear=SL:CheckItemUseNeed_Hero(itemData)
---```
function SL:CheckItemUseNeed_Hero(itemData) end

---对比传入装备和自身穿戴的装备
---* itemData 装备数据
---* from 物品来自(界面位置)
---@param itemData table
---@param from integer
---@return table "对比传入装备和自身穿戴的装备"
---```lua
---GUIFunction:CompareEquipOnBody(itemData)
---```
function GUIFunction:CompareEquipOnBody(itemData, from) end

---人物装备穿戴
---* itemData 装备数据
---* pos 装备位置
---* isFromHero 是否来自英雄背包
---@param itemData table
---@param pos integer
---@param isFromHero boolean
---```lua
---SL:RequestPlayerTakeOnEquip(itemData, pos, isFromHero)
---```
function SL:RequestPlayerTakeOnEquip(itemData, pos, isFromHero) end

---人物装备脱下
---* itemData 装备数据
---* isToHero 是否脱到英雄背包
---@param itemData table
---@param isToHero boolean
---```lua
---SL:RequestPlayerTakeOffEquip(itemData, isToHero)
---```
function SL:RequestPlayerTakeOffEquip(itemData, isToHero) end

---英雄装备穿戴
---* itemData 装备数据
---* pos 装备位置
---* isFromPlayer 是否来自人物背包
---@param itemData table
---@param pos integer
---@param isFromPlayer boolean
---```lua
---SL:RequestHeroTakeOnEquip(itemData, pos, isFromPlayer)
---```
function SL:RequestHeroTakeOnEquip(itemData, pos, isFromPlayer) end

---英雄装备脱下
---* itemData 装备数据
---* isToPlayer 是否脱到人物背包
---@param itemData table
---@param isToPlayer boolean
---```lua
---SL:RequestHeroTakeOffEquip(itemData, true)
---```
function SL:RequestHeroTakeOffEquip(itemData, isToPlayer) end

-- [Source: 游戏^请求类.lua]

---拉起充值
---* payWay 1 支付宝 2 花呗 3 微信 -1不选择(手机端接入SDK不选择支付渠道)
---* currencyID 货币ID
---* price 支付金额
---* productIndex 商品索引/商品ID
---@param payWay integer
---@param currencyID integer
---@param price integer
---@param productIndex integer
---```lua
---SL:RequestPay(1, 1, 111, 140)
---```
function SL:RequestPay(payWay, currencyID, price, productIndex) end

---兑换激活码
---* cdk 激活码
---@param cdk string
---```tips
---与txt的 [ 礼包码功能 Sendsn ] 是同一个功能
---```
---```lua
---SL:RequestCDK(cdk)
---```
function SL:RequestCDK(cdk) end

---请求改变PK模式
---* pkmode pk模式
---@param pkmode integer
---```lua
---SL:RequestChangePKMode(1)
---```
function SL:RequestChangePKMode(pkmode) end

---请求改变宠物战斗模式
---* pkmode 宝宝模式<br>宝宝攻击状态(休息/攻击) 1-跟随，2-攻击，3-锁定攻击，4-休息，5-被动（5针对宠物 只有被攻击时才设定目标）
---@param pkmode integer
---```lua
---SL:RequestChangePetPKMode(1)
---```
function SL:RequestChangePetPKMode(pkmode) end

---请求从仓库取出道具
---* data 道具数据
---@param data table
---```lua
---SL:RequestPutOutStorageData(data)
---```
function SL:RequestPutOutStorageData(data) end

---请求道具放入仓库
---* data 道具数据
---@param data table
---```lua
---SL:RequestSaveItemToNpcStorage(data)
---```
function SL:RequestSaveItemToNpcStorage(data) end

---请求使用道具
---* itemData 道具数据
---@param itemData table
---```lua
---SL:RequestUseItem(itemData)
---```
function SL:RequestUseItem(itemData) end

---请求使用英雄道具
---* itemData 道具数据
---@param itemData table
---```lua
---SL:RequestUseHeroItem(itemData)
---```
function SL:RequestUseHeroItem(itemData) end

---拆分道具
---* data 道具数据
---* num 数量
---@param data table
---@param num integer
---```lua
---SL:RequestSplitItem(data, num)
---```
function SL:RequestSplitItem(data, num) end

---拆分道具(英雄)
---* data 道具数据
---* num 数量
---@param data table
---@param num integer
---```lua
---SL:RequestSplitHeroItem(data, num)
---```
function SL:RequestSplitHeroItem(data, num) end

---请求购买商品
---* index 商品Index
---* count 购买数量
---@param index integer
---@param count integer
---```lua
---SL:RequestStoreBuy(15, 1)
---```
function SL:RequestStoreBuy(index, count) end

---召唤英雄或收回
---```lua
---SL:RequestCallOrOutHero()
---```
function SL:RequestCallOrOutHero() end

---请求宠物锁定
---* targetID 目标宠物ID
---@param targetID integer
---```lua
---SL:RequestLockPetID(targetID)
---```
function SL:RequestLockPetID(targetID) end

---请求取消宠物锁定
---* targetID 目标宠物ID
---@param targetID integer
---```lua
---SL:RequestUnLockPetID(targetID)
---```
function SL:RequestUnLockPetID(targetID) end

---释放技能
---* skillID 技能ID
---@param skillID integer
---```lua
---SL:RequestLaunchSkill(911410)
---```
function SL:RequestLaunchSkill(skillID) end

---请求施法合击
---```lua
---SL:RequestMagicJointAttack()
---```
function SL:RequestMagicJointAttack() end

---查看目标玩家信息
---* targetID 目标ID
---* notForbid 是否不判断地图禁止查看
---@param targetID integer
---@param notForbid boolean
---```lua
---SL:RequestLookPlayer(targetId)
---```
function SL:RequestLookPlayer(targetID, notForbid) end

---请求开关开关型技能
---* skillID 技能ID
---@param skillID integer
---```lua
---SL:RequestOnOffSkill(1005)
---```
function SL:RequestOnOffSkill(skillID) end

-- [Source: 游戏^鼠标模拟事件.lua]

---模拟左键点击事件
---* widget 控件对象
---@param widget userdata
---```lua
---SL:WinClick(widget)
---```
function SL:WinClick(widget) end
