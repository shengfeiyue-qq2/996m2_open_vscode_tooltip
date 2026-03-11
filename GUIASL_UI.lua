
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


-- [Source: 窗口^创建.lua]

---创建窗口控件
---* ID 控件ID
---* X 控件位置的横坐标
---* Y 控件位置的纵坐标
---* W 控件的宽
---* H 控件的高
---* Main 是否隐藏主界面
---* Last 是否隐藏上一个界面
---* NV 是否点击时有音效
---* EscC 是否esc关闭
---* IsRev 是否pc鼠标经过吞噬，默认true
---* NpcID 绑定npcid
---* Type 创建层 0主界面层 1普通面板层 2通知层 默认1<br>仅普通面板时 Main、Last、EscC
---* enterFunc 鼠标点击回调
---@param ID integer
---@param X number
---@param Y number
---@param W integer
---@param H integer
---@param Main boolean
---@param Last boolean
---@param NV boolean
---@param EscC boolean
---@param IsRev boolean
---@param NpcID integer
---@param Type integer
---@param enterFunc function
---@return userdata "成功时返回控件对象，失败时返回空"
---```tips
---1. 此接口创建控件只作父控件使用
---   2. 此控件ID唯一且不可重复
---```
---```lua
---local parent = GUI:Win_Create("GMMain", 0, 0, 0, 0, false, false, true, false, false, false, 1)
---print(type(parent),parent)
---```
function GUI:Win_Create(ID, X, Y, W, H, Main, Last, NV, EscC, IsRev, NpcID, Type, enterFunc) end

---创建图片控件
---* parent 父控件对象
---* ID 控件ID
---* X 控件位置的横坐标
---* Y 控件位置的纵坐标
---* nimg 图片路径
---@param parent userdata
---@param ID string
---@param X number
---@param Y number
---@param nimg string
---@return userdata "成功时返回控件对象，失败时返回空"
---```lua
---local pBg = GUI:Image_Create(testWin, "pBg", 100, 100, "res/public/061201.JPG")
---print("GUI:Image_Create(parent,ID,X,Y,nimg)-----",type(pBg),pBg)
---```
function GUI:Image_Create(parent, ID, X, Y, nimg) end

---创建绘制横线
---* parent 父控件对象
---* ID 控件ID
---* X 控件位置的横坐标
---* Y 控件位置的纵坐标
---* width 横线宽度
---* startX 起始坐标x
---* startY 起始坐标y
---* endX 结束坐标x
---* endY 结束坐标y
---* color 颜色
---* alpha 透明度
---@param parent userdata
---@param ID string
---@param X number
---@param Y number
---@param width integer
---@param startX integer
---@param startY integer
---@param endX integer
---@param endY integer
---@param color string
---@param alpha integer
---@return userdata "成功时返回控件对象，失败时返回空"
---```tips
---类似删除线的功能,在控件上绘制一条横线，
---```
---```lua
---    local str = "我的名字" or ""
---    local Text_name = GUI:Text_Create(parent, "Text_name", 50, 60, 16, "#ffffff", str)
---    local size = GUI:getContentSize(Text_name)
---    GUI:DrawLine_Create(Text_name, "line", 0, 0, 2, 0, size.height/2, size.width, size.height/2, "#000000", 200)
---```
function GUI:DrawLine_Create(parent, ID, X, Y, width, startX, startY, endX, endY, color, alpha) end

---创建按钮控件
---* parent 父控件对象
---* ID 控件ID
---* X 控件位置的横坐标
---* Y 控件位置的纵坐标
---* nimg 图片路径
---@param parent userdata
---@param ID string
---@param X number
---@param Y number
---@param nimg string
---@return userdata "成功时返回控件对象，失败时返回空"
---```lua
---local Btn = GUI:Button_Create(parent, "BtnOk", 0, 0, "res/public/061101.JPG")
---```
function GUI:Button_Create(parent, ID, X, Y, nimg) end

---创建文本控件
---* parent 父控件对象
---* ID 控件ID
---* X 控件位置的横坐标
---* Y 控件位置的纵坐标
---* fontSize 字体大小
---* fontColor 字体颜色
---* str 文本
---@param parent userdata
---@param ID string
---@param X number
---@param Y number
---@param fontSize integer
---@param fontColor string
---@param str string
---@return userdata "成功时返回控件对象，失败时返回空"
---```lua
---local str = "我的名字" or ""
---local Text_name = GUI:Text_Create(parent, "Text_name", 0, 0, 16, "#ffffff", str)
---```
function GUI:Text_Create(parent, ID, X, Y, fontSize, fontColor, str) end

---创建Bmp文本
---* parent 父节点对象
---* ID 唯一ID
---* x 位置 横坐标
---* y 位置 纵坐标
---* fontColor 字体颜色,支持传空
---* str 文本
---* fontPath 字体文件路径, 例：`"fonts/stfont.fnt"`
---@param parent userdata
---@param ID string
---@param x number
---@param y number
---@param fontColor string
---@param str string
---@param fontPath string
---@return userdata "成功时返回控件对象，失败时返回空"
---```lua
---local str = "我的名字" or ""
---local Text_name = GUI:BmpText_Create(pBg, "Text_name", 0, 0, "#ffffff", str)
---print("BmpText_Create(parent, ID, x, y, fontColor, str, fontPath)-----",type(Text_name),Text_name)
---```
function GUI:BmpText_Create(parent, ID, x, y, fontColor, str, fontPath) end

---创建艺术字文本
---* parent 父节点对象
---* ID 唯一ID
---* x 位置 横坐标
---* y 位置 纵坐标
---* stringValue 文本内容
---* charMapFile 艺术字路径
---* itemWidth 单个字体宽度
---* itemHeight 单个字体高度
---* startCharMap 起始字符设置("/")
---* sheet 字体内容(H5专属)<br>比如图片文字是“+-0123456789”,那这个sheet的值就是"+-0123456789"
---@param parent userdata
---@param ID string
---@param x number
---@param y number
---@param stringValue string
---@param charMapFile string
---@param itemWidth integer
---@param itemHeight integer
---@param startCharMap string
---@param sheet string
---@return userdata "成功时返回控件对象，失败时返回空"
---```lua
---local artPath = "res/public/TextAtlasPicture.png"
---local Text_name = GUI:TextAtlas_Create(testWin, "Text_name", 200, 200, "2734816", artPath, 19, 25, "0")
---print("GUI:TextAtlas_Create(parent, ID, x, y, stringValue, charMapFile, itemWidth, itemHeight, startCharMap, sheet)-----",type(Text_name),Text_name)
---```
function GUI:TextAtlas_Create(parent, ID, x, y, stringValue, charMapFile, itemWidth, itemHeight, startCharMap, sheet) end

---创建富文本
---* parent 父节点对象
---* ID 唯一ID
---* x 位置 横坐标
---* y 位置 纵坐标
---* str 文本内容
---* width 富文本控件宽度
---* fontSize 字体大小
---* fontColor 字体颜色
---* vspace 富文本行间距
---* hyperlinkCB 超链回调函数
---* defaultFontFace 默认字体
---@param parent userdata
---@param ID string
---@param x number
---@param y number
---@param str string
---@param width integer
---@param fontSize integer
---@param fontColor string
---@param vspace integer
---@param hyperlinkCB function
---@param defaultFontFace string
---@return userdata "成功时返回控件对象，失败时返回空"
---```lua
---local text ="<font color='#C0C0C0' size='16'>证明：</font>"
---text = text .."<br>".. "<a href='openwin#boss'><font color = '#ff0000'> 证明： </font> </a>" --链接
---text = text .."<br>".. "<outline size='2' color='#ff0000' >证明：</outline>" --描边
---text = text .."<br>".. "<small>证明：</small>" --小
---text = text .."<br>".. "<big>证明：</big>" --大
---text = text .."<br>".. "<u>证明：</u>" --下划线
---text = text .."<br>".. "<i>证明：</i>" --斜体
---text = text .."<br>".. "<b>证明：</b>" --加粗
---text = text .."<br>".. "<del>证明：</del>" --中划线
---text = text .."<br>".. "<shadow size='2' color='#4169E1' offsetWidth='8' offsetHeight='-8' blurRadius='2'>证明：</shadow>" --阴影
---text = text .."<br>".. "<glow color='#AFEEEE'>证明：</glow>"
---
---local returnVal=GUI:RichText_Create(testWin, "richText", 300, 200, "克里斯蒂亚罗波特诸恶法不", 100, 16, "#f8e6c6", 0, function()
---    -- do something
---end)
---print("GUI:RichText_Create(parent, ID, x, y, str, width, fontSize, fontColor, vspace, hyperlinkCB, defaultFontFace)-----",type(returnVal),returnVal)
---```
function GUI:RichText_Create(parent, ID, x, y, str, width, fontSize, fontColor, vspace, hyperlinkCB, defaultFontFace) end

---创建原始富文本
---* parent 父节点对象
---* ID 唯一ID
---* x 位置 横坐标
---* y 位置 纵坐标
---* str 文本内容
---* width 富文本控件宽度
---* fontSize 字体大小
---* color 字体颜色, 例: "#FFFFFF"
---* vspace 富文本行间距
---* hyperlinkCB 超链回调函数
---* fontPath 字体文件路径
---* outlineParam 描边参数 <br>outlineSize: 描边大小 <br>outlineColor: 描边颜色 C3B <br> (描边颜色 例 : <br>`SL:ConvertColorFromHexString("#FFFFFF")`)
---@param parent userdata
---@param ID string
---@param x number
---@param y number
---@param str string
---@param width integer
---@param fontSize integer
---@param color string
---@param vspace integer
---@param hyperlinkCB function
---@param fontPath string
---@param outlineParam table
---@return userdata "成功时返回控件对象，失败时返回空"
---```lua
---local returnVal=GUI:RichTextFCOLOR_Create(testWin, "rich", 300, 300, "<灼伤：%s几率灼烧目标/FCOLOR=254>\\<每秒燃烧目标5%生命值/FCOLOR=249>", 600, 16, "#28EF01", 5)
---print("GUI:RichTextFCOLOR_Create(parent, ID, x, y, str, width, fontSize, color, vspace, hyperlinkCB, fontPath, outlineParam)--------",type(returnVal),returnVal)
---```
function GUI:RichTextFCOLOR_Create(parent, ID, x, y, str, width, fontSize, color, vspace, hyperlinkCB, fontPath, outlineParam) end

---创建自定义组合富文本
---* parent 父节点对象
---* ID 唯一ID
---* x 位置 横坐标
---* y 位置 纵坐标
---* width 富文本控件最大宽度
---* vspace 富文本行间距
---@param parent userdata
---@param ID string
---@param x number
---@param y number
---@param width integer
---@param vspace integer
---@return userdata "成功时返回控件对象，失败时返回空"
---```lua
---local returnVal=GUI:RichTextCombine_Create(testWin, "richTxt", 300, 300, 300, 5)
---print("GUI:RichTextCombine_Create(parent, ID, x, y, width, vspace)--------",type(returnVal),returnVal)
---```
---```lua
--创建自定义组合富文本cell
---local elements = {}
---local element  = GUI:RichTextCombineCell_Create(-1, "show", 0, 0, "TEXT", {
---    str      = "第一行文本11111",
---    color    = "#FF0000",
---    fontSize = 16
---})
---table.insert(elements, element)
---
---local element = GUI:RichTextCombineCell_Create(-1, "111", 0, 0, "NEWLINE", {})
---table.insert(elements, element)
---
---local element = GUI:RichTextCombineCell_Create(-1, "222", 0, 0, "TEXT", {
---    str      = "第二行文本222222",
---    color    = "#00FF00",
---    fontSize = 16
---})
---table.insert(elements, element)
---
-----创建自定义组合富文本
---local richText = GUI:RichTextCombine_Create(GUI:Attach_LeftBottom(), "RichText", 200, 300, 200, 0)
-----添加自定义富文本cell
---GUI:RichTextCombine_pushBackElements(richText, elements)
-----添加cell完毕格式化富文本
---GUI:RichTextCombine_format(richText)
-----设置富文本背景颜色
---GUI:RichText_setBackgroundColor(richText, "#FFFFFF")
---```
function GUI:RichTextCombine_Create(parent, ID, x, y, width, vspace) end

---创建自定义组合富文本cell
---* parent 父节点对象 [RichTextCombine]
---* ID 唯一ID
---* x 位置 横坐标
---* y 位置 纵坐标
---* type cell类型 <br> 文本类型：1或TEXT<br>节点类型：2或NODE<br>换行类型：3 或 NEWLINE
---* param 额外参数, 参考上面的提示哈:
---@param parent userdata
---@param ID string
---@param x number
---@param y number
---@param type integer|string
---@param param table
---@return userdata "成功时返回控件对象，失败时返回空"
---```tips
---node             = 节点类型必需参数 object 控件对象
---color            = 颜色值 默认: "#FFFFFF"
---opacity         = 不透明度 默认: 255
---str             = 文本内容 string
---fontSize         = 文本字号 默认: SL:Get_GAME_DATA(DEFAULT_FONT_SIZE)
---fontPath         = 文本字体路径 默认: "fonts/font2.ttf"
---outlineColor     = 文本描边颜色 默认: "#000000"
---outlineSize     = 文本描边大小 默认: 0
---link             = 文本点击触发传递内容 string
---```
---```lua
-----组合使用，详见“创建自定义组合富文本”
---local elements  = {}
---local element   = GUI:RichTextCombineCell_Create(-1, "show", 0, 0, "TEXT", {
---    str         = "第一行文本11111",
---    color       = "#FF0000",
---    fontSize    = 16
---})
---table.insert(elements, element)
---print("GUI:RichTextCombineCell_Create(parent, ID, x, y, type, param)--------",type(element),element)
---```
function GUI:RichTextCombineCell_Create(parent, ID, x, y, type, param) end

---创建滚动文本
---* parent 父节点对象
---* ID 唯一ID
---* x 位置 横坐标
---* y 位置 纵坐标
---* width 文本宽度
---* fontSize 字体大小
---* fontColor 字体颜色
---* str 文本内容
---* scrollTime 滚动时长 (秒)
---* fontPath 字体文件路径
---@param parent userdata
---@param ID string
---@param x number
---@param y number
---@param width integer
---@param fontSize integer
---@param fontColor integer
---@param str string
---@param scrollTime integer
---@param fontPath string
---@return userdata "成功时返回控件对象，失败时返回空"
---```lua
---local returnVal=GUI:ScrollText_Create(GUI:Attach_LeftBottom(), "scrollText", 300, 300, 50, 16, "#000000", "这是一串神奇的文本内容",10)
---print("GUI:ScrollText_Create--------",type(returnVal),returnVal)
---```
function GUI:ScrollText_Create(parent, ID, x, y, width, fontSize, fontColor, str, scrollTime, fontPath) end

---创建节点
---* parent 父节点对象
---* ID 唯一ID
---* x 位置 横坐标
---* y 位置 纵坐标
---@param parent userdata
---@param ID string
---@param x number
---@param y number
---@return userdata "成功时返回控件对象，失败时返回空"
---```lua
---local node = GUI:Node_Create(parent, "node", 0, 0)
---```
function GUI:Node_Create(parent, ID, x, y) end

---创建Widget
---* parent 父节点对象
---* ID 唯一ID
---* x 位置 横坐标
---* y 位置 纵坐标
---* width 宽
---* height 高
---@param parent userdata
---@param ID string
---@param x number
---@param y number
---@param width integer
---@param height integer
---@return userdata "成功时返回控件对象，失败时返回空"
---```lua
---local returnVal=GUI:Widget_Create(parent, "widgetID", 100, 100, 300, 300)
---print("GUI:Widget_Create(parent, ID, x, y, width, height)--------",type(returnVal),returnVal)
---```
function GUI:Widget_Create(parent, ID, x, y, width, height) end

---创建物品框
---* parent 父节点对象
---* ID 唯一ID
---* x 位置 横坐标
---* y 位置 纵坐标
---* setData 配置数据
---@param parent userdata
---@param ID string
---@param x number
---@param y number
---@param setData table
---@return userdata "成功时返回控件对象，失败时返回空"
---```lua
---local setData  = {}
---setData.index = 4                     -- 物品Index
---setData.look  = true                  -- 是否显示tips
---setData.bgVisible = true              -- 是否显示背景框
---setData.count = 1                     -- 物品数量
---setData.color = 225                   -- 颜色ID （0~255）
-----setData.starLv = false -- 是否显示星级
-----setData.checkPower = true           -- 是否检查战力从而显示提升小箭头
-----setData.showModelEffect = true      -- 只显示内观特效不显示背包特效
-----setData.onlyShowSFX = true          -- 只显示道具特效其它都不显示
-----setData.noSwallow = true            -- 是否触摸吞噬
-----setData.noMouseTips = true -- 鼠标移入不显示tips
-----setData.mouseCheckTimes = 6 -- 鼠标移入检测物品框是否可见时查找父节点层数, 默认6
-----setData.itemData = table -- 物品数据 ( ！有真实物品数据可直接传, 避免Tips缺漏 )
---
---local item = GUI:ItemShow_Create(ui_icon, "item", 0, 0, setData)
---```
---```lua
----- 等同于EquipShow创建
----- 获取装备位1的装备数据
---local equipData = SL:Get_EQUIP_DATA(1)
---if equipData then
---    local info = {}
---    info.index = equipData.Index
---    info.itemData = equipData     -- 传入装备数据
---    info.look = true
---    info.bgVisible = true
---    info.starLv = true
---    local item = GUI:ItemShow_Create(parent, "item", 0, 0, info)
---end
---```
function GUI:ItemShow_Create(parent, ID, x, y, setData) end

---创建物品放入框
---* parent 父节点对象
---* ID 唯一ID
---* x 位置 横坐标
---* y 位置 纵坐标
---* img 放置框底图资源路径
---* boxindex 放置框 唯一ID
---* stdmode 允许传入的StdMode ("*": 所有 、单个用number 、多个用table)
---@param parent userdata
---@param ID string
---@param x number
---@param y number
---@param img string
---@param boxindex integer
---@param stdmode string/number/table
---@return userdata "成功时返回控件对象，失败时返回空"
---```lua
---local returnVal=GUI:ItemBox_Create(parent, "itemBox", 250, 250, "res/public/061101.JPG", 613, 25)
---print("GUI:ItemBox_Create--------",type(returnVal),returnVal)
---```
function GUI:ItemBox_Create(parent, ID, x, y, img, boxindex, stdmode) end

---创建复选框
---* parent 父节点对象
---* ID 唯一ID
---* x 位置 横坐标
---* y 位置 纵坐标
---* nimg 正常图片路径
---* pimg 选中图片路径
---@param parent userdata
---@param ID string
---@param x number
---@param y number
---@param nimg string
---@param pimg string
---@return userdata "成功时返回控件对象，失败时返回空"
---```lua
---local nimg = "res/private/gui_edit/CheckBox_Normal.png"
---local pimg = "res/private/gui_edit/CheckBox_Press.png"
---local checkBox = GUI:CheckBox_Create(parent, "checkBox", 0, 0, nimg, pimg)
---```
function GUI:CheckBox_Create(parent, ID, x, y, nimg, pimg) end

---创建输入框
---* parent 父节点对象
---* ID 唯一ID
---* x 位置 横坐标
---* y 位置 纵坐标
---* width 宽度
---* height 高度
---* fontSize 字体大小
---@param parent userdata
---@param ID string
---@param x number
---@param y number
---@param width integer
---@param height integer
---@param fontSize integer
---@return userdata "成功时返回控件对象，失败时返回空"
---```lua
---local TextField_input = GUI:TextInput_Create(parent, "TextField_input", 0, 0, 30, 33, 16)
---```
function GUI:TextInput_Create(parent, ID, x, y, width, height, fontSize) end

---创建滚动条
---* parent 父节点对象
---* ID 唯一ID
---* x 位置 横坐标
---* y 位置 纵坐标
---* barimg 滚动条背景图片
---* pbarimg 滚动条图片
---* nimg 滚动条拖动块图片
---@param parent userdata
---@param ID string
---@param x number
---@param y number
---@param barimg string
---@param pbarimg string
---@param nimg string
---@return userdata "成功时返回控件对象，失败时返回空"
---```lua
---local barimg = "res/private/new_setting/bg_progress.png"
---local pbarimg = "res/private/new_setting/bg_progress2.png"
---local nimg = "res/private/new_setting/icon_xdtzy_17.png"
---local Slider_progress = GUI:Slider_Create(parent, "Slider_progress", 0, 0, barimg, pbarimg, nimg)
---```
function GUI:Slider_Create(parent, ID, x, y, barimg, pbarimg, nimg) end

---创建圆形进度条
---* parent 父节点对象
---* ID 唯一ID
---* x 位置 横坐标
---* y 位置 纵坐标
---* img 图片路径
---@param parent userdata
---@param ID string
---@param x number
---@param y number
---@param img string
---@return userdata "成功时返回控件对象，失败时返回空"
---```lua
---local ui_img ="res/public/061101.JPG"
---local heroProgress = GUI:ProgressTimer_Create(parent, "heroProgress", 100, 100, ui_img)
---print("GUI:Slider_getPercent(widget)--------",type(heroProgress),heroProgress)
---```
function GUI:ProgressTimer_Create(parent, ID, x, y, img) end

---创建进度条
---* parent 父节点对象
---* ID 唯一ID
---* x 位置 横坐标
---* y 位置 纵坐标
---* nimg 图片路径
---* direction 方向：<br>0 从左到右<br>1 从右到左
---@param parent userdata
---@param ID string
---@param x number
---@param y number
---@param nimg string
---@param direction integer
---@return userdata "成功时返回控件对象，失败时返回空"
---```lua
---local imgBar ="res/public/061201.JPG"
---local loadingBar = GUI:LoadingBar_Create(parent, "loadingBar", 0, 0, imgBar, 0)
---print("GUI:LoadingBar_Create(parent, ID, x, y, nimg, direction)--------",type(loadingBar),loadingBar)
---```
function GUI:LoadingBar_Create(parent, ID, x, y, nimg, direction) end

---创建特效
---* parent 父节点对象
---* ID 唯一ID
---* x 位置 横坐标
---* y 位置 纵坐标
---* effecttype 0 特效<br>1 NPC<br>2 怪物<br>3 技能<br>4 人物<br>5 武器<br>6 翅膀<br>7 发型<br>8 盾牌
---* effectid 特效id
---* sex 性别(0 男 1 女)
---* act 0 待机<br>1 走<br>2 攻击<br>3 施法 <br>4 死亡<br>5 跑步
---* dir 方向
---* speed 播放速度
---@param parent userdata
---@param ID string
---@param x number
---@param y number
---@param effecttype integer
---@param effectid integer
---@param sex integer
---@param act integer
---@param dir integer
---@param speed integer
---@return userdata "成功时返回控件对象，失败时返回空"
---```tips
---1. 请勿自行给特效设置锚点
---```
---```lua
---local sfx = GUI:Effect_Create(parent, "sfx", 0, 0, 0, 4004, 0, 0, 3, 1)
---print("GUI:Effect_Create(parent, ID, x, y, effecttype, effectid, sex, act, dir, speed)--------",type(sfx),sfx)
---```
function GUI:Effect_Create(parent, ID, x, y, effecttype, effectid, sex, act, dir, speed) end

---创建人物模型
---* parent 父节点对象
---* ID 唯一ID
---* x 位置 横坐标
---* y 位置 纵坐标
---* sex 0 男性 1 女性
---* feature 模型属性
---* scale 缩放比例(0-1)
---* useStaticScale 是否使用game_data配置staticSacle数据, 默认忽略
---* job 职业id 012 战法道等新增职业
---* ext_param 额外参数列表
---@param parent userdata
---@param ID string
---@param x number
---@param y number
---@param sex integer
---@param feature table
---@param scale integer
---@param useStaticScale boolean
---@param job integer
---@param ext_param table
---@return userdata "成功时返回控件对象，失败时返回空"
---```lua
----- feature 使用方法
---！！除特效ID外 其余装备ID传入对应装备数据的Looks参数.
---local feature= {}
---feature.clothID -- 衣服
---feature.weaponID -- 武器id
---feature.headID -- 头盔id
---feature.headEffectID -- 头盔特效id
---feature.weaponEffectID -- 武器特效id
---feature.clothEffectID -- 衣服特效id
---feature.capID -- 斗笠id
---feature.shieldID -- 盾牌id
---feature.shieldEffectID -- 盾牌特效id
---feature.tDressID -- 时装id
---feature.tDressEffectID -- 时装特效id
---feature.tWeaponID
---feature.tWeaponEffectID
---feature.capEffectID -- 斗笠特效id
---feature.veilID -- 面巾id
---feature.veilEffectID -- 面巾特效id
---feature.showNodeModel  -- 是否显示裸模
---feature.showHair  	 -- 是否显示头发
---local UIModel = GUI:UIModel_Create(parent, "UIMODEL", 0, 0, 0, feature, nil)
---```
function GUI:UIModel_Create(parent, ID, x, y, sex, feature, scale, useStaticScale, job, ext_param) end

---创建层容器
---* parent 父节点对象
---* ID 唯一ID
---* x 位置 横坐标
---* y 位置 纵坐标
---* width 宽度
---* height 长度
---* isClip 是否裁切
---@param parent userdata
---@param ID string
---@param x number
---@param y number
---@param width integer
---@param height integer
---@param isClip boolean
---@return userdata "成功时返回控件对象，失败时返回空"
---```lua
---local layout = GUI:Layout_Create(parent, "layout", 0, 0, 100, 100, false)
---```
function GUI:Layout_Create(parent, ID, x, y, width, height, isClip) end

---创建列表容器(TableView)
---* parent 父节点对象
---* ID 唯一ID
---* x 位置 横坐标
---* y 位置 纵坐标
---* width 容器宽度
---* height 容器高度
---* direction 1：垂直; 2：水平
---* cellWid 单个cell 宽
---* cellHei 单个cell 高
---* num 需创建cell个数
---@param parent userdata
---@param ID string
---@param x number
---@param y number
---@param width integer
---@param height integer
---@param direction integer
---@param cellWid integer
---@param cellHei integer
---@param num integer
---@return userdata "成功时返回控件对象，失败时返回空"
---```lua
---local winWidth = 900
---local winHeight = 600
---local wnd = GUI:Win_Create("Win_1", 0, 0, winWidth, winHeight)
---local tableView = GUI:TableView_Create(wnd, "TABLEVIEW", 200, 100, 600, 400, 1, 600, 40, 200)
---```
function GUI:TableView_Create(parent, ID, x, y, width, height, direction, cellWid, cellHei, num) end

---创建滚动容器
---* parent 父节点对象
---* ID 唯一ID
---* x 位置 横坐标
---* y 位置 纵坐标
---* width 宽度
---* height 高度
---* direction 1：垂直; 2：水平
---@param parent userdata
---@param ID string
---@param x number
---@param y number
---@param width integer
---@param height integer
---@param direction integer
---@return userdata "成功时返回控件对象，失败时返回空"
---```lua
---local scrollView = GUI:ScrollView_Create(parent, "scrollView", 0, 0, 300, 500, 1)
---```
function GUI:ScrollView_Create(parent, ID, x, y, width, height, direction) end

---创建翻页容器
---* parent 父节点对象
---* ID 唯一ID
---* x 位置 横坐标
---* y 位置 纵坐标
---* width 宽度
---* height 高度
---@param parent userdata
---@param ID string
---@param x number
---@param y number
---@param width integer
---@param height integer
---@return userdata "成功时返回控件对象，失败时返回空"
---```lua
---local pageView = GUI:PageView_Create(parent, "pageView", 200,0, 300, 500, 1)
---print("GUI:PageView_Create----------",type(pageView),pageView)
---```
function GUI:PageView_Create(parent, ID, x, y, width, height) end

---创建滚动容器子节点
---* parent 父节点对象
---* ID 唯一ID
---* x 位置 横坐标
---* y 位置 纵坐标
---* w 宽度
---* h 高度
---* createCB 创建子节点内容回调 [函数返回 widget]
---* activeCB 判断是否需要激活/创建 [函数返回 boolean值]
---@param parent userdata
---@param ID string
---@param x number
---@param y number
---@param w integer
---@param h integer
---@param createCB function
---@param activeCB function
---@return userdata "成功时返回控件对象，失败时返回空"
---```lua
---local listviewCells = GUI:ListView_Create(parent, "listviewCells", 200, 80, 587, 200, 1)
---for i = 1, 10 do
---    local quickCell=GUI:QuickCell_Create(listviewCells, "QuickCell_Create"..i, 0, 0, 587, 200,  function(quickParent)
---        local item = GUI:Layout_Create(quickParent, "cell_", 0, 0, 571, 70)
---        -- 图标
---        local itemIcon = GUI:Image_Create(item, "item_icon", 80, 35, "res/01/010001.png")
---        GUI:setAnchorPoint(itemIcon, 0.5, 0.5)
---        -- name
---        local itemDesc = GUI:Text_Create(item, "item_name", 120, 40, 20, "#D6C6AD", "name.."..i)
---
---
---        -- tips
---        local itemDesc = GUI:Text_Create(item, "item_desc", 120, 15, 16, "#D6C6AD", "tips")
---
---
---        -- 分割线
---        local Image_line = GUI:Image_Create(item, "item_line", 0, 0, "res/buff/bg_buffzy_02.png")
---        GUI:setAnchorPoint(Image_line, 0.5, 0)
---        GUI:setPosition(Image_line, 571/2, 0)
---
---
---        return item
---    end)
---    print("GUI:QuickCell_Create"..i.."----------",type(quickCell),quickCell)
---
---
---end
---```
function GUI:QuickCell_Create(parent, ID, x, y, w, h, createCB, activeCB) end

---创建序列帧动画
---* parent 父节点对象
---* ID 唯一ID
---* x 位置 横坐标
---* y 位置 纵坐标
---* prefix 前缀
---* suffix 后缀
---* beginframe 起始帧, 默认1
---* finishframe 结束帧
---* ext 附加参数{<br>speed=播放速度(毫秒),<br>count=图片数量,<br>loop=播放次数(-1=循环),<br> finishhide=播放结束是否隐藏(1=隐藏),<br>callback=播放结束回调}
---@param parent userdata
---@param ID string
---@param x number
---@param y number
---@param prefix string
---@param suffix string
---@param beginframe integer
---@param finishframe integer
---@param ext table
---@return userdata "成功时返回控件对象，失败时返回空"
---```lua
---local ext = {
---    count = 10,
---    speed = 100,
---    loop = 1,
---    finishhide = 1
---}
---local frames = GUI:Frames_Create(wnd, "Frames_1", 200, 200, "res/public/word_fubentg_", ".png", 1, 10, ext)
---```
function GUI:Frames_Create(parent, ID, x, y, prefix, suffix, beginframe, finishframe, ext) end

---创建粒子特效
---* parent 父节点对象
---* ID 唯一ID
---* x 位置 横坐标
---* y 位置 纵坐标
---* res 粒子特效资源路径 plist文件
---@param parent userdata
---@param ID string
---@param x number
---@param y number
---@param res string
---@return userdata "成功时返回控件对象，失败时返回空"
---```lua
---local widget = GUI:ParticleEffect_Create(GUI:Attach_LeftBottom(), "TT", 568, 320, "res/private/particles/petal_1.plist")
---GUI:ParticleEffect_setDuration(widget, -1)
---GUI:ParticleEffect_setTotalParticles(widget, 999)
---```
function GUI:ParticleEffect_Create(parent, ID, x, y, res) end

---创建骨骼动画
---* parent 父节点对象
---* ID 唯一ID
---* x 位置 横坐标
---* y 位置 纵坐标
---* jsonPath json文件路径
---* atlasPath atlas文件路径
---* trackIndex 索引值
---* name 动画名
---* loop 动画是否循环
---@param parent userdata
---@param ID string
---@param x number
---@param y number
---@param jsonPath string
---@param atlasPath string
---@param trackIndex integer
---@param name string
---@param loop boolean
---@return userdata "成功时返回控件对象，失败时返回空"
---```tips
---1. 版本：3.8.75
---```
---```lua
---local ajson = "res/custom/examples/dragon/export/dragon-ess.json"
---local aatlas = "res/custom/examples/dragon/export/dragon.atlas"
---local SpineAnim = GUI:SpineAnim_Create(Hand, "dragon_b", 150, 150, ajson, aatlas, 1, "flying", true)
---GUI:setScale(SpineAnim, 0.3)
---```
function GUI:SpineAnim_Create(parent, ID, x, y, jsonPath, atlasPath, trackIndex, name, loop) end

---创建拖拽容器
---* parent 父节点对象
---* ID 唯一ID
---* x 位置 横坐标
---* y 位置 纵坐标
---* width 宽
---* height 高
---* from 控件来自(界面位置) 官方默认的可参照GUIDefine.ItemFrom, <br>自定义类型的示例 : <br>`GUIDefine.ItemFrom.xxx` <br>[xxx: 自定义类型名]
---* ext 额外参数<br>beginMoveCB : 开始移动回调 <br>endMoveCB : 结束移动回调<br>cancelMoveCB : 取消移动回调 <br>equipPos: 放置装备的装备位置【来源 <br>`GUIDefine.ItemFrom.PALYER_EQUIP` 时生效】<br>pcDoubleCB : pc双击回调 <br> mouseScrollCB: 鼠标滚轮回调
---@param parent userdata
---@param ID string
---@param x number
---@param y number
---@param width integer
---@param height integer
---@param from integer
---@param ext table
---@return userdata "成功时返回控件对象，失败时返回空"
---```lua
---local bg = GUI:Image_Create(GUI:Attach_LeftBottom(), "bg_TT", 400, 300, "res/public/btn_npcsm_01.png")
---local function beginMoveCallBack(node)
---GUI:setVisible(node, false)
---end
---local function endMoveCallBack(node)
---GUI:setVisible(node, true)
---end
---local function cancelMoveCallBack(node)
---GUI:setVisible(node, true)
---end
---local moveWidget = GUI:MoveWidget_Create(bg, "moveWidget", 35, 35, 70, 70, GUIDefine.ItemFrom.PALYER_EQUIP, {equipPos = 30, beginMoveCB = beginMoveCallBack, cancelMoveCB = cancelMoveCallBack, endMoveCB = endMoveCallBack})
---local itemData = SL:Get_GAME_DATA(30)
---if itemData then
---    local item = GUI:ItemShow_Create(moveWidget, "equipItem", 35, 35, {index = itemData.Index, itemData = itemData, look = true})
---    GUI:ItemShow_setItemTouchSwallow(item, false)
---    GUI:setAnchorPoint(item, 0.5, 0.5)
---end
----- 穿戴触发
---local function takeOnEquip(data)
---if data.isSuccess and data.pos == 30 then
---    GUI:removeAllChildren(moveWidget)
---    GUI:setVisible(moveWidget, true)
---    local itemData = SL:Get_GAME_DATA(30)
---    if itemData then
---        local item = GUI:ItemShow_Create(moveWidget, "equipItem", 35, 35, {index = itemData.Index, itemData=itemData, look = true})
---        GUI:ItemShow_setItemTouchSwallow(item, false)
---        GUI:setAnchorPoint(item, 0.5, 0.5)
---    end
---end
---end
----- 脱下触发
---local function takeOffEquip(data)
---if data.isSuccess and data.pos == 30 then
---    GUI:removeAllChildren(moveWidget)
---    GUI:setVisible(moveWidget, true)
---end
---end
---
---SL:RegisterLUAEvent(LUA_EVENT_TAKE_ON_EQUIP, "TESTMove", takeOnEquip)
---SL:RegisterLUAEvent(LUA_EVENT_TAKE_OFF_EQUIP, "TESTMove", takeOffEquip)
---```
function GUI:MoveWidget_Create(parent, ID, x, y, width, height, from, ext) end

---创建刮图
---* parent 父节点对象
---* ID 唯一ID
---* x 位置 横坐标
---* y 位置 纵坐标
---* showImg 展示图片资源
---* maskImg 遮罩图片资源
---* clearHei 刮除高度, 默认16
---* moveTime 刮除时间, 单位: 秒
---* beginTime 开始点击到结束触发间隔, 单位: 秒
---@param parent userdata
---@param ID string
---@param x number
---@param y number
---@param showImg string
---@param maskImg string
---@param clearHei integer
---@param moveTime integer
---@param beginTime integer
---@return table "成功时返回控件对象，失败时返回空  ------------"
---```lua
----- 刮图两秒 自动展示
---local TT = GUI:ScrapePic_Create(GUI:Attach_LeftBottom(), "ScrapePic", 250, 200, "res/public/word_fubentg_11.png", "res/public/mask_1.png", 18, 2, 5, function()
---    SL:Print("刮图完毕|||")
---end)
---```
function GUI:ScrapePic_Create(parent, ID, x, y, showImg, maskImg, clearHei, moveTime, beginTime, callback) end

---创建旋转容器
---* parent 父节点对象
---* ID 唯一ID
---* x 位置 横坐标
---* y 位置 纵坐标
---* width 宽度
---* height 高度
---* scrollGap 滑动间隙, 默认100
---* param 子节点参数, 参考如下
---@param parent userdata
---@param ID string
---@param x number
---@param y number
---@param width integer
---@param height integer
---@param scrollGap integer
---@param param table
---@return userdata "成功时返回控件对象，失败时返回空"
---```lua
---local param = {
---    [1] = {scale = 0.4, img = "res/public/word_fubentg_1.png"},
---    [2] = {scale = 0.6, img = "res/public/word_fubentg_2.png"},
---    [3] = {scale = 0.8, img = "res/public/word_fubentg_3.png"},
---    [4] = {scale = 1.0, img = "res/public/word_fubentg_4.png"},
---    [5] = {scale = 0.8, img = "res/public/word_fubentg_5.png"},
---    [6] = {scale = 0.6, img = "res/public/word_fubentg_6.png"},
---    [7] = {scale = 0.4, img = "res/public/word_fubentg_7.png"},
---}
---local view = GUI:RotateView_Create(GUI:Attach_LeftBottom(), "rotateView_1", 500, 320, 1000, 500, 100, param)
---print("GUI:RotateView_Create------",type(view),view)
---```
function GUI:RotateView_Create(parent, ID, x, y, width, height, scrollGap, param) end

---创建装备框
---* parent 父节点对象
---* ID 唯一ID
---* x 位置 横坐标
---* y 位置 纵坐标
---* pos 装备装戴位置
---* isHero 是否英雄装备
---* data 额外参数
---@param parent userdata
---@param ID string
---@param x number
---@param y number
---@param pos integer
---@param isHero boolean
---@param data table
---@return userdata "成功时返回控件对象，失败时返回空"
---```tips
---data参数详细说明:
---参数名:lookPlayer; 类型:boolean; 说明:是否查看其他玩家装备
---参数名:doubleTakeOff; 类型:boolean; 说明:是否双击脱下
---参数名:rightTakeOff; 类型:boolean; 说明:是否右键脱下 (PC端有效)
---参数名:showModelEffect; 类型:boolean; 说明:是否显示内观特效 (默认true)
---参数名:look; 类型:boolean; 说明:是否显示tips
---参数名:bgVisible; 类型:boolean; 说明:是否显示背景框
---参数名:starLv; 类型:boolean; 说明:是否显示星级
---```
---```lua
--- local data = {}
--- data.lookPlayer = false       -- 是否查看其他玩家装备
--- data.doubleTakeOff = true     -- 是否双击脱下
--- data.rightTakeOff = true      -- 是否右键脱下 (PC端有效)
--- data.showModelEffect = true   -- 是否显示内观特效
--- data.look = true              -- 是否显示tips
--- data.bgVisible = true         -- 是否显示背景框
--- local equip = GUI:EquipShow_Create(GUI:Win_FindParent(107), "equip_1", -500, 0, 1, false, data)
--- GUI:EquipShow_setAutoUpdate(equip)
---```
function GUI:EquipShow_Create(parent, ID, x, y, pos, isHero, data) end

---创建渐变字文本
---* parent 父节点对象
---* ID 唯一ID
---* x 位置 横坐标
---* y 位置 纵坐标
---* size 渐变字大小
---* txt 渐变字文本内容<br>**禁止传入空字符串**
---* color1 渐变颜色1
---* color2 渐变颜色2
---* param1 渐变参数（param1，param2组合<br>1，0为横向渐变<br>0，1为纵向渐变）
---* param2 渐变参数（param1，param2组合<br>1，0为横向渐变<br>0，1为纵向渐变）
---* fontPath 字体文件路径<br>例: `fonts/font.ttf`
---@param parent userdata
---@param ID string
---@param x number
---@param y number
---@param size integer
---@param txt string
---@param color1 string
---@param color2 string
---@param param1 integer
---@param param2 integer
---@param fontPath string
---@return userdata "成功时返回控件对象，失败时返回空"
---```lua
---local txt = GUI:GradientColorText_Create(layer, "shwha", 200, 200, 16, "啊啊啊啊啊", "#FF0000", "#0F0000", 1, 0)
---GUI:GradientColorText_setString(txt, "1, 0  棍棍尴尴尬尬哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈")
---GUI:GradientColorText_setColor(txt, "#00FF00", "#FFF000")
---
---local txt = GUI:GradientColorText_Create(layer, "shwhaad", 200, 300, 16, "啊啊啊啊啊", "#FF0000", "#0F0000", 0, 1)
---GUI:GradientColorText_setString(txt, "0, 1  棍棍尴尴尬尬哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈")
---GUI:GradientColorText_setColor(txt, "#00FF00", "#FFF000")
---```
function GUI:GradientColorText_Create(parent, ID, x, y, size, txt, color1, color2, param1, param2, fontPath) end

---创建列表容器(ListView)
---* parent 父节点对象
---* ID 唯一ID
---* x 位置 横坐标
---* y 位置 纵坐标
---* width 容器宽度
---* height 容器高度
---* direction 1：垂直; 2：水平
---@param parent userdata
---@param ID string
---@param x number
---@param y number
---@param width integer
---@param height integer
---@param direction integer
---@return userdata "成功时返回控件对象，失败时返回空"
---```lua
----- 创建列表容器
---local listView = GUI:ListView_Create(parent, "listView", 350, 200, 400, 200, 1)
---GUI:Layout_debug(listView)
---
----- 设置列表容器对齐方式
---GUI:ListView_setGravity(listView, 2)
----- 设置列表容器间隔
---GUI:ListView_setItemsMargin(listView, 5)
---
---for i = 1, 10, 1 do
---    local btn = GUI:Button_Create(listView, "btn" .. i, 0, 0, "res/public/00000361.png")
---end
---```
function GUI:ListView_Create(parent, ID, x, y, width, height, direction) end

---创建视频播放器
---* parent 父节点对象
---* ID 唯一ID
---* x 位置 横坐标
---* y 位置 纵坐标
---* width 容器宽度
---* height 容器高度
---@param parent userdata
---@param ID string
---@param x number
---@param y number
---@param width integer
---@param height integer
---@return userdata "成功时返回控件对象，失败时返回空"
---```lua
---local vedioParent = GUI:Win_Create("testWin", 0, 0, 0, 0, false, false, true, true)
---
---
---local vedioWidget=GUI:VideoPlayer_Create(vedioParent, "TestVedio", 500, 300, 500, 500)
---GUI:VideoPlayer_setFileName(vedioWidget, "res/03/testVedio.mp4")
---GUI:VideoPlayer_play(vedioWidget)
---GUI:setContentSize(vedioWidget,600,600)
---
---
---local Button_qp = GUI:Button_Create(vedioWidget, "Button_qp", 100.00, 42.00, "res/public/1900000652.png")
---GUI:Button_setTitleText(Button_qp, "全屏")
---GUI:addOnClickEvent(Button_qp, function ()
---    GUI:VideoPlayer_setFullScreenEnabled(vedioWidget,true)
---end)
---
---
---local Button_bf = GUI:Button_Create(vedioWidget, "Button_bf", 200.00, 42.00, "res/public/1900000652.png")
---GUI:Button_setTitleText(Button_bf, "播放")
---GUI:addOnClickEvent(Button_bf, function ()
---    GUI:VideoPlayer_play(vedioWidget)
---end)
---
---
---local Button_tz = GUI:Button_Create(vedioWidget, "Button_tz", 300.00, 42.00, "res/public/1900000652.png")
---GUI:Button_setTitleText(Button_tz, "停止")
---GUI:addOnClickEvent(Button_tz, function ()
---    GUI:VideoPlayer_stop(vedioWidget)
---    GUI:removeAllChildren(vedioWidget)
---    GUI:Win_Close(vedioParent)
---end)
---
---
---local Button_zt = GUI:Button_Create(vedioWidget, "Button_zt", 400.00, 42.00, "res/public/1900000652.png")
---GUI:Button_setTitleText(Button_zt, "赞停")
---GUI:addOnClickEvent(Button_zt, function ()
---    GUI:VideoPlayer_pause(vedioWidget)
---end)
---
---
---local Button_rs = GUI:Button_Create(vedioWidget, "Button_rs", 500.00, 42.00, "res/public/1900000652.png")
---GUI:Button_setTitleText(Button_rs, "恢复")
---GUI:addOnClickEvent(Button_rs, function ()
---    GUI:VideoPlayer_resume(vedioWidget)
---end)
---
---
---GUI:VideoPlayer_addEventListener(vedioWidget, function (_,eventType)
---    print("---------------------------eventType:",eventType)
---end)
---```
function GUI:VideoPlayer_Create(parent, ID, x, y, width, height) end

---创建红点
---* parent 父对象
---* ID 控件id
---* x x坐标
---* y y坐标
---* type 0: 图片 1: 特效
---* param 图片路径/特效id<br>type=参数时默认为F6设置; type=1 时参数必填
---@param parent userdata
---@param ID string
---@param x number
---@param y number
---@param type integer
---@param param string
---@return table "红点控件"
---```lua
---local widget = GUI:RedDot_Create(parent, name, x, y, type, param)
---if widget then
---    -- !! 绑定条件必须设定红点唯一ID
---    GUI:RedDot_setGID(widget, conditionRedID)
---    -- 绑定条件表条件ID
---    GUI:RedDot_setBindConditionID(widget, conditionID)
---end
---```
function GUI:RedDot_Create(parent, ID, x, y, type, param) end

---创建消耗组件
---* parent 父控件对象
---* ID 控件ID
---* x 控件位置的横坐标
---* y 控件位置的纵坐标
---* data 消耗组件详细参数
---* itemId 物品Index
---* itemCount 需要物品数量
---* itemScale item缩放比例，默认1.0
---* titleText 标题文本
---* fontSize 字体大小，默认16
---* simplenum 1: 简化数字显示
---@param parent userdata
---@param ID string
---@param x number
---@param y number
---@param data table
---@return table "成功时返回控件对象，失败时返回空 "
---```tips
---data参数详细说明:
---参数名:itemId; 类型:integer; 说明:物品Index
---参数名:itemCount; 类型:integer; 说明:需要物品数量
---参数名:itemScale; 类型:number; 说明:item缩放比例，默认1.0
---参数名:titleText; 类型:string; 说明:标题文本
---参数名:fontSize; 类型:integer; 说明:字体大小，默认16
---参数名:simplenum; 类型:integer; 说明:1: 简化数字显示
---```
---```lua
---local costData = {
---    itemId = 1,
---    itemCount = 100,
---    itemScale = 0.8,
---    titleText = "消耗材料",
---    fontSize = 16,
---    simplenum = 1
---}
---local costItem = GUI:CostItem_Create(testBtn, "costItem1", 100, 100, costData)
---```
function GUI:CostItem_Create(parent, ID, x, y, data) end

-- [Source: 窗口^动作.lua]

---界面弹窗特效1
---* widget 控件对象
---* timelineCB 回调函数
---@param widget userdata
---@param timelineCB? function
---```lua
---local aniImg=GUI:Image_Create(GUI:Attach_LeftBottom(),"aniImg",400,163,"res/public/061303.PNG")
---GUI:Timeline_Window1(aniImg, function()
---    --do something
---end)
---```
function GUI:Timeline_Window1(widget, timelineCB) end

---界面弹窗特效2
---* widget 控件对象
---* timelineCB 回调函数
---@param widget userdata
---@param timelineCB? function
---```lua
---local aniImg=GUI:Image_Create(GUI:Attach_LeftBottom(),"aniImg",400,163,"res/public/061303.PNG")
---GUI:Timeline_Window2(aniImg, function()
---    --do something
---end)
---```
function GUI:Timeline_Window2(widget, timelineCB) end

---界面弹窗特效3
---* widget 控件对象
---* timelineCB 回调函数
---@param widget userdata
---@param timelineCB? function
---```lua
---local aniImg=GUI:Image_Create(GUI:Attach_LeftBottom(),"aniImg",400,163,"res/public/061303.PNG")
---GUI:Timeline_Window3(aniImg, function()
---    --do something
---end)
---```
function GUI:Timeline_Window3(widget, timelineCB) end

---界面弹窗特效4
---* widget 控件对象
---* timelineCB 回调函数
---@param widget userdata
---@param timelineCB? function
---```lua
---local aniImg=GUI:Image_Create(GUI:Attach_LeftBottom(),"aniImg",400,163,"res/public/061303.PNG")
---GUI:Timeline_Window4(aniImg, function()
---    --do something
---end)
---```
function GUI:Timeline_Window4(widget, timelineCB) end

---界面弹窗特效5
---* widget 控件对象
---* timelineCB 回调函数
---@param widget userdata
---@param timelineCB? function
---```lua
---local aniImg=GUI:Image_Create(GUI:Attach_LeftBottom(),"aniImg",400,163,"res/public/061303.PNG")
---GUI:Timeline_Window5(aniImg, function()
---    --do something
---end)
---```
function GUI:Timeline_Window5(widget, timelineCB) end

---界面弹窗特效6
---* widget 控件对象
---* timelineCB 回调函数
---@param widget userdata
---@param timelineCB? function
---```lua
---local aniImg=GUI:Image_Create(GUI:Attach_LeftBottom(),"aniImg",400,163,"res/public/061303.PNG")
---GUI:Timeline_Window6(aniImg, function()
---    --do something
---end)
---```
function GUI:Timeline_Window6(widget, timelineCB) end

---设置动画标记
---* action 控件对象
---* tag 标记值
---@param action table
---@param tag integer
---```lua
---local aniImg=GUI:Image_Create(GUI:Attach_LeftBottom(),"aniImg",400,163,"res/public/061303.PNG")
---local aniAction=GUI:Timeline_EaseSineIn_MoveTo(aniImg, {x=30,y=30}, 3, function()
---    --do something
---end)
---local returnVal=GUI:Timeline_SetTag(aniAction, 111)
---```
function GUI:Timeline_SetTag(action, tag) end

---停止所有动画
---* widget 控件对象
---@param widget userdata
---```lua
---local aniImg=GUI:Image_Create(GUI:Attach_LeftBottom(),"aniImg",400,163,"res/public/061303.PNG")
---GUI:Timeline_EaseSineIn_MoveTo(aniImg, {x=30,y=30}, 3, function()
---    --do something
---end)
---local returnVal=GUI:Timeline_StopAll(aniImg)
---```
function GUI:Timeline_StopAll(widget) end

---通过标记停止动画
---* widget 控件对象
---* tag 标记值
---@param widget userdata
---@param tag integer
---```lua
---local aniImg=GUI:Image_Create(GUI:Attach_LeftBottom(),"aniImg",400,163,"res/public/061303.PNG")
---local aniAction=GUI:Timeline_EaseSineIn_MoveTo(aniImg, {x=30,y=30}, 3, function()
---    --do something
---end)
---GUI:Timeline_SetTag(aniAction, 111)
---local returnVal=GUI:Timeline_StopByTag(aniImg, 111)
---```
function GUI:Timeline_StopByTag(widget, tag) end

---动画淡出效果
---* widget 控件对象
---* time 时间
---* timelineCB 回调函数
---@param widget userdata
---@param time integer
---@param timelineCB? function
---@return userdata "Action"
---```lua
---local aniImg=GUI:Image_Create(GUI:Attach_LeftBottom(),"aniImg",400,163,"res/public/061303.PNG")
---local aniAction=GUI:Timeline_FadeOut(aniImg,3, function()
---    --do something
---end)
---print("GUI:Timeline_FadeOut----------",type(aniAction),aniAction)
---```
function GUI:Timeline_FadeOut(widget, time, timelineCB) end

---动画淡入效果
---* widget 控件对象
---* time 时间
---* timelineCB 回调函数
---@param widget userdata
---@param time integer
---@param timelineCB? function
---@return userdata "Action"
---```lua
---local aniImg=GUI:Image_Create(GUI:Attach_LeftBottom(),"aniImg",400,163,"res/public/061303.PNG")
---GUI:setOpacity(aniImg,0)
---local aniAction=GUI:Timeline_FadeIn(aniImg,2, function()
---    --do something
---end)
---print("GUI:Timeline_FadeIn----------",type(aniAction),aniAction)
---```
function GUI:Timeline_FadeIn(widget, time, timelineCB) end

---动画修改透明度到某个值
---* widget 控件对象
---* value 透明度(0-255)
---* time 时间
---* timelineCB 回调函数
---@param widget userdata
---@param value integer
---@param time integer
---@param timelineCB? function
---@return userdata "Action"
---```lua
---local aniImg=GUI:Image_Create(GUI:Attach_LeftBottom(),"aniImg",400,163,"res/public/061303.PNG")
---GUI:setOpacity(aniImg,0)
---local aniAction=GUI:Timeline_FadeTo(aniImg,150,2, function()
---    --do something
---end)
---print("GUI:Timeline_FadeTo----------",type(aniAction),aniAction)
---```
function GUI:Timeline_FadeTo(widget, value, time, timelineCB) end

---动画放大缩小
---* widget 控件对象
---* value 缩放比例(0-100)
---* time 时间
---* timelineCB 回调函数
---@param widget userdata
---@param value integer
---@param time integer
---@param timelineCB? function
---@return userdata "Action"
---```lua
-----实际只缩小到原先0.5倍数大小
---local aniImg=GUI:Image_Create(GUI:Attach_LeftBottom(),"aniImg",400,163,"res/public/061303.PNG")
---local aniAction=GUI:Timeline_ScaleTo(aniImg, 0.5, 1,function()
---    GUI:Timeline_ScaleTo(aniImg, 0.5, 1,function()
---        --do something
---    end)
---end)
---
---print("GUI:Timeline_ScaleTo----------",type(aniAction),aniAction)
---```
function GUI:Timeline_ScaleTo(widget, value, time, timelineCB) end

---动画放大缩小（当前大小的某个比例）
---* widget 控件对象
---* value 缩放比例(0-100)
---* time 时间
---* timelineCB 回调函数
---@param widget userdata
---@param value integer
---@param time integer
---@param timelineCB? function
---@return userdata "Action"
---```lua
-----实际缩小到原先0.25倍数大小
---local aniImg=GUI:Image_Create(GUI:Attach_LeftBottom(),"aniImg",400,163,"res/public/061303.PNG")
---local aniAction=GUI:Timeline_ScaleBy(aniImg, 0.5, 1,function()
---    GUI:Timeline_ScaleBy(aniImg, 0.5, 1,function()
---        --do something
---    end)
---end)
---
---print("GUI:Timeline_ScaleBy----------",type(aniAction),aniAction)
---```
function GUI:Timeline_ScaleBy(widget, value, time, timelineCB) end

---动画旋转
---* widget 控件对象
---* value 旋转角度(0-360)
---* time 时间
---* timelineCB 回调函数
---@param widget userdata
---@param value integer
---@param time integer
---@param timelineCB? function
---@return userdata "Action"
---```lua
---local aniImg=GUI:Image_Create(GUI:Attach_LeftBottom(),"aniImg",400,163,"res/public/061303.PNG")
---local aniAction=GUI:Timeline_RotateTo(aniImg, 50, 1, function()
---    --do something
---end)
---
---print("GUI:Timeline_RotateTo----------",type(aniAction),aniAction)
---```
function GUI:Timeline_RotateTo(widget, value, time, timelineCB) end

---设置渐变字文本内容
---* object 渐变字文本对象
---* txt 文本内容
---@param object table
---@param txt string
---```lua
---GUI:GradientColorText_setString(txt, "0, 1  棍棍尴尴尬尬哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈")
---```
function GUI:GradientColorText_setString(object, txt) end

---设置渐变字文本渐变颜色
---* object 渐变字文本对象
---* color1 渐变颜色1
---* color2 渐变颜色2
---@param object table
---@param color1 string
---@param color2 string
---```lua
---GUI:GradientColorText_setColor(txt, "#00ff00", "#FF0000")
---```
function GUI:GradientColorText_setColor(object, color1, color2) end

---动画旋转（从原来角度 旋转到 某个角度）
---* widget 控件对象
---* value 旋转角度(0-360)
---* time 时间
---* timelineCB 回调函数
---@param widget userdata
---@param value integer
---@param time integer
---@param timelineCB? function
---@return userdata "Action"
---```lua
---GUI:Timeline_RotateTo(aniImg, 50, 1, function()
---    aniAction=GUI:Timeline_RotateBy(aniImg, 20, 1, function()
---        --do something
---    end)
---end)
---```
function GUI:Timeline_RotateBy(widget, value, time, timelineCB) end

---动画移动（绝对位置）
---* widget 控件对象
---* value {x = 0, y = 0}
---* time 时间
---* timelineCB 回调函数
---@param widget userdata
---@param value table
---@param time integer
---@param timelineCB? function
---@return userdata "Action"
---```lua
---local aniImg=GUI:Image_Create(GUI:Attach_LeftBottom(),"aniImg",400,163,"res/public/061303.PNG")
---local aniAction=GUI:Timeline_MoveTo(aniImg, {x=30,y=50}, 2, function()
---    --do something
---end)
---
---print("GUI:Timeline_MoveTo----------",type(aniAction),aniAction)
---```
function GUI:Timeline_MoveTo(widget, value, time, timelineCB) end

---动画移动（相对位置）
---* widget 控件对象
---* value {x = 0, y = 0}
---* time 时间
---* timelineCB 回调函数
---@param widget userdata
---@param value table
---@param time integer
---@param timelineCB? function
---@return userdata "Action"
---```lua
---local aniImg=GUI:Image_Create(GUI:Attach_LeftBottom(),"aniImg",400,163,"res/public/061303.PNG")
---local aniAction=GUI:Timeline_MoveBy(aniImg, {x=30,y=50}, 2, function()
---    --do something
---end)
---
---print("GUI:Timeline_MoveBy----------",type(aniAction),aniAction)
---```
function GUI:Timeline_MoveBy(widget, value, time, timelineCB) end

---动画闪烁
---* widget 控件对象
---* value 闪烁次数
---* time 时间
---* timelineCB 回调函数
---@param widget userdata
---@param value integer
---@param time integer
---@param timelineCB? function
---@return userdata "Action"
---```lua
---local aniImg=GUI:Image_Create(GUI:Attach_LeftBottom(),"aniImg",400,163,"res/public/061303.PNG")
---local aniAction=GUI:Timeline_Blink(aniImg, 3, 2, function()
---    --do something
---end)
---
---print("GUI:Timeline_Blink----------",type(aniAction),aniAction)
---```
function GUI:Timeline_Blink(widget, value, time, timelineCB) end

---动画震动
---* widget 控件对象
---* time 时间
---* x X轴震动像素
---* y Y轴震动像素
---* timelineCB 回调函数
---@param widget userdata
---@param time integer
---@param x number
---@param y number
---@param timelineCB? function
---@return userdata "Action"
---```lua
---local aniImg=GUI:Image_Create(GUI:Attach_LeftBottom(),"aniImg",400,163,"res/public/061303.PNG")
---local aniAction=GUI:Timeline_Shake(aniImg, 2, 4, 3, function()
---    --do something
---end)
---
---print("GUI:Timeline_Shake----------",type(aniAction),aniAction)
---```
function GUI:Timeline_Shake(widget, time, x, y, timelineCB) end

---动画疯狂抖动
---* widget 控件对象
---* time 时间
---* angle 抖动幅度（0-360）
---@param widget userdata
---@param time integer
---@param angle integer
---```lua
---local aniImg=GUI:Image_Create(GUI:Attach_LeftBottom(),"aniImg",400,163,"res/public/061303.PNG")
---local aniAction=GUI:Timeline_Waggle(aniImg, 0.5, 15)
---
---print("GUI:Timeline_Waggle----------",type(aniAction),aniAction)
---```
function GUI:Timeline_Waggle(widget, time, angle) end

---动画延迟播放
---* widget 控件对象
---* time 延迟时间
---* timelineCB 回调函数
---@param widget userdata
---@param time integer
---@param timelineCB? function
---@return userdata "Action"
---```lua
---local aniImg=GUI:Image_Create(GUI:Attach_LeftBottom(),"aniImg",400,163,"res/public/061303.PNG")
---local returnVal=GUI:Timeline_DelayTime(aniImg, 2, function()
---    GUI:Timeline_Waggle(aniImg, 0.5, 15)
---end)
---
---print("GUI:Timeline_DelayTime----------",type(returnVal),returnVal)
---```
function GUI:Timeline_DelayTime(widget, time, timelineCB) end

---动画回调方法
---* widget 控件对象
---* time 延迟时间
---* timelineCB 回调函数
---@param widget userdata
---@param time integer
---@param timelineCB? function
---@return userdata "Action"
---```lua
---local aniImg=GUI:Image_Create(GUI:Attach_LeftBottom(),"aniImg",400,163,"res/public/061303.PNG")
---GUI:Timeline_CallFunc(aniImg, 2, function()
---    --do something
---end)
---```
function GUI:Timeline_CallFunc(widget, time, timelineCB) end

---动画延迟显示
---* widget 控件对象
---* time 延迟时间
---@param widget userdata
---@param time integer
---@return userdata "Action"
---```lua
---local aniImg=GUI:Image_Create(GUI:Attach_LeftBottom(),"aniImg",400,163,"res/public/061303.PNG")
---local returnVal=GUI:Timeline_Show(aniImg, 1)
---GUI:Timeline_Waggle(aniImg, 0.5, 15)
---
---print("GUI:Timeline_Show----------",type(returnVal),returnVal)
---```
function GUI:Timeline_Show(widget, time) end

---动画延迟隐藏
---* widget 控件对象
---* time 延迟时间
---@param widget userdata
---@param time integer
---@return userdata "Action"
---```lua
---local aniImg=GUI:Image_Create(GUI:Attach_LeftBottom(),"aniImg",400,163,"res/public/061303.PNG")
---local returnVal=GUI:Timeline_Hide(aniImg, 2)
---GUI:Timeline_Waggle(aniImg, 0.5, 15)
---
---print("GUI:Timeline_Show----------",type(returnVal),returnVal)
---```
function GUI:Timeline_Hide(widget, time) end

---缓动动画（由慢到快）
---* widget 对象
---* value 目标坐标位置
---* time 动作时间
---* callback 动作执行完的回调
---@param widget userdata
---@param value table
---@param time integer
---@param callback function
---@return userdata "Action"
---```lua
---local aniImg=GUI:Image_Create(GUI:Attach_LeftBottom(),"aniImg",400,163,"res/public/061303.PNG")
---local returnVal=GUI:Timeline_EaseSineIn_MoveTo(aniImg, {x=30,y=30}, 3, function()
---    --do something
---end)
---
---print("GUI:Timeline_EaseSineIn_MoveTo----------",type(returnVal),returnVal)
---```
function GUI:Timeline_EaseSineIn_MoveTo(widget, value, time, callback) end

---通过标记获取动作内容
---* widget 控件对象
---* tag 动作标记
---@param widget userdata
---@param tag integer
---@return userdata "action"
---```lua
---local action = GUI:ActionRepeatForever(GUI:ActionSequence(GUI:ActionFadeTo(0.4, 125), GUI:ActionFadeTo(0.4, 255), GUI:DelayTime(0.6)))
---GUI:runAction(btn_up, action)
---GUI:setTag(action, 15)
---local tagAction=GUI:getActionByTag(btn_up, 15)
---print("GUI:getActionByTag---------",type(tagAction),tagAction)
---```
function GUI:getActionByTag(widget, tag) end

---缓动动画（由快到慢）
---* widget 对象
---* value 目标坐标位置
---* time 动作时间
---* callback 动作执行完的回调
---@param widget userdata
---@param value table
---@param time integer
---@param callback function
---@return userdata "Action"
---```lua
---local aniImg=GUI:Image_Create(GUI:Attach_LeftBottom(),"aniImg",400,163,"res/public/061303.PNG")
---local returnVal=GUI:Timeline_EaseSineOut_MoveTo(aniImg, {x=30,y=30}, 3, function()
---    --do something
---end)
---
---print("GUI:Timeline_EaseSineOut_MoveTo----------",type(returnVal),returnVal)
---```
function GUI:Timeline_EaseSineOut_MoveTo(widget, value, time, callback) end

---数字滚动动画
---* widget 对象 [ 仅限Button、Text控件、TextAtlas控件]
---* cur 当前数值
---* target 目标数值
---* interval 变动间隔（秒）
---@param widget userdata
---@param cur integer
---@param target integer
---@param interval integer
---```lua
---local Btn = GUI:Button_Create(parent, "BtnOk", 0, 0, "res/public/061302.PNG")
---local returnVal=GUI:Timeline_DigitChange(Btn, 2, 25, 0.5)
---```
function GUI:Timeline_DigitChange(widget, cur, target, interval) end

---移动动作
---* time 时间
---* x 位置 横坐标
---* y 位置 纵坐标
---@param time integer
---@param x number
---@param y number
---```lua
---local action = GUI:ActionSequence(GUI:ActionMoveTo(2, 100, 100))
---GUI:runAction(btn_up, action)
---```
function GUI:ActionMoveTo(time, x, y) end

---移动动作（相对位置）
---* time 时间
---* x 位置 横坐标
---* y 位置 纵坐标
---@param time integer
---@param x number
---@param y number
---```lua
---local action = GUI:ActionSequence(GUI:ActionMoveBy(2, 100, 100))
---GUI:runAction(btn_up, action)
---```
function GUI:ActionMoveBy(time, x, y) end

---缩放动作
---* time 时间
---* ratio 缩放比例（百分比）
---@param time integer
---@param ratio integer
---```lua
---local action = GUI:ActionSequence(GUI:ActionScaleTo(2, 1.5))
---GUI:runAction(btn_up, action)
---```
function GUI:ActionScaleTo(time, ratio, ...) end

---缩放动作（原有基础上缩放）
---* time 时间
---* ratio 缩放比例（百分比）
---@param time integer
---@param ratio integer
---```lua
---local action = GUI:ActionSequence(GUI:ActionScaleBy(2, 1.5))
---GUI:runAction(btn_up, action)
---```
function GUI:ActionScaleBy(time, ratio, ...) end

---旋转动作
---* time 时间
---* angle 旋转角度
---@param time integer
---@param angle integer
---```lua
---local action = GUI:ActionSequence(GUI:ActionRotateTo(1, 90))
---GUI:runAction(btn_up, action)
---```
function GUI:ActionRotateTo(time, angle) end

---旋转动作（原有基础上旋转）
---* time 时间
---* angle 旋转角度
---@param time integer
---@param angle integer
---```lua
---local action = GUI:ActionSequence(GUI:ActionRotateBy(1, 90))
---GUI:runAction(btn_up, action)
---```
function GUI:ActionRotateBy(time, angle) end

---淡入动作
---* time 时间
---@param time integer
---```lua
---local action = GUI:ActionSequence(GUI:ActionFadeOut(1), GUI:ActionFadeIn(1), GUI:DelayTime(0.6))
---GUI:runAction(btn_up, action)
---```
function GUI:ActionFadeIn(time) end

---淡出动作
---* time 时间
---@param time integer
---```lua
---local action = GUI:ActionSequence(GUI:ActionFadeOut(1), GUI:ActionFadeIn(1), GUI:DelayTime(0.6))
---GUI:runAction(btn_up, action)
---```
function GUI:ActionFadeOut(time) end

---闪烁动作
---* time 时间
---* num 闪烁次数
---@param time integer
---@param num integer
---```lua
---local action = GUI:ActionSequence(GUI:ActionBlink(1, 2))
---GUI:runAction(btn_up, action)
---```
function GUI:ActionBlink(time, num) end

---动画回调函数
---* callback 回调函数
---@param callback function
---```lua
---local action = GUI:ActionSequence(GUI:ActionBlink(1, 2),GUI:CallFunc(function()
---    --do something
---end))
---GUI:runAction(btn_up, action)
---```
function GUI:CallFunc(callback) end

---动作延迟
---* time 延迟时间
---@param time integer
---```lua
---local action = GUI:ActionSequence(GUI:ActionBlink(1, 2),GUI:DelayTime(1))
---GUI:runAction(btn_up, action)
---```
function GUI:DelayTime(time) end

---播放动作
---* widget 控件对象
---* value 动作内容
---@param widget userdata
---@param value table
---```lua
---local action = GUI:ActionRepeatForever(GUI:ActionSequence(GUI:ActionFadeTo(0.4, 125), GUI:ActionFadeTo(0.4, 255), GUI:DelayTime(0.6)))
---GUI:runAction(btn_up, action)
---```
function GUI:runAction(widget, value) end

---停止所有动作
---* widget 控件对象
---@param widget userdata
---```lua
---local action = GUI:ActionRepeatForever(GUI:ActionSequence(GUI:ActionFadeTo(0.4, 125), GUI:ActionFadeTo(0.4, 255), GUI:DelayTime(0.6)))
---GUI:runAction(btn_up, action)
---GUI:stopAllActions(btn_up)
---```
function GUI:stopAllActions(widget) end

---通过标记停止动作
---* widget 控件对象
---* tag 动作标记
---@param widget userdata
---@param tag integer
---```lua
---local action = GUI:ActionRepeatForever(GUI:ActionSequence(GUI:ActionFadeTo(0.4, 125), GUI:ActionFadeTo(0.4, 255), GUI:DelayTime(0.6)))
---GUI:runAction(btn_up, action)
---GUI:setTag(action, 15)
---GUI:stopActionByTag(btn_up, 15)
---```
function GUI:stopActionByTag(widget, tag) end

---动作显示
---```lua
---GUI:ActionShow()
---```
function GUI:ActionShow() end

---动作隐藏
---```lua
---local action = GUI:ActionSequence(GUI:ActionBlink(1, 2),GUI:DelayTime(1))
---GUI:runAction(btn_up, action)
---GUI:ActionHide()
---```
function GUI:ActionHide() end

---移除自身
---```lua
---GUI:ActionRemoveSelf()
---```
function GUI:ActionRemoveSelf() end

---播放顺序
---* action 动作对象
---@param action table
---@return userdata "Action"
---```lua
---local action = GUI:ActionSequence(GUI:ActionBlink(1, 2),GUI:DelayTime(1),GUI:ActionFadeout())
---GUI:runAction(btn_up, action)
---```
function GUI:ActionSequence(action, ...) end

---多个动作同时播放
---* action 动作对象
---@param action table
---@return userdata "Action"
---```lua
---local action = GUI:ActionSpawn(GUI:ActionBlink(1, 2),GUI:ActionFadeout())
---GUI:runAction(btn_up, action)
---```
function GUI:ActionSpawn(action, ...) end

---循环播放
---* action 动作对象
---* time 时间
---@param action table
---@param time integer
---@return userdata "Action"
---```lua
---local action = GUI:ActionRepeat(GUI:ActionSequence(GUI:ActionBlink(1, 2),GUI:DelayTime(1),GUI:ActionFadeout()),3)
---GUI:runAction(btn_up, action)
---```
function GUI:ActionRepeat(action, time) end

---一直循环播放
---* action 动作对象（一直循环）
---@param action table
---@return userdata "Action"
---```lua
---local action = GUI:ActionRepeatForever(GUI:ActionSequence(GUI:ActionBlink(1, 2),GUI:DelayTime(1),GUI:ActionFadeout()))
---GUI:runAction(btn_up, action)
---```
function GUI:ActionRepeatForever(action) end

---复合动作（加速度向右，反方向缓慢移动）
---* action 动作对象
---@param action table
---@return userdata "Action"
---```lua
---local action = GUI:ActionEaseBackIn(GUI:ActionMoveTo(1,250,250))
---GUI:runAction(btn_up, action)
---```
function GUI:ActionEaseBackIn(action) end

---复合动作（快速移动到结束，然后缓慢返回到结束）
---* action 动作对象
---@param action table
---@return userdata "Action"
---```lua
---local action = GUI:ActionEaseBackOut(GUI:ActionMoveTo(1,250,250))
---GUI:runAction(btn_up, action)
---```
function GUI:ActionEaseBackOut(action) end

---指数缓冲动作（缓慢开始, 加速结束）
---* action 动作对象
---@param action table
---@return userdata "Action"
---```lua
---local action = GUI:ActionEaseExponentialIn(GUI:ActionMoveTo(1,250,250))
---GUI:runAction(btn_up, action)
---```
function GUI:ActionEaseExponentialIn(action) end

---指数缓冲动作（加速开始, 缓慢结束）
---* action 动作对象
---@param action table
---@return userdata "Action"
---```lua
---local action = GUI:ActionEaseExponentialOut(GUI:ActionMoveTo(1,250,250))
---GUI:runAction(btn_up, action)
---```
function GUI:ActionEaseExponentialOut(action) end

---指数缓冲动作（动作缓慢开始和终止）
---* action 动作对象
---@param action table
---@return userdata "Action"
---```lua
---local action = GUI:ActionEaseExponentialInOut(GUI:ActionMoveTo(1,250,250))
---GUI:runAction(btn_up, action)
---```
function GUI:ActionEaseExponentialInOut(action) end

---播放器视频播放
---* widget 播放器对象
---@param widget userdata
---```lua
---GUI:VideoPlayer_play(vedioWidget)
---```
function GUI:VideoPlayer_play(widget) end

---播放器视频停止
---* widget 播放器对象
---@param widget userdata
---```lua
---GUI:VideoPlayer_stop(vedioWidget)
---```
function GUI:VideoPlayer_stop(widget) end

---播放器视频暂停
---* widget 播放器对象
---@param widget userdata
---```lua
---GUI:VideoPlayer_pause(vedioWidget)
---```
function GUI:VideoPlayer_pause(widget) end

---播放器视频恢复播放
---* widget 播放器对象
---@param widget userdata
---```lua
---GUI:VideoPlayer_resume(vedioWidget)
---```
function GUI:VideoPlayer_resume(widget) end

---贝塞尔曲线运动
---* time 玩家对象
---* controlPoint_1 控制点1 坐标
---* controlPoint_2 控制点2 坐标
---* endPosition 结束坐标
---@param time integer
---@param controlPoint_1 table
---@param controlPoint_2 table
---@param endPosition table
---```lua
---local btn = GUI:Button_Create(GUI:Attach_LeftBottom(), "btn1", 200, 200, "res/public/1900000510.png")
---local startPos = GUI:p(200, 200)
---local endPos = GUI:p(600, 200)
---local controlPoint_1 = GUI:p(200, 800)
---local controlPoint_2 = GUI:p(600, 500)
---local endPosition = endPos
---local bezier = GUI:Timeline_BezierTo(2, controlPoint_1, controlPoint_2, endPosition)
---GUI:runAction(btn, bezier)
---```
function GUI:Timeline_BezierTo(time, controlPoint_1, controlPoint_2, endPosition) end

-- [Source: 窗口^容器.lua]

---设置层背景颜色
---* widget 层对象
---* value 色值("#000000")<br> !渐变色需传参table<br> `{"#FF0000", "#FFFFFF"}`
---@param widget userdata
---@param value string
---```lua
---local layout = GUI:Layout_Create(GUI:Attach_Center(), "layout", 200, 200, 100, 100, false)
---GUI:Layout_setBackGroundColorType(layout, 2)
---GUI:Layout_setBackGroundColor(layout, {"#FF0000", "#FFFFFF"})
---```
function GUI:Layout_setBackGroundColor(widget, value) end

---设置层背景颜色类型
---* widget 层对象
---* value 类型(1单色，2渐变色)
---@param widget userdata
---@param value integer
---```lua
---local layout = GUI:Layout_Create(GUI:Attach_Center(), "layout", 200, 200, 100, 100, false)
---GUI:Layout_setBackGroundColorType(layout, 2)
---```
function GUI:Layout_setBackGroundColorType(widget, value) end

---设置层背景颜色不透明度
---* widget 层对象
---* value 不透明度(0-255)
---@param widget userdata
---@param value integer
---```lua
---local layout = GUI:Layout_Create(GUI:Attach_Center(), "layout", 200, 200, 100, 100, false)
---GUI:Layout_setBackGroundColorType(layout, 2)
---GUI:Layout_setBackGroundColor(layout, {"#FF0000", "#FFFFFF"})
---GUI:Layout_setBackGroundColorOpacity(layout, 155)
---```
function GUI:Layout_setBackGroundColorOpacity(widget, value) end

---设置层背景是否裁切
---* widget 层对象
---* value 是否裁切
---@param widget userdata
---@param value boolean
---```lua
---local layout = GUI:Layout_Create(GUI:Attach_Center(), "layout", 200, 200, 100, 100, false)
---GUI:Layout_setClippingEnabled(layout, false)
---```
function GUI:Layout_setClippingEnabled(widget, value) end

---设置层背景图片
---* widget 层对象
---* value 图片路径
---@param widget userdata
---@param value string
---```lua
---local layout = GUI:Layout_Create(GUI:Attach_Center(), "layout", 200, 200, 100, 100, false)
---GUI:Layout_setBackGroundImage(layout, "res/public/061302.PNG")
---```
function GUI:Layout_setBackGroundImage(widget, value) end

---设置层背景图片九宫格
---* widget 层对象
---* scale9l 左边比例
---* scale9r 右边比例
---* scale9t 上边比例
---* scale9b 下边比例
---@param widget userdata
---@param scale9l integer
---@param scale9r integer
---@param scale9t integer
---@param scale9b integer
---```lua
---local layout = GUI:Layout_Create(GUI:Attach_Center(), "layout", 200, 200, 100, 100, false)
---GUI:Layout_setBackGroundImageScale9Slice(layout, 0, 135.0, 0, 173.0)
---```
function GUI:Layout_setBackGroundImageScale9Slice(widget, scale9l, scale9r, scale9t, scale9b) end

---移除层背景图片设置
---* widget 层对象
---@param widget userdata
---```lua
---local layout = GUI:Layout_Create(GUI:Attach_Center(), "layout", 200, 200, 100, 100, false)
---GUI:Layout_setBackGroundImage(layout, "res/public/061302.PNG")
---GUI:Layout_removeBackGroundImage(layout)
---```
function GUI:Layout_removeBackGroundImage(widget) end

---设置列表容器对齐方式
---* widget 容器对象
---* value 0：左对齐<br>1：右对齐<br>2：水平居中<br>3：顶对齐<br>4：底对齐<br>5：垂直居中
---@param widget userdata
---@param value integer
---```lua
---local listView = GUI:ListView_Create(GUI:Attach_Bottom(),"listView", 200, 200, 300, 400, 2)
---GUI:ListView_setGravity(listView, 2)
---```
function GUI:ListView_setGravity(widget, value) end

---设置列表容器滑动方向
---* widget 容器对象
---* value 1：垂直; 2：水平
---@param widget userdata
---@param value integer
---```lua
---local listView = GUI:ListView_Create(GUI:Attach_Bottom(),"listView", 200, 200, 300, 400, 2)
---GUI:ListView_setDirection(listView, 2)
---```
function GUI:ListView_setDirection(widget, value) end

---设置列表容器间隔
---* widget 容器对象
---* value 间隔大小(50像素)
---@param widget userdata
---@param value integer
---```lua
---local listView = GUI:ListView_Create(GUI:Attach_Bottom(),"listView", 200, 200, 300, 400, 2)
---GUI:ListView_setItemsMargin(listView, 2)
---```
function GUI:ListView_setItemsMargin(widget, value) end

---设置列表容器是否有裁切
---* widget 容器对象
---* value 是否有裁切
---@param widget userdata
---@param value boolean
---```lua
---local listView = GUI:ListView_Create(GUI:Attach_Bottom(),"listView", 200, 200, 300, 400, 2)
---GUI:ListView_setClippingEnabled(listView, true)
---```
function GUI:ListView_setClippingEnabled(widget, value) end

---设置列表容器背景颜色
---* widget tableView对象
---* value 十六进制颜色值 例: "#FFFFFF"
---@param widget userdata
---@param value string
---```lua
---local tableView = GUI:TableView_Create(wnd, "TABLEVIEW", 200, 100, 600, 400, 1, 600, 40, 200)
---GUI:TableView_setBackGroundColor(tableView, "#FFFFFF")
---```
function GUI:TableView_setBackGroundColor(widget, value) end

---设置列表容器背景颜色类型
---* widget 容器对象
---* value 1：单色，2：渐变色
---@param widget userdata
---@param value integer
---```lua
---local listView = GUI:ListView_Create(GUI:Attach_Bottom(),"listView", 200, 200, 300, 400, 2)
---GUI:ListView_setBackGroundColorType(listView, 2)
---```
function GUI:ListView_setBackGroundColorType(widget, value) end

---设置列表容器背景透明度
---* widget 容器对象
---* value 透明度(0-255)
---@param widget userdata
---@param value integer
---```lua
---local listView = GUI:ListView_Create(GUI:Attach_Bottom(),"listView", 200, 200, 300, 400, 2)
---GUI:ListView_setBackGroundColorOpacity(listView, 150)
---```
function GUI:ListView_setBackGroundColorOpacity(widget, value) end

---设置列表容器背景图片
---* widget 容器对象
---* value 图片路径
---@param widget userdata
---@param value string
---```lua
---local listView = GUI:ListView_Create(GUI:Attach_Bottom(),"listView", 200, 200, 300, 400, 2)
---GUI:ListView_setBackGroundImage(listView, "res/public/061302.PNG")
---```
function GUI:ListView_setBackGroundImage(widget, value) end

---设置列表容器背景图片九宫格
---* widget 容器对象
---* scale9l 左边比例
---* scale9r 右边比例
---* scale9t 上边比例
---* scale9b 下边比例
---@param widget userdata
---@param scale9l integer
---@param scale9r integer
---@param scale9t integer
---@param scale9b integer
---```lua
---local listView = GUI:ListView_Create(GUI:Attach_Bottom(),"listView", 200, 200, 300, 400, 2)
---GUI:ListView_setBackGroundImageScale9Slice(listView, 10, 10, 20, 20)
---```
function GUI:ListView_setBackGroundImageScale9Slice(widget, scale9l, scale9r, scale9t, scale9b) end

---设置列表容器滚动事件
---* widget 容器对象
---* eventCB 事件函数
---@param widget userdata
---@param eventCB function
---```lua
---local listView = GUI:ListView_Create(GUI:Attach_Bottom(),"listView", 200, 200, 300, 400, 2)
---GUI:ListView_addOnScrollEvent(listView, function()
---    --do something
---end)
---```
function GUI:ListView_addOnScrollEvent(widget, eventCB) end

---设置列表容器滚动到某百分比位置(垂直方向)
---* widget 容器对象
---* percent 百分比(0-100)
---* time 时间(秒)
---* bool 是否衰减滚动速度
---@param widget userdata
---@param percent integer
---@param time integer
---@param bool boolean
---```lua
---local listView = GUI:ListView_Create(GUI:Attach_Bottom(),"listView", 200, 200, 300, 400, 2)
---GUI:ListView_scrollToPercentVertical(listView, 30, 2, true)
---```
function GUI:ListView_scrollToPercentVertical(widget, percent, time, bool) end

---设置列表容器滚动到某百分比位置(水平方向)
---* widget 容器对象
---* percent 百分比(0-100)
---* time 时间(秒)
---* bool 是否衰减滚动速度
---@param widget userdata
---@param percent integer
---@param time integer
---@param bool boolean
---```lua
---local listView = GUI:ListView_Create(GUI:Attach_Bottom(),"listView", 200, 200, 300, 400, 2)
---GUI:ListView_scrollToPercentHorizontal(listView, 25, 2, true)
---```
function GUI:ListView_scrollToPercentHorizontal(widget, percent, time, bool) end

---添加鼠标滚轮滑动列表容器事件
---* widget 容器对象
---@param widget userdata
---```lua
---local listView = GUI:ListView_Create(GUI:Attach_Bottom(),"listView", 200, 200, 300, 400, 2)
---GUI:ListView_addMouseScrollPercent(listView)
---```
function GUI:ListView_addMouseScrollPercent(widget) end

---设置滚动容器滚动范围大小
---* widget 容器对象
---* value1 宽度 或 尺寸
---* value2 高度
---@param widget userdata
---@param value1 integer|table
---@param value2 integer
---```lua
---local width = 300
---local height = 400
---local size = {width = 300, height = 400}
---GUI:ScrollView_setInnerContainerSize(ScrollView, width, height)
---GUI:ScrollView_setInnerContainerSize(ScrollView, size)
---```
function GUI:ScrollView_setInnerContainerSize(widget, value1, value2) end

---设置滚动容器滚动方向
---* widget 容器对象
---* value 1：垂直; 2：水平
---@param widget userdata
---@param value integer
---```lua
---local scrollView = GUI:ScrollView_Create(parent, "scrollView", 200, 200, 300, 500, 1)
---GUI:ScrollView_setDirection(scrollView, 1)
---```
function GUI:ScrollView_setDirection(widget, value) end

---设置滚动容器是否有回弹
---* widget 容器对象
---* value 是否有回弹
---@param widget userdata
---@param value boolean
---```lua
---local scrollView = GUI:ScrollView_Create(parent, "scrollView", 200, 200, 300, 500, 1)
---GUI:ScrollView_setBounceEnabled(scrollView, true)
---```
function GUI:ScrollView_setBounceEnabled(widget, value) end

---设置滚动容器是否有裁切
---* widget 容器对象
---* value 是否有裁切
---@param widget userdata
---@param value boolean
---```lua
---local scrollView = GUI:ScrollView_Create(parent, "scrollView", 200, 200, 300, 500, 1)
---GUI:ScrollView_setClippingEnabled(scrollView, false)
---```
function GUI:ScrollView_setClippingEnabled(widget, value) end

---设置滚动容器背景颜色
---* widget 容器对象
---* value 色值("#000000")<br> !渐变色需传参table<br> `{"#FF0000", "#FFFFFF"}`
---@param widget userdata
---@param value string
---```lua
---local scrollView = GUI:ScrollView_Create(parent, "scrollView", 200, 200, 300, 500, 1)
---GUI:ScrollView_setBackGroundColor(scrollView, "#00ff00")
---```
function GUI:ScrollView_setBackGroundColor(widget, value) end

---设置滚动容器背景颜色类型
---* widget 容器对象
---* value 1：单色，2：渐变色
---@param widget userdata
---@param value integer
---```lua
---local scrollView = GUI:ScrollView_Create(parent, "scrollView", 0, 0, 300, 500, 1)
---GUI:ScrollView_setBackGroundColorType(scrollView, 1)
---```
function GUI:ScrollView_setBackGroundColorType(widget, value) end

---设置滚动容器背景透明度
---* widget 容器对象
---* value 透明度(0-255)
---@param widget userdata
---@param value integer
---```lua
---local scrollView = GUI:ScrollView_Create(parent, "scrollView", 0, 0, 300, 500, 1)
---GUI:ScrollView_setBackGroundColorOpacity(scrollView, 150)
---```
function GUI:ScrollView_setBackGroundColorOpacity(widget, value) end

---设置滚动容器背景图片
---* widget 容器对象
---* value 图片路径
---@param widget userdata
---@param value string
---```lua
---local scrollView = GUI:ScrollView_Create(parent, "scrollView", 0, 0, 300, 500, 1)
---GUI:ScrollView_setBackGroundImage(scrollView, "res/public/061302.PNG")
---```
function GUI:ScrollView_setBackGroundImage(widget, value) end

---设置滚动器背景图片九宫格
---* widget 容器对象
---* scale9l 左边比例
---* scale9r 右边比例
---* scale9t 上边比例
---* scale9b 下边比例
---@param widget userdata
---@param scale9l integer
---@param scale9r integer
---@param scale9t integer
---@param scale9b integer
---```lua
---local scrollView = GUI:ScrollView_Create(parent, "scrollView", 0, 0, 300, 500, 1)
---GUI:ScrollView_setBackGroundImageScale9Slice(scrollView, 10, 10, 20, 20)
---```
function GUI:ScrollView_setBackGroundImageScale9Slice(widget, scale9l, scale9r, scale9t, scale9b) end

---移除滚动容器背景图片设置
---* widget 容器对象
---@param widget userdata
---```lua
---local scrollView = GUI:ScrollView_Create(parent, "scrollView", 0, 0, 300, 500, 1)
---GUI:ScrollView_removeBackGroundImage(scrollView)
---```
function GUI:ScrollView_removeBackGroundImage(widget) end

---设置滚动容器滚动事件
---* widget 容器对象
---* eventCB 事件函数
---@param widget userdata
---@param eventCB function
---```lua
---local scrollView = GUI:ScrollView_Create(GUI:Attach_Top(), "scrollView", 0, 0, 300, 500, 1)
---GUI:ScrollView_addOnScrollEvent(scrollView, function()
---    --do something
---end)
---```
function GUI:ScrollView_addOnScrollEvent(widget, eventCB) end

---滚动容器加载子节点
---* widget 容器对象
---* value 子节点对象
---@param widget userdata
---@param value table
---```lua
---local scrollView = GUI:ScrollView_Create(GUI:Attach_Bottom(), "scrollView", 0, 0, 300, 500, 1)
---local Text_name = GUI:Text_Create(parent, "Text_name", 0, 0, 16, "#ffffff", "我的名字")
---GUI:ScrollView_addChild(scrollView, Text_name)
---```
function GUI:ScrollView_addChild(widget, value) end

---滚动容器删除所有子节点
---* widget 容器对象
---@param widget userdata
---```lua
---GUI:ScrollView_removeAllChildren(scrollView)
---```
function GUI:ScrollView_removeAllChildren(widget) end

---滚动容器衰减滚动（顶部）
---* widget 容器对象
---* time 时间
---* boolvalue 是否衰减（顶部）
---@param widget userdata
---@param time integer
---@param boolvalue boolean
---```lua
---local scrollView = GUI:ScrollView_Create(GUI:Attach_Bottom(), "scrollView", 0, 0, 300, 500, 1)
---GUI:ScrollView_scrollToTop(scrollView, 2, true)
---```
function GUI:ScrollView_scrollToTop(widget, time, boolvalue) end

---滚动容器衰减滚动（底部）
---* widget 容器对象
---* time 时间
---* boolvalue 是否衰减（底部）
---@param widget userdata
---@param time integer
---@param boolvalue boolean
---```lua
---local scrollView = GUI:ScrollView_Create(GUI:Attach_Bottom(), "scrollView", 0, 0, 300, 500, 1)
---GUI:ScrollView_scrollToBottom(scrollView, 2, true)
---```
function GUI:ScrollView_scrollToBottom(widget, time, boolvalue) end

---滚动容器衰减滚动（顶左）
---* widget 容器对象
---* time 时间
---* boolvalue 是否衰减（顶左）
---@param widget userdata
---@param time integer
---@param boolvalue boolean
---```lua
---local scrollView = GUI:ScrollView_Create(GUI:Attach_Bottom(), "scrollView", 0, 0, 300, 500, 1)
---GUI:ScrollView_scrollToTopLeft(scrollView, 2, true)
---```
function GUI:ScrollView_scrollToTopLeft(widget, time, boolvalue) end

---滚动容器衰减滚动（右边）
---* widget 容器对象
---* time 时间
---* boolvalue 是否衰减（右边）
---@param widget userdata
---@param time integer
---@param boolvalue boolean
---```lua
---local scrollView = GUI:ScrollView_Create(GUI:Attach_Bottom(), "scrollView", 0, 0, 300, 500, 1)
---GUI:ScrollView_scrollToRight(scrollView, 2, true)
---```
function GUI:ScrollView_scrollToRight(widget, time, boolvalue) end

---滚动容器衰减滚动（左边）
---* widget 容器对象
---* time 时间
---* boolvalue 是否衰减（左边）
---@param widget userdata
---@param time integer
---@param boolvalue boolean
---```lua
---local scrollView = GUI:ScrollView_Create(GUI:Attach_Bottom(), "scrollView", 0, 0, 300, 500, 1)
---GUI:ScrollView_scrollToLeft(scrollView, 2, true)
---```
function GUI:ScrollView_scrollToLeft(widget, time, boolvalue) end

---滚动容器衰减滚动（垂直方向滚动）
---* widget 容器对象
---* percent 百分比
---* time 时间
---* boolvalue 是否衰减滚动速度
---@param widget userdata
---@param percent integer
---@param time integer
---@param boolvalue boolean
---```tips
---垂直方向滚动
---```
---```lua
---local scrollView = GUI:ScrollView_Create(GUI:Attach_Bottom(), "scrollView", 0, 0, 300, 500, 1)
---GUI:ScrollView_scrollToPercentVertical(scrollView, 20,2, true)
---```
function GUI:ScrollView_scrollToPercentVertical(widget, percent, time, boolvalue) end

---滚动容器衰减滚动（水平方向滚动）
---* widget 容器对象
---* percent 百分比
---* time 时间
---* boolvalue 是否衰减滚动速度
---@param widget userdata
---@param percent integer
---@param time integer
---@param boolvalue boolean
---```tips
---水平方向滚动
---```
---```lua
---local scrollView = GUI:ScrollView_Create(GUI:Attach_Bottom(), "scrollView", 0, 0, 300, 500, 1)
---GUI:ScrollView_scrollToPercentHorizontal(scrollView, 20,2, true)
---```
function GUI:ScrollView_scrollToPercentHorizontal(widget, percent, time, boolvalue) end

---滚动容器添加滚动条
---* parent 父节点对象
---* param 布局参数
---@param parent userdata
---@param param table
---```lua
---GUI:SetScrollViewVerticalBar(parent, {
---    bgPic       = "res/private/gui_edit/scroll/line.png",   -- 背景图
---    barPic      = "res/private/gui_edit/scroll/p.png",      -- 滑动按钮图片
---    Arr1PicN    = "res/private/gui_edit/scroll/t.png",      -- 上（正常图）
---    Arr1PicP    = "res/private/gui_edit/scroll/t_1.png",    -- 上（按下图）可不传
---    Arr2PicN    = "res/private/gui_edit/scroll/b.png",      -- 下（正常图）
---    Arr2PicP    = "res/private/gui_edit/scroll/b_1.png",    -- 下（按下图）可不传
---    default     = 0,                    -- 进度条值（默认是0）
---    x           = 0,                   -- 进度条坐标 x
---    y           = 0,                   -- 进度条坐标 y
---    list        = listHandle,    -- 滚动的容器 list
---    callFunc    = function (send) -- 容器滚动的回调函数
---        SL:Print("回调函数")
---    end,
---})
---```
function GUI:SetScrollViewVerticalBar(parent, param) end

---设置翻页容器是否有裁切
---* widget 容器对象
---* value 是否有裁切
---@param widget userdata
---@param value boolean
---```lua
---local pageView = GUI:PageView_Create(parent, "pageView", 200,0, 300, 500, 1)
---GUI:PageView_setClippingEnabled(pageView, false)
---```
function GUI:PageView_setClippingEnabled(widget, value) end

---设置翻页容器背景颜色
---* widget 容器对象
---* value 色值("#000000")<br> !渐变色需传参table<br> `{"#FF0000", "#FFFFFF"}`
---@param widget userdata
---@param value string
---```lua
---local pageView = GUI:PageView_Create(parent, "pageView", 200,0, 300, 500, 1)
---GUI:PageView_setBackGroundColor(pageView, "00ff00")
---```
function GUI:PageView_setBackGroundColor(widget, value) end

---设置翻页容器背景颜色类型
---* widget 容器对象
---* value 1：单色，2：渐变色
---@param widget userdata
---@param value integer
---```lua
---local pageView = GUI:PageView_Create(parent, "pageView", 200,0, 300, 500, 1)
---GUI:PageView_setBackGroundColorType(pageView, 1)
---```
function GUI:PageView_setBackGroundColorType(widget, value) end

---设置翻页容器背景透明度
---* widget 容器对象
---* value 透明度(0-255)
---@param widget userdata
---@param value integer
---```lua
---local pageView = GUI:PageView_Create(parent, "pageView", 200,0, 300, 500, 1)
---GUI:PageView_setBackGroundColorOpacity(pageView, 150)
---```
function GUI:PageView_setBackGroundColorOpacity(widget, value) end

---设置翻页容器滚动到子页面
---* widget 容器对象
---* index 子页面序列号
---@param widget userdata
---@param index integer
---```lua
---local pageView = GUI:PageView_Create(parent, "pageView", 200,0, 300, 500, 1)
---GUI:PageView_scrollToItem(widget, 1)
---```
function GUI:PageView_scrollToItem(widget, index) end

---设置翻页容器当前子页序列号
---* widget 容器对象
---* index 子页面序列号
---@param widget userdata
---@param index integer
---```lua
---local pageView = GUI:PageView_Create(parent, "pageView", 200,0, 300, 500, 1)
---GUI:PageView_setCurrentPageIndex(pageView, 1)
---```
function GUI:PageView_setCurrentPageIndex(widget, index) end

---设置子cell创建方法
---* widget tableView对象
---* func 创建函数 传入参数(cell父节点, cell下标)
---@param widget userdata
---@param func function
---```lua
---local winWidth = 900
---local winHeight = 600
---local wnd = GUI:Win_Create("Win_1", 0, 0, winWidth, winHeight)
---
---local tableView = GUI:TableView_Create(wnd, "TABLEVIEW", 200, 100, 600, 400, 1, 600, 40, 200)
---GUI:TableView_setBackGroundColor(tableView, "#FFFFFF")
---GUI:TableView_setDirection(tableView, 2)
----- 设置cell创建方法
---GUI:TableView_setCellCreateEvent(tableView, function(parent, idx, ID)
---    if ID == "TABLEVIEW" then
---        local panel = GUI:Layout_Create(parent, string.format("layout_%s", idx), 0, 0, 600, 40)
---        local text = GUI:Text_Create(panel, "TEXT", 0, 20, 18, "#00FF00", "IDX----------------"..idx)
---        GUI:setAnchorPoint(text, 0, 0.5)
---    end
---end)
---```
function GUI:TableView_setCellCreateEvent(widget, func) end

---设置列表容器滚动方向
---* widget tableView对象
---* value 滚动方向 1：垂直; 2：水平
---@param widget userdata
---@param value integer
---```lua
---local tableView = GUI:TableView_Create(wnd, "TABLEVIEW", 200, 100, 600, 400, 1, 600, 40, 200)
---GUI:TableView_setDirection(tableView, 1)
---```
function GUI:TableView_setDirection(widget, value) end

---设置列表容器内部区域偏移位置
---* widget tableView对象
---* x 偏移坐标X
---* y 偏移坐标Y
---@param widget userdata
---@param x number
---@param y number
---```lua
---local tableView = GUI:TableView_Create(wnd, "TABLEVIEW", 200, 100, 600, 400, 1, 600, 40, 200)
---GUI:TableView_setContentOffset(tableView, 3, 3)
---```
function GUI:TableView_setContentOffset(widget, x, y) end

---添加列表容器点击cell事件
---* widget tableView对象
---* func 点击cell触发回调
---@param widget userdata
---@param func function
---```lua
---local winWidth = 900
---local winHeight = 600
---local wnd = GUI:Win_Create("Win_1", 0, 0, winWidth, winHeight)
---
---local tableView = GUI:TableView_Create(wnd, "TABLEVIEW", 200, 100, 600, 400, 1, 600, 40, 200)
---GUI:TableView_setBackGroundColor(tableView, "#FFFFFF")
---GUI:TableView_setDirection(tableView, 2)
----- 设置cell创建方法
---GUI:TableView_setCellCreateEvent(tableView, function(parent, idx, ID)
---    if ID == "TABLEVIEW" then
---        local panel = GUI:Layout_Create(parent, string.format("layout_%s", idx), 0, 0, 600, 40)
---        local text = GUI:Text_Create(panel, "TEXT", 0, 20, 18, "#00FF00", "IDX----------------"..idx)
---        GUI:setAnchorPoint(text, 0, 0.5)
---    end
---end)
---
---local function touchCellFunc(tv, cell)
---local idx = GUI:TableViewCell_getIdx(cell)
---local panel = GUI:getChildByID(cell, string.format("layout_%s", idx))
---GUI:Layout_setBackGroundColorType(panel, 1)
---GUI:Layout_setBackGroundColor(panel, "#00EEAA")
---if idx == 15 then
---    GUI:TableView_scrollToCell(tv, 18)
---end
---GUI:TableView_reloadData(tableView)
---end
----- 添加cell点击事件
---GUI:TableView_addOnTouchedCellEvent( tableView, touchCellFunc )
---SL:ScheduleOnce(function ()
---    GUI:TableView_scrollToCell(tableView, 6)
---end, 1/60)
---```
function GUI:TableView_addOnTouchedCellEvent(widget, func) end

---列表容器滚动到某cell位置
---* widget tableView对象
---* index 对应cell下标
---@param widget userdata
---@param index integer
---```lua
---local tableView = GUI:TableView_Create(wnd, "TABLEVIEW", 200, 100, 600, 400, 1, 600, 40, 200)
---GUI:TableView_scrollToCell(tableView, 54)
---```
function GUI:TableView_scrollToCell(widget, index) end

---添加容器滚动回调
---* widget tableView对象
---* func 容器滚动回调函数 param1: TableView控件
---@param widget userdata
---@param func function
---```lua
---local tableView = GUI:TableView_Create(wnd, "TABLEVIEW", 200, 100, 600, 400, 1, 600, 40, 200)
---GUI:TableView_addOnScrollEvent(tableView, func)
---```
function GUI:TableView_addOnScrollEvent(widget, func) end

---设置容器cell个数
---* widget tableView对象
---* func cell总个数(int)/返回cell总个数的函数(func)
---@param widget userdata
---@param func integer|function
---```lua
---local tableView = GUI:TableView_Create(wnd, "TABLEVIEW", 200, 100, 600, 400, 1, 600, 40, 200)
---GUI:TableView_setTableViewCellsNumHandler(tableView, 10)
---```
function GUI:TableView_setTableViewCellsNumHandler(widget, func) end

---移除列表容器背景图片设置
---* widget 容器对象
---@param widget userdata
---```lua
---local listView = GUI:ListView_Create(GUI:Attach_Bottom(),"listView", 200, 200, 300, 400, 2)
---GUI:ListView_setBackGroundImage(listView, "res/public/061302.PNG")
---GUI:ListView_removeBackGroundImage(listView)
---```
function GUI:ListView_removeBackGroundImage(widget) end

---列表容器加载子节点
---* widget 容器对象
---* value 子节点对象（末尾加载）
---@param widget userdata
---@param value table
---```lua
---local listView = GUI:ListView_Create(GUI:Attach_Bottom(),"listView", 200, 200, 300, 400, 2)
---GUI:ListView_pushBackCustomItem(listView, cell)
---```
function GUI:ListView_pushBackCustomItem(widget, value) end

---列表容器加载子节点（序列号）
---* widget 容器对象
---* value 子节点对象
---* value2 序列号（index = 1）
---@param widget userdata
---@param value table
---@param value2 integer
---```lua
---local listView = GUI:ListView_Create(GUI:Attach_Bottom(),"listView", 200, 200, 300, 400, 2)
---GUI:ListView_pushBackCustomItem(listView, cell)
---GUI:ListView_insertCustomItem(listView, cell, 0)
---```
function GUI:ListView_insertCustomItem(widget, value, value2) end

---列表容器删除所有子节点
---* widget 容器对象
---@param widget userdata
---```lua
---local listView = GUI:ListView_Create(GUI:Attach_Bottom(),"listView", 200, 200, 300, 400, 2)
---GUI:ListView_pushBackCustomItem(listView, cell)
---```
function GUI:ListView_removeAllItems(widget) end

---通过序列号删除列表容器子节点
---* widget 容器对象
---* index 序列号位置
---@param widget userdata
---@param index integer
---```lua
---local listView = GUI:ListView_Create(GUI:Attach_Bottom(),"listView", 200, 200, 300, 400, 2)
---GUI:ListView_insertCustomItem(listView, cell, 0)
---GUI:ListView_removeItemByIndex(listView, 0)
---```
function GUI:ListView_removeItemByIndex(widget, index) end

---列表容器删除子节点
---* widget 容器对象
---* item 子节点对象
---@param widget userdata
---@param item table
---```lua
---local listView = GUI:ListView_Create(GUI:Attach_Bottom(),"listView", 200, 200, 300, 400, 2)
---GUI:ListView_pushBackCustomItem(listView, cell)
---GUI:ListView_removeChild(listView, cell)
---```
function GUI:ListView_removeChild(widget, item) end

---跳转到列表容器序列号节点位置
---* widget 容器对象
---* value 序列号位置
---@param widget userdata
---@param value integer
---```lua
---GUI:ListView_jumpToItem(listView, 10)
---```
function GUI:ListView_jumpToItem(widget, value) end

---某一时间内滑动到列表容器顶部
---* widget 容器对象
---* time 时间
---* boolvalue 滑动速度是否减弱
---@param widget userdata
---@param time integer
---@param boolvalue boolean
---```lua
---GUI:ListView_scrollToTop(listView,2, true)
---```
function GUI:ListView_scrollToTop(widget, time, boolvalue) end

---某一时间内滑动到列表容器底部
---* widget 容器对象
---* time 时间
---* boolvalue 滑动速度是否减弱
---@param widget userdata
---@param time integer
---@param boolvalue boolean
---```lua
---GUI:ListView_scrollToBottom(listView,2, true)
---```
function GUI:ListView_scrollToBottom(widget, time, boolvalue) end

---列表容器刷新
---* widget 容器对象
---@param widget userdata
---```lua
---local listView = GUI:ListView_Create(GUI:Attach_Bottom(),"listView", 200, 200, 300, 400, 2)
---GUI:ListView_doLayout(listView)
---```
function GUI:ListView_doLayout(widget) end

---列表容器可见区域绘制
---* widget 容器对象
---@param widget userdata
---```lua
---local listView = GUI:ListView_Create(GUI:Attach_Bottom(),"listView", 200, 200, 300, 400, 2)
---GUI:ListView_paintItems(listView)
---```
function GUI:ListView_paintItems(widget) end

---列表容器可见区域自动绘制
---* widget 容器对象
---@param widget userdata
---```lua
---local listView = GUI:ListView_Create(GUI:Attach_Bottom(),"listView", 200, 200, 300, 400, 2)
---GUI:ListView_autoPaintItems(widget)
---```
function GUI:ListView_autoPaintItems(widget) end

---翻页容器加载子页面
---* widget 容器对象
---* value 子页面对象
---@param widget userdata
---@param value table
---```lua
---local pageView = GUI:PageView_Create(parent, "pageView", 200,0, 300, 500, 1)
---GUI:PageView_setBackGroundColorType(pageView, 1)
---GUI:PageView_setBackGroundColor(pageView,"#00ff00")
---GUI:PageView_setBackGroundColorOpacity(pageView, 150)
---local child=GUI:Image_Create(parent,"childID",200,0,"res/public/061302.PNG")
---local child1=GUI:Image_Create(parent,"child1ID",200,0,"res/public/061303.PNG")
---GUI:PageView_addPage(pageView,child)
---GUI:PageView_addPage(pageView,child1)
---```
function GUI:PageView_addPage(widget, value) end

---翻页容器加监听事件
---* widget 容器对象
---* eventCB 监听事件函数
---@param widget userdata
---@param eventCB function
---```lua
---local pageView = GUI:PageView_Create(parent, "pageView", 200,0, 300, 500, 1)
---GUI:PageView_addOnEvent(pageView, function()
---    --do somwthing
---end)
---```
function GUI:PageView_addOnEvent(widget, eventCB) end

---加载容器所有列表数据
---* widget tableView对象
---@param widget userdata
---```tips
---结合GUI:TableView_setTableViewCellsNumHandler方法 改变数据使用
---tableView相关接口在设置后,调用当前接口重新加载
---```
---```lua
---local tableView = GUI:TableView_Create(wnd, "TABLEVIEW", 200, 100, 600, 400, 1, 600, 40, 200)
---GUI:TableView_reloadData(tableView)
---```
function GUI:TableView_reloadData(widget) end

---添加容器鼠标滚动事件
---* widget tableView对象
---* func 鼠标滚动回调函数传参{widget = widget, x = 滚动坐标X, y = 滚动坐标Y} [不填采用官方默认添加滚动]
---@param widget userdata
---@param func function
---```lua
---local tableView = GUI:TableView_Create(wnd, "TABLEVIEW", 200, 100, 600, 400, 1, 600, 40, 200)
---GUI:TableView_addMouseScrollEvent(tableView)
---```
function GUI:TableView_addMouseScrollEvent(widget, func) end

---添加子节点到旋转容器对应下标item
---* widget 旋转容器对象
---* value 控件对象
---* index 对应下标
---@param widget userdata
---@param value table
---@param index integer
---```lua
---local param = {
---    [1] = {scale = 0.4, img = "res/public/word_fubentg_1.png"},
---    [2] = {scale = 0.6, img = "res/public/word_fubentg_2.png"},
---    [3] = {scale = 0.8, img = "res/public/word_fubentg_3.png"},
---    [4] = {scale = 1.0, img = "res/public/word_fubentg_4.png"},
---    [5] = {scale = 0.8, img = "res/public/word_fubentg_5.png"},
---    [6] = {scale = 0.6, img = "res/public/word_fubentg_6.png"},
---    [7] = {scale = 0.4, img = "res/public/word_fubentg_7.png"},
---}
---local view = GUI:RotateView_Create(GUI:Attach_LeftBottom(), "rotateView_1", 500, 320, 1000, 500, 100, param)
---local Btn = GUI:Button_Create(parent, "btnTest", 0, 0, "res/public/061302.PNG")
---GUI:RotateView_addChild(view, Btn, 1)
---```
function GUI:RotateView_addChild(widget, value, index) end

-- [Source: 窗口^操作.lua]

---通过对象关闭界面
---* widget 界面对象
---@param widget userdata
---```lua
---local win = GUI:Win_Create("testWin", 0, 0, 0, 0, false, false, true, true)
---GUI:Win_Close(win)
---```
function GUI:Win_Close(widget) end

---通过ID关闭界面
---* ID 界面ID
---@param ID string
---```lua
---local winID="testWin"
---local win = GUI:Win_Create(winID, 0, 0, 0, 0, false, false, true, true)
---GUI:Win_CloseByID(winID)
---```
function GUI:Win_CloseByID(ID) end

---通过NPCID关闭界面
---* NPCID NPCID
---@param NPCID integer
---```lua
---local testWin = GUI:Win_Create("winID", 0, 0, 0, 0, false, false, true, true)
---GUI:Win_BindNPC(testWin, 0612)
---GUI:Win_CloseByNPCID(0612)
---```
function GUI:Win_CloseByNPCID(NPCID) end

---通过键盘的Esc键关闭界面
---* widget 界面对象
---* value 石否关闭
---@param widget userdata
---@param value boolean
---```lua
---local win = GUI:Win_Create("winID", 0, 0, 0, 0, false, false, true, false)
---GUI:Win_SetESCClose(win, true)
---```
function GUI:Win_SetESCClose(widget, value) end

---关闭所有界面
---```lua
---local win = GUI:Win_Create("winID", 0, 0, 0, 0, false, false, true, true)
---GUI:Win_CloseAll()
---```
function GUI:Win_CloseAll() end

---判断对象是否为空
---* widget 对象
---@param widget userdata
---@return boolean "true/false"
---```lua
---local testWin = GUI:Win_Create("winID", 0, 0, 0,0, false, false, true, true)
---local returnVal=GUI:Win_IsNull(testWin)
---print("GUI:Win_IsNull(widget)-----",type(returnVal),returnVal)
---```
function GUI:Win_IsNull(widget) end

---判断对象是否不为空
---* widget 对象
---@param widget userdata
---@return boolean "true/false"
---```lua
---local testWin = GUI:Win_Create("winID", 0, 0, 0,0, false, false, true, true)
---local returnVal=GUI:Win_IsNotNull(testWin)
---print("GUI:Win_IsNotNull(widget)-----",type(returnVal),returnVal)
---```
function GUI:Win_IsNotNull(widget) end

---禁用文本特效
---* widget 对象
---* value 特效类型：<br>0：正常<br> 1：描边<br>2：阴影<br>3：发光
---@param widget userdata
---@param value integer
---```lua
---local str = "我的名字" or ""
---local Text_name = GUI:Text_Create(Parent, "Text_name", 0, 0, 16, "#ffffff", str)
---GUI:Text_enableOutline(Text_name, "#00ff00", 2)
---GUI:Text_disableEffect(Text_name, 1)
---```
function GUI:Text_disableEffect(widget, value) end

---禁用文本普通特效
---* widget 对象
---@param widget userdata
---```lua
---local str = "我的名字" or ""
---local Text_name = GUI:Text_Create(Parent, "Text_name", 0, 0, 16, "#ffffff", str)
---GUI:Text_disableNormal(Text_name)
---```
function GUI:Text_disableNormal(widget) end

---禁用文本描边特效
---* widget 对象
---@param widget userdata
---```lua
---local str = "我的名字" or ""
---local Text_name = GUI:Text_Create(Parent, "Text_name", 0, 0, 16, "#ffffff", str)
---GUI:Text_disableOutLine(Text_name)
---```
function GUI:Text_disableOutLine(widget) end

---禁用文本阴影特效
---* widget 对象
---@param widget userdata
---```lua
---local str = "我的名字" or ""
---local Text_name = GUI:Text_Create(Parent, "Text_name", 0, 0, 16, "#ffffff", str)
---GUI:Text_disableShadow(Text_name)
---```
function GUI:Text_disableShadow(widget) end

---禁用文本发光特效
---* widget 对象
---@param widget userdata
---```lua
---local str = "我的名字" or ""
---local Text_name = GUI:Text_Create(Parent, "Text_name", 0, 0, 16, "#ffffff", str)
---GUI:Text_disableGlow(Text_name)
---```
function GUI:Text_disableGlow(widget) end

---添加自定义富文本cell
---* widget 控件对象
---* elements [RichTextCombineCell] 单个元素控件对象 或 控件对象table
---@param widget userdata
---@param elements table
---```lua
-----组合使用，详见“创建自定义组合富文本”
---GUI:RichTextCombine_pushBackElements(richText, elements)
---```
function GUI:RichTextCombine_pushBackElements(widget, elements) end

---添加cell完毕格式化富文本
---* widget 控件对象
---@param widget userdata
---```lua
-----组合使用，详见“创建自定义组合富文本”
---GUI:RichTextCombine_format(richText)
---```
function GUI:RichTextCombine_format(widget) end

---添加富文本url点击触发事件
---* widget 控件对象
---* handle 触发函数 (param1: 富文本控件, param2: string 文本传递内容)
---@param widget userdata
---@param handle function
---```lua
---local str = string.format("<a href='position#%s#200#200'>TTTT</a>", SL:Get_MAP_ID())
---local richText = GUI:RichText_Create(GUI:Attach_LeftBottom(), "rr", 500, 320, str, 1000)
---GUI:RichText_setOpenUrlEvent(richText, function(sender, str)
---    SL:Print(str)
---    local slices  = string.split(str, "#")
---    local command = slices[1]
---    if command == "position" then
---        local originScale = GUI:getScale(sender)
---        GUI:setScale(sender, originScale + 0.2)
---        local function reback()
---        GUI:setScale(sender, originScale)
---    end
---    SL:scheduleOnce(sender, reback, 0.03)
---
---    -- find position
---    local mapID   = slices[2]
---    local x       = tonumber(slices[3])
---    local y       = tonumber(slices[4])
---    SL:Set_BATTLE_MOVE_BEGIN(mapID, x, y)
---end
---end)
---```
function GUI:RichText_setOpenUrlEvent(widget, handle) end

---调用GUILayout/Item.lua中的函数
---* widget 物品框对象
---* funcname GUILayout/Item.lua中的函数名字
---* ... 可变参数
---@param widget userdata
---@param funcname string
---@param ... any
---```lua
---local setData  = {}
---setData.index = 4                     -- 物品Index
---setData.look  = true                  -- 是否显示tips
---setData.bgVisible = true              -- 是否显示背景框
---setData.count = 1                     -- 物品数量
---setData.color = 225                   -- 颜色ID （0~255）
-----setData.starLv = false              -- 是否显示星级
-----setData.checkPower = true           -- 是否检查战力从而显示提升小箭头
-----setData.showModelEffect = true      -- 只显示内观特效不显示背包特效
-----setData.onlyShowSFX = true          -- 只显示道具特效其它都不显示
-----setData.noSwallow = true            -- 是否触摸吞噬
-----setData.noMouseTips = true          -- 鼠标移入不显示tips
-----setData.mouseCheckTimes = 6         -- 鼠标移入检测物品框是否可见时查找父节点层数, 默认6
-----setData.itemData = table            -- 物品数据 ( ！有真实物品数据可直接传, 避免Tips缺漏 )
---
---
---local item = GUI:ItemShow_Create(parent, "item", 100, 100, setData)
---GUI:ItemShow_OnRunFunc(item, "SetCount", 20)
---```
function GUI:ItemShow_OnRunFunc(widget, funcname, ...) end

---清空对应ID放置框的传入数据
---* widget 物品放入框控件对象
---* boxindex 放置框 唯一ID
---@param widget userdata
---@param boxindex integer
---```lua
---local itemBox=GUI:ItemBox_Create(parent, "itemBox",0, 0, img, "res/public/061302.PNG", 1,5)
---GUI:ItemBox_RemoveBoxData(itemBox, 1)
---```
function GUI:ItemBox_RemoveBoxData(widget, boxindex) end

---更新对应ID放置框的物品数据
---* widget 物品放入框控件对象
---* boxindex 放置框 唯一ID
---* itemData 填充指定的ItemData数据<br>
---@param widget userdata
---@param boxindex integer
---@param itemData table
---```lua
---local itemBox=GUI:ItemBox_Create(parent, "itemBox",0, 0, img, "res/public/061302.PNG", 1,5)
---GUI:ItemBox_RemoveBoxData(itemBox, 1)
---GUI:ItemBox_UpdateBoxData(itemBox, 1)
---```
function GUI:ItemBox_UpdateBoxData(widget, boxindex, itemData) end

---关闭输入框输入
---* widget 输入框对象
---@param widget userdata
---```lua
---local TextField_input = GUI:TextInput_Create(parent, "TextField_input", 0, 0, 30, 33, 16)
---GUI:TextInput_closeInput(TextField_input)
---```
function GUI:TextInput_closeInput(widget) end

---特效播放
---* widget 特效对象
---* act 0 待机<br>1 走<br>2 攻击<br>3 施法 <br>4 死亡<br>5 跑步
---* dir 方向
---* isLoop 是否循环播放
---* speed 播放速度
---* isSequence 倒放参数 [仅false为倒放特效 ]
---@param widget userdata
---@param act integer
---@param dir integer
---@param isLoop boolean
---@param speed integer
---@param isSequence boolean
---```lua
---local sfx = GUI:Effect_Create(parent, "sfx", 0, 0, 0, 4004, 0, 0, 3, 1)
---GUI:Effect_play(sfx, 0, 0, false, 1, false)
---```
function GUI:Effect_play(widget, act, dir, isLoop, speed, isSequence) end

---特效停止
---* widget 特效对象
---* frameIndex 第几帧
---* act 0 待机<br>1 走<br>2 攻击<br>3 施法 <br>4 死亡<br>5 跑步
---* dir 方向
---@param widget userdata
---@param frameIndex integer
---@param act integer
---@param dir integer
---```lua
---local sfx = GUI:Effect_Create(parent, "sfx", 0, 0, 0, 4004, 0, 0, 3, 1)
---GUI:Effect_play(sfx, 0, 0, false, 1, false)
---GUI:Effect_stop(sfx, 1)
---```
function GUI:Effect_stop(widget, frameIndex, act, dir) end

---特效播放完成事件
---* widget 特效对象
---* value 播放完成回调函数
---@param widget userdata
---@param value function
---```lua
---local sfx = GUI:Effect_Create(parent, "sfx", 0, 0, 0, 4004, 0, 0, 3, 1)
---GUI:Effect_addOnCompleteEvent(sfx, function()
---    --do something
---end)
---```
function GUI:Effect_addOnCompleteEvent(widget, value) end

---刷新展示QuickCell
---* widget QuickCell对象
---@param widget userdata
---```lua
----- 顺序使用 通常用于刷新单个cell内容 [可参照 GUILayout/AuctionPutList 等..]
---GUI:QuickCell_Exit(quickCell)
---GUI:QuickCell_Refresh(quickCell)
---```
function GUI:QuickCell_Refresh(widget) end

---强制退出/ 清理内容QuickCell
---* widget QuickCell对象
---@param widget userdata
---```lua
----- 顺序使用 通常用于刷新单个cell内容 [可参照 GUILayout/AuctionPutList 等..]
---GUI:QuickCell_Exit(quickCell)
---GUI:QuickCell_Refresh(quickCell)
---```
function GUI:QuickCell_Exit(widget) end

---加载UI文件
---* parent 父节点对象
---* filename 文件路径
---* callback 回调函数
---@param parent userdata
---@param filename string
---@param callback function
---```tips
---起始路径为 dev/GUIExport
---Ctrl + F9 界面编辑器导出的lua文件
---```
---```lua
---local win = GUI:Win_Create("Win_1", 0, 0, 1136, 640)
---GUI:LoadExport(win, "game_world_confirm",function ()
---    SL:Print("加载UI成功")
---end)
---```
function GUI:LoadExport(parent, filename, callback) end

---对应控件的节点坐标转换为世界坐标
---* widget 控件对象
---* x 节点坐标X
---* y 节点坐标Y
---@param widget userdata
---@param x number
---@param y number
---@return table "世界坐标"
---```lua
---local attachParent=GUI:Attach_Parent()
---local Btn = GUI:Button_Create(attachParent, "btnAnchor", 0, 0, "res/public/061302.PNG")
---local worldPos=GUI:convertToWorldSpace(Btn, 180, 300)
---print("GUI:convertToWorldSpace------",type(worldPos),worldPos)
---```
function GUI:convertToWorldSpace(widget, x, y) end

---世界坐标转换为对应控件的节点坐标
---* widget 控件对象
---* x 世界坐标X
---* y 世界坐标Y
---@param widget userdata
---@param x number
---@param y number
---@return table "对应控件的节点坐标"
---```lua
---local attachParent=GUI:Attach_Parent()
---local Btn = GUI:Button_Create(attachParent, "btnAnchor", 0, 0, "res/public/061302.PNG")
---local nodePos=GUI:convertToNodeSpace(Btn, 180, 300)
---print("GUI:convertToNodeSpace------",type(nodePos),nodePos)
---```
function GUI:convertToNodeSpace(widget, x, y) end

---加载子控件
---* widget 父控件对象
---* child 子控件对象
---@param widget userdata
---@param child table
---```lua
---local image = GUI:Image_Create(-1, "layerImage", 0, 0, Guide._path .. "dec_else_3.png")
---GUI:setAnchorPoint(image, 0.5, 0.5)
---GUI:addChild(Guide._layer, image)
---```
function GUI:addChild(widget, child) end

---移除传入控件的所有子节点
---* widget 控件对象
---@param widget userdata
---```lua
---local parent = GUI:Win_Create("winC", 0, 0, 0, 0, false, false, true, true, true, nil, nil, 1)
---local Btn = GUI:Button_Create(parent, "btnTest", 0, 0, "res/public/061302.PNG")
---GUI:removeAllChildren(Btn)
---```
function GUI:removeAllChildren(widget) end

---将传入控件从父节点上移除
---* widget 控件对象
---@param widget userdata
---```lua
---local parent = GUI:Win_Create("winC", 0, 0, 0, 0, false, false, true, true, true, nil, nil, 1)
---local Btn = GUI:Button_Create(parent, "btnTest", 0, 0, "res/public/061302.PNG")
---GUI:removeFromParent(Btn)
---```
function GUI:removeFromParent(widget) end

---通过名字删除传入控件的对应子节点
---* widget 控件对象
---* name 控件名字
---@param widget userdata
---@param name string
---```lua
---local parent = GUI:Win_Create("winC", 0, 0, 0, 0, false, false, true, true, true, nil, nil, 1)
---local Btn = GUI:Button_Create(parent, "btnTest", 0, 0, "res/public/061302.PNG")
---GUI:removeChildByName(parent, "btnTest")
---```
function GUI:removeChildByName(widget, name) end

---开启定时器绑定节点
---* widget 控件对象
---* callback 回调函数
---* delay 时间间隔
---@param widget userdata
---@param callback function
---@param delay integer
---```tips
---1.GUI:schedule 与 GUI:unSchedule 为相关接口
---```
---```lua
---local function showTime()
---        print("倒计时ing")
---    end
---    GUI:schedule(node, showTime, 1)
---```
function GUI:schedule(widget, callback, delay) end

---停止定时器绑定节点
---* widget 控件对象
---@param widget userdata
---```tips
---1.GUI:schedule 与 GUI:unSchedule 为相关接口
---```
---```lua
---GUI:unSchedule(node)
---```
function GUI:unSchedule(widget) end

---显示文本Tips
---* tips 显示文本
---* worldPos 世界坐标
---* anchorPoint 锚点
---@param tips string
---@param worldPos table
---@param anchorPoint table
---```lua
---GUI:ShowWorldTips("测试", GUI:p(400, 400), GUI:p(0, 0))
---```
function GUI:ShowWorldTips(tips, worldPos, anchorPoint) end

---屏蔽自动修复坐标为整数
---```lua
---GUI:DisableFixPosition()
---```
function GUI:DisableFixPosition() end

---关闭文本Tips
---```lua
---HideWorldTips()
---```
function GUI:HideWorldTips() end

---自适应布局
---* pNode 控件对象
---* param 布局参数<请参考上方说明>
---@param pNode table
---@param param table
---@return table "{width = width, height = height}"
---```tips
---布局参数说明
---param = {
---    dir： 1：垂直; 2: 水平; 3： 两者
---    gap:  x: 左右间距; y: 上下间距; l: 左边距; t: 上边距
---    addDir: 动画增长方式 1: 从上到下（从左到右）（多行从左上角）, 2：中间到两边（多行从右上角）, 3：从下到上（从右到左）
---    colnum: 多行列数（dir必须是3）
---    autosize: 根据内容自适应容器
---    sortfunc: 排序函数
---    interval：增长方式动画播放时间间隔, 不传值则不播放动画
---    rownums ： 每一行的数量table ; 例如：rownums = {3, 2} （第一行3个元素，第二行2个元素）
---}
---```
---```lua
---local Layout = GUI:Layout_Create(parent, "Layout", 50,50, 500.00, 200.00, false)
---GUI:Layout_setBackGroundColorType(Layout, 1)
---GUI:Layout_setBackGroundColor(Layout, "#96c8ff")
---GUI:Layout_setBackGroundColorOpacity(Layout, 140)
---
---
---local Button_1 = GUI:Button_Create(Layout, "button_1", 100.00, 0.00, "res/public/1900000660.png")
---GUI:Win_SetParam(Button_1, 1)
---GUI:Button_setTitleText(Button_1, "button_1")
---local Button_2 = GUI:Button_Create(Layout, "button_2", 200.00, 0.00, "res/public/1900000660.png")
---GUI:Win_SetParam(Button_2, 2)
---GUI:Button_setTitleText(Button_2, "button_2")
---local Button_3 = GUI:Button_Create(Layout, "button_3", 300.00, 100.00, "res/public/1900000660.png")
---GUI:Win_SetParam(Button_3, 2)
---GUI:Button_setTitleText(Button_3, "button_3")
---
---
---GUI:UserUILayout(Layout, {
---    dir=2,
---    addDir=2,
---    interval=1,
---    gap = {x=1},
---    sortfunc = function (lists)
---        table.sort(lists, function (a, b)
---            return GUI:Win_GetParam(a) > GUI:Win_GetParam(b)
---        end)
---    end
---})
---```
function GUI:UserUILayout(pNode, param) end

---打开界面
---* filename 界面文件名, 目录默认GUILayout下
---@param filename string
---```lua
---GUI:Win_Open(file)
---```
function GUI:Win_Open(filename) end

---视频播放器添加监听
---* widget 播放器对象
---* eventCB 回调函数
---@param widget userdata
---@param eventCB function
---```lua
-----eventType: 0=播放 1=暂停 2=停止(区别于暂停，此停止不可恢复播放) 3=播放完成 4=点击 5=恢复播放 6=播放错误
---GUI:VideoPlayer_addEventListener(vedioWidget, function (_,eventType)
---    print("---------------------------",eventType)
---end)
---```
function GUI:VideoPlayer_addEventListener(widget, eventCB) end

---追加骨骼动画（入队播放）
---* widget Spine 控件对象
---* trackIndex 轨道索引
---* name 动画名
---* loop 是否循环播放
---@param widget userdata
---@param trackIndex integer
---@param name string
---@param loop boolean
---@return false|nil "无效对象返回 false；有效时调用底层接口，无显式返回（nil）。"
function GUI:SpineAnim_addAnimation(widget, trackIndex, name, loop) end

---清除骨骼指定轨道动画
---* widget Spine 控件对象
---* trackIndex 轨道索引
---@param widget userdata
---@param trackIndex integer
---@return false|nil "无效对象返回 false；有效时清除成功，无显式返回（nil）。"
function GUI:SpineAnim_clearTrack(widget, trackIndex) end

---清除骨骼全部轨道动画
---* widget Spine 控件对象
---@param widget userdata
---@return false|nil "无效对象返回 false；有效时清除成功，无显式返回（nil）。"
function GUI:SpineAnim_clearTracks(widget) end

---查找骨骼动画
---* widget Spine 控件对象
---* name 动画名
---@param widget userdata
---@param name string
---@return false|table|nil "无效对象返回 false；有效时返回动画对象（未找到返回 nil）。"
function GUI:SpineAnim_findAnimation(widget, name) end

---查找骨骼动画插槽对象
---* widget Spine 控件对象
---* slotName 插槽名
---@param widget userdata
---@param slotName string
---@return false|string|nil "无效对象返回 false；有效时返回插槽对象（未找到返回 nil）。"
function GUI:SpineAnim_findSlot(widget, slotName) end

---注册骨骼动画事件回调
---* widget Spine 控件对象
---* handler 事件回调函数；入参为事件对象 {animation, loopCount, trackIndex, type, eventData}
---* eventType 事件类型(int) 参考:SLDefine.SpineAnimEventType
---@param widget userdata
---@param handler function
---@param eventType number
---```lua
--- --handler 回调参数 eventData: table值, 参考如下:
--- --{
--- --    animation: "xxanimation",   -- 动画名
--- --    loopCount: 1,               -- 循环次数
--- --    trackIndex: 0,              -- 轨道索引
--- --    type: "xxx"                 -- 事件类型 "start" "interrupt" "end" "dispose" "complete" "event"
--- --    eventData: table            -- 自定义事件数据 {name: "xx", floatValue: 0, intValue: 0, stringValue: ""}
--- --}
---
--- -- 事件类型定义
--- -- SLDefine.SpineAnimEventType = {
--- --     Start       = 0,         -- 开始播放
--- --     Interrupt   = 1,         -- 被打断
--- --     End         = 2,         -- 播放结束
--- --     Complete    = 3,         -- 播放完成
--- --     Dispose     = 4,         -- 释放
--- --     Event       = 5          -- 自定义事件
--- -- }
---
--- -- 注册事件示例
--- GUI:SpineAnim_registerSpineEventHandler(spineBoyAnim, function(eventData)
---     SL:dump(eventData, "____START")
--- end, SLDefine.SpineAnimEventType.Start)
---```
function GUI:SpineAnim_registerSpineEventHandler(widget, handler, eventType) end

---添加控件状态监听事件
---* widget 控件对象
---* func 回调函数
---@param widget userdata
---@param func function
---```tips
---eventName: 事件名
---"enter" : 控件加载
---"exit"  : 控件移除
---"enterTransitionFinish" : 控件加载完成
---"exitTransitionStart" : 控件移除开始
---"cleanup" : 控件清理
---```
---```lua
---local t = GUI:Image_Create(-1, "21", 500, 400, "res/private/npc/bg_zbhstips_01.png")
---GUI:addStateEvent(t, function(eventName)
---    SL:Print(eventName)
---end)
---GUI:addChild(GUI:Attach_LeftBottom(), t)
---SL:ScheduleOnce(function()
---    GUI:removeChildByID(GUI:Attach_LeftBottom(), "21")
---end, 3)
---```
function GUI:addStateEvent(widget, func) end

-- [Source: 窗口^获取.lua]

---获取界面控件
---* parent 父控件对象
---* ID 控件ID
---@param parent? userdata
---@param ID string
---```lua
---local _parent = GUI:Win_Create("QSQ_challengeboss", 0, 0, 0, 0, false, false, true, false)
---local LV_type = GUI:ListView_Create(_parent, "LV_type", 905, 65, 40, 450, 1)
---if LV_type then
---    local template = GUI:Layout_Create(LV_type, "template", 0, 0, 40, 100)
---    if template then
---        GUI:Button_Create(template, "btn_switch", 0,0, "res/01/010022.png")
---    end
---end
---end
---方法:一 根据父窗口对象与下级子控件ID获取对象
---local LV_type = GUI:GetWindow(_parent,"LV_type")
---
---方法:二 根据父窗口对象与多层子控件ID获取对象
---local btn_switch = GUI:GetWindow(_parent,"LV_type/template/btn_switch")
---
---方法:三 根据当前“桌面”打开的窗口控件ID获取对象
---local _parent = GUI:GetWindow(nil,"QSQ_challengeboss")
---local LV_type = GUI:GetWindow(nil,"QSQ_challengeboss/LV_type")
---```
function GUI:GetWindow(parent, ID) end

---获取控件自定义参数
---* widget 界面对象
---@param widget userdata
---```lua
---local index = GUI:Win_GetParam(widget)
---```
function GUI:Win_GetParam(widget) end

---获取按钮文字
---* widget 按钮对象
---@param widget userdata
---@return string "按钮文字"
---```lua
---local Btn = GUI:Button_Create(parent, "BtnOk", 0, 0, "res/public/061101.JPG")
---GUI:setContentSize(Btn, 100, 100)
---GUI:Button_setTitleText(Btn, "btnTxt")
---local returnVal=GUI:Button_getTitleText(Btn)
---print("GUI:Button_getTitleText(widget)-----",type(returnVal),returnVal)
---```
function GUI:Button_getTitleText(widget) end

---获取文本
---* widget 对象
---@param widget userdata
---@return string "文本内容"
---```lua
---local testWin = GUI:Win_Create("winID", 0, 0, 0,0, false, false, true, true)
---local pBg = GUI:Image_Create(testWin, "pBg", 100, 100, "res/public/061201.JPG")
---GUI:setContentSize(pBg, 400, 200)
---local str = "我的名字" or ""
---local Text_name = GUI:Text_Create(pBg, "Text_name", 0, 0, 16, "#ffffff", str)
---local returnVal=GUI:Text_getString(Text_name)
---print("GUI:Text_getString(widget)-----",type(returnVal),returnVal)
---```
function GUI:Text_getString(widget) end

---获取艺术字文本
---* widget 艺术字对象
---@param widget userdata
---@return string "艺术字文本内容"
---```lua
---local artPath = "res/public/TextAtlasPicture.png"
---local Text_name = GUI:TextAtlas_Create(testWin, "Text_name", 200, 200, "2734816", artPath, 19, 25, "0")
---local returnVal=GUI:TextAtlas_getString(Text_name)
---print("GUI:TextAtlas_getString(widget)-----",type(returnVal),returnVal)
---```
function GUI:TextAtlas_getString(widget) end

---获取滚动文本内容
---* widget 滚动文本对象
---@param widget userdata
---@return string "滚动文本内容"
---```lua
---local scrollTxt=GUI:ScrollText_Create(GUI:Attach_LeftBottom(), "scrollText", 300, 300, 600, 16, "#000000", "这是一串神奇的文本内容",10)
---GUI:ScrollText_setString(scrollTxt, "不神奇了")
---local returnVal=GUI:ScrollText_getString(scrollTxt)
---print("GUI:ScrollText_getString(widget)--------",type(returnVal),returnVal)
---```
function GUI:ScrollText_getString(widget) end

---获取对应ID放置框的物品数据
---* widget 物品放入框控件对象
---* boxindex 放置框 唯一ID
---@param widget userdata
---@param boxindex integer
---@return table "放置框的物品数据"
---```lua
---GUI:ItemBox_GetItemData(box, 10)
---```
function GUI:ItemBox_GetItemData(widget, boxindex) end

---获取复选框是否选中
---* widget 复选框对象
---@param widget userdata
---@return boolean "true(选中)/false(未选中)"
---```lua
---local nimg = "res/public/061301.JPG"
---local pimg = "res/public/061101.JPG"
---local checkBox = GUI:CheckBox_Create(parent, "checkBox", 0, 0, nimg, pimg)
---local returnVal=GUI:CheckBox_isSelected(checkBox)
---print("GUI:CheckBox_isSelected(widget)--------",type(returnVal),returnVal)
---```
function GUI:CheckBox_isSelected(widget) end

---获取输入框文本
---* widget 输入框对象
---@param widget userdata
---@return string "输入框文本"
---```lua
---local TextField_input = GUI:TextInput_Create(parent, "TextField_input", 0, 0, 30, 33, 16)
---GUI:TextInput_setString(TextField_input,"此为输入框文本")
---local returnVal=GUI:TextInput_getString(TextField_input)
---print("GUI:TextInput_getString(widget)--------",type(returnVal),returnVal)
---```
function GUI:TextInput_getString(widget) end

---获得滚动条进度
---* widget 滚动条对象
---@param widget userdata
---@return number "滚动条进度"
---```lua
---local barimg = "res/private/new_setting/bg_progress.png"
---local pbarimg = "res/private/new_setting/bg_progress2.png"
---local nimg = "res/private/new_setting/icon_xdtzy_17.png"
---local Slider_progress = GUI:Slider_Create(parent, "Slider_progress", 0, 0, barimg, pbarimg, nimg)
---GUI:Slider_setPercent(Slider_progress, 70)
---local returnVal=GUI:Slider_getPercent(Slider_progress)
---print("GUI:Slider_getPercent(widget)--------",type(returnVal),returnVal)
---```
function GUI:Slider_getPercent(widget) end

---获取圆形进度条百分比
---* widget 控件对象
---@param widget userdata
---@return number "圆形进度条百分比"
---```lua
---local ui_img ="res/public/061101.JPG"
---local heroProgress = GUI:ProgressTimer_Create(parent, "heroProgress", 100, 100, ui_img)
---GUI:ProgressTimer_setPercentage(heroProgress, 60)
---local returnVal=GUI:ProgressTimer_getPercentage(heroProgress)
---print("GUI:ProgressTimer_getPercentage(widget)--------",type(returnVal),returnVal)
---```
function GUI:ProgressTimer_getPercentage(widget) end

---获取进度条进度
---* widget 进度条对象
---@param widget userdata
---@return number "进度条进度"
---```lua
---local imgBar ="res/public/061201.JPG"
---local loadingBar = GUI:LoadingBar_Create(parent, "loadingBar", 0, 0, imgBar, 0)
---GUI:LoadingBar_setPercent(loadingBar, 70)
---local returnVal=GUI:LoadingBar_getPercent(loadingBar)
---print("GUI:LoadingBar_getPercent(widget)--------",type(returnVal),returnVal)
---```
function GUI:LoadingBar_getPercent(widget) end

---获取进度条颜色
---* widget 进度条对象
---@param widget userdata
---@return string "进度条颜色值"
---```lua
---local imgBar ="res/public/061201.JPG"
---local loadingBar = GUI:LoadingBar_Create(parent, "loadingBar", 0, 0, imgBar, 0)
---GUI:LoadingBar_setColor(loadingBar, "#00ff00")
---local returnVal=GUI:LoadingBar_getColor(loadingBar)
---print("GUI:LoadingBar_getColor(widget)--------",type(returnVal),returnVal)
---```
function GUI:LoadingBar_getColor(widget) end

---获取层背景图片文件路径
---* widget 图片控件对象
---@param widget userdata
---@return string "背景图片路径"
---```lua
---local imgPath = "res/public/1900000600.png"
---local Image = GUI:Image_Create(GUI:Attach_Center(), "Image", 200, 200, imgPath)
---local returnVal=GUI:Image_getTextureFile(Image)
---print("GUI:Image_getTextureFile----------",type(returnVal),returnVal)
---```
function GUI:Image_getTextureFile(widget) end

---获取列表容器间隔
---* widget 容器对象
---@param widget userdata
---@return number "间隔距离(像素)"
---```lua
---local listView = GUI:ListView_Create(GUI:Attach_Bottom(),"listView", 200, 200, 300, 400, 2)
---GUI:ListView_setItemsMargin(listView, 2)
---local returnVal=GUI:ListView_getItemsMargin(listView)
---print("GUI:ListView_getItemsMargin----------",type(returnVal),returnVal)
---```
function GUI:ListView_getItemsMargin(widget) end

---获取列表容器最顶部可见范围子节点
---* widget 容器对象
---@param widget userdata
---@return userdata "顶部范围子节点对象"
---```lua
---local listView = GUI:ListView_Create(GUI:Attach_Bottom(),"listView", 200, 200, 300, 400, 2)
---local testBtn = GUI:Button_Create(listView, "testBtn", 0, 0, "res/public/061302.PNG")
---GUI:ListView_setBackGroundColorType(listView, 2)
---GUI:ListView_setBackGroundColor(listView, {"#FF0000", "#FFFFFF"})
---GUI:ListView_pushBackCustomItem(listView, testBtn)
---local returnVal=GUI:ListView_getTopmostItemInCurrentView(listView)
---print("GUI:ListView_getTopmostItemInCurrentView----------",type(returnVal),returnVal)
---```
function GUI:ListView_getTopmostItemInCurrentView(widget) end

---获取列表容器最底部部可见范围子节点
---* widget 容器对象
---@param widget userdata
---@return userdata "底部范围子节点对象"
---```lua
---local listView = GUI:ListView_Create(GUI:Attach_Bottom(),"listView", 200, 200, 300, 400, 2)
---local testBtn = GUI:Button_Create(listView, "testBtn", 0, 0, "res/public/061302.PNG")
---GUI:ListView_setBackGroundColorType(listView, 2)
---GUI:ListView_setBackGroundColor(listView, {"#FF0000", "#FFFFFF"})
---GUI:ListView_pushBackCustomItem(listView, testBtn)
---local returnVal=GUI:ListView_getBottommostItemInCurrentView(listView)
---print("GUI:ListView_getBottommostItemInCurrentView----------",type(returnVal),returnVal)
---```
function GUI:ListView_getBottommostItemInCurrentView(widget) end

---获取子节点序列号
---* widget 容器对象
---* value 子节点对象
---@param widget userdata
---@param value table
---@return number "子节点序列号"
---```lua
---local listView = GUI:ListView_Create(GUI:Attach_Bottom(),"listView", 200, 200, 300, 400, 2)
---local testBtn = GUI:Button_Create(listView, "testBtn", 0, 0, "res/public/061302.PNG")
---GUI:ListView_insertCustomItem(listView, testBtn,0)
---childNode=GUI:ListView_getBottommostItemInCurrentView(listView)
---local returnVal=GUI:ListView_getItemIndex(listView, childNode)
---print("GUI:ListView_getItemIndex----------",type(returnVal),returnVal)
---```
function GUI:ListView_getItemIndex(widget, value) end

---通过子节点序列号获取子节点对象
---* widget 容器对象
---* value 子节点序列号
---@param widget userdata
---@param value integer
---@return userdata "子控件对象"
---```lua
---local listView = GUI:ListView_Create(GUI:Attach_Bottom(),"listView", 200, 200, 300, 400, 2)
---local testBtn = GUI:Button_Create(listView, "testBtn", 0, 0, "res/public/061302.PNG")
---GUI:ListView_insertCustomItem(listView, testBtn,0)
---local returnVal=GUI:ListView_getItemByIndex(listView, 0)
---print("GUI:ListView_getItemIndex----------",type(returnVal),returnVal)
---```
function GUI:ListView_getItemByIndex(widget, value) end

---获取列表容器所有子节点对象
---* widget 容器对象
---@param widget userdata
---@return table "所有子节点对象"
---```lua
---local listView = GUI:ListView_Create(GUI:Attach_Bottom(),"listView", 200, 200, 300, 400, 2)
---local testBtn = GUI:Button_Create(listView, "testBtn", 0, 0, "res/public/061302.PNG")
---GUI:ListView_insertCustomItem(listView, testBtn,0)
---local returnVal=GUI:ListView_getItems(listView)
---print("GUI:ListView_getItems----------",type(returnVal),returnVal)
---```
function GUI:ListView_getItems(widget) end

---获取列表容器所有子节点数量
---* widget 容器对象
---@param widget userdata
---@return number "子节点总数量"
---```lua
---local listView = GUI:ListView_Create(GUI:Attach_Bottom(),"listView", 200, 200, 300, 400, 2)
---local testBtn = GUI:Button_Create(listView, "testBtn", 0, 0, "res/public/061302.PNG")
---GUI:ListView_insertCustomItem(listView, testBtn,0)
---local returnVal=GUI:ListView_getItemCount(listView)
---print("GUI:ListView_getItemCount----------",type(returnVal),returnVal)
---```
function GUI:ListView_getItemCount(widget) end

---获取列表容器滚动范围大小
---* widget 容器对象
---@param widget userdata
---@return table "列表容器滚动范围大小"
---```lua
---local listView = GUI:ListView_Create(GUI:Attach_Bottom(),"listView", 200, 200, 300, 400, 2)
---local returnVal=GUI:ListView_getInnerContainerSize(listView)
---print("GUI:ListView_getInnerContainerSize----------",type(returnVal),returnVal)
---```
function GUI:ListView_getInnerContainerSize(widget) end

---获取列表容器内部滚动区域坐标
---* widget 容器对象
---@param widget userdata
---@return table "列表容器内部滚动区域坐标"
---```lua
---local listView = GUI:ListView_Create(GUI:Attach_Bottom(),"listView", 200, 200, 300, 400, 2)
---local returnVal=GUI:ListView_getInnerContainerPosition(listView)
---print("GUI:ListView_getInnerContainerPosition----------",type(returnVal),returnVal)
---```
function GUI:ListView_getInnerContainerPosition(widget) end

---获取滚动容器滚动范围大小
---* widget 容器对象
---@param widget userdata
---@return table "滚动容器滚动范围大小"
---```lua
---local scrollView = GUI:ScrollView_Create(GUI:Attach_Bottom(), "scrollView", 200, 200, 300, 500, 1)
---local returnVal=GUI:ScrollView_getInnerContainerSize(scrollView)
---print("GUI:ScrollView_getInnerContainerSize----------",type(returnVal),returnVal)
---```
function GUI:ScrollView_getInnerContainerSize(widget) end

---获取容器内部滚动区域坐标
---* widget 容器对象
---@param widget userdata
---@return table "容器内部滚动区域坐标"
---```lua
---local scrollView = GUI:ScrollView_Create(GUI:Attach_Bottom(), "scrollView", 200, 200, 300, 500, 1)
---local returnVal=GUI:ScrollView_getInnerContainerPosition(scrollView)
---print("GUI:ScrollView_getInnerContainerPosition----------",type(returnVal),returnVal)
---```
function GUI:ScrollView_getInnerContainerPosition(widget) end

---获取当前子页面序列号
---* widget 容器对象
---@param widget userdata
---@return number "子页面序列号"
---```lua
---local pageView = GUI:PageView_Create(parent, "pageView", 200,0, 300, 500, 1)
---GUI:PageView_setBackGroundColorType(pageView, 1)
---GUI:PageView_setBackGroundColor(pageView,"#00ff00")
---GUI:PageView_setBackGroundColorOpacity(pageView, 150)
---local child=GUI:Image_Create(parent,"childID",200,0,"res/public/061302.PNG")
---local child1=GUI:Image_Create(parent,"child1ID",200,0,"res/public/061303.PNG")
---GUI:PageView_addPage(pageView,child)
---GUI:PageView_addPage(pageView,child1)
---local index=GUI:PageView_getCurrentPageIndex(pageView)
---print("GUI:PageView_getCurrentPageIndex----------",type(index),index)
---```
function GUI:PageView_getCurrentPageIndex(widget) end

---获取翻页容器子页面
---* widget 容器对象
---@param widget userdata
---@return table "子页面对象"
---```lua
---local pageView = GUI:PageView_Create(parent, "pageView", 200,0, 300, 500, 1)
---GUI:PageView_setBackGroundColorType(pageView, 1)
---GUI:PageView_setBackGroundColor(pageView,"#00ff00")
---GUI:PageView_setBackGroundColorOpacity(pageView, 150)
---local child=GUI:Image_Create(parent,"childID",200,0,"res/public/061302.PNG")
---local child1=GUI:Image_Create(parent,"child1ID",200,0,"res/public/061303.PNG")
---GUI:PageView_addPage(pageView,child)
---GUI:PageView_addPage(pageView,child1)
---local items=GUI:PageView_getItems(pageView)
---print("GUI:PageView_getItems----------",type(items),items)
---```
function GUI:PageView_getItems(widget) end

---获取翻页容器子页面数量
---* widget 容器对象
---@param widget userdata
---@return number "子页面数量"
---```lua
---local pageView = GUI:PageView_Create(parent, "pageView", 200,0, 300, 500, 1)
---GUI:PageView_setBackGroundColorType(pageView, 1)
---GUI:PageView_setBackGroundColor(pageView,"#00ff00")
---GUI:PageView_setBackGroundColorOpacity(pageView, 150)
---local child=GUI:Image_Create(parent,"childID",200,0,"res/public/061302.PNG")
---local child1=GUI:Image_Create(parent,"child1ID",200,0,"res/public/061303.PNG")
---GUI:PageView_addPage(pageView,child)
---GUI:PageView_addPage(pageView,child1)
---local num=GUI:PageView_getItemCount(pageView)
---print("GUI:PageView_getItemCount----------",type(num),num)
---```
function GUI:PageView_getItemCount(widget) end

---获取列表容器内部区域偏移位置
---* widget tableView对象
---@param widget userdata
---```lua
---local tableView = GUI:TableView_Create(wnd, "TABLEVIEW", 200, 100, 600, 400, 1, 600, 40, 200)
---GUI:TableView_setContentOffset(tableView, 3, 3)
---GUI:TableView_getContentOffset(tableView)
---```
function GUI:TableView_getContentOffset(widget) end

---获取容器cell的下标/序列号
---* cell tableViewCell对象
---@param cell table
---@return number "cell下标"
---```lua
---local winWidth = 900
---local winHeight = 600
---local wnd = GUI:Win_Create("Win_1", 0, 0, winWidth, winHeight)
---
---local tableView = GUI:TableView_Create(wnd, "TABLEVIEW", 200, 100, 600, 400, 1, 600, 40, 200)
---GUI:TableView_setBackGroundColor(tableView, "#FFFFFF")
---GUI:TableView_setDirection(tableView, 2)
----- 设置cell创建方法
---GUI:TableView_setCellCreateEvent(tableView, function(parent, idx, ID)
---    if ID == "TABLEVIEW" then
---        local panel = GUI:Layout_Create(parent, string.format("layout_%s", idx), 0, 0, 600, 40)
---        local text = GUI:Text_Create(panel, "TEXT", 0, 20, 18, "#00FF00", "IDX----------------"..idx)
---        GUI:setAnchorPoint(text, 0, 0.5)
---    end
---end)
---local function touchCellFunc(tv, cell)
---local idx = GUI:TableViewCell_getIdx(cell)
---local panel = GUI:getChildByID(cell, string.format("layout_%s", idx))
---GUI:Layout_setBackGroundColorType(panel, 1)
---GUI:Layout_setBackGroundColor(panel, "#00EEAA")
---if idx == 15 then
---    GUI:TableView_scrollToCell(tv, 18)
---end
---end
----- 添加cell点击事件
---GUI:TableView_addOnTouchedCellEvent( tableView, touchCellFunc )
---SL:ScheduleOnce(function ()
---    GUI:TableView_scrollToCell(tableView, 6)
---end, 1/60)
---GUI:TableView_reloadData(tableView)
---```
function GUI:TableViewCell_getIdx(cell) end

---获取对应下标item添加的子节点
---* widget 旋转容器对象
---* index 对应下标
---@param widget userdata
---@param index integer
---@return table "子节点"
---```lua
---local param = {
---    [1] = {scale = 0.4, img = "res/public/word_fubentg_1.png"},
---    [2] = {scale = 0.6, img = "res/public/word_fubentg_2.png"},
---    [3] = {scale = 0.8, img = "res/public/word_fubentg_3.png"},
---    [4] = {scale = 1.0, img = "res/public/word_fubentg_4.png"},
---    [5] = {scale = 0.8, img = "res/public/word_fubentg_5.png"},
---    [6] = {scale = 0.6, img = "res/public/word_fubentg_6.png"},
---    [7] = {scale = 0.4, img = "res/public/word_fubentg_7.png"},
---}
---local view = GUI:RotateView_Create(GUI:Attach_LeftBottom(), "rotateView_1", 500, 320, 1000, 500, 100, param)
---local Btn = GUI:Button_Create(GUI:Attach_Bottom(), "btnTest", 0, 0, "res/public/061302.PNG")
---GUI:RotateView_addChild(view, Btn, 1)
---local child=GUI:RotateView_getChildByIndex(view, 1)
---```
function GUI:RotateView_getChildByIndex(widget, index) end

---获取对应下标item
---* widget 旋转容器对象
---* index 对应下标
---@param widget userdata
---@param index integer
---@return userdata "对应下标item"
---```lua
---local param = {
---    [1] = {scale = 0.4, img = "res/public/word_fubentg_1.png"},
---    [2] = {scale = 0.6, img = "res/public/word_fubentg_2.png"},
---    [3] = {scale = 0.8, img = "res/public/word_fubentg_3.png"},
---    [4] = {scale = 1.0, img = "res/public/word_fubentg_4.png"},
---    [5] = {scale = 0.8, img = "res/public/word_fubentg_5.png"},
---    [6] = {scale = 0.6, img = "res/public/word_fubentg_6.png"},
---    [7] = {scale = 0.4, img = "res/public/word_fubentg_7.png"},
---}
---local view = GUI:RotateView_Create(GUI:Attach_LeftBottom(), "rotateView_1", 500, 320, 1000, 500, 100, param)
---local item = GUI:RotateView_getItemByIndex(view, 3)
---local itemSize = GUI:getContentSize(item)
---local layout = GUI:Layout_Create(item, "clickLayout", 0, 0, itemSize.width, itemSize.height)
---GUI:setTouchEnabled(layout, true)
---GUI:setSwallowTouches(layout, false)
---GUI:addOnClickEvent(layout, function()
---    SL:Print("Click item index 3 !")
---    GUI:removeFromParent(view)
---end)
---```
function GUI:RotateView_getItemByIndex(widget, index) end

---获取父节点的快捷子控件组
---* parent 父节点
---@param parent userdata
---@return table "[key 为控件名] 父节点的快捷子控件组"
---```lua
---local ui = GUI:ui_delegate(parent)
---if ui.Text_attName then
---    GUI:Text_setString(ui.Text_attName, "------")
---end
---```
function GUI:ui_delegate(parent) end

---获取主界面左上挂接点
---@return userdata "主界面左上挂接点"
---```lua
---local attachPoint=GUI:Attach_LeftTop()
---```
function GUI:Attach_LeftTop() end

---获取主界面右上挂接点
---@return userdata "主界面右上挂接点"
---```lua
---local attachPoint=GUI:Attach_RightTop()
---```
function GUI:Attach_RightTop() end

---获取主界面左下挂接点
---@return userdata "主界面左下挂接点"
---```lua
---local attachPoint=GUI:Attach_LeftBottom()
---```
function GUI:Attach_LeftBottom() end

---获取主界面右下挂接点
---@return userdata "主界面右下挂接点"
---```lua
---local attachPoint=GUI:Attach_RightBottom()
---```
function GUI:Attach_RightBottom() end

---获取最上层UI挂接点
---@return userdata "最上层UI挂接点"
---```lua
---local attachPoint=GUI:Attach_UITop()
---```
function GUI:Attach_UITop() end

---获取上层场景挂接点
---@return userdata "上层场景挂接点"
---```lua
---local attachPoint=GUI:Attach_SceneF()
---```
function GUI:Attach_SceneF() end

---获取下层场景挂接点
---@return userdata "下层场景挂接点"
---```lua
---local attachPoint=GUI:Attach_SceneB()
---```
function GUI:Attach_SceneB() end

---获取主界面最底层左上挂接点
---@return userdata "主界面最底层左上挂接点"
---```lua
---local attachPoint=GUI:Attach_LeftTop_B()
---```
function GUI:Attach_LeftTop_B() end

---获取主界面最底层右上挂接点
---@return userdata "主界面最底层右上挂接点"
---```lua
---local attachPoint=GUI:Attach_RightTop_B()
---```
function GUI:Attach_RightTop_B() end

---获取主界面最底层左下挂接点
---@return userdata "主界面最底层左下挂接点"
---```lua
---local attachPoint=GUI:Attach_LeftBottom_B()
---```
function GUI:Attach_LeftBottom_B() end

---获取主界面最底层右下挂接点
---@return userdata "主界面最底层右下挂接点"
---```lua
---local attachPoint=GUI:Attach_RightBottom_B()
---```
function GUI:Attach_RightBottom_B() end

---获取主界面最顶层左上挂接点
---@return userdata "主界面最顶层左上挂接点"
---```lua
---local attachPoint=GUI:Attach_LeftTop_T()
---```
function GUI:Attach_LeftTop_T() end

---获取主界面最顶层右上挂接点
---@return userdata "主界面最顶层右上挂接点"
---```lua
---local attachPoint=GUI:Attach_RightTop_T()
---```
function GUI:Attach_RightTop_T() end

---获取主界面最顶层左下挂接点
---@return userdata "主界面最顶层左下挂接点"
---```lua
---local attachPoint=GUI:Attach_LeftBottom_T()
---```
function GUI:Attach_LeftBottom_T() end

---获取主界面最顶层右下挂接点
---@return userdata "主界面最顶层右下挂接点"
---```lua
---local attachPoint=GUI:Attach_RightBottom_T()
---```
function GUI:Attach_RightBottom_T() end

---获取自带父节点 [挂接点ID: 101-111]
---* ID 挂接点ID
---@param ID number
---@return userdata "自带父节点"
---```lua
---local attachPoint=GUI:Win_FindParent(105)
---```
function GUI:Win_FindParent(ID) end

---获取坐标
---* widget 控件对象
---@param widget userdata
---@return table "控件坐标"
---```lua
---local pos = GUI:getPosition(widget)
---SL:Print("x",pos.x)
---SL:Print("y",pos.y)
---```
function GUI:getPosition(widget) end

---获取横坐标
---* widget 控件对象
---@param widget userdata
---@return number "横坐标"
---```lua
---local Btn = GUI:Button_Create(parent, "BtnOk", 0, 0, "res/public/061302.PNG")
---GUI:setAnchorPoint(Btn,0.5,0.5)
---GUI:setPosition(Btn,100,100)
---local posx=GUI:getPositionX(Btn)
---print("GUI:getPositionX------",type(posx),posx)
---```
function GUI:getPositionX(widget) end

---获取纵坐标
---* widget 控件对象
---@param widget userdata
---@return number "纵坐标"
---```lua
---local Btn = GUI:Button_Create(parent, "BtnOk", 0, 0, "res/public/061302.PNG")
---GUI:setAnchorPoint(Btn,0.5,0.5)
---GUI:setPosition(Btn,100,100)
---local posy=GUI:getPositionY(btn_up)
---print("GUI:getPositionY------",type(posy),posy)
---```
function GUI:getPositionY(widget) end

---获取控件锚点
---* widget 控件对象
---@param widget userdata
---@return table "控件锚点"
---```lua
---local Btn = GUI:Button_Create(attachParent, "btnAnchor", 0, 0, "res/public/061302.PNG")
---local anchor=GUI:getAnchorPoint(Btn)
---print("GUI:getAnchorPoint------",type(anchor),anchor)
---```
function GUI:getAnchorPoint(widget) end

---获取控件尺寸大小(纹理大小 不考虑缩放)
---* widget 控件对象
---@param widget userdata
---@return table "{height = height, width = width}"
---```lua
---local post = GUI:getContentSize(widget)
---```
function GUI:getContentSize(widget) end

---获取控件尺寸大小(考虑缩放的真实大小)
---* widget 控件对象
---@param widget userdata
---@return table "{height = height, width = width}"
---```lua
---local post = GUI:getBoundingBox(widget)
---```
function GUI:getBoundingBox(widget) end

---获取控件标签
---* widget 图片对象
---@param widget userdata
---@return number "标签"
---```lua
---local Btn = GUI:Button_Create(attachParent, "btnAnchor", 0, 0, "res/public/061302.PNG")
---GUI:setTag(Btn,15)
---local tagNum=GUI:getTag(Btn)
---print("GUI:getTag------",type(tagNum),tagNum)
---```
function GUI:getTag(widget) end

---获取控件旋转角度
---* widget 控件对象
---@param widget userdata
---@return number "控件旋转角度"
---```lua
---local attachParent=GUI:Attach_Parent()
---local Btn = GUI:Button_Create(attachParent, "btnAnchor", 0, 0, "res/public/061302.PNG")
---GUI:setRotation(Btn,150)
---local rotation=GUI:getRotation(Btn)
---print("GUI:getRotation------",type(rotation),rotation)
---```
function GUI:getRotation(widget) end

---获取控件是否显示状态
---* widget 控件对象
---@param widget userdata
---@return boolean "控件是否显示 true/false"
---```lua
---local attachParent=GUI:Attach_Parent()
---local Btn = GUI:Button_Create(attachParent, "btnAnchor", 0, 0, "res/public/061302.PNG")
---local visible=GUI:getVisible(Btn)
---print("GUI:getVisible------",type(visible),visible)
---```
function GUI:getVisible(widget) end

---获取控件Y轴方向缩放比例
---* widget 控件对象
---@param widget userdata
---@return number "控件Y轴方向缩放比例"
---```lua
---local attachParent=GUI:Attach_Parent()
---local Btn = GUI:Button_Create(attachParent, "btnAnchor", 0, 0, "res/public/061302.PNG")
---GUI:setScaleY(Btn, 1.5)
---local scaleY=GUI:getScaleY(Btn)
---print("GUI:getScaleY------",type(scaleY),scaleY)
---```
function GUI:getScaleY(widget) end

---获取控件X轴方向缩放比例
---* widget 控件对象
---@param widget userdata
---@return number "控件X轴方向缩放比例"
---```lua
---local attachParent=GUI:Attach_Parent()
---local Btn = GUI:Button_Create(attachParent, "btnAnchor", 0, 0, "res/public/061302.PNG")
---GUI:setScaleX(Btn, 1.5)
---local scaleX=GUI:getScaleX(Btn)
---print("GUI:getScaleX------",type(scaleX),scaleX)
---```
function GUI:getScaleX(widget) end

---获取是否水平翻转
---* widget 控件对象
---@param widget userdata
---@return boolean "是否水平翻转"
---```lua
---local attachParent=GUI:Attach_Parent()
---local Btn = GUI:Button_Create(attachParent, "btnAnchor", 0, 0, "res/public/061302.PNG")
---GUI:setFlippedX(Btn, true)
---local Flipped=GUI:getFlippedX(Btn)
---print("GUI:getFlippedX------",type(Flipped),Flipped)
---```
function GUI:getFlippedX(widget) end

---获取是否垂直翻转
---* widget 控件对象
---@param widget userdata
---@return boolean "是否垂直翻转"
---```lua
---local attachParent=GUI:Attach_Parent()
---local Btn = GUI:Button_Create(attachParent, "btnAnchor", 0, 0, "res/public/061302.PNG")
---GUI:setFlippedY(Btn, true)
---local Flipped=GUI:getFlippedY(Btn)
---print("GUI:getFlippedY------",type(Flipped),Flipped)
---```
function GUI:getFlippedY(widget) end

---获得控件世界坐标
---* widget 控件对象
---@param widget userdata
---@return table "控件世界坐标"
---```lua
---local Btn = GUI:Button_Create(attachParent, "btnAnchor", 100, 100, "res/public/061302.PNG")
---local worldPos=GUI:getWorldPosition(Btn)
---```
function GUI:getWorldPosition(widget) end

---获取控件是否可以触摸
---* widget 控件对象
---@param widget userdata
---@return boolean "是否可触摸 true/false"
---```lua
---local attachParent=GUI:Attach_Parent()
---local Btn = GUI:Button_Create(attachParent, "btnAnchor", 0, 0, "res/public/061302.PNG")
---GUI:setTouchEnabled(Btn,false)
---local touchEnabled=GUI:getTouchEnabled(Btn)
---print("GUI:getTouchEnabled------",type(touchEnabled),touchEnabled)
---```
function GUI:getTouchEnabled(widget) end

---获取父节点
---* widget 子控件对象
---@param widget userdata
---@return table "父节点"
---```lua
---local parent = GUI:Win_Create("winC", 0, 0, 0, 0, false, false, true, true, true, nil, nil, 1)
---local Btn = GUI:Button_Create(parent, "btnTest", 0, 0, "res/public/061302.PNG")
---local getParent=GUI:getParent(Btn)
---print("GUI:getParent------",type(getParent),getParent)
---```
function GUI:getParent(widget) end

---获取控件所有子节点
---* widget 父控件对象
---@param widget userdata
---@return table "控件所有子节点"
---```lua
---local parent = GUI:Win_Create("winC", 0, 0, 0, 0, false, false, true, true, true, nil, nil, 1)
---local Btn = GUI:Button_Create(parent, "btnTest", 0, 0, "res/public/061302.PNG")
---local childs=GUI:getChildren(parent)
---print("GUI:getChildren------",type(childs),childs)
---```
function GUI:getChildren(widget) end

---获取控件名字
---* widget 控件对象
---@param widget userdata
---@return string "控件名字"
---```lua
---local parent = GUI:Win_Create("winC", 0, 0, 0, 0, false, false, true, true, true, nil, nil, 1)
---local Btn = GUI:Button_Create(parent, "btnTest", 0, 0, "res/public/061302.PNG")
---local name=GUI:getName(Btn)
---print("GUI:getName------",type(name),name)
---```
function GUI:getName(widget) end

---通过控件名字获取子节点
---* widget 父控件对象
---* name 控件名字
---@param widget userdata
---@param name string
---@return table "子节点"
---```lua
---local parent = GUI:Win_Create("winC", 0, 0, 0, 0, false, false, true, true, true, nil, nil, 1)
---local Btn = GUI:Button_Create(parent, "btnTest", 0, 0, "res/public/061302.PNG")
---local child=GUI:getChildByName(parent, "btnTest")
---print("GUI:getChildByName------",type(child),child)
---```
function GUI:getChildByName(widget, name) end

---通过控件标记获取子节点
---* widget 父控件对象
---* tag 控件标记
---@param widget userdata
---@param tag integer
---@return table "子节点"
---```lua
---local parent = GUI:Win_Create("winC", 0, 0, 0, 0, false, false, true, true, true, nil, nil, 1)
---local Btn = GUI:Button_Create(parent, "btnTest", 0, 0, "res/public/061302.PNG")
---GUI:setTag(Btn,10)
---local child=GUI:getChildByTag(parent, 10)
---print("GUI:getChildByTag------",type(child),child)
---```
function GUI:getChildByTag(widget, tag) end

---获取控件触摸开始时位置
---* widget 控件对象
---@param widget userdata
---@return table "触摸开始时位置{x = x, y = y}"
---```lua
---local beginPos = GUI:getTouchBeganPosition(sender)
---print("GUI:getTouchBeganPosition------",type(beginPos),beginPos)
---```
function GUI:getTouchBeganPosition(widget) end

---获取控件触摸移动时位置
---* widget 控件对象
---@param widget userdata
---@return table "控件触摸移动时位置{x = x, y = y}"
---```lua
---local movePos = GUI:getTouchMovePosition(sender)
---print("GUI:getTouchMovePosition------",type(movePos),movePos)
---```
function GUI:getTouchMovePosition(widget) end

---获取控件触摸结束时位置
---* widget 控件对象
---@param widget userdata
---@return table "控件触摸结束时位置{x = x, y = y}"
---```lua
---local endPos = GUI:getTouchEndPosition(sender)
---print("GUI:getTouchEndPosition------",type(endPos),endPos)
---```
function GUI:getTouchEndPosition(widget) end

---获取控件是否触摸吞噬
---* widget 控件对象
---@param widget userdata
---@return boolean "是否触摸吞噬 true/false"
---```lua
---local Btn = GUI:Button_Create(parent, "btnTest", 0, 0, "res/public/061302.PNG")
---local isSwallow=GUI:getSwallowTouches(Btn)
---print("GUI:getSwallowTouches------",type(isSwallow),isSwallow)
---```
function GUI:getSwallowTouches(widget) end

---检查触摸位置是否被父节点裁剪
---* widget 控件对象
---* position 世界坐标
---@param widget userdata
---@param position table
---@return boolean "触摸位置是否被父节点裁剪 true/false"
---```lua
---local isClipping=GUI:isClippingParentContainsPoint(Btn, position)
---print("GUI:isClippingParentContainsPoint------",type(isClipping),isClipping)
---```
function GUI:isClippingParentContainsPoint(widget, position) end

---获取主界面底部挂接点
---@return userdata "主界面底部挂接点"
---```lua
---local attachPoint=GUI:Attach_Bottom()
---```
function GUI:Attach_Bottom() end

---获取所有子对象
---* root 存储表
---* widget 根对象
---@param root table
---@param widget userdata
---```lua
---local ui = GUI:LoadExportEx2("main/skill/main_skill_cell", "skill_cell")
---GUI:ui_IterChilds(ui, ui)
---
---
---
---
---local ui={}
---GUI:ui_IterChilds(ui, widget)
---```
function ui_IterChilds(root, widget) end

---获取骨骼动画插槽附件
---* widget Spine 控件对象
---* slotName 插槽名
---* attachmentName 附件名
---@param widget userdata
---@param slotName string
---@param attachmentName string
---@return false|string|nil "无效对象返回 false；有效时返回附件对象（未找到返回 nil）"
function GUI:SpineAnim_getAttachment(widget, slotName, attachmentName) end

---获取骨骼动画全部插槽列表
---* widget Spine 控件对象
---@param widget userdata
---@return false|table "无效对象返回 false；有效时返回由 sp.Slot 组成的数组表"
function GUI:SpineAnim_getSlots(widget) end

---获取骨骼动画播放时间缩放（速度）
---* widget Spine 控件对象
---@param widget userdata
---@return false|number "无效对象返回 false；有效时返回播放速度（默认 1，越大越快）"
function GUI:SpineAnim_getTimeScale(widget) end

---获取骨骼动画插槽颜色（RGBA 0~1）
---* widget 插槽对象
---@param widget string
---@return false|table "无效对象返回 false；有效时返回 {r, g, b, a} 表，范围 0~1"
function GUI:SpineSlot_getColor(widget) end

-- [Source: 窗口^设置.lua]

---设置控件自定义参数
---* widget 界面对象
---* param 参数内容
---@param widget userdata
---@param param integer|string|boolean
---```lua
---GUI:Win_SetParam(widget, param)
---```
function GUI:Win_SetParam(widget, param) end

---设置界面拖拽
---* widget 界面对象
---* dragLayer 拖拽区域控件
---@param widget userdata
---@param dragLayer table
---```lua
---local parent = GUI:Win_Create("winC", 0, 0, 0, 0, false, false, true, true, true, nil, nil, 1)
---local Btn = GUI:Button_Create(parent, "btnTest", 0, 0, "res/public/061302.PNG")
---GUI:Win_SetDrag(parent, Btn)
---```
function GUI:Win_SetDrag(widget, dragLayer) end

---设置主界面隐藏
---* widget 界面对象
---* value 是否隐藏, 普通面板生效
---@param widget userdata
---@param value boolean
---```lua
---local testWin = GUI:Win_Create("winID", 0, 0, 0, 0, false, false, true, true)
---GUI:Win_SetMainHide(testWin, true)
---```
function GUI:Win_SetMainHide(widget, value) end

---设置界面绑定NPC
---* widget 界面对象
---* npcID NPCID
---@param widget userdata
---@param npcID integer
---```lua
---local testWin = GUI:Win_Create("winID", 0, 0, 0, 0, false, false, true, true)
---GUI:Win_BindNPC(win, 0612)
---```
function GUI:Win_BindNPC(widget, npcID) end

---设置界面浮起
---* widget 界面对象
---* zPanel 控件对象
---@param widget userdata
---@param zPanel table
---```lua
---local parent = GUI:Win_Create("winC", 0, 0, 0, 0, false, false, true, true, true, nil, nil, 1)
---local Btn = GUI:Button_Create(parent, "btnTest", 0, 0, "res/public/061302.PNG")
---GUI:Win_SetDrag(parent, Btn)
---GUI:Win_SetZPanel(parent, Btn)
---```
function GUI:Win_SetZPanel(widget, zPanel) end

---设置界面绑定事件
---* widget 界面对象
---* eventID 事件ID
---* eventTag 事件描述
---@param widget userdata
---@param eventID string
---@param eventTag string
---```lua
---lcoal testWin = GUI:Win_Create("winID", 0, 0, 0, 0, false, false, true, true)
---GUI:Win_BindLuaEvent(testWin, "LUA_EVENT_ID", "eventTag")
---```
function GUI:Win_BindLuaEvent(widget, eventID, eventTag) end

---设置界面内鼠标右键吞噬
---* widget 界面对象
---* state 是否吞噬
---@param widget userdata
---@param state boolean
---```lua
---testWin = GUI:Win_Create("winID", 0, 0, 200,200, false, false, true, true)
---GUI:Win_SetSwallowRightMouseTouch(testWin, true)
---```
function GUI:Win_SetSwallowRightMouseTouch(widget, state) end

---设置图片九宫格
---* widget 图片对象
---* scale9l 左边像素
---* scale9r 右边像素
---* scale9t 上边像素
---* scale9b 下边像素
---@param widget userdata
---@param scale9l integer
---@param scale9r integer
---@param scale9t integer
---@param scale9b integer
---```lua
---local testWin = GUI:Win_Create("winID", 0, 0, 0,0, false, false, true, true)
---local pBg = GUI:Image_Create(testWin, "pBg", 100, 100, "res/public/061201.JPG")
---GUI:Image_setScale9Slice(pBg, 10, 10, 30, 30)
---```
function GUI:Image_setScale9Slice(widget, scale9l, scale9r, scale9t, scale9b) end

---设置图片是否变灰
---* widget 图片对象
---* isGrey 是否置灰
---@param widget userdata
---@param isGrey boolean
---```lua
---local testWin = GUI:Win_Create("winID", 0, 0, 0,0, false, false, true, true)
---local pBg = GUI:Image_Create(testWin, "pBg", 100, 100, "res/public/061201.JPG")
---GUI:Image_setGrey(pBg, true)
---```
function GUI:Image_setGrey(widget, isGrey) end

---设置按钮状态图片
---* widget 按钮对象
---* Normalfilepath 正常状态图片路径
---* Pressedfilepath 按压状态图片路径
---* Disabledfilepath 禁用状态图片路径
---* TextureType 加载类型：<br>0 图片<br>1 图片集 plist文件
---@param widget userdata
---@param Normalfilepath string
---@param Pressedfilepath string
---@param Disabledfilepath string
---@param TextureType integer
---```lua
---local Btn = GUI:Button_Create(parent, "BtnOk", 0, 0, "res/public/061101.JPG")
---GUI:setContentSize(Btn, 100, 100)
---GUI:Button_loadTextures(Btn, "res/public/061101.JPG", "res/public/061201.JPG", "res/public/061202.JPG")
---```
function GUI:Button_loadTextures(widget, Normalfilepath, Pressedfilepath, Disabledfilepath, TextureType) end

---设置正常状态图片
---* widget 按钮对象
---* filepath 图片路径
---@param widget userdata
---@param filepath string
---```lua
---local Btn = GUI:Button_Create(parent, "BtnOk", 0, 0, "res/public/061101.JPG")
---GUI:setContentSize(Btn, 100, 100)
---GUI:Button_loadTextureNormal(Btn, "res/public/061202.JPG")
---```
function GUI:Button_loadTextureNormal(widget, filepath) end

---设置按下状态图片
---* widget 按钮对象
---* filepath 图片路径
---@param widget userdata
---@param filepath string
---```lua
---local Btn = GUI:Button_Create(parent, "BtnOk", 0, 0, "res/public/061101.JPG")
---GUI:setContentSize(Btn, 100, 100)
---GUI:Button_loadTexturePressed(Btn, "res/public/061202.JPG")
---```
function GUI:Button_loadTexturePressed(widget, filepath) end

---设置禁用状态图片
---* widget 按钮对象
---* filepath 图片路径
---@param widget userdata
---@param filepath string
---```lua
---local Btn = GUI:Button_Create(parent, "BtnOk", 0, 0, "res/public/061101.JPG")
---GUI:setContentSize(Btn, 100, 100)
---GUI:Button_loadTextureDisabled(Btn, "res/public/061202.JPG")
---```
function GUI:Button_loadTextureDisabled(widget, filepath) end

---设置按钮文字
---* widget 按钮对象
---* value 按钮显示文本
---@param widget userdata
---@param value string
---```lua
---local Btn = GUI:Button_Create(parent, "BtnOk", 0, 0, "res/public/061101.JPG")
---GUI:setContentSize(Btn, 100, 100)
---GUI:Button_setTitleText(Btn, "btnTxt")
---```
function GUI:Button_setTitleText(widget, value) end

---设置按钮文字颜色
---* widget 按钮对象
---* value 色值（#000000）
---@param widget userdata
---@param value string
---```lua
---local Btn = GUI:Button_Create(parent, "BtnOk", 0, 0, "res/public/061101.JPG")
---GUI:setContentSize(Btn, 100, 100)
---GUI:Button_setTitleText(Btn, "btnTxt")
---GUI:Button_setTitleColor(Btn, "#414146")
---```
function GUI:Button_setTitleColor(widget, value) end

---设置按钮文字大小
---* widget 按钮对象
---* value 字体大小（字号16）
---@param widget userdata
---@param value integer
---```lua
---local Btn = GUI:Button_Create(parent, "BtnOk", 0, 0, "res/public/061101.JPG")
---GUI:setContentSize(Btn, 100, 100)
---GUI:Button_setTitleText(Btn, "btnTxt")
---GUI:Button_setTitleFontSize(Btn, 18)
---```
function GUI:Button_setTitleFontSize(widget, value) end

---设置按钮文字样式
---* widget 按钮对象
---* value 字体样式（font.ttf）
---@param widget userdata
---@param value string
---```lua
---local Btn = GUI:Button_Create(parent, "BtnOk", 0, 0, "res/public/061101.JPG")
---GUI:setContentSize(Btn, 100, 100)
---GUI:Button_setTitleText(Btn, "btnTxt")
---GUI:Button_setTitleFontName(Btn, "fontName")
---```
function GUI:Button_setTitleFontName(widget, value) end

---设置按钮文本最大宽度
---* widget 按钮对象
---* value 文本最大宽度
---@param widget userdata
---@param value integer
---```lua
---local Btn = GUI:Button_Create(parent, "BtnOk", 0, 0, "res/public/061101.JPG")
---GUI:setContentSize(Btn, 100, 100)
---GUI:Button_setTitleText(Btn, "btnTxt")
---GUI:Button_setMaxLineWidth(Btn, 100)
---```
function GUI:Button_setMaxLineWidth(widget, value) end

---设置按钮文本加描边
---* widget 按钮对象
---* color 描边色值（#000000）
---* outline 描边大小
---@param widget userdata
---@param color string
---@param outline integer
---```lua
---local Btn = GUI:Button_Create(parent, "BtnOk", 0, 0, "res/public/061101.JPG")
---GUI:setContentSize(Btn, 100, 100)
---GUI:Button_setTitleText(Btn, "btnTxt")
---GUI:Button_titleEnableOutline(Btn, "#00ff00", 2)
---```
function GUI:Button_titleEnableOutline(widget, color, outline) end

---取消按钮文本描边
---* widget 按钮对象
---@param widget userdata
---```lua
---local Btn = GUI:Button_Create(parent, "BtnOk", 0, 0, "res/public/061101.JPG")
---GUI:setContentSize(Btn, 100, 100)
---GUI:Button_setTitleText(Btn, "btnTxt")
---GUI:Button_titleEnableOutline(Btn, "#00ff00", 2)
---GUI:Button_titleDisableOutLine(Btn)
---```
function GUI:Button_titleDisableOutLine(widget) end

---设置按钮是否禁用(可触摸)
---* widget 按钮对象
---* value 是否禁用（可触摸）
---@param widget userdata
---@param value boolean
---```lua
---local Btn = GUI:Button_Create(parent, "BtnOk", 0, 0, "res/public/061101.JPG")
---GUI:setContentSize(Btn, 100, 100)
---GUI:Button_setBright(Btn, false)
---```
function GUI:Button_setBright(widget, value) end

---设置按钮是否禁用(不可触摸)
---* widget 按钮对象
---* value 是否禁用（不可触摸）
---@param widget userdata
---@param value boolean
---```lua
---local Btn = GUI:Button_Create(parent, "BtnOk", 0, 0, "res/public/061101.JPG")
---GUI:setContentSize(Btn, 100, 100)
---GUI:Button_setBrightEx(Btn, false)
---```
function GUI:Button_setBrightEx(widget, value) end

---设置按钮当前状态
---* widget 按钮对象
---* value 状态（0正常 1按下）
---@param widget userdata
---@param value integer
---```lua
---local Btn = GUI:Button_Create(parent, "BtnOk", 0, 0, "res/public/061101.JPG")
---GUI:setContentSize(Btn, 100, 100)
---GUI:Button_loadTexturePressed(Btn, "res/public/061202.JPG")
---GUI:Button_setBrightStyle(Btn, 1)
---```
function GUI:Button_setBrightStyle(widget, value) end

---设置按钮是否灰态
---* widget 按钮对象
---* value 是否灰态
---@param widget userdata
---@param value boolean
---```lua
---local Btn = GUI:Button_Create(parent, "BtnOk", 0, 0, "res/public/061101.JPG")
---GUI:setContentSize(Btn, 100, 100)
---local returnVal=GUI:Button_setGrey(Btn, true)
---```
function GUI:Button_setGrey(widget, value) end

---设置按钮九宫格
---* widget 按钮对象
---* scale9l 左边比例
---* scale9r 右边比例
---* scale9t 上边比例
---* scale9b 下边比例
---@param widget userdata
---@param scale9l integer
---@param scale9r integer
---@param scale9t integer
---@param scale9b integer
---```lua
---local Btn = GUI:Button_Create(parent, "BtnOk", 0, 0, "res/public/061101.JPG")
---GUI:setContentSize(Btn, 100, 100)
---GUI:Button_setScale9Slice(Btn, 15, 15, 11, 11)
---```
function GUI:Button_setScale9Slice(widget, scale9l, scale9r, scale9t, scale9b) end

---设置文本
---* widget 对象
---* value 文本
---@param widget userdata
---@param value string
---```lua
---local str = "我的名字" or ""
---local Text_name = GUI:Text_Create(Parent, "Text_name", 0, 0, 16, "#ffffff", str)
---local returnVal=GUI:Text_setString(Text_name, "你的身高")
---```
function GUI:Text_setString(widget, value) end

---设置文本颜色
---* widget 对象
---* value 色值("#000000")
---@param widget userdata
---@param value string
---```lua
---local str = "我的名字" or ""
---local Text_name = GUI:Text_Create(Parent, "Text_name", 0, 0, 16, "#ffffff", str)
---GUI:Text_setTextColor(Text_name, "#00ff00")
---```
function GUI:Text_setTextColor(widget, value) end

---设置字体大小
---* widget 对象
---* value 字体大小
---@param widget userdata
---@param value integer
---```lua
---local str = "我的名字" or ""
---local Text_name = GUI:Text_Create(Parent, "Text_name", 0, 0, 16, "#ffffff", str)
---GUI:Text_setFontSize(Text_name, 28)
---```
function GUI:Text_setFontSize(widget, value) end

---设置字体路径
---* widget 对象
---* value 字体文件路径<br>例: "fonts/font.ttf"
---@param widget userdata
---@param value string
---```lua
---local str = "我的名字" or ""
---local Text_name = GUI:Text_Create(Parent, "Text_name", 0, 0, 16, "#ffffff", str)
---GUI:Text_setFontSize(Text_name, "fonts/font.ttf")
---```
function GUI:Text_setFontName(widget, value) end

---设置字体描边
---* widget 对象
---* color 色值("#000000")
---* size 描边宽度
---@param widget userdata
---@param color string
---@param size integer
---```lua
---local str = "我的名字" or ""
---local Text_name = GUI:Text_Create(Parent, "Text_name", 0, 0, 16, "#ffffff", str)
---GUI:Text_enableOutline(Text_name, "#00ff00", 3)
---```
function GUI:Text_enableOutline(widget, color, size) end

---设置是否启用下划线
---* widget 文本对象
---@param widget userdata
---```lua
---local str = "我的名字" or ""
---local Text_name = GUI:Text_Create(Parent, "Text_name", 0, 0, 16, "#ffffff", str)
---GUI:Text_enableUnderline(Text_name)
---```
function GUI:Text_enableUnderline(widget) end

---设置文本最大行宽
---* widget 对象
---* value 宽度
---@param widget userdata
---@param value integer
---```lua
----- 需要在设置文本最大行宽后再填充文本内容
---local Text_name = GUI:Text_Create(parent, "Text_name", 0,0, 16, "#ffffff", "")
---GUI:Text_setMaxLineWidth(Text_name, 100)
---GUI:Text_setString(Text_name, "设置文本最大行宽这是一段神奇的文字")
---```
function GUI:Text_setMaxLineWidth(widget, value) end

---设置文本垂直对齐
---* widget 对象
---* value 0：顶对齐<br> 1：垂直居中<br>2：底对齐
---@param widget userdata
---@param value integer
---```lua
-----先设置文本尺寸
---local str = "我的名字" or ""
---local Text_name = GUI:Text_Create(pBg, "Text_name", 0, 0, 16, "#ffffff", "")
---GUI:Text_setTextAreaSize(Text_name, {width = 200, height = 60})
---GUI:Text_setTextVerticalAlignment(Text_name, 1)
---GUI:Text_setString(Text_name, str)
---```
function GUI:Text_setTextVerticalAlignment(widget, value) end

---设置文本水平对齐
---* widget 对象
---* value 0：左对齐<br> 1：水平居中<br>2：右对齐
---@param widget userdata
---@param value integer
---```lua
-----先设置文本尺寸
---local str = "我的名字" or ""
---local Text_name = GUI:Text_Create(pBg, "Text_name", 0, 0, 16, "#ffffff", "")
---GUI:Text_setTextAreaSize(Text_name, {width = 200, height = 60})
---GUI:Text_setTextHorizontalAlignment(Text_name, 1)
---GUI:Text_setString(Text_name, str)
---```
function GUI:Text_setTextHorizontalAlignment(widget, value) end

---设置文本尺寸
---* widget 对象
---* value {width = 0, height = 0}
---@param widget userdata
---@param value table
---```lua
---local str = "我的名字" or ""
---local Text_name = GUI:Text_Create(pBg, "Text_name", 0, 0, 16, "#ffffff", "")
---GUI:Text_setTextAreaSize(Text_name, {width = 200, height = 60})
---GUI:Text_setString(Text_name, str)
---```
function GUI:Text_setTextAreaSize(widget, value) end

---设置倒计时文本
---* widget 对象
---* time 倒计时时间, 单位:秒
---* callback 倒计时结束触发
---* showType 倒计时时间显示方式 <br>0: xx时xx分xx秒 <br>1: 小于1天显示xx:xx:xx 大于显示xx天xx时xx分
---@param widget userdata
---@param time integer
---@param callback function
---@param showType integer
---```lua
---local Text_name = GUI:Text_Create(pBg, "Text_name", 0, 0, 16, "#ffffff", "")
---local returnVal=GUI:Text_COUNTDOWN(Text_name, 200, function(remainTime) print("倒计时结束!")  end)
---```
function GUI:Text_COUNTDOWN(widget, time, callback, showType) end

---设置艺术字配置
---* widget 艺术字对象
---* stringValue 文本内容
---* charMapFile 艺术字路径
---* itemWidth 字体宽度
---* itemHeight 字体高度
---* startCharMap 起始字符设置("/")
---* sheet 字体内容(H5专属)<br>比如图片文字是“+-0123456789”,那这个sheet的值就是"+-0123456789"
---@param widget userdata
---@param stringValue string
---@param charMapFile string
---@param itemWidth integer
---@param itemHeight integer
---@param startCharMap string
---@param sheet string
---```lua
---local artPath = "res/public/TextAtlasPicture.png"
---local Text_name = GUI:TextAtlas_Create(testWin, "Text_name", 200, 200, "2734816", artPath, 19, 25, "0")
---GUI:TextAtlas_setProperty(Text_name, "196738", artPath, 19, 25, "0")
---```
function GUI:TextAtlas_setProperty(widget, stringValue, charMapFile, itemWidth, itemHeight, startCharMap, sheet) end

---设置艺术字文本
---* widget 艺术字对象
---* value 文本内容
---@param widget userdata
---@param value string
---```lua
---local artPath = "res/public/TextAtlasPicture.png"
---local Text_name = GUI:TextAtlas_Create(testWin, "Text_name", 200, 200, "2734816", artPath, 19, 25, "0")
---GUI:TextAtlas_setString(Text_name, "1559169807")
---```
function GUI:TextAtlas_setString(widget, value) end

---设置富文本背景颜色
---* widget 控件对象
---* color 颜色值, 例: "#000000"
---@param widget userdata
---@param color string
---```lua
---GUI:RichText_setBackgroundColor(richText, "#FFFFFF")
---```
function GUI:RichText_setBackgroundColor(widget, color) end

---设置滚动文本内容
---* widget 滚动文本对象
---* value 文本内容
---@param widget userdata
---@param value string
---```lua
---local scrollTxt=GUI:ScrollText_Create(GUI:Attach_LeftBottom(), "scrollText", 300, 300, 600, 16, "#000000", "这是一串神奇的文本内容",10)
---local returnVal=GUI:ScrollText_setString(scrollTxt, "不神奇了")
---```
function GUI:ScrollText_setString(widget, value) end

---设置滚动文本描边
---* widget 滚动文本对象
---* color 描边色值("#000000")
---* size 描边大小
---@param widget userdata
---@param color string
---@param size integer
---```lua
---local scrollTxt=GUI:ScrollText_Create(GUI:Attach_LeftBottom(), "scrollText", 300, 300, 600, 16, "#000000", "这是一串神奇的文本内容",10)
---GUI:ScrollText_setString(scrollTxt, "不神奇了")
---local returnVal=GUI:ScrollText_enableOutline(scrollTxt, "#00ff00", 2)
---```
function GUI:ScrollText_enableOutline(widget, color, size) end

---设置滚动文本水平对齐
---* widget 滚动文本对象
---* value 对齐方式：<br>1 左对齐<br>2 水平居中<br>3 右对齐
---@param widget userdata
---@param value integer
---```lua
---local scrollTxt=GUI:ScrollText_Create(GUI:Attach_LeftBottom(), "scrollText", 300, 300, 600, 16, "#000000", "这是一串神奇的文本内容",10)
---GUI:ScrollText_setHorizontalAlignment(scrollTxt, 2)
---```
function GUI:ScrollText_setHorizontalAlignment(widget, value) end

---设置滚动文本颜色
---* widget 滚动文本对象
---* value 色值("#000000")
---@param widget userdata
---@param value string
---```lua
---local scrollTxt=GUI:ScrollText_Create(GUI:Attach_LeftBottom(), "scrollText", 300, 300, 600, 16, "#000000", "这是一串神奇的文本内容",10)
---GUI:ScrollText_setTextColor(scrollTxt, "#FFFFFF")
---```
function GUI:ScrollText_setTextColor(widget, value) end

---设置物品框单击事件
---* widget 物品框对象
---* eventCB 单击事件函数
---@param widget userdata
---@param eventCB function
---```lua
---local setData  = {}
---setData.index = 4                     -- 物品Index
---setData.look  = true                  -- 是否显示tips
---setData.bgVisible = true              -- 是否显示背景框
---setData.count = 1                     -- 物品数量
---setData.color = 225                   -- 颜色ID （0~255）
-----setData.starLv = false              -- 是否显示星级
-----setData.checkPower = true           -- 是否检查战力从而显示提升小箭头
-----setData.showModelEffect = true      -- 只显示内观特效不显示背包特效
-----setData.onlyShowSFX = true          -- 只显示道具特效其它都不显示
-----setData.noSwallow = true            -- 是否触摸吞噬
-----setData.noMouseTips = true          -- 鼠标移入不显示tips
-----setData.mouseCheckTimes = 6         -- 鼠标移入检测物品框是否可见时查找父节点层数, 默认6
-----setData.itemData = table            -- 物品数据 ( ！有真实物品数据可直接传, 避免Tips缺漏 )
---
---local item = GUI:ItemShow_Create(parent, "item", 100, 100, setData)
---
---
---GUI:ItemShow_addReplaceClickEvent(item, function()
---    print("单击触发")
---end)
---```
function GUI:ItemShow_addReplaceClickEvent(widget, eventCB) end

---设置物品框双击事件
---* widget 物品框对象
---* eventCB 双击事件函数
---@param widget userdata
---@param eventCB function
---```lua
---local setData  = {}
---setData.index = 4                     -- 物品Index
---setData.look  = true                  -- 是否显示tips
---setData.bgVisible = true              -- 是否显示背景框
---setData.count = 1                     -- 物品数量
---setData.color = 225                   -- 颜色ID （0~255）
-----setData.starLv = false              -- 是否显示星级
-----setData.checkPower = true           -- 是否检查战力从而显示提升小箭头
-----setData.showModelEffect = true      -- 只显示内观特效不显示背包特效
-----setData.onlyShowSFX = true          -- 只显示道具特效其它都不显示
-----setData.noSwallow = true            -- 是否触摸吞噬
-----setData.noMouseTips = true          -- 鼠标移入不显示tips
-----setData.mouseCheckTimes = 6         -- 鼠标移入检测物品框是否可见时查找父节点层数, 默认6
-----setData.itemData = table            -- 物品数据 ( ！有真实物品数据可直接传, 避免Tips缺漏 )
---
---local item = GUI:ItemShow_Create(parent, "item", 100, 100, setData)
---
---
---GUI:ItemShow_addDoubleEvent(item, function()
---    print("双击触发")
---end)
---```
function GUI:ItemShow_addDoubleEvent(widget, eventCB) end

---设置物品框长按事件
---* widget 物品框对象
---* eventCB 长按事件函数
---@param widget userdata
---@param eventCB function
---```lua
---local setData  = {}
---setData.index = 4                     -- 物品Index
---setData.look  = true                  -- 是否显示tips
---setData.bgVisible = true              -- 是否显示背景框
---setData.count = 1                     -- 物品数量
---setData.color = 225                   -- 颜色ID （0~255）
-----setData.starLv = false              -- 是否显示星级
-----setData.checkPower = true           -- 是否检查战力从而显示提升小箭头
-----setData.showModelEffect = true      -- 只显示内观特效不显示背包特效
-----setData.onlyShowSFX = true          -- 只显示道具特效其它都不显示
-----setData.noSwallow = true            -- 是否触摸吞噬
-----setData.noMouseTips = true          -- 鼠标移入不显示tips
-----setData.mouseCheckTimes = 6         -- 鼠标移入检测物品框是否可见时查找父节点层数, 默认6
-----setData.itemData = table            -- 物品数据 ( ！有真实物品数据可直接传, 避免Tips缺漏 )
---
---local item = GUI:ItemShow_Create(parent, "item", 100, 100, setData)
---
---
---GUI:ItemShow_addPressEvent(item, function()
---    print("长按触发")
---end)
---```
function GUI:ItemShow_addPressEvent(widget, eventCB) end

---设置物品框是否置灰
---* widget 物品框对象
---* value 是否置灰
---@param widget userdata
---@param value boolean
---```lua
---local setData  = {}
---setData.index = 4                     -- 物品Index
---setData.look  = true                  -- 是否显示tips
---setData.bgVisible = true              -- 是否显示背景框
---setData.count = 1                     -- 物品数量
---setData.color = 225                   -- 颜色ID （0~255）
-----setData.starLv = false              -- 是否显示星级
-----setData.checkPower = true           -- 是否检查战力从而显示提升小箭头
-----setData.showModelEffect = true      -- 只显示内观特效不显示背包特效
-----setData.onlyShowSFX = true          -- 只显示道具特效其它都不显示
-----setData.noSwallow = true            -- 是否触摸吞噬
-----setData.noMouseTips = true          -- 鼠标移入不显示tips
-----setData.mouseCheckTimes = 6         -- 鼠标移入检测物品框是否可见时查找父节点层数, 默认6
-----setData.itemData = table            -- 物品数据 ( ！有真实物品数据可直接传, 避免Tips缺漏 )
---
---
---local item = GUI:ItemShow_Create(parent, "item", 100, 100, setData)
---
---GUI:ItemShow_setIconGrey(item, true)
---```
function GUI:ItemShow_setIconGrey(widget, value) end

---设置物品框是否选中
---* widget 物品框对象
---* value 是否选中
---@param widget userdata
---@param value boolean
---```lua
---local setData  = {}
---setData.index = 4                     -- 物品Index
---setData.look  = true                  -- 是否显示tips
---setData.bgVisible = true              -- 是否显示背景框
---setData.count = 1                     -- 物品数量
---setData.color = 225                   -- 颜色ID （0~255）
-----setData.starLv = false              -- 是否显示星级
-----setData.checkPower = true           -- 是否检查战力从而显示提升小箭头
-----setData.showModelEffect = true      -- 只显示内观特效不显示背包特效
-----setData.onlyShowSFX = true          -- 只显示道具特效其它都不显示
-----setData.noSwallow = true            -- 是否触摸吞噬
-----setData.noMouseTips = true          -- 鼠标移入不显示tips
-----setData.mouseCheckTimes = 6         -- 鼠标移入检测物品框是否可见时查找父节点层数, 默认6
-----setData.itemData = table            -- 物品数据 ( ！有真实物品数据可直接传, 避免Tips缺漏 )
---
---
---local item = GUI:ItemShow_Create(parent, "item", 100, 100, setData)
---
---GUI:ItemShow_setItemShowChooseState(item, true)
---```
function GUI:ItemShow_setItemShowChooseState(widget, value) end

---设置物品框是否拖动
---* widget 物品框对象
---* value 是否拖动
---@param widget userdata
---@param value boolean
---```lua
---local setData  = {}
---setData.index = 4                     -- 物品Index
---setData.look  = true                  -- 是否显示tips
---setData.bgVisible = true              -- 是否显示背景框
---setData.count = 1                     -- 物品数量
---setData.color = 225                   -- 颜色ID （0~255）
-----setData.starLv = false              -- 是否显示星级
-----setData.checkPower = true           -- 是否检查战力从而显示提升小箭头
-----setData.showModelEffect = true      -- 只显示内观特效不显示背包特效
-----setData.onlyShowSFX = true          -- 只显示道具特效其它都不显示
-----setData.noSwallow = true            -- 是否触摸吞噬
-----setData.noMouseTips = true          -- 鼠标移入不显示tips
-----setData.mouseCheckTimes = 6         -- 鼠标移入检测物品框是否可见时查找父节点层数, 默认6
-----setData.itemData = table            -- 物品数据 ( ！有真实物品数据可直接传, 避免Tips缺漏 )
---
---
---local item = GUI:ItemShow_Create(parent, "item", 100, 100, setData)
---
---GUI:ItemShow_setMoveEnable(item, true)
---```
function GUI:ItemShow_setMoveEnable(widget, value) end

---更新物品框内容
---* widget 物品框对象
---* itemData 配置数据
---@param widget userdata
---@param itemData table
---```lua
---local setData  = {}
---setData.index = 4                     -- 物品Index
---setData.look  = true                  -- 是否显示tips
---setData.bgVisible = true              -- 是否显示背景框
---setData.count = 1                     -- 物品数量
---setData.color = 225                   -- 颜色ID （0~255）
-----setData.starLv = false              -- 是否显示星级
-----setData.checkPower = true           -- 是否检查战力从而显示提升小箭头
-----setData.showModelEffect = true      -- 只显示内观特效不显示背包特效
-----setData.onlyShowSFX = true          -- 只显示道具特效其它都不显示
-----setData.noSwallow = true            -- 是否触摸吞噬
-----setData.noMouseTips = true          -- 鼠标移入不显示tips
-----setData.mouseCheckTimes = 6         -- 鼠标移入检测物品框是否可见时查找父节点层数, 默认6
-----setData.itemData = table            -- 物品数据 ( ！有真实物品数据可直接传, 避免Tips缺漏 )
---
---
---local item = GUI:ItemShow_Create(parent, "item", 100, 100, setData)
---setData.count=5
---GUI:ItemShow_updateItem(item, setData)
---```
function GUI:ItemShow_updateItem(widget, itemData) end

---设置物品框是否触摸吞噬
---* widget 物品框对象
---* isSwallow 是否触摸吞噬
---@param widget userdata
---@param isSwallow boolean
---```lua
---local setData  = {}
---setData.index = 4                     -- 物品Index
---setData.look  = true                  -- 是否显示tips
---setData.bgVisible = true              -- 是否显示背景框
---setData.count = 1                     -- 物品数量
---setData.color = 225                   -- 颜色ID （0~255）
-----setData.starLv = false              -- 是否显示星级
-----setData.checkPower = true           -- 是否检查战力从而显示提升小箭头
-----setData.showModelEffect = true      -- 只显示内观特效不显示背包特效
-----setData.onlyShowSFX = true          -- 只显示道具特效其它都不显示
-----setData.noSwallow = true            -- 是否触摸吞噬
-----setData.noMouseTips = true          -- 鼠标移入不显示tips
-----setData.mouseCheckTimes = 6         -- 鼠标移入检测物品框是否可见时查找父节点层数, 默认6
-----setData.itemData = table            -- 物品数据 ( ！有真实物品数据可直接传, 避免Tips缺漏 )
---
---
---local item = GUI:ItemShow_Create(parent, "item", 100, 100, setData)
---
---GUI:ItemShow_setItemTouchSwallow(item, true)
---```
function GUI:ItemShow_setItemTouchSwallow(widget, isSwallow) end

---设置复选框默认状态背景图片
---* widget 复选框对象
---* value 默认状态图片路径
---@param widget userdata
---@param value string
---```lua
---local nimg = "res/private/gui_edit/CheckBox_Normal.png"
---local new_nimg="res/private/gui_edit/CheckBox_Normal_1.png"
---local pimg = "res/private/gui_edit/CheckBox_Press.png"
---local checkBox = GUI:CheckBox_Create(parent, "checkBox", 0, 0, nimg, pimg)
---GUI:CheckBox_loadTextureBackGround(checkBox, new_nimg)
---```
function GUI:CheckBox_loadTextureBackGround(widget, value) end

---设置复选框选中状态背景图片
---* widget 复选框对象
---* value 选中状态图片路径
---@param widget userdata
---@param value string
---```lua
---local nimg = "res/private/gui_edit/CheckBox_Normal.png"
---local pimg = "res/private/gui_edit/CheckBox_Press.png"
---local new_pimg="res/private/gui_edit/CheckBox_Press_1.png"
---local checkBox = GUI:CheckBox_Create(parent, "checkBox", 0, 0, nimg, pimg)
---GUI:CheckBox_loadTextureFrontCross(checkBox, new_pimg)
---```
function GUI:CheckBox_loadTextureFrontCross(widget, value) end

---设置复选框禁用状态背景图片
---* widget 复选框对象
---* value 禁用状态图片路径
---@param widget userdata
---@param value string
---```lua
---local nimg = "res/private/gui_edit/CheckBox_Normal.png"
---local pimg = "res/private/gui_edit/CheckBox_Press.png"
---local fimg="res/private/gui_edit/CheckBox_forbiden.png"
---local checkBox = GUI:CheckBox_Create(parent, "checkBox", 0, 0, nimg, pimg)
---GUI:CheckBox_loadTextureFrontCrossDisabled(checkBox, fimg)
---```
function GUI:CheckBox_loadTextureFrontCrossDisabled(widget, value) end

---设置复选框选中或取消
---* widget 复选框对象
---* value 选中或取消
---@param widget userdata
---@param value boolean
---```lua
---local nimg = "res/private/gui_edit/CheckBox_Normal.png"
---local pimg = "res/private/gui_edit/CheckBox_Press.png"
---local checkBox = GUI:CheckBox_Create(parent, "checkBox", 0, 0, nimg, pimg)
---GUI:CheckBox_setSelected(checkBox, true)
---```
function GUI:CheckBox_setSelected(widget, value) end

---设置输入框字体颜色
---* widget 输入框对象
---* value 色值("#000000")
---@param widget userdata
---@param value string
---```lua
---local TextField_input = GUI:TextInput_Create(parent, "TextField_input", 0, 0, 30, 33, 16)
---GUI:TextInput_setFontColor(TextField_input, "#00ff00")
---```
function GUI:TextInput_setFontColor(widget, value) end

---设置输入框字体
---* widget 输入框对象
---* value 字体路径
---* value2 字号
---@param widget userdata
---@param value string
---@param value2 integer
---```lua
---local TextField_input = GUI:TextInput_Create(parent, "TextField_input", 0, 0, 30, 33, 16)
---GUI:TextInput_setFont(TextField_input, "fonts/font.ttf", 18)
---```
function GUI:TextInput_setFont(widget, value, value2) end

---设置输入框字体大小
---* widget 输入框对象
---* value 字号
---@param widget userdata
---@param value integer
---```lua
---local TextField_input = GUI:TextInput_Create(parent, "TextField_input", 0, 0, 30, 33, 16)
---GUI:TextInput_setFontSize(TextField_input, 18)
---```
function GUI:TextInput_setFontSize(widget, value) end

---设置输入框占位文本字体
---* widget 输入框对象
---* value 字体路径
---* value2 字体("font.ttf")
---@param widget userdata
---@param value string
---@param value2 string
---```lua
---local TextField_input = GUI:TextInput_Create(parent, "TextField_input", 0, 0, 30, 33, 16)
---GUI:TextInput_setPlaceholderFont(TextField_input, "fonts/font.ttf", "font.ttf")
---```
function GUI:TextInput_setPlaceholderFont(widget, value, value2) end

---设置输入框占位文本字体颜色
---* widget 输入框对象
---* value 色值("#000000")
---@param widget userdata
---@param value string
---```lua
---local TextField_input = GUI:TextInput_Create(parent, "TextField_input", 0, 0, 30, 33, 16)
---GUI:TextInput_setPlaceholderFontColor(TextField_input, "#00ff00")
---```
function GUI:TextInput_setPlaceholderFontColor(widget, value) end

---设置输入框占位文本字体大小
---* widget 输入框对象
---* value 字号
---@param widget userdata
---@param value integer
---```lua
---local TextField_input = GUI:TextInput_Create(parent, "TextField_input", 0, 0, 30, 33, 16)
---GUI:TextInput_setPlaceholderFontSize(TextField_input, 18)
---```
function GUI:TextInput_setPlaceholderFontSize(widget, value) end

---设置输入框占位文本
---* widget 输入框对象
---* value 输入内容
---@param widget userdata
---@param value string
---```lua
---local TextField_input = GUI:TextInput_Create(parent, "TextField_input", 0, 0, 30, 33, 16)
---GUI:TextInput_setPlaceHolder(TextField_input, "此为占位文本")
---```
function GUI:TextInput_setPlaceHolder(widget, value) end

---设置输入框文本
---* widget 输入框对象
---* value 输入内容
---@param widget userdata
---@param value string
---```lua
---local TextField_input = GUI:TextInput_Create(parent, "TextField_input", 0, 0, 30, 33, 16)
---GUI:TextInput_setString(TextField_input, "此为输入框文本")
---```
function GUI:TextInput_setString(widget, value) end

---设置输入框行宽
---* widget 输入框对象
---* value 输入框控件宽度
---@param widget userdata
---@param value integer
---```lua
---local TextField_input = GUI:TextInput_Create(parent, "TextField_input", 0, 0, 30, 33, 16)
---GUI:TextInput_setMaxLength(TextField_input, 5)
---```
function GUI:TextInput_setMaxLength(widget, value) end

---设置输入框水平对齐
---* widget 输入框对象
---* value 对齐方式：<br>0 左对齐<br> 1 水平居中<br>2 右居中
---@param widget userdata
---@param value integer
---```lua
---local TextField_input = GUI:TextInput_Create(parent, "TextField_input", 0, 0, 30, 33, 16)
---GUI:TextInput_setTextHorizontalAlignment(TextField_input, 1)
---```
function GUI:TextInput_setTextHorizontalAlignment(widget, value) end

---设置输入框文本类型
---* widget 输入框对象
---* value 类型
---@param widget userdata
---@param value integer
---```tips
---!!!!类型!!!!
---0   -- 密码形式
---1   -- 敏感数据输入
---2   -- 每个单词首字符大写，并有提示
---3   -- 第一句首字符大写，并有提示
---4   -- 自动大写
---```
---```lua
---local TextField_input = GUI:TextInput_Create(parent, "TextField_input", 0, 0, 30, 33, 16)
---GUI:TextInput_setInputFlag(TextField_input, 0)
---```
function GUI:TextInput_setInputFlag(widget, value) end

---设置输入框键盘编辑类型
---* widget 输入框对象
---* value 类型
---@param widget userdata
---@param value integer
---```tips
---!!!!类型!!!!
---0   -- 开启任何文本的输入键盘(含换行)
---1   -- 开启邮箱地址输入类型键盘
---2   -- 开启数字符号输入类型键盘
---3   -- 开启电话号码输入类型键盘
---4   -- 开启URL输入类型键盘
---5   -- 开启数字输入类型键盘(含小数点)
---6   -- 开启任何文本的输入键盘(不含换行)
---```
---```lua
---local TextField_input = GUI:TextInput_Create(parent, "TextField_input", 0, 0, 30, 33, 16)
---GUI:TextInput_setInputMode(TextField_input, 2)
---```
function GUI:TextInput_setInputMode(widget, value) end

---设置输入框弹出式键盘返回类型
---* widget 输入框对象
---* value 类型
---@param widget userdata
---@param value integer
---```lua
---local TextField_input = GUI:TextInput_Create(parent, "TextField_input", 0, 0, 30, 33, 16)
---GUI:TextInput_setReturnType(TextField_input, 2)
---```
function GUI:TextInput_setReturnType(widget, value) end

---设置输入框监听事件
---* widget 输入框对象 (由 `GUI:TextInput_Create` 创建)
---* eventCB 事件处理函数，回调参数为 `(sender, eventType)`
---@param widget userdata
---@param eventCB function
---```tips
---!!!!eventType 枚举说明!!!!
---回调函数`eventCB(sender, eventType)`中的`eventType`对应状态如下：
---值:0	   枚举名称:ATTACH_WITH_IME    说明:开始输入 (获得焦点)
---值:1	   枚举名称:DETACH_WITH_IME    说明:结束输入 (失去焦点)
---值:2	   枚举名称:INSERT_TEXT        说明:插入文本 (内容改变)
---值:3	   枚举名称:DELETE_BACKWARD    说明:删除文本 (内容改变)
---```
---```lua
---local TextField_input = GUI:TextInput_Create(parent, "TextField_input", 0, 0, 100, 30, 16)
---
---GUI:TextInput_addOnEvent(TextField_input, function(sender, eventType)
---    if eventType == 1 then
---        -- 结束输入 (失去焦点)
---        local text = GUI:TextInput_getString(sender)
---        print("输入完成:", text)
---    elseif eventType == 2 or eventType == 3 then
---        -- 内容变化
---        print("正在输入...")
---    end
---end)
---```
function GUI:TextInput_addOnEvent(widget, eventCB) end

---设置滚动条背景图
---* widget 滚动条对象
---* value 背景图路径
---@param widget userdata
---@param value string
---```lua
---local barimg = "res/private/new_setting/bg_progress.png"
---local pbarimg = "res/private/new_setting/bg_progress2.png"
---local nimg = "res/private/new_setting/icon_xdtzy_17.png"
---local Slider_progress = GUI:Slider_Create(parent, "Slider_progress", 0, 0, barimg, pbarimg, nimg)
---GUI:Slider_loadBarTexture(Slider_progress, "res/private/new_setting/new_bg_progress.png")
---```
function GUI:Slider_loadBarTexture(widget, value) end

---设置滚动条图片
---* widget 滚动条对象
---* value 滚动条图片路径
---@param widget userdata
---@param value string
---```lua
---local barimg = "res/private/new_setting/bg_progress.png"
---local pbarimg = "res/private/new_setting/bg_progress2.png"
---local nimg = "res/private/new_setting/icon_xdtzy_17.png"
---local Slider_progress = GUI:Slider_Create(parent, "Slider_progress", 0, 0, barimg, pbarimg, nimg)
---GUI:Slider_loadProgressBarTexture(Slider_progress, "res/private/new_setting/new_bg_progress2.png")
---```
function GUI:Slider_loadProgressBarTexture(widget, value) end

---设置滚动条拖动块普通图片
---* widget 滚动条对象
---* value 拖动块图片路径
---@param widget userdata
---@param value string
---```lua
---local barimg = "res/private/new_setting/bg_progress.png"
---local pbarimg = "res/private/new_setting/bg_progress2.png"
---local nimg = "res/private/new_setting/icon_xdtzy_17.png"
---local Slider_progress = GUI:Slider_Create(parent, "Slider_progress", 0, 0, barimg, pbarimg, nimg)
---GUI:Slider_loadSlidBallTextureNormal(Slider_progress, "res/private/new_setting/new_icon_xdtzy_17.png")
---```
function GUI:Slider_loadSlidBallTextureNormal(widget, value) end

---设置滚动条进度
---* widget 滚动条对象
---* value 滚动条进度(0-100)
---@param widget userdata
---@param value integer
---```lua
---local barimg = "res/private/new_setting/bg_progress.png"
---local pbarimg = "res/private/new_setting/bg_progress2.png"
---local nimg = "res/private/new_setting/icon_xdtzy_17.png"
---local Slider_progress = GUI:Slider_Create(parent, "Slider_progress", 0, 0, barimg, pbarimg, nimg)
---GUI:Slider_setPercent(Slider_progress, 70)
---```
function GUI:Slider_setPercent(widget, value) end

---设置滚动条最大进度值
---* widget 滚动条对象
---* value 滚动条最大进度值
---@param widget userdata
---@param value integer
---```lua
---local barimg = "res/private/new_setting/bg_progress.png"
---local pbarimg = "res/private/new_setting/bg_progress2.png"
---local nimg = "res/private/new_setting/icon_xdtzy_17.png"
---local Slider_progress = GUI:Slider_Create(parent, "Slider_progress", 0, 0, barimg, pbarimg, nimg)
---GUI:Slider_setMaxPercent(Slider_progress, 70)
---```
function GUI:Slider_setMaxPercent(widget, value) end

---设置滚动条触摸事件
---* widget 滚动条对象
---* value 事件函数
---@param widget userdata
---@param value function
---```lua
---local barimg = "res/private/new_setting/bg_progress.png"
---local pbarimg = "res/private/new_setting/bg_progress2.png"
---local nimg = "res/private/new_setting/icon_xdtzy_17.png"
---local Slider_progress = GUI:Slider_Create(parent, "Slider_progress", 0, 0, barimg, pbarimg, nimg)
---GUI:Slider_addOnEvent(Slider_progress, function()
---    --do something
---end)
---```
function GUI:Slider_addOnEvent(widget, value) end

---设置圆形进度条百分比
---* widget 控件对象
---* value 进度(0-100)
---@param widget userdata
---@param value integer
---```lua
---local ui_img ="res/public/061101.JPG"
---local heroProgress = GUI:ProgressTimer_Create(parent, "heroProgress", 100, 100, ui_img)
---GUI:ProgressTimer_setPercentage(heroProgress, 60)
---```
function GUI:ProgressTimer_setPercentage(widget, value) end

---设置圆形进度条方向
---* widget 控件对象
---* value true 顺时针<br>false 逆时针
---@param widget userdata
---@param value boolean
---```lua
---local ui_img ="res/public/061101.JPG"
---local heroProgress = GUI:ProgressTimer_Create(parent, "heroProgress", 100, 100, ui_img)
---GUI:ProgressTimer_setPercentage(heroProgress, 60)
---GUI:ProgressTimer_setReverseDirection(heroProgress, true)
---```
function GUI:ProgressTimer_setReverseDirection(widget, value) end

---设置控件Y轴方向缩放
---* widget 控件对象
---* value 缩放比例, 默认1.0
---@param widget userdata
---@param value number
---```lua
---local Btn = GUI:Button_Create(attachParent, "btnAnchor", 0, 0, "res/public/061302.PNG")
---GUI:setScaleY(Btn, 1.5)
---```
function GUI:setScaleY(widget, value) end

---设置圆形进度条动作和回调函数
---* widget 控件对象
---* time 时间
---* to 结束进度(0-100)
---* completeCB 回调函数
---* tag 标记
---@param widget userdata
---@param time integer
---@param to integer
---@param completeCB function
---@param tag integer
---```lua
---local ui_img ="res/public/061101.JPG"
---local heroProgress = GUI:ProgressTimer_Create(parent, "heroProgress", 100, 100, ui_img)
---GUI:ProgressTimer_progressTo(heroProgress, 10, 100, function()
---    --do something
---end,77)
---```
function GUI:ProgressTimer_progressTo(widget, time, to, completeCB, tag) end

---设置圆形进度条背景图
---* widget 控件对象
---* img 图片路径
---@param widget userdata
---@param img string
---```lua
---local ui_img ="res/public/061101.JPG"
---local heroProgress = GUI:ProgressTimer_Create(parent, "heroProgress", 100, 100, ui_img)
---GUI:ProgressTimer_ChangeImg(heroProgress, "res/public/061202.JPG")
---```
function GUI:ProgressTimer_ChangeImg(widget, img) end

---设置进度条图片
---* widget 进度条对象
---* value 图片路径
---@param widget userdata
---@param value string
---```lua
---local imgBar ="res/public/061201.JPG"
---local loadingBar = GUI:LoadingBar_Create(parent, "loadingBar", 0, 0, imgBar, 0)
---GUI:LoadingBar_loadTexture(loadingBar, "res/public/061202.JPG")
---```
function GUI:LoadingBar_loadTexture(widget, value) end

---设置进度条方向
---* widget 进度条对象
---* value 方向：<br>0 从左到右<br>1 从右到左
---@param widget userdata
---@param value integer
---```lua
---local imgBar ="res/public/061201.JPG"
---local loadingBar = GUI:LoadingBar_Create(parent, "loadingBar", 0, 0, imgBar, 0)
---GUI:LoadingBar_setDirection(loadingBar, 1)
---```
function GUI:LoadingBar_setDirection(widget, value) end

---设置进度条进度
---* widget 进度条对象
---* value 进度(0-100)
---@param widget userdata
---@param value integer
---```lua
---local imgBar ="res/public/061201.JPG"
---local loadingBar = GUI:LoadingBar_Create(parent, "loadingBar", 0, 0, imgBar, 0)
---GUI:LoadingBar_setPercent(loadingBar, 70)
---```
function GUI:LoadingBar_setPercent(widget, value) end

---设置进度条颜色
---* widget 进度条对象
---* value 色值("#000000")
---@param widget userdata
---@param value string
---```lua
---local imgBar ="res/public/061201.JPG"
---local loadingBar = GUI:LoadingBar_Create(parent, "loadingBar", 0, 0, imgBar, 0)
---GUI:LoadingBar_setColor(loadingBar, "#00ff00")
---```
function GUI:LoadingBar_setColor(widget, value) end

---设置特效播放完自动移除
---* widget 特效对象
---@param widget userdata
---```lua
---local sfx = GUI:Effect_Create(parent, "sfx", 0, 0, 0, 4004, 0, 0, 3, 1)
---GUI:Effect_setAutoRemoveOnFinish(sfx)
---```
function GUI:Effect_setAutoRemoveOnFinish(widget) end

---设置粒子持续时间
---* widget 粒子特效
---* value 持续时间, 单位: 秒 <br> -1 表示永久
---@param widget userdata
---@param value integer
---```lua
---local widget = GUI:ParticleEffect_Create(GUI:Attach_LeftBottom(), "TT", 568, 320, "res/private/particles/petal_1.plist")
---GUI:ParticleEffect_setDuration(widget, -1)
---GUI:ParticleEffect_setTotalParticles(widget, 999)
---```
function GUI:ParticleEffect_setDuration(widget, value) end

---设置总粒子数量
---* widget 粒子特效
---* value 数量
---@param widget userdata
---@param value integer
---```lua
---local widget = GUI:ParticleEffect_Create(GUI:Attach_LeftBottom(), "TT", 568, 320, "res/private/particles/petal_1.plist")
---GUI:ParticleEffect_setDuration(widget, -1)
---GUI:ParticleEffect_setTotalParticles(widget, 999)
---```
function GUI:ParticleEffect_setTotalParticles(widget, value) end

---新增拖拽类型和拖拽事件
---* fromType 控件来自位置类型名
---* toType 控件到达位置类型名
---* fromToEvent 从fromType类型控件 拖拽到 toType类型控件 触发的函数
---* toFromEvent 从toType类型控件 拖拽到 fromType类型控件 触发的函数
---@param fromType string
---@param toType string
---@param fromToEvent function
---@param toFromEvent function
---```tips
---fromToEvent/toFromEvent 起码实现一个
---```
---```lua
------ 自新增移动类型 来自/去达
---local function fromToEvent(_, data)
---SL:PrintTable(data)
---SL:print("++++++FromToEvent 111 -> 222")
---end
---local function toFromEvent(_, data)
---SL:PrintTable(data)
---SL:print("++++++ToFromEvent 222 -> 111")
---end
---GUI:AddMoveWidgetTypeEvent("from", "to", fromToEvent, toFromEvent)
---local moveWidget11 = GUI:MoveWidget_Create(GUI:Attach_LeftBottom(), "moveWidget11", 500, 300, 70, 70, GUIDefine.ItemFrom.from, {cancelMoveCB = cancelMoveCallBack, endMoveCB = endMoveCallBack})
---local img = GUI:Image_Create(moveWidget11, "img", 0, 0, "res/public/word_fubentg_1.png")
---local tt11 = GUI:Text_Create(moveWidget11, "tt", 0, 35, 18, "#000000", "111")
---
---local moveWidget22 = GUI:MoveWidget_Create(GUI:Attach_LeftBottom(), "moveWidget22", 300, 300, 70, 70,GUIDefine.ItemFrom.to, {cancelMoveCB = cancelMoveCallBack, endMoveCB = endMoveCallBack})
---local img = GUI:Image_Create(moveWidget22, "img", 0, 0, "res/public/word_fubentg_2.png")
---local tt11 = GUI:Text_Create(moveWidget22, "tt", 0, 35, 18, "#000000", "222")
---```
function GUI:AddMoveWidgetTypeEvent(fromType, toType, fromToEvent, toFromEvent) end

---设置装备框显示自动刷新
---* widget 装备框对象
---@param widget userdata
---```lua
---local equipShow = GUI:EquipShow_Create(GUI:Attach_LeftBottom(), "equipShow1", 400, 300, 1, false, {bgVisible = true, look = true, doubleTakeOff = true})
----- 装戴后自动刷新
---GUI:EquipShow_setAutoUpdate(equipShow)
---```
function GUI:EquipShow_setAutoUpdate(widget) end

---设置坐标
---* widget 控件对象
---* x 横坐标
---* y 纵坐标
---@param widget userdata
---@param x number
---@param y number
---```lua
---local Btn = GUI:Button_Create(parent, "BtnOk", 0, 0, "res/public/061302.PNG")
---GUI:setPosition(Btn,100,100)
---```
function GUI:setPosition(widget, x, y) end

---设置横坐标
---* widget 控件对象
---* value 横坐标
---@param widget userdata
---@param value integer
---```lua
---local Btn = GUI:Button_Create(parent, "BtnOk", 0, 0, "res/public/061302.PNG")
---GUI:setPositionX(Btn, 100)
---```
function GUI:setPositionX(widget, value) end

---设置纵坐标
---* widget 控件对象
---* value 纵坐标
---@param widget userdata
---@param value integer
---```lua
---local Btn = GUI:Button_Create(parent, "BtnOk", 0, 0, "res/public/061302.PNG")
---GUI:setPositionY(Btn, 50)
---```
function GUI:setPositionY(widget, value) end

---设置控件锚点
---* widget 控件对象
---* x 横坐标
---* y 纵坐标
---@param widget userdata
---@param x number
---@param y number
---```lua
---GUI:setAnchorPoint(parent, 0, 0)        -- 左 下
---GUI:setAnchorPoint(parent, 0, 0.5)      -- 左 中
---GUI:setAnchorPoint(parent, 0, 1)        -- 左 上
---GUI:setAnchorPoint(parent, 0.5, 0)      -- 中 下
---GUI:setAnchorPoint(parent, 0.5, 0.5)    -- 中 中
---GUI:setAnchorPoint(parent, 0.5, 1)      -- 中 上
---GUI:setAnchorPoint(parent, 1, 0)        -- 右 下
---GUI:setAnchorPoint(parent, 1, 0.5)      -- 右 中
---GUI:setAnchorPoint(parent, 1, 1)        -- 右 上
---```
function GUI:setAnchorPoint(widget, x, y) end

---设置控件尺寸大小
---* widget 控件对象
---* sizeW 宽度
---* sizeH 长度
---@param widget userdata
---@param sizeW integer
---@param sizeH integer
---```lua
---local Btn = GUI:Button_Create(attachParent, "btnAnchor", 0, 0, "res/public/061302.PNG")
---GUI:setContentSize(Btn, 100, 100)
---```
function GUI:setContentSize(widget, sizeW, sizeH) end

---设置忽略设置的自定义尺寸大小
---* widget 控件对象
---* value 是否忽略用户定义尺寸大小
---@param widget userdata
---@param value boolean
---```lua
---GUI:setIgnoreContentAdaptWithSize(btn, true)
---```
function GUI:setIgnoreContentAdaptWithSize(widget, value) end

---设置控件标签
---* widget 控件对象
---* value 标签值
---@param widget userdata
---@param value integer
---```lua
---local Btn = GUI:Button_Create(attachParent, "btnAnchor", 0, 0, "res/public/061302.PNG")
---GUI:setTag(Btn, 15)
---```
function GUI:setTag(widget, value) end

---设置控件名字
---* widget 控件对象
---* value 名字
---@param widget userdata
---@param value string
---```lua
---local Btn = GUI:Button_Create(attachParent, "btnAnchor", 0, 0, "res/public/061302.PNG")
---GUI:setName(Btn, "clickButton")
---```
function GUI:setName(widget, value) end

---设置控件置灰
---* widget 控件对象
---* isGrey 是否置灰
---@param widget userdata
---@param isGrey boolean
---```lua
---local Btn = GUI:Button_Create(attachParent, "btnAnchor", 0, 0, "res/public/061302.PNG")
---GUI:setGrey(Btn, true)
---```
function GUI:setGrey(widget, isGrey) end

---设置控件旋转角度
---* widget 控件对象
---* value 旋转角度（0 - 360）
---@param widget userdata
---@param value integer
---```lua
---local Btn = GUI:Button_Create(attachParent, "btnAnchor", 0, 0, "res/public/061302.PNG")
---GUI:setRotation(Btn, 180)
---```
function GUI:setRotation(widget, value) end

---播放BGM
---* path 音频文件路径
---@param path string
---```lua
---SL:PlayAudioBGMByPath(path)
---```
function SL:PlayAudioBGMByPath(path) end

---暂停BGM
---```lua
---SL:PauseAudioBGM()
---```
function SL:PauseAudioBGM() end

---恢复BGM
---```lua
---SL:ResumeAudioBGM()
---```
function SL:ResumeAudioBGM() end

---设置骨骼动画（立即切换）
---* widget Spine 控件对象
---* trackIndex 轨道索引
---* name 动画名
---* loop 是否循环播放
---@param widget userdata
---@param trackIndex integer
---@param name string
---@param loop boolean
---@return false|nil "无效对象返回 false；有效时调用底层接口，无显式返回（nil）"
function GUI:SpineAnim_setAnimation(widget, trackIndex, name, loop) end

---设置骨骼动画插槽附件（按名称）
---* widget Spine 控件对象
---* slotName 插槽名
---* attachmentName 附件名（需存在于该插槽）
---@param widget userdata
---@param slotName string
---@param attachmentName string
---@return false|nil "无效对象返回 false；有效时设置成功，无显式返回（nil）"
function GUI:SpineAnim_setAttachment(widget, slotName, attachmentName) end

---设置骨骼动画水平翻转（X 轴镜像）
---* widget Spine 控件对象
---* bool true：翻转；false：正常
---@param widget userdata
---@param bool boolean
---@return false|nil "无效对象返回 false；有效时设置成功，无显式返回（nil）"
function GUI:SpineAnim_setFlipX(widget, bool) end

---设置骨骼动画垂直翻转（Y 轴镜像）
---* widget Spine 控件对象
---* bool true：翻转；false：正常
---@param widget userdata
---@param bool boolean
---@return false|nil "无效对象返回 false；有效时设置成功，无显式返回（nil）"
function GUI:SpineAnim_setFlipY(widget, bool) end

---设置骨骼动画过渡时长
---* widget Spine 控件对象
---* fromAnimName 起始动画名
---* toAnimName 目标动画名
---* duration 过渡时长（秒）
---@param widget userdata
---@param fromAnimName string
---@param toAnimName string
---@param duration number
---@return false|nil "无效对象返回 false；有效时设置成功，无显式返回（nil）"
function GUI:SpineAnim_setMix(widget, fromAnimName, toAnimName, duration) end

---设置骨骼动画皮肤
---* widget Spine 控件对象
---* skinName 皮肤名称
---@param widget userdata
---@param skinName string
---@return false|nil "无效对象返回 false；有效时设置成功，无显式返回（nil）"
function GUI:SpineAnim_setSkin(widget, skinName) end

---重置骨骼动画插槽到初始姿态
---* widget Spine 控件对象
---@param widget userdata
---@return false|nil "无效对象返回 false；有效时重置成功，无显式返回（nil）"
function GUI:SpineAnim_setSlotsToSetupPose(widget) end

---设置骨骼动画播放时间缩放（速度）
---* widget Spine 控件对象
---* scale 播放速度（>1 更快，<1 更慢）
---@param widget userdata
---@param scale number
---@return false|nil "无效对象返回 false；有效时设置成功，无显式返回（nil）"
function GUI:SpineAnim_setTimeScale(widget, scale) end

---重置到初始姿态（骨骼+插槽）
---* widget Spine 控件对象
---@param widget userdata
---@return false|nil "无效对象返回 false；有效时重置成功，无显式返回（nil）"
function GUI:SpineAnim_setToSetupPose(widget) end

---设置骨骼动画插槽附件对象（传对象）
---* widget 插槽对象
---* attachment 附件对象
---@param widget string
---@param attachment string
---@return false|nil "无效对象返回 false；有效时设置成功，无显式返回（nil）"
function GUI:SpineSlot_setAttachment(widget, attachment) end

---设置骨骼动画插槽颜色（RGBA 0~1）
---* widget 插槽对象
---* r 红色分量（0~1）
---* g 绿色分量（0~1）
---* b 蓝色分量（0~1）
---* a 不透明度（0~1）
---@param widget string
---@param r number
---@param g number
---@param b number
---@param a number
---@return false|nil "无效对象返回 false；有效时设置成功，无显式返回（nil）"
function GUI:SpineSlot_setColor(widget, r, g, b, a) end

---设置骨骼动画插槽可见性
---* widget 插槽对象
---* isVisible true：可见；false：隐藏
---@param widget string
---@param isVisible boolean
---@return false|nil "无效对象返回 false；有效时设置成功，无显式返回（nil）"
function GUI:SpineSlot_setVisible(widget, isVisible) end

---设置红点唯一ID
---* widget 红点控件
---* gid 唯一id
---@param widget userdata
---@param gid string
---```lua
---GUI:RedDot_setGID(widget, gid)
---```
function GUI:RedDot_setGID(widget, gid) end

---红点控件绑定条件ID
---* widget 红点对象
---* conditionID 条件id
---@param widget userdata
---@param conditionID integer
---```lua
---GUI:RedDot_setBindConditionID(widget, conditionID)
---```
function GUI:RedDot_setBindConditionID(widget, conditionID) end

---设置容器内部滚动区域坐标
---* widget 容器对象
---* x x
---* y y
---@param widget userdata
---@param x number
---@param y number
---```lua
---local scrollView = GUI:ScrollView_Create(GUI:Attach_Bottom(), "scrollView", 200, 200, 300, 500, 1)
---GUI:ScrollView_setInnerContainerPosition(scrollView,100,100)
---```
function GUI:ScrollView_setInnerContainerPosition(widget, x, y) end

---设置列表容器内部滚动区域坐标
---* widget 容器对象
---* x x
---* y y
---@param widget userdata
---@param x number
---@param y number
---```lua
---local listView = GUI:ListView_Create(GUI:Attach_Bottom(), "listView", 200, 200, 300, 500, 1)
---GUI:ListView_setInnerContainerPosition(listView,100,100)
---```
function GUI:ListView_setInnerContainerPosition(widget, x, y) end

---设置复选框监听事件
---* widget 控件对象
---* eventCB 监听函数
---@param widget userdata
---@param eventCB function
---```lua
---GUI:CheckBox_addOnEvent(CheckBox, function(CheckBox,editbox)
---    if editbox == 0 then
---        --selected--选中
---    elseif editbox == 1 then
---        --unselected--未选择
---    end
---end)
---```
function GUI:CheckBox_addOnEvent(widget, eventCB) end

---设置播放器视频路径
---* widget 播放器对象
---* fileName 视频路径
---@param widget userdata
---@param fileName string
---```lua
---GUI:VideoPlayer_setFileName(vedioWidget, "res/03/testVedio.mp4")
---```
function GUI:VideoPlayer_setFileName(widget, fileName) end

---设置播放器视频是否原视频分辨率
---* widget 播放器对象
---* isEnable 是否原视频分辨率
---@param widget userdata
---@param isEnable boolean
---```lua
---GUI:VideoPlayer_setKeepAspectRatioEnabled(vedioWidget, true)
---```
function GUI:VideoPlayer_setKeepAspectRatioEnabled(widget, isEnable) end

---设置视频播放器是否全屏
---* widget 播放器对象
---* isEnable 是否全屏
---@param widget userdata
---@param isEnable boolean
---```lua
---GUI:VideoPlayer_setFullScreenEnabled(vedioWidget, true)
---```
function GUI:VideoPlayer_setFullScreenEnabled(widget, isEnable) end

---设置控件渐变色
---* widget 控件对象
---* startColor 开始颜色
---* endColor 结束颜色
---* xPer 渐变参数（xPer，xPer<br>1，0为横向渐变<br>0，1为纵向渐变）
---* yPer 渐变参数（xPer，xPer<br>1，0为横向渐变<br>0，1为纵向渐变）
---@param widget userdata
---@param startColor string
---@param endColor string
---@param xPer integer
---@param yPer integer
---```lua
---local parent = GUI:Win_Create("testWin", 0, 0, 0, 0, false, false, true, true)
---local Btn = GUI:Button_Create(parent, "BtnOk", 200, 200, "res/public/1900000679.png")
---GUI:Shader_GradientColor(Btn, "#FF0000", "#FFFFFF",1,0)
---```
function GUI:Shader_GradientColor(widget, startColor, endColor, xPer, yPer) end

---设置控件阴影
---* widget 控件对象
---@param widget userdata
---```lua
---local parent = GUI:Win_Create("testWin", 0, 0, 0, 0, false, false, true, true)
---local Btn = GUI:Button_Create(parent, "BtnOk", 200, 200, "res/public/1900000679.png")
---GUI:SetShaderShadow(Btn)
---```
function GUI:SetShaderShadow(widget) end

---设置控件X轴倾斜角度
---* widget 控件对象
---* value 倾斜角度（0 - 360）
---@param widget userdata
---@param value integer
---```lua
---local Btn = GUI:Button_Create(attachParent, "btnAnchor", 0, 0, "res/public/061302.PNG")
---GUI:setRotationSkewX(Btn, 120)
---```
function GUI:setRotationSkewX(widget, value) end

---设置控件Y轴倾斜角度
---* widget 控件对象
---* value 倾斜角度（0 - 360）
---@param widget userdata
---@param value integer
---```lua
---local Btn = GUI:Button_Create(attachParent, "btnAnchor", 0, 0, "res/public/061302.PNG")
---GUI:setRotationSkewY(Btn, 120)
---```
function GUI:setRotationSkewY(widget, value) end

---设置控件可见性
---* widget 控件对象
---* value 是否显示
---@param widget userdata
---@param value boolean
---```lua
---local Btn = GUI:Button_Create(attachParent, "btnAnchor", 0, 0, "res/public/061302.PNG")
---GUI:setVisible(Btn, false)
---```
function GUI:setVisible(widget, value) end

---设置控件不透明度
---* widget 控件对象
---* value 不透明度(0-255), 默认255
---@param widget userdata
---@param value integer
---```lua
---local Btn = GUI:Button_Create(attachParent, "btnAnchor", 0, 0, "res/public/061302.PNG")
---GUI:setOpacity(Btn, 150)
---```
function GUI:setOpacity(widget, value) end

---获取控件不透明度
---* widget 控件对象
---@param widget userdata
---@return number "控件不透明度"
---```lua
---local attachParent=GUI:Attach_Parent()
---local Btn = GUI:Button_Create(attachParent, "btnAnchor", 0, 0, "res/public/061302.PNG")
---GUI:setOpacity(Btn, 150)
---local Opacity=GUI:getOpacity(Btn)
---print("GUI:getOpacity------",type(Opacity),Opacity)
---```
function GUI:getOpacity(widget) end

---设置控件缩放
---* widget 控件对象
---* value 缩放比例, 默认1.0
---@param widget userdata
---@param value number
---```lua
---local Btn = GUI:Button_Create(attachParent, "btnAnchor", 0, 0, "res/public/061302.PNG")
---GUI:setScale(Btn,1.2)
---```
function GUI:setScale(widget, value) end

---获取控件缩放比例
---* widget 控件对象
---@param widget userdata
---@return number "控件缩放比例"
---```lua
---local Btn = GUI:Button_Create(attachParent, "btnAnchor", 0, 0, "res/public/061302.PNG")
---```
function GUI:getScale(widget) end

---设置控件X轴方向缩放
---* widget 控件对象
---* value 缩放比例, 默认1.0
---@param widget userdata
---@param value number
---```lua
---local Btn = GUI:Button_Create(attachParent, "btnAnchor", 0, 0, "res/public/061302.PNG")
---GUI:setScaleX(Btn, 1.5)
---```
function GUI:setScaleX(widget, value) end

---设置水平X轴方向翻转
---* widget 控件对象
---* value X轴方向是否翻转
---@param widget userdata
---@param value boolean
---```lua
---local Btn = GUI:Button_Create(attachParent, "btnAnchor", 0, 0, "res/public/061302.PNG")
---GUI:setFlippedX(Btn, true)
---```
function GUI:setFlippedX(widget, value) end

---设置垂直Y轴方向翻转
---* widget 控件对象
---* value Y轴方向是否翻转
---@param widget userdata
---@param value boolean
---```lua
---local Btn = GUI:Button_Create(attachParent, "btnAnchor", 0, 0, "res/public/061302.PNG")
---GUI:setFlippedY(Btn, true)
---```
function GUI:setFlippedY(widget, value) end

---设置控件渲染层级
---* widget 控件对象
---* value 渲染层级, 值越大显示越靠前
---@param widget userdata
---@param value integer
---```lua
---local Btn = GUI:Button_Create(attachParent, "btnAnchor", 0, 0, "res/public/061302.PNG")
---GUI:setLocalZOrder(Btn, 100)
---```
function GUI:setLocalZOrder(widget, value) end

---设置控件是否跟随父控件变化透明度
---* widget 控件对象
---* value 是否跟随
---@param widget userdata
---@param value boolean
---```lua
---local Btn = GUI:Button_Create(attachParent, "btnAnchor", 0, 0, "res/public/061302.PNG")
---GUI:setCascadeOpacityEnabled(Btn, true)
---```
function GUI:setCascadeOpacityEnabled(widget, value) end

---设置控件的所有子控件是否跟随变化透明度
---* widget 控件对象
---* value 是否跟随
---@param widget userdata
---@param value boolean
---```lua
---local Btn = GUI:Button_Create(attachParent, "btnAnchor", 0, 0, "res/public/061302.PNG")
---GUI:setChildrenCascadeOpacityEnabled(Btn, true)
---```
function GUI:setChildrenCascadeOpacityEnabled(widget, value) end

---设置控件是否可以触摸
---* widget 控件对象
---* value 是否触摸
---@param widget userdata
---@param value boolean
---```lua
---local Btn = GUI:Button_Create(attachParent, "btnAnchor", 0, 0, "res/public/061302.PNG")
---GUI:setTouchEnabled(Btn, true)
---```
function GUI:setTouchEnabled(widget, value) end

---设置延迟可触摸
---* widget 控件对象
---* delay 延迟触摸间隔
---@param widget userdata
---@param delay number
---```lua
---local Btn = GUI:Button_Create(attachParent, "btnAnchor", 0, 0, "res/public/061302.PNG")
---GUI:delayTouchEnabled(Btn, 2.0)
---```
function GUI:delayTouchEnabled(widget, delay) end

---设置控件是否可以鼠标触摸
---* widget 控件对象
---* value 是否鼠标触摸
---@param widget userdata
---@param value boolean
---```lua
---local Btn = GUI:Button_Create(attachParent, "btnAnchor", 0, 0, "res/public/061302.PNG")
---GUI:setMouseEnabled(Btn, false)
---```
function GUI:setMouseEnabled(widget, value) end

---设置控件是否触摸吞噬
---* widget 控件对象
---* value 是否吞噬
---@param widget userdata
---@param value boolean
---```lua
---local layout1 = GUI:Layout_Create(parent, "layout1", 0, 0, 100, 100, true)
---local layout2 = GUI:Layout_Create(layout1, "layout2", 0, 0, 100, 100, true)
---GUI:setSwallowTouches(layout2,true) -- 触摸layer2层 不会触发 layer1层 触摸回调函数
---GUI:setSwallowTouches(layout2,false) -- 触摸layer2层 同时触发 layer1层 触摸回调函数
---```
function GUI:setSwallowTouches(widget, value) end

---设置控件吞噬鼠标按键事件 [检查自身触摸吞噬时]
---* widget 控件对象
---@param widget userdata
---```lua
---local Btn = GUI:Button_Create(attachParent, "btnAnchor", 0, 0, "res/public/061302.PNG")
---GUI:setMouseRSwallowTouches(Btn)
---```
function GUI:setMouseRSwallowTouches(widget) end

---设置控件点击事件
---* widget 控件对象
---* func 回调函数
---@param widget userdata
---@param func function
---```lua
---local parent = GUI:Win_Create("winC", 0, 0, 0, 0, false, false, true, true, true, nil, nil, 1)
---local Btn = GUI:Button_Create(parent, "btnTest", 0, 0, "res/public/061302.PNG")
---GUI:addOnClickEvent(Btn, function()
---    --do something
---end)
---```
function GUI:addOnClickEvent(widget, func) end

---设置控件触摸事件
---* widget 控件对象
---* func 回调函数
---@param widget userdata
---@param func function
---```lua
----- 添加长按事件, 长按0.5秒触发
---GUI:addOnTouchEvent(btn, function(sender, type)
---    -- sender: 传入控件自身
---    -- type: 触摸类型 int 0 - 3
---    if type == GUIDefine.TouchEventType.BEGAN then           -- 0 触摸开始
---    if not sender._clicking then
---        sender._clicking = true
---        SL:scheduleOnce(sender, function()
---            sender._clicking = false
---            SL:Print("长按触发---")
---        end, 0.5)
---    end
---elseif type == GUIDefine.TouchEventType.MOVED then       -- 1 触摸移动
---
---
---elseif type == GUIDefine.TouchEventType.ENDED or type == GUIDefine.TouchEventType.CANCALED then       -- 2 触摸结束 3 触摸取消
---    if sender._clicking then
---        GUI:stopAllActions(sender)
---        sender._clicking = false
---        SL:Print("单击触发---")
---    end
---end
---end)
---```
---```lua
----- 添加双击事件 0.3秒间隔
---local function doubleCallBack()
---    SL:Print("双击触发---")
---end
---GUI:addOnTouchEvent(btn, function(sender, type)
---    -- sender: 传入控件自身
---    -- type: 触摸类型 int 0 - 3
---    if type == GUIDefine.TouchEventType.ENDED then     -- 2 触摸结束
---        if doubleCallBack then                         -- 双击事件
---            if not sender._lastClick then
---                sender._lastClick = true
---                sender._clickDelayHandler = SL:ScheduleOnce(function()
---                    SL:Print("单击触发---")
---                    sender._lastClick = nil
---                end, 0.3)
---            else
---                if sender._clickDelayHandler then
---                    SL:UnSchedule(sender._clickDelayHandler)
---                    sender._clickDelayHandler = nil
---                end
---                -- 双击回调方法
---                if doubleCallBack then
---                    doubleCallBack()
---                end
---                sender._lastClick = nil
---            end
---        end
---    end
---end)
---```
---```lua
---for i = 1, 5 do
---    GUI:addOnTouchEvent(ui["lock_" .. i], function(sender, type)
---        if type == GUIDefine.TouchEventType.ENDED then
---            local currentTime = os.time()
---            if not sender._lastClickTime then
---                sender._lastClickTime = 0
---            end
---            local timeDiff = currentTime - sender._lastClickTime
---            local doubleClickInterval = 0.3 -- 双击时间间隔（秒）
---            if timeDiff < doubleClickInterval then
---                -- 双击事件
---                SL:Print("双击了" .. i)
---                sender._lastClickTime = 0 -- 重置，避免连续三次点击也被认为是双击
---                -- 这里添加双击处理逻辑
---            else
---                -- 单击事件
---                sender._lastClickTime = currentTime
---                SL:Print("单击了" .. i)
---                -- 这里添加单击处理逻辑
---            end
---        end
---    end)
---end
---```
function GUI:addOnTouchEvent(widget, func) end

---设置控件长按触发事件
---* widget 控件对象
---* func 回调函数
---@param widget userdata
---@param func function
---```lua
---GUI:addOnLongTouchEvent(Btn, function()
---    --do something
---end)
---```
function GUI:addOnLongTouchEvent(widget, func) end

---设置控件鼠标进入/移出事件
---* widget 控件对象
---* param onEnterFunc: function 鼠标进入回调函数<br>onLeaveFunc: function 鼠标移出回调函数<br>onInsideFunc: function 鼠标一直在内部回调函数
---@param widget userdata
---@param param table
---```lua
---GUI:addMouseMoveEvent(button,
---    {
---        onEnterFunc = function()
---            SL:Print("enter!")
---        end,
---        onLeaveFunc = function()
---            SL:Print("leave!")
---        end
---    }
---)
---```
function GUI:addMouseMoveEvent(widget, param) end

---设置鼠标按钮事件
---* widget 控件对象
---* param onRightDownFunc: function 鼠标右键点击事件; <br> onRightUpFunc: function 鼠标右键松开事件;<br> needTouchPos: boolean 需要传入鼠标触摸位置;<br>~~onScrollFunc: function 鼠标滚轮滚动事件~~;<br>onDoubleLFunc: function 鼠标左键双击事件;<br>checkIsVisible: boolean 检查控件可见;<br>checkTouchEnable: boolean 检查控件可点性
---@param widget userdata
---@param param table
---```lua
---GUI:addMouseButtonEvent(btn, {onRightDownFunc = function()
---    SL:Print("right!!!!")
---end})
---```
function GUI:addMouseButtonEvent(widget, param) end

---设置鼠标经过控件显示文本
---* widget 控件对象
---* str 文本
---* pos 位置
---* anr 锚点
---* param checkCallback: function 检查接触点是否能展示[函数传入参数: pos <br>返回: true / false ]
---@param widget userdata
---@param str string
---@param pos table
---@param anr table
---@param param table
---```lua
---local param = {
---    checkCallback = function(touchPos)
---        if touchPos and GUI:isClippingParentContainsPoint(Image_icon, touchPos) then
---            return true
---        end
---        return false
---    end
---}
---GUI:addMouseOverTips(Image_icon, "DESC_____", nil, nil, param)
---```
function GUI:addMouseOverTips(widget, str, pos, anr, param) end

---键盘监听事件
---* codeKeys 要监听的键盘键key
---* pressedCB 按下回调
---* releaseCB 松开回调(单按键时有效)
---* autoPressInterval 长按触发函数间隔 默认 1
---* checkFullSort 兼容全顺序键盘key排列, 针对监听多键
---@param codeKeys string | table
---@param pressedCB function
---@param releaseCB function
---@param autoPressInterval integer
---@param checkFullSort boolean
---```tips
---!!!!键盘键key!!!!
---"KEY_NONE"
---"KEY_PAUSE"
---"KEY_SCROLL_LOCK"
---"KEY_PRINT"
---"KEY_SYSREQ"
---"KEY_BREAK"
---"KEY_ESCAPE"
---"KEY_BACKSPACE"
---"KEY_TAB"
---"KEY_BACK_TAB"
---"KEY_RETURN"
---"KEY_CAPS_LOCK"
---"KEY_SHIFT"
---"KEY_RIGHT_SHIFT"
---"KEY_CTRL"
---"KEY_RIGHT_CTRL"
---"KEY_ALT"
---"KEY_RIGHT_ALT"
---"KEY_MENU"
---"KEY_HYPER"
---"KEY_INSERT"
---"KEY_HOME"
---"KEY_PG_UP"
---"KEY_DELETE"
---"KEY_END"
---"KEY_PG_DOWN"
---"KEY_LEFT_ARROW"
---"KEY_RIGHT_ARROW"
---"KEY_UP_ARROW"
---"KEY_DOWN_ARROW"
---"KEY_NUM_LOCK"
---"KEY_KP_PLUS"
---"KEY_KP_MINUS"
---"KEY_KP_MULTIPLY"
---"KEY_KP_DIVIDE"
---"KEY_KP_ENTER"
---"KEY_KP_HOME"
---"KEY_KP_UP"
---"KEY_KP_PG_UP"
---"KEY_KP_LEFT"
---"KEY_KP_FIVE"
---"KEY_KP_RIGHT"
---"KEY_KP_END"
---"KEY_KP_DOWN"
---"KEY_KP_PG_DOWN"
---"KEY_KP_INSERT"
---"KEY_KP_DELETE"
---"KEY_F1"
---"KEY_F2"
---"KEY_F3"
---"KEY_F4"
---"KEY_F5"
---"KEY_F6"
---"KEY_F7"
---"KEY_F8"
---"KEY_F9"
---"KEY_F10"
---"KEY_F11"
---"KEY_F12"
---"KEY_SPACE"
---"KEY_EXCLAM"
---"KEY_QUOTE"
---"KEY_NUMBER"
---"KEY_DOLLAR"
---"KEY_PERCENT"
---"KEY_CIRCUMFLEX"
---"KEY_AMPERSAND"
---"KEY_APOSTROPHE"
---"KEY_LEFT_PARENTHESIS"
---"KEY_RIGHT_PARENTHESIS"
---"KEY_ASTERISK"
---"KEY_PLUS"
---"KEY_COMMA"
---"KEY_MINUS"
---"KEY_PERIOD"
---"KEY_SLASH"
---"KEY_0"
---"KEY_1"
---"KEY_2"
---"KEY_3"
---"KEY_4"
---"KEY_5"
---"KEY_6"
---"KEY_7"
---"KEY_8"
---"KEY_9"
---"KEY_COLON"
---"KEY_SEMICOLON"
---"KEY_LESS_THAN"
---"KEY_EQUAL"
---"KEY_GREATER_THAN"
---"KEY_QUESTION"
---"KEY_AT"
---"KEY_CAPITAL_A"
---"KEY_CAPITAL_B"
---"KEY_CAPITAL_C"
---"KEY_CAPITAL_D"
---"KEY_CAPITAL_E"
---"KEY_CAPITAL_F"
---"KEY_CAPITAL_G"
---"KEY_CAPITAL_H"
---"KEY_CAPITAL_I"
---"KEY_CAPITAL_J"
---"KEY_CAPITAL_K"
---"KEY_CAPITAL_L"
---"KEY_CAPITAL_M"
---"KEY_CAPITAL_N"
---"KEY_CAPITAL_O"
---"KEY_CAPITAL_P"
---"KEY_CAPITAL_Q"
---"KEY_CAPITAL_R"
---"KEY_CAPITAL_S"
---"KEY_CAPITAL_T"
---"KEY_CAPITAL_U"
---"KEY_CAPITAL_V"
---"KEY_CAPITAL_W"
---"KEY_CAPITAL_X"
---"KEY_CAPITAL_Y"
---"KEY_CAPITAL_Z"
---"KEY_LEFT_BRACKET"
---"KEY_BACK_SLASH"
---"KEY_RIGHT_BRACKET"
---"KEY_UNDERSCORE"
---"KEY_GRAVE"
---"KEY_A"
---"KEY_B"
---"KEY_C"
---"KEY_D"
---"KEY_E"
---"KEY_F"
---"KEY_G"
---"KEY_H"
---"KEY_I"
---"KEY_J"
---"KEY_K"
---"KEY_L"
---"KEY_M"
---"KEY_N"
---"KEY_O"
---"KEY_P"
---"KEY_Q"
---"KEY_R"
---"KEY_S"
---"KEY_T"
---"KEY_U"
---"KEY_V"
---"KEY_W"
---"KEY_X"
---"KEY_Y"
---"KEY_Z"
---"KEY_LEFT_BRACE"
---"KEY_BAR"
---"KEY_RIGHT_BRACE"
---"KEY_TILDE"
---"KEY_EURO"
---"KEY_POUND"
---"KEY_YEN"
---"KEY_MIDDLE_DOT"
---"KEY_SEARCH"
---"KEY_DPAD_LEFT"
---"KEY_DPAD_RIGHT"
---"KEY_DPAD_UP"
---"KEY_DPAD_DOWN"
---"KEY_DPAD_CENTER"
---"KEY_ENTER"
---"KEY_PLAY"
---```
---```lua
---local function pressedCB()
---    SL:Print("Presss!!!!!!!!!!!!!!")
---end
---local function releaseCB()
---    SL:Print("release!!!!!!!!!!!!!!")
---end
---
---
---GUI:addKeyboardEvent("KEY_F7", pressedCB, releaseCB)
---```
function GUI:addKeyboardEvent(codeKeys, pressedCB, releaseCB, autoPressInterval, checkFullSort) end

---移除键盘监听
---* codeKeys 要移除监听的键盘键key
---@param codeKeys string | table
---```lua
---GUI:removeKeyboardEvent("KEY_F7")
---```
function GUI:removeKeyboardEvent(codeKeys) end

---加载纹理图片
---* widget 图片对象
---* filepath 图片路径
---@param widget userdata
---@param filepath string
---```lua
---path="btn_jnkan_01.png"
---GUI:Image_loadTexture(img, path)
---```
function GUI:Image_loadTexture(widget, filepath) end

---设置物品放入框监听事件
---* widget 父节点对象
---* eventCB 事件处理函数
---@param widget userdata
---@param eventCB function
---```lua
---local returnVal=GUI:ItemBox_Create(Hand, "itemBo2323x", 250, 250, "res/gmmain/02.png", 613, 5)
---GUI:ItemBox_AddOnEvent(returnVal, function(eventType, itemData)
---    if eventType == 1 then
---        dump(itemData)
---        print("移入")
---    elseif eventType == 2 then
---        print("移出")
---        dump(itemData)
---    elseif eventType == 3 then
---        print("更新")
---        dump(itemData)
---    end
---end)
---```
function GUI:ItemBox_AddOnEvent(widget, eventCB) end
