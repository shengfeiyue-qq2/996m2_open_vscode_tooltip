
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


-- [Source: 界面相关.lua]

---打开设置界面
---* pageID 页签ID 不填默认基础设置<br>1 : 基础设置<br>2 : 视距<br>3 : 战斗<br>4 : 保护<br>5 : 挂机<br>6 : 帮助
---@param pageID? integer
---```lua
---UIOperator:OpenSettingUI(1)
---```
function UIOperator:OpenSettingUI(pageID) end

---关闭设置界面
---```lua
---UIOperator:CloseSettingUI()
---```
function UIOperator:CloseSettingUI() end

---打开行会界面
---* pageID 页签ID 不填默认行会主页<br>1 : 主页<br>2 : 成员<br>3 : 列表
---@param pageID integer
---```lua
---UIOperator:OpenGuildMainUI(1)
---```
function UIOperator:OpenGuildMainUI(pageID) end

---关闭行会界面
---```lua
---UIOperator:CloseGuildMainUI()
---```
function UIOperator:CloseGuildMainUI() end

---打开行会申请界面
---```lua
---UIOperator:OpenGuildApplyListUI()
---```
function UIOperator:OpenGuildApplyListUI() end

---关闭行会申请界面
---```lua
---UIOperator:CloseGuildApplyListUI()
---```
function UIOperator:CloseGuildApplyListUI() end

---打开行会创建界面
---```lua
---UIOperator:OpenGuildCreateUI()
---```
function UIOperator:OpenGuildCreateUI() end

---关闭行会创建界面
---```lua
---UIOperator:CloseGuildCreateUI()
---```
function UIOperator:CloseGuildCreateUI() end

---打开行会结盟申请界面
---```lua
---UIOperator:OpenGuildAllyApplyUI()
---```
function UIOperator:OpenGuildAllyApplyUI() end

---关闭行会结盟申请界面
---```lua
---UIOperator:CloseGuildAllyApplyUI()
---```
function UIOperator:CloseGuildAllyApplyUI() end

---关闭行会宣战/结盟界面
---```lua
---UIOperator:CloseGuildWarAllyUI()
---```
function UIOperator:CloseGuildWarAllyUI() end

---打开人物背包
---* data pos : 背包打开位置 <br>bag_page : 背包打开页签ID
---@param data table
---```lua
---local data = {pos = {x = 200, y = 0}, bag_page = 2}
---UIOperator:OpenBagUI(data)
---```
function UIOperator:OpenBagUI(data) end

---关闭人物背包
---```lua
---UIOperator:CloseBagUI()
---```
function UIOperator:CloseBagUI() end

---打开英雄背包
---```lua
---UIOperator:OpenHeroBagUI()
---```
function UIOperator:OpenHeroBagUI() end

---关闭英雄背包
---```lua
---UIOperator:CloseHeroBagUI()
---```
function UIOperator:CloseHeroBagUI() end

---打开拍卖行
---```lua
---UIOperator:OpenAuctionUI()
---```
function UIOperator:OpenAuctionUI() end

---关闭拍卖行
---```lua
---UIOperator:CloseAuctionUI()
---```
function UIOperator:CloseAuctionUI() end

---打开摆摊界面
---```lua
---UIOperator:OpenStallLayerUI()
---```
function UIOperator:OpenStallLayerUI() end

---关闭摆摊界面
---```lua
---UIOperator:CloseStallLayerUI()
---```
function UIOperator:CloseStallLayerUI() end

---打开玩家交易界面
---```lua
---UIOperator:OpenTradeUI()
---```
function UIOperator:OpenTradeUI() end

---关闭玩家交易界面
---```lua
---SL:CloseTradeUI()
---```
function SL:CloseTradeUI() end

---打开排行榜
---* type 打开 指定页签ID
---@param type integer
---```lua
---UIOperator:OpenRankUI(1)
---```
function UIOperator:OpenRankUI(type) end

---关闭排行榜
---```lua
---UIOperator:CloseRankUI()
---```
function UIOperator:CloseRankUI() end

---打开聊天界面(手机端)
---```lua
---UIOperator:OpenChatUI()
---```
function UIOperator:OpenChatUI() end

---关闭聊天界面(手机端)
---```lua
---UIOperator:CloseChatUI()
---```
function UIOperator:CloseChatUI() end

---打开聊天扩展框
---* index 打开 指定分组 <br> 1 : 快捷命令<br>2 : 表情<br> 3 : 背包
---@param index integer
---```lua
---UIOperator:OpenChatExtendUI(1)
---```
function UIOperator:OpenChatExtendUI(index) end

---关闭聊天扩展框
---```lua
---UIOperator:CloseChatExtendUI()
---```
function UIOperator:CloseChatExtendUI() end

---打开社区帖子
---```lua
---UIOperator:OpenCommunityUI()
---```
function UIOperator:OpenCommunityUI() end

---关闭社区帖子
---```lua
---UIOperator:CloseCommunityUI()
---```
function UIOperator:CloseCommunityUI() end

---打开交易行
---```lua
---UIOperator:OpenTradingBankUI()
---```
function UIOperator:OpenTradingBankUI() end

---关闭交易行
---```lua
---UIOperator:CloseTradingBankUI()
---```
function UIOperator:CloseTradingBankUI() end

---打开商城
---* page 打开 商城对应分页
---@param page integer
---```lua
---UIOperator:OpenStoreFrameUI(1)
---```
function UIOperator:OpenStoreFrameUI(page) end

---关闭商城
---```lua
---UIOperator:CloseStoreFrameUI()
---```
function UIOperator:CloseStoreFrameUI() end

---打开商城商品购买框
---* storeIndex 商品index cfg_store商城表配置的id
---* limitStr 超出限制购买的提示
---@param storeIndex integer
---@param limitStr string
---```lua
---UIOperator:OpenStoreDetailUI(storeIndex)
---```
function UIOperator:OpenStoreDetailUI(storeIndex, limitStr) end

---关闭商城商品购买框
---```lua
---UIOperator:CloseStoreDetailUI()
---```
function UIOperator:CloseStoreDetailUI() end

---打开技能配置界面
---* data 对应技能数据 打开技能快捷键配置页
---@param data table
---```tips
---!!PC端必填!!
---```
---```lua
---UIOperator:OpenSkillSettingUI(data)
---```
function UIOperator:OpenSkillSettingUI(data) end

---关闭技能配置界面
---```lua
---UIOperator:CloseSkillSettingUI()
---```
function UIOperator:CloseSkillSettingUI() end

---打开社交界面
---* page 页签ID ( 不填默认1附近 )<br> 1附近玩家、2组队、3好友、4邮件
---@param page integer
---```lua
---UIOperator:OpenSocialUI()
---```
function UIOperator:OpenSocialUI(page) end

---关闭社交界面
---```lua
---UIOperator:CloseSocialUI()
---```
function UIOperator:CloseSocialUI() end

---打开分辨率修改界面(PC端)
---```lua
---UIOperator:OpenResolutionSetUI()
---```
function UIOperator:OpenResolutionSetUI() end

---关闭分辨率修改界面(PC端)
---```lua
---UIOperator:CloseResolutionSetUI()
---```
function UIOperator:CloseResolutionSetUI() end

---打开玩家角色界面
---* data 可选参数，包含以下字段：<br>type: 界面类型，取值范围：<br>  1：基础信息<br>  2：内功信息<br>page: 子页 ID，根据 type 不同，取值如下：<br>  当 type=1 时：<br>  101：装备<br>  102：状态<br>  103：属性<br>  104：技能<br>  105：称号<br>  106：时装<br>  当 type=2 时：<br>  701：内功状态<br>  702：内功技能<br>  703：内功经脉<br>  704：内功连击
---@param data table
---```lua
---UIOperator:OpenMyPlayerUI({type=1,page=104})
---```
function UIOperator:OpenMyPlayerUI(data) end

---关闭玩家角色界面
---```lua
---UIOperator:CloseMyPlayerUI()
---```
function UIOperator:CloseMyPlayerUI() end

---打开英雄角色界面
---* data 可选参数，包含以下字段：<br>type: 界面类型，取值范围：<br>  1：基础信息<br>  2：内功信息<br>page: 子页 ID，根据 type 不同，取值如下：<br>  当 type=1 时：<br>  101：装备<br>  102：状态<br>  103：属性<br>  104：技能<br>  105：称号<br>  106：时装<br>  当 type=2 时：<br>  701：内功状态<br>  702：内功技能<br>  703：内功经脉<br>  704：内功连击
---@param data table
---```lua
---local data = {type = 1,page = 101}
---UIOperator:OpenMyHeroUI(data)
---```
function UIOperator:OpenMyHeroUI(data) end

---关闭英雄角色界面
---```lua
---UIOperator:CloseMyHeroUI()
---```
function UIOperator:CloseMyHeroUI() end

---交易行查看他人界面
---* data extent: 子页id<br> 1装备、2状态、3属性、4技能、6称号、11时装
---@param data table
---```lua
---SL:CloseTradingBankHeroPageUI({extent=1})
---```
function SL:CloseTradingBankHeroPageUI(data) end

---打开首饰盒界面
---* type 首饰盒UI类型，使用GUIDefine.RoleUIType枚举值: <br>1 : 玩家自己的首饰盒<br>2 : 英雄的首饰盒<br>3 : 查看其他玩家的首饰盒<br>4 : 查看其他玩家英雄的首饰盒<br>5 : 交易行中玩家的首饰盒<br>6 : 交易行中英雄的首饰盒
---@param type number
---```lua
----- 打开玩家自己的首饰盒
---UIOperator:OpenBestRingBoxUI(GUIDefine.RoleUIType.PLAYER)
---
----- 打开英雄的首饰盒
---UIOperator:OpenBestRingBoxUI(GUIDefine.RoleUIType.HERO)
---
----- 查看其他玩家的首饰盒
---UIOperator:OpenBestRingBoxUI(GUIDefine.RoleUIType.PLAYER_OTHER)
---
----- 带数据参数的调用
---UIOperator:OpenBestRingBoxUI(GUIDefine.RoleUIType.PLAYER)
---```
function UIOperator:OpenBestRingBoxUI(type) end

---关闭首饰盒界面
---* type 首饰盒UI类型，使用GUIDefine.RoleUIType枚举值: <br>1 : 关闭玩家自己的首饰盒<br>2 : 关闭英雄的首饰盒<br>3 : 关闭其他玩家的首饰盒<br>4 : 关闭其他玩家英雄的首饰盒<br>5 : 关闭交易行中玩家的首饰盒<br>6 : 关闭交易行中英雄的首饰盒
---@param type number
---```lua
----- 关闭玩家自己的首饰盒
---UIOperator:CloseBestRingBoxUI(GUIDefine.RoleUIType.PLAYER)
---
----- 关闭英雄的首饰盒
---UIOperator:CloseBestRingBoxUI(GUIDefine.RoleUIType.HERO)
---
----- 关闭其他玩家的首饰盒
---UIOperator:CloseBestRingBoxUI(GUIDefine.RoleUIType.PLAYER_OTHER)
---
----- 关闭交易行中英雄的首饰盒
---UIOperator:CloseBestRingBoxUI(GUIDefine.RoleUIType.TRADE_HERO)
---```
function UIOperator:CloseBestRingBoxUI(type) end

---打开称号提示界面
---* data id: 称号id <br> pos: Tips放置位置<br>type: 1未激活 2已激活<br>time: 时间
---@param data table
---```lua
---UIOperator:OpenTitleTipsUI(data)
---```
function UIOperator:OpenTitleTipsUI(data) end

---关闭称号提示界面
---```lua
---UIOperator:CloseTitleTipsUI()
---```
function UIOperator:CloseTitleTipsUI() end

---关闭交易行查看他人界面
---```lua
---SL:CloseTradingBankLookInfoUI()
---```
function SL:CloseTradingBankLookInfoUI() end

---打开邀请组队界面
---```lua
---UIOperator:OpenTeamInvite()
---```
function UIOperator:OpenTeamInvite() end

---关闭邀请组队界面
---```lua
---UIOperator:CloseTeamInvite()
---```
function UIOperator:CloseTeamInvite() end

---打开入队申请列表
---```lua
---UIOperator:OpenTeamApply()
---```
function UIOperator:OpenTeamApply() end

---关闭入队申请列表
---```lua
---UIOperator:CloseTeamApply()
---```
function UIOperator:CloseTeamApply() end

---打开小地图界面
---```lua
---UIOperator:OpenMiniMap()
---```
function UIOperator:OpenMiniMap() end

---关闭小地图界面
---```lua
---UIOperator:CloseMiniMap()
---```
function UIOperator:CloseMiniMap() end

---打开主界面技能按钮区域
---* param param: <br>1: 自己人物<br>2：自己英雄<br>11：其他玩家人物<br>12：其他玩家英雄<br>21：交易行人物<br>22：交易行英雄
---@param param integer
---```lua
---SL:OpenGuideEnter(1)
---```
function SL:OpenGuideEnter(param) end

---关闭主界面技能按钮区域
---```lua
---SL:CloseGuideEnter()
---```
function SL:CloseGuideEnter() end

---打开转生点分配界面
---```lua
---UIOperator:OpenReinAttrUI()
---```
function UIOperator:OpenReinAttrUI() end

---关闭转生点分配界面
---```lua
---UIOperator:CloseReinAttrUI()
---```
function UIOperator:CloseReinAttrUI() end

---打开任务栏
---```lua
---SL:OpenAssistUI()
---```
function SL:OpenAssistUI() end

---关闭任务栏
---```lua
---SL:CloseAssistUI()
---```
function SL:CloseAssistUI() end

---打开主界面小地图收缩(手机端)
---```lua
---SL:OpenMiniMapChangeUI()
---```
function SL:OpenMiniMapChangeUI() end

---关闭主界面小地图收缩(手机端)
---```lua
---SL:CloseMiniMapChangeUI()
---```
function SL:CloseMiniMapChangeUI() end

---打开附近展示页
---```lua
---UIOperator:OpenMainNearUI()
---```
function UIOperator:OpenMainNearUI() end

---关闭附近展示页
---```lua
---UIOperator:CloseMainNearUI()
---```
function UIOperator:CloseMainNearUI() end

---直接调用支付
---```lua
---SL:OpenCallPayUI()
---```
function SL:OpenCallPayUI() end

---打开客服UI
---```lua
---UIOperator:OpenKefuUI()
---```
function UIOperator:OpenKefuUI() end

---打开PC端私聊界面
---```lua
---UIOperator:OpenPCPrivateUI()
---```
function UIOperator:OpenPCPrivateUI() end

---关闭PC端私聊界面
---```lua
---UIOperator:ClosePCPrivateUI()
---```
function UIOperator:ClosePCPrivateUI() end

---打开添加好友界面
---```lua
---UIOpertor:OpenAddFriendUI()
---```
function UIOperator:OpenAddFriendUI() end

---关闭添加好友界面
---```lua
---UIOperator:CloseAddFriendUI()
---```
function UIOperator:CloseAddFriendUI() end

---打开添加黑名单界面
---```lua
---UIOperator:OpenAddBlackListUI()
---```
function UIOperator:OpenAddBlackListUI() end

---关闭添加黑名单界面
---```lua
---UIOperator:CloseAddBlackListUI()
---```
function UIOperator:CloseAddBlackListUI() end

---打开好友添加申请页
---```lua
---UIOperator:OpenFriendApplyUI()
---```
function UIOperator:OpenFriendApplyUI() end

---关闭好友添加申请页
---```lua
---UIOperator:CloseFriendApplyUI()
---```
function UIOperator:CloseFriendApplyUI() end

---打开拍卖行-世界拍卖/行会拍卖
---* param 1:世界拍卖<br> 2：行会拍卖 <br>3：我的竞拍 <br>4：我的上架 <br>若隐藏行会拍卖 下标顺移 <br>即<br>2：我的竞拍 <br>3：我的上架
---@param param integer
---```lua
---UIOperator:OpenAuctionUI(1)
---```
function UIOperator:OpenAuctionUI(param) end

---关闭拍卖行-世界拍卖/行会拍卖
---```lua
---UIOperator:CloseAuctionUI()
---```
function UIOperator:CloseAuctionUI() end

---打开拍卖行上架界面
---* itemData 背包物品数据
---@param itemData table
---```lua
---UIOperator:OpenAuctionPutInUI(itemData)
---```
function UIOperator:OpenAuctionPutInUI(itemData) end

---关闭拍卖行上架界面
---```lua
---UIOperator:CloseAuctionPutInUI()
---```
function UIOperator:CloseAuctionPutInUI() end

---打开拍卖行下架界面
---* item 拍卖行上架的物品数据
---@param item table
---```lua
---UIOperator:OpenAuctionPutOutUI(item)
---```
function UIOperator:OpenAuctionPutOutUI(item) end

---关闭拍卖行下架界面
---```lua
---UIOperator:CloseAuctionPutOutUI()
---```
function UIOperator:CloseAuctionPutOutUI() end

---打开拍卖行竞拍界面
---* item 拍卖行上架的物品数据
---@param item table
---```lua
---UIOperator:OpenAuctionBidUI(item)
---```
function UIOperator:OpenAuctionBidUI(item) end

---打开行会宣战/结盟框
---```lua
---UIOperator:OpenGuildWarAllyUI()
---```
function UIOperator:OpenGuildWarAllyUI() end

---打开 增加怪物类型 设置界面
---```lua
---UIOperator:OpenAddMonsterTypeUI()
---```
function UIOperator:OpenAddMonsterTypeUI() end

---关闭 增加怪物类型 设置界面
---```lua
---UIOperator:CloseAddMonsterTypeUI()
---```
function UIOperator:CloseAddMonsterTypeUI() end

---关闭拍卖行竞拍界面
---```lua
---UIOperator:CloseAuctionBidUI()
---```
function UIOperator:CloseAuctionBidUI() end

---打开拍卖行一口价界面
---* item 拍卖行上架的物品数据
---@param item table
---```lua
---UIOperator:OpenAuctionBuyUI(item)
---```
function UIOperator:OpenAuctionBuyUI(item) end

---关闭拍卖行一口价界面
---```lua
---UIOperator:CloseAuctionBuyUI()
---```
function UIOperator:CloseAuctionBuyUI() end

---打开拍卖行超时界面
---* item 拍卖行上架的物品数据
---@param item table
---```lua
---UIOperator:OpenAuctionTimeOutUI(item)
---```
function UIOperator:OpenAuctionTimeOutUI(item) end

---关闭拍卖行超时界面
---```lua
---UIOperator:CloseAuctionTimeOutUI()
---```
function UIOperator:CloseAuctionTimeOutUI() end

---打开合成界面
---```lua
---UIOperator:OpenCompoundItemUI()
---```
function UIOperator:OpenCompoundItemUI() end

---关闭合成界面
---```lua
---UIOperator:CloseCompoundItemUI()
---```
function UIOperator:CloseCompoundItemUI() end

---打开怪物提示列表-设置界面
---```lua
---UIOperator:OpenBossTipsUI()
---```
function UIOperator:OpenBossTipsUI() end

---关闭怪物提示列表-设置界面
---```lua
---UIOperator:CloseBossTipsUI()
---```
function UIOperator:CloseBossTipsUI() end

---打开拾取列表-设置界面
---```lua
---UIOperator:OpenPickSettingUI()
---```
function UIOperator:OpenPickSettingUI() end

---关闭拾取列表-设置界面
---```lua
---UIOperator:ClosePickSettingUI()
---```
function UIOperator:ClosePickSettingUI() end

---打开保护配置-设置界面
---* data cfg_setup对应保护配置
---@param data table
---```lua
---UIOperator:OpenProtectSettingUI(data)
---```
function UIOperator:OpenProtectSettingUI(data) end

---请求打开996客服界面
---```tips
---同 SL:JumpTo(701) 效果一致
---```
---```lua
---SL:RequestOpen996ManualService()
---```
function SL:RequestOpen996ManualService() end

---关闭保护配置-设置界面
---```lua
---UIOperator:CloseProtectSettingUI()
---```
function UIOperator:CloseProtectSettingUI() end

---打开增加怪物名字-设置界面
---* data ignoreName: boolean 是否是挂机忽略名字
---@param data table
---```lua
---UIOperator:OpenAddMonsterNameUI({ignoreName=true})
---```
function UIOperator:OpenAddMonsterNameUI(data) end

---关闭增加怪物名字-设置界面
---```lua
---UIOperator:CloseAddMonsterNameUI()
---```
function UIOperator:CloseAddMonsterNameUI() end

---打开增加BOSS类型-设置界面
---```lua
---UIOperator:OpenAddMonsterTypeUI()
---```
function UIOperator:OpenAddMonsterTypeUI() end

---关闭增加BOSS类型-设置界面
---```lua
---UIOperator:CloseAddMonsterTypeUI()
---```
function UIOperator:CloseAddMonsterTypeUI() end

---打开技能排行-设置界面
---* data cfg_setup对应保护配置
---@param data table
---```lua
---UIOperator:OpenSkillRankPanelUI(data)
---```
function UIOperator:OpenSkillRankPanelUI(data) end

---关闭技能排行-设置界面
---```lua
---UIOperator:CloseSkillRankPanelUI()
---```
function UIOperator:CloseSkillRankPanelUI() end

---打开新增技能-设置界面
---```lua
---UIOperator:OpenSkillPanelUI()
---```
function UIOperator:OpenSkillPanelUI() end

---关闭新增技能-设置界面
---```lua
---UIOperator:CloseSkillPanelUI()
---```
function UIOperator:CloseSkillPanelUI() end

---打开选择下拉框
---* list 下拉要显示的内容
---* position 初始位置
---* cellwidth 单条cell的宽
---* cellheight 单条cell的高
---* func 回调 选中的编号1~n 0是关闭
---* extraData 额外数据
---@param list table
---@param position table
---@param cellwidth integer
---@param cellheight integer
---@param func function
---@param extraData table
---```lua
---UIOperator:OpenCommonSelectListUI({[1]=123,[2]=324}, {x=100,y=100})
---```
function UIOperator:OpenCommonSelectListUI(list, position, cellwidth, cellheight, func, extraData) end

---关闭选择下拉框
---```lua
---UIOperator:CloseCommonSelectListUI()
---```
function UIOperator:CloseCommonSelectListUI() end

---打开996盒子界面
---* index 盒子打开默认分页id<br>1: 特权称号 2: 每日礼包 3: 超级礼包 4: 会员礼包 5: SVIP
---@param index integer
---```lua
---UIOperator:OpenBox996UI(1)
---```
function UIOperator:OpenBox996UI(index) end

---关闭996盒子界面
---```lua
---UIOperator:CloseBox996UI()
---```
function UIOperator:CloseBox996UI() end

---打开英雄状态选择界面
---* data pos<br>mode 1选择状态 2单击切换  3不能点击,滑动
---@param data table
---```lua
---UIOperator:OpenHeroStateSelectUI( { pos = originPos, mode = 3 })
---```
function UIOperator:OpenHeroStateSelectUI(data) end

---关闭英雄状态选择界面
---```lua
---UIOperator:CloseHeroStateSelectUI()
---```
function UIOperator:CloseHeroStateSelectUI() end

---打开快捷使用框
---* data 快捷使用框数据
---@param data table
---```lua
---local data = {
---    item = itemData,			--真实物品数据(table)
---    targetPos = targetPos,		--物品为装备时装戴的装备位置(int)
---    isSkillBook = isSkillBook,	--是否是技能书(boolean)
---    isHero = false, 			--是否为英雄(boolean)
---}
---UIOperator:OpenAutoUsePopUI(data)
---```
function UIOperator:OpenAutoUsePopUI(data) end

---关闭快捷使用框
---* makeIndex 物品唯一ID
---* isHero 是否为英雄
---@param makeIndex integer
---@param isHero boolean
---```lua
---UIOperator:CloseAutoUsePopUI(makeIndex, isHero)
---```
function UIOperator:CloseAutoUsePopUI(makeIndex, isHero) end

---打开开宝箱动画页
---* itemData 宝箱物品数据
---@param itemData table
---```lua
---UIOperator:OpenTreasure(itemData)
---```
function UIOperator:OpenTreasure(itemData) end

---关闭开宝箱动画页
---```lua
---UIOperator:CloseTreasure()
---```
function UIOperator:CloseTreasure() end

---打开宝箱奖励界面
---* itemData 宝箱物品数据
---@param itemData table
---```lua
---UIOperator:OpenGoldBox(itemData)
---```
function UIOperator:OpenGoldBox(itemData) end

---关闭宝箱奖励界面
---```lua
---UIOperator:CLoseGoldBox()
---```
function UIOperator:CLoseGoldBox() end

---打开摇骰子界面
---* data 字段说明参考提示
---@param data table
---```tips
---{
---    arr = table 投掷值 {xx, xx}
---    count = 数量
---    callback = @xxx 脚本触发
---}
---```
---```lua
---UIOperator:OpenPlayDiceUI({arr={1,2,3,4,5,6},count=6})
---```
function UIOperator:OpenPlayDiceUI(data) end

---关闭要骰子界面
---```lua
---UIOperator:ClosePlayDiceUI()
---```
function UIOperator:ClosePlayDiceUI() end

---打开求购界面
---```lua
---UIOperator:OpenPurchaseUI()
---```
function UIOperator:OpenPurchaseUI() end

---关闭求购界面
---```lua
---UIOperator:ClosePurchaseUI()
---```
function UIOperator:ClosePurchaseUI() end

---打开求购出售页
---* data 单条世界求购数据
---@param data table
---```lua
---UIOperator:OpenPurchaseSellUI(data)
---```
function UIOperator:OpenPurchaseSellUI(data) end

---关闭求购出售页
---```lua
---UIOperator:ClosePurchaseSellUI()
---```
function UIOperator:ClosePurchaseSellUI() end

---打开求购上架页
---```lua
---UIOperator:OpenPurchasePutInUI()
---```
function UIOperator:OpenPurchasePutInUI() end

---关闭求购上架页
---```lua
---UIOperator:ClosePurchasePutInUI()
---```
function UIOperator:ClosePurchasePutInUI() end

---打开通用描述Tips
---* data str: 描述内容 <br> worldPos: 提示位置<br> width: 描述内容宽度<br> anchorPoint: 锚点<br>formatWay: 设置为1 解析富文本格式,<br>否则默认解析老脚本富文本
---@param data table
---```lua
---local data = {width = 1136, str = "测试文本", worldPos = {x = 568, y = 320}, anchorPoint = {x = 0, y = 1}}
---UIOperator:OpenCommonDescTipsUI(data)
---```
function UIOperator:OpenCommonDescTipsUI(data) end

---关闭通用描述Tips
---```lua
---UIOperator:CloseCommonDescTipsUI()
---```
function UIOperator:CloseCommonDescTipsUI() end

---打开通用弹窗
---* data str: 文本<br>btnType: 按钮类型 int 1:"确定" 2:{"确定","取消"} <br> btnDesc: 按钮描述 table<br> showEdit: 是否显示输入框<br>editParams: 输入框参数table <br>```{ inputMode: 键盘编辑类型, maxLength: 可输入最大长度, str: 默认文本内容}```<br> callback: 按钮回调 [参数1: 点击的按钮id 参数2: 额外参数 table: {editStr=输入框字符串}]
---@param data table
---```lua
---local data = {}
---data.str = "请输入邀请玩家的名字"
---data.btnType = 2
---data.showEdit = true
---data.callback = function(atype, param)
---    if atype == 1 then
---        if param and param.editStr and string.len(param.editStr) > 0 then
---            SL:RequestInviteJoinTeam(nil, param.editStr)
---        end
---    end
---end
---UIOperator:OpenCommonTipsUI(data)
---```
function UIOperator:OpenCommonTipsUI(data) end

---关闭通用弹窗
---```lua
---UIOperator:CloseCommonTipsUI()
---```
function UIOperator:CloseCommonTipsUI() end

---道具装备Tips
---* data itemData: 物品数据 <br> pos: 提示位置<br> from:非必要 物品来自(界面位置)
---@param data table
---```lua
---UIOperator:OpenItemTips(data)
---```
function UIOperator:OpenItemTips(data) end

---关闭道具装备Tips
---```lua
---UIOperator:CloseItemTips()
---```
function UIOperator:CloseItemTips() end

---打开道具拆分弹窗
---* itemData 物品数据
---@param itemData table
---```lua
---UIOperator:OpenTipsSplit(itemData)
---```
function UIOperator:OpenTipsSplit(itemData) end

---关闭道具拆分弹窗
---```lua
---UIOperator:CloseTipsSplit()
---```
function UIOperator:CloseTipsSplit() end

---打开通用功能选择提示
---* data 参数说明: <br> type : 类型 可参照元变量DOCKTYPE_NENUM<br> targetId : 选中目标id<br> targetName :目标名称 <br> pos : 展示位置
---@param data table
---```tips
---示例可参照 MainTarget文件内 点击查看菜单功能。
---```
---```lua
---UIOperator:OpenFuncDockTips(data)
---```
function UIOperator:OpenFuncDockTips(data) end

---关闭通用功能选择提示
---```lua
---UIOperator:CloseFuncDockTips()
---```
function UIOperator:CloseFuncDockTips() end

---打开NPC进度条提示
---* data 参数说明: <br> time : 持续时间(秒) <br> msg : 显示内容(支持%d显示进度) <br> dis : 打断模式(0:不打断 1:动作打断 2:施法不打断) <br> NoDisJump : 受击不打断(1:开启)
---@param data table
---```lua
---UIOperator:OpenProgressBarUI({
---    time = 10,              -- 持续时间
---    msg = "正在采集(%d%%)",  -- 显示内容
---    dis = 1,                -- 1:动作打断
---    NoDisJump = 1           -- 1:受击不打断
---})
---```
function UIOperator:OpenProgressBarUI(data) end

---关闭NPC进度条提示
---```lua
---UIOperator:CloseProgressBarUI()
---```
function UIOperator:CloseProgressBarUI() end

---打开多条选项弹窗提示
---* data 参数说明: <br> pos : 坐标 <br> list : 多条选项列表<br>[单条数据参考: <br>{str = 文本, agreeCall = 同意按钮回调(function), disAgreeCall = 拒绝回调(function)}<br>]
---@param data table
---```lua
---local tt = {
---    [1] = "11111",
---    [2] = "22222",
---    [3] = "33333",
---}
---
---
---local data = {}
---data.pos = {x = 200, y = 400}
---data.list = {}
---for _, v in pairs(tt) do
---    local info = {}
---    info.str = v
---    info.agreeCall = function()
---        SL:Print("AgreeCall____" .. v)
---    end
---    info.disAgreeCall = function()
---        SL:Print("disAgreeCall___" .. v)
---    end
---    table.insert(data.list, info)
---end
---UIOperator:OpenCommonBubbleInfoUI(data)
---```
function UIOperator:OpenCommonBubbleInfoUI(data) end

---关闭多条选项弹窗提示
---```lua
---UIOperator:CloseCommonBubbleInfoUI()
---```
function UIOperator:CloseCommonBubbleInfoUI() end

---打开好评有礼
---```lua
---UIOperator:OpenReviewGift()
---```
function UIOperator:OpenReviewGift() end

---打开网址/链接
---* url 网址/链接
---@param url string
---```lua
---SL:OpenURL("https://www.baidu.com/")
---```
function SL:OpenURL(url) end
