-- ============================================================
-- Kitsune Hub — Logo Loader
-- Скачивает наш логотип Kitsune с CDN и использует его во всём UI.
-- Если загрузка не удалась — fallback на rbxassetid://90791694090379.
-- ============================================================
local KITSUNE_LOGO_URL = "https://cdn.discordapp.com/attachments/1551637790775709797/1567520721310326854/1793796336812.jpg?ex=6aec7aef&is=6aeb296f&hm=f0e0e928c70c9a5b8a4388dca16e4fd02e5761ba0d9613a2311d04d6b911e39f&"
local KITSUNE_LOGO = "rbxassetid://90791694090379"
pcall(function()
    if makefolder and isfolder and not isfolder("KitsuneHub") then
        pcall(makefolder, "KitsuneHub")
    end
    if makefolder and isfolder and isfolder("KitsuneHub") and not isfolder("KitsuneHub/Assets") then
        pcall(makefolder, "KitsuneHub/Assets")
    end
    local logoPath = "KitsuneHub/Assets/logo.jpg"
    local needDownload = true
    if isfile and isfile(logoPath) then
        needDownload = false
    end
    if needDownload and writefile then
        local data = game:HttpGet(KITSUNE_LOGO_URL)
        if data and #data > 1000 then
            pcall(writefile, logoPath, data)
        end
    end
    if isfile and isfile(logoPath) and getcustomasset then
        KITSUNE_LOGO = getcustomasset(logoPath)
    end
end)
getgenv().KITSUNE_LOGO = KITSUNE_LOGO
-- ============================================================

local function forEachYield(iterator, state, control)
    local yield = coroutine.yield
    yield()
    local ok = true
    for key, value in iterator, state, control do
        yield(ok, key, value)
    end
end
local tbl
local connection, UserInputService2, TweenService2, localPlayer
local fn, fn2
local jerkOn, spinOn, spinSpeed, friendOn, fn3, fn4, fn5, fn6, walkFlingOn, aspectRatioOn, connection2, disableAspectRatio, enableAspectRatio, fn7, fn8, fn9, fn10
local player, connection3, Players2, fn11, fn12, fn13, fn14, fn15
local customGunModelEnabled, selectedGunModelName, fn16, tbl2, fn17, fn18
local fn19, fn20, fn21, fn22, fn23, disableVoteDupe, fn24, enabled, gunESP, trapESP, autoShoot, shootOff, autoGetGun, gunPickupMethod, silentAimEnabled, forceShotEnabled, offset, enabled2, disableAntiAim, enableAntiAim, disableAntiCoin, enableAntiCoin, fn25, fn26, fn27, fn28, disableKillAura, enableKillAura, fn29, fn30, fn31, fn32, disableAutoKnife, enableAutoKnife
local ctrlTP, number, blinkOn, blinkSpeed, antiflingOn, fn33, disableFly, fn34, fn35, fn36, fn37
local value, text
if getgenv().Library then
    getgenv().Library:Unload()
end
do
    local UserInputService = game:GetService("UserInputService")
    local Players = game:GetService("Players")
    local Workspace = game:GetService("Workspace")
    local HttpService = game:GetService("HttpService")
    local TweenService = game:GetService("TweenService")
    game:GetService("RunService")
    local getCoreGui
    local CoreGui = cloneref and cloneref(game:GetService("CoreGui")) or game:GetService("CoreGui")
    local v1 = gethui
    if v1 then
        getCoreGui = v1
    else
        getCoreGui = function()
            return CoreGui
        end
    end
    gethui = getCoreGui
    local localPlayer2 = Players.LocalPlayer
    local currentCamera = Workspace.CurrentCamera
    local mouse = localPlayer2:GetMouse()
    local fromRGB = Color3.fromRGB
    local fromHSV = Color3.fromHSV
    local fromHex = Color3.fromHex
    local newColorSequence = ColorSequence.new
    local newColorSequenceKeypoint = ColorSequenceKeypoint.new
    local newNumberSequence = NumberSequence.new
    local newNumberSequenceKeypoint = NumberSequenceKeypoint.new
    local newUDim2 = UDim2.new
    local newUDim = UDim.new
    local newVector2 = Vector2.new
    local newInstance = Instance.new
    local clamp = math.clamp
    local floor = math.floor
    local abs = math.abs
    local sin = math.sin
    local insert = table.insert
    local find = table.find
    local remove = table.remove
    local concat = table.concat
    local clone = table.clone
    local unpack = table.unpack
    local format = string.format
    local find2 = string.find
    local gsub = string.gsub
    local lower = string.lower
    local newRect = Rect.new
    connection = {}
    connection.Flags = {}
    connection.MenuKeybind = tostring(Enum.KeyCode.Z)
    connection.Tween = {Time = 0.25, Style = Enum.EasingStyle.Quad, Direction = Enum.EasingDirection.Out}
    connection.Folders = {Directory = "zoophack", Configs = "zoophack/Configs", Assets = "zoophack/Assets", Themes = "zoophack/Themes"}
    connection.Images = {
        Saturation = {"Saturation.png", "https://github.com/sametexe001/images/blob/main/saturation.png?raw=true"},
        Value = {"Value.png", "https://github.com/sametexe001/images/blob/main/value.png?raw=true"},
        Hue = {"Hue.png", "https://github.com/sametexe001/images/blob/main/horizontalhue.png?raw=true"},
        Checkers = {"Checkers.png", "https://github.com/sametexe001/images/blob/main/checkers.png?raw=true"},
        Scrollbar = {"Scrollbar.png", "https://github.com/sametexe001/images/blob/main/scrollbar.png?raw=true"},
    }
    connection.Pages = {}
    connection.Sections = {}
    connection.Connections = {}
    connection.Threads = {}
    connection.ThemeMap = {}
    connection.ThemeItems = {}
    connection.Themes = {}
    connection.CurrentFrames = {}
    connection.ThemeColorpickers = {}
    connection.SetFlags = {}
    connection.UnnamedConnections = 0
    connection.UnnamedFlags = 0
    connection.Holder = nil
    connection.UnusedHolder = nil
    connection.NotifHolder = nil
    connection.Font = nil
    connection.BoldFont = nil
    connection.IconFont = nil
    local tbl3 = {
        Unknown = "Unknown",
        Backspace = "Back",
        Tab = "Tab",
        Clear = "Clear",
        Return = "Return",
        Pause = "Pause",
        Escape = "Escape",
        Space = "Space",
        QuotedDouble = '"',
        Hash = "#",
        Dollar = "$",
        Percent = "%",
        Ampersand = "&",
        Quote = "'",
        LeftParenthesis = "(",
        RightParenthesis = " )",
        Asterisk = "*",
        Plus = "+",
        Comma = ",",
        Minus = "-",
        Period = ".",
        Slash = "`",
        Three = "3",
        Seven = "7",
        Eight = "8",
        Colon = ":",
        Semicolon = ";",
        LessThan = "<",
        GreaterThan = ">",
        Question = "?",
        Equals = "=",
        At = "@",
        LeftBracket = "LeftBracket",
        RightBracket = "RightBracked",
        BackSlash = "BackSlash",
        Caret = "^",
        Underscore = "_",
        Backquote = "`",
        LeftCurly = "{",
        Pipe = "|",
        RightCurly = "}",
        Tilde = "~",
        Delete = "Delete",
        End = "End",
        KeypadZero = "Keypad0",
        KeypadOne = "Keypad1",
        KeypadTwo = "Keypad2",
        KeypadThree = "Keypad3",
        KeypadFour = "Keypad4",
        KeypadFive = "Keypad5",
        KeypadSix = "Keypad6",
        KeypadSeven = "Keypad7",
        KeypadEight = "Keypad8",
        KeypadNine = "Keypad9",
        KeypadPeriod = "KeypadP",
        KeypadDivide = "KeypadD",
        KeypadMultiply = "KeypadM",
        KeypadMinus = "KeypadM",
        KeypadPlus = "KeypadP",
        KeypadEnter = "KeypadE",
        KeypadEquals = "KeypadE",
        Insert = "Insert",
        Home = "Home",
        PageUp = "PageUp",
        PageDown = "PageDown",
        RightShift = "RightShift",
        LeftShift = "LeftShift",
        RightControl = "RightControl",
        LeftControl = "LeftControl",
        LeftAlt = "LeftAlt",
        RightAlt = "RightAlt",
    }
    connection.__index = connection
    connection.Pages.__index = connection.Pages
    connection.Sections.__index = connection.Sections
    local folders = connection.Folders
    local v2 = nil
    local v3 = nil
    for _, value2 in folders, v2, v3 do
        if not isfolder(value2) then
            makefolder(value2)
        end
    end
    local images = connection.Images
    local v4 = nil
    local v5 = nil
    for _, value2 in images, v4, v5 do
        if not isfile(connection.Folders.Assets .. "/" .. value2[1]) then
            local v6 = game
            writefile(connection.Folders.Assets .. "/" .. value2[1], v6:HttpGet(value2[2]))
        end
    end
    local themes = {}
    local default = {}
    default.Background = fromRGB(10, 9, 8)
    default.Inline = fromRGB(15, 13, 11)
    default.Text = fromRGB(245, 242, 238)
    default.Element = fromRGB(15, 13, 11)
    default.Image = fromRGB(245, 242, 238)
    default.Accent = fromRGB(224, 116, 24)
    default["Light Accent"] = fromRGB(255, 170, 54)
    default.Border = fromRGB(50, 34, 23)
    themes.Default = default
    local white = {}
    white.Background = fromRGB(18, 18, 20)
    white.Inline = fromRGB(28, 28, 31)
    white.Text = fromRGB(248, 248, 250)
    white.Element = fromRGB(35, 35, 39)
    white.Image = fromRGB(248, 248, 250)
    white.Accent = fromRGB(235, 235, 240)
    white["Light Accent"] = fromRGB(255, 255, 255)
    white.Border = fromRGB(105, 105, 115)
    themes.White = white
    local blue = {}
    blue.Background = fromRGB(7, 14, 25)
    blue.Inline = fromRGB(11, 24, 42)
    blue.Text = fromRGB(232, 244, 255)
    blue.Element = fromRGB(14, 32, 55)
    blue.Image = fromRGB(225, 242, 255)
    blue.Accent = fromRGB(43, 153, 255)
    blue["Light Accent"] = fromRGB(118, 202, 255)
    blue.Border = fromRGB(25, 77, 125)
    themes.Blue = blue
    local pink = {}
    pink.Background = fromRGB(25, 10, 20)
    pink.Inline = fromRGB(42, 16, 34)
    pink.Text = fromRGB(255, 239, 248)
    pink.Element = fromRGB(54, 20, 44)
    pink.Image = fromRGB(255, 232, 246)
    pink.Accent = fromRGB(244, 78, 164)
    pink["Light Accent"] = fromRGB(255, 145, 204)
    pink.Border = fromRGB(119, 35, 83)
    themes.Pink = pink
    local purple = {}
    purple.Background = fromRGB(15, 10, 28)
    purple.Inline = fromRGB(27, 17, 49)
    purple.Text = fromRGB(242, 235, 255)
    purple.Element = fromRGB(37, 23, 65)
    purple.Image = fromRGB(239, 230, 255)
    purple.Accent = fromRGB(154, 91, 255)
    purple["Light Accent"] = fromRGB(202, 157, 255)
    purple.Border = fromRGB(78, 42, 135)
    themes.Purple = purple
    local green = {}
    green.Background = fromRGB(8, 20, 16)
    green.Inline = fromRGB(13, 35, 27)
    green.Text = fromRGB(232, 255, 242)
    green.Element = fromRGB(17, 47, 36)
    green.Image = fromRGB(225, 255, 237)
    green.Accent = fromRGB(38, 199, 126)
    green["Light Accent"] = fromRGB(113, 239, 175)
    green.Border = fromRGB(24, 102, 70)
    themes.Green = green
    connection.Theme = clone(themes.Default)
    connection.Themes = themes
    local tbl4 = {}
    tbl4.__index = tbl4
    function tbl4.Create(_, element, tweenInfo, v6, instance)
        if instance then
            instance = element
        end
        if not instance then
            instance = element.Instance
        end
        if not tweenInfo then
            tweenInfo = TweenInfo.new(connection.Tween.Time, connection.Tween.Style, connection.Tween.Direction)
        end
        local tbl5 = {Tween = TweenService:Create(instance, tweenInfo, v6), Info = tweenInfo, Goal = v6, Item = instance}
        tbl5.Tween:Play()
        setmetatable(tbl5, tbl4)
        return tbl5
    end
    function tbl4:Get()
        if self.Tween then
            return self.Tween, self.Info, self.Goal
        end
    end
    function tbl4:Pause()
        if self.Tween then
            self.Tween:Pause()
        end
    end
    function tbl4:Play()
        if self.Tween then
            self.Tween:Play()
        end
    end
    function tbl4:Clean()
        if self.Tween then
            tbl4:Pause()
        end
    end
    local tbl5 = {}
    tbl5.__index = tbl5
    function tbl5.Create(_, v6, v7)
        local element = {Instance = newInstance(v6), Properties = v7, Class = v6}
        setmetatable(element, tbl5)
        for key, value2 in element.Properties do
            element.Instance[key] = value2
        end
        return element
    end
    function tbl5:AddToTheme(v6)
        if self.Instance then
            connection:AddToTheme(self, v6)
        end
    end
    function tbl5:ChangeItemTheme(v6)
        if self.Instance then
            connection:ChangeItemTheme(self, v6)
        end
    end
    function tbl5:Connect(v6, v7, v8)
        if self.Instance then
            if self.Instance[v6] then
                return connection:Connect(self.Instance[v6], v7, v8)
            end
        end
    end
    function tbl5:Tween(v6, v7)
        if self.Instance then
            return tbl4:Create(self, v6, v7)
        end
    end
    function tbl5:Disconnect(v6)
        if self.Instance then
            return connection:Disconnect(v6)
        end
    end
    function tbl5:Clean()
        if self.Instance then
            self.Instance:Destroy()
        end
    end
    function tbl5:MakeDraggable()
        if self.Instance then
            local instance = self.Instance
            local enabled3 = false
            local position = nil
            local position2 = nil
            local function fn38(v6)
                local value2 = v6.Position - position
                self:Tween(TweenInfo.new(0.2, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
                    Position = newUDim2(position2.X.Scale, position2.X.Offset + value2.X, position2.Y.Scale, position2.Y.Offset + value2.Y),
                })
            end
            self:Connect("InputBegan", function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                    enabled3 = true
                    position = input.Position
                    position2 = instance.Position
                    self.Debounce = true
                end
            end)
            self:Connect("InputEnded", function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                    enabled3 = false
                    self.Debounce = false
                end
            end)
            connection:Connect(UserInputService.InputChanged, function(input)
                if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
                    if enabled3 then
                        self.Debounce = true
                        fn38(input)
                    end
                end
            end)
            return enabled3
        end
    end
    function tbl5:MakeResizeable(v6, v7)
        if self.Instance then
            local instance = self.Instance
            local enabled3 = false
            local value2 = newUDim2()
            local value3 = newUDim2()
            local value4 = instance.Parent.AbsoluteSize - instance.AbsoluteSize
            local v8 = tbl5:Create("TextButton", {
                Parent = instance,
                AnchorPoint = Vector2.new(1, 1),
                BorderColor3 = fromRGB(0, 0, 0),
                Size = newUDim2(0, 8, 0, 8),
                Position = newUDim2(1, 0, 1, 0),
                Name = "\000",
                BorderSizePixel = 0,
                BackgroundTransparency = 1,
                AutoButtonColor = false,
                ZIndex = 2000,
                Visible = true,
                Text = "",
            })
            v8:Connect("InputBegan", function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                    enabled3 = true
                    value2 = instance.Size - newUDim2(0, input.Position.X, 0, input.Position.Y)
                end
            end)
            v8:Connect("InputEnded", function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                    enabled3 = false
                end
            end)
            connection:Connect(UserInputService.InputChanged, function(input)
                if input.UserInputType == Enum.UserInputType.MouseMovement and enabled3 and not self.Debounce then
                    local value5 = v7
                    if not v7 then
                        value5 = instance.Parent.AbsoluteSize - instance.AbsoluteSize
                    end
                    value4 = value5
                    value3 = value2 + newUDim2(0, input.Position.X, 0, input.Position.Y)
                    local value6 = math.clamp(value3.X.Offset, v6.X, value4.X)
                    local v9 = table.pack(math.clamp(value3.Y.Offset, v6.Y, value4.Y))
                    local n = v9.n
                    v9.n = 4 + n - 1
                    table.move(v9, 1, n, 4, v9)
                    v9[1], v9[2], v9[3] = 0, value6, 0
                    value3 = newUDim2(table.unpack(v9, 1, v9.n))
                    local tbl6 = {Size = value3}
                    tbl4:Create(instance, TweenInfo.new(0.2, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), tbl6, true)
                end
            end)
            return enabled3
        end
    end
    function tbl5.OnHover(element, v6)
        if element.Instance then
            return connection:Connect(element.Instance.MouseEnter, v6)
        end
    end
    function tbl5.OnHoverLeave(element, v6)
        if element.Instance then
            return connection:Connect(element.Instance.MouseLeave, v6)
        end
    end
    local tbl6 = {
        New = function(_, v6, v7, v8, v9)
            if isfile(connection.Folders.Assets .. "/" .. v6 .. ".json") then
                local v10 = getcustomasset
                return Font.new(v10(connection.Folders.Assets .. "/" .. v6 .. ".json"))
            else
                if not isfile(connection.Folders.Assets .. "/" .. v6 .. ".ttf") then
                    local v10 = game
                    writefile(connection.Folders.Assets .. "/" .. v6 .. ".ttf", v10:HttpGet(v9.Url))
                end
                local tbl6 = {name = v6}
                tbl6.faces = {
                    {
                        name = "Regular",
                        weight = v7,
                        style = v8,
                        assetId = getcustomasset(connection.Folders.Assets .. "/" .. v6 .. ".ttf"),
                    },
                }
                writefile(connection.Folders.Assets .. "/" .. v6 .. ".json", HttpService:JSONEncode(tbl6))
                local v10 = getcustomasset
                return Font.new(v10(connection.Folders.Assets .. "/" .. v6 .. ".json"))
            end
        end,
        Get = function(_, v6)
            if isfile(connection.Folders.Assets .. "/" .. v6 .. ".json") then
                local v7 = getcustomasset
                return Font.new(v7(connection.Folders.Assets .. "/" .. v6 .. ".json"))
            end
        end,
    }
    tbl6:New("Inter", 200, "Regular", {Url = "https://github.com/sametexe001/luas/raw/refs/heads/main/fonts/Inter.ttf"})
    tbl6:New("InterBold", 200, "Bold", {Url = "https://github.com/sametexe001/luas/raw/refs/heads/main/fonts/InterBold.ttf"})
    connection.Font = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    connection.BoldFont = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
    connection.IconFont = Font.new("rbxasset://LuaPackages/Packages/_Index/BuilderIcons/BuilderIcons/BuilderIcons.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    connection.Holder = tbl5:Create("ScreenGui", {Parent = gethui(), Name = "\000", ZIndexBehavior = Enum.ZIndexBehavior.Global, IgnoreGuiInset = true})
    connection.UnusedHolder = tbl5:Create("ScreenGui", {
        Parent = gethui(),
        Name = "\000",
        ZIndexBehavior = Enum.ZIndexBehavior.Global,
        IgnoreGuiInset = true,
        Enabled = false,
    })
    connection.NotifHolder = tbl5:Create("Frame", {
        Parent = connection.Holder.Instance,
        BorderColor3 = fromRGB(0, 0, 0),
        Name = "\000",
        BackgroundTransparency = 1,
        Position = newUDim2(0, 15, 0, 55),
        Size = newUDim2(0, 0, 1, -55),
        BorderSizePixel = 0,
        AutomaticSize = Enum.AutomaticSize.X,
        BackgroundColor3 = fromRGB(245, 242, 238),
    })
    tbl5:Create("UIListLayout", {Parent = connection.NotifHolder.Instance, Padding = newUDim(0, 14), SortOrder = Enum.SortOrder.LayoutOrder})
    function connection:GetImage(v6)
        local v7 = self.Images[v6]
        if v7 then
            return getcustomasset(self.Folders.Assets .. "/" .. v7[1])
        end
    end
    function connection.Round(_, v6, v7)
        local v8 = 10 ^ math.max(0, math.floor(tonumber(v7) or 0))
        return floor(v6 * v8 + 0.5) / v8
    end
    function connection.IsMouseOverFrame(_, element)
        local instance = element.Instance or element
        local absolutePosition = instance.AbsolutePosition
        local absoluteSize = instance.AbsoluteSize
        if mouse.X >= absolutePosition.X and mouse.X <= absolutePosition.X + absoluteSize.X and mouse.Y >= absolutePosition.Y and mouse.Y <= absolutePosition.Y + absoluteSize.Y then
            return true
        else
            return false
        end
    end
    function connection:Unload()
        local connections = self.Connections
        local v6 = nil
        local v7 = nil
        for _, value2 in connections, v6, v7 do
            value2.Connection:Disconnect()
        end
        local threads = self.Threads
        local v8 = nil
        local v9 = nil
        for _, value2 in threads, v8, v9 do
            coroutine.close(value2)
        end
        if self.Holder then
            self.Holder:Clean()
        end
        getgenv().Library = nil
        connection = nil
    end
    function connection:Thread(v6)
        local thread = coroutine.create(v6)
        coroutine.wrap(function()
            coroutine.resume(thread)
        end)()
        insert(self.Threads, thread)
        return thread
    end
    function connection.SafeCall(...)
        local tbl7 = {...}
        local _, v6 = tbl7[1], tbl7[2]
        local v7, v8 = pcall(v6, unpack({select(3, ...)}))
        local v9 = v7
        if not v7 then
            connection:Notification("Error!", "Error caught in function, report this to the devs:\n" .. v8, 5)
            return false
        else
            return v9
        end
    end
    function connection:Connect(v6, v7, v8)
        local v9
        if v8 then
            v9 = v8
        else
            local value2 = self.UnnamedConnections + 1
            local v10 = table.pack(HttpService:GenerateGUID(false))
            local n = v10.n
            v10.n = 3 + n - 1
            table.move(v10, 1, n, 3, v10)
            v10[1], v10[2] = "Connection_%s_%s", value2
            v9 = format(table.unpack(v10, 1, v10.n))
        end
        local tbl7 = {Event = v6, Callback = v7, Name = v9, Connection = nil}
        connection:Thread(function()
            tbl7.Connection = v6:Connect(v7)
        end)
        insert(self.Connections, tbl7)
        return tbl7
    end
    function connection:Disconnect(v6)
        local connections = self.Connections
        local v7 = nil
        local enabled3 = false
        for _, value2 in connections, nil, v7 do
            v7 = value2
            if value2.Name == v6 then
                enabled3 = true
                break
            else
                continue
            end
            return
        end
        if not enabled3 then
            return
        end
        v7.Connection:Disconnect()
    end
    function connection.NextFlag(...)
        local value2 = ({...})[1].UnnamedFlags + 1
        local v6 = table.pack(HttpService:GenerateGUID(false))
        local n = v6.n
        v6.n = 3 + n - 1
        table.move(v6, 1, n, 3, v6)
        v6[1], v6[2] = "Flag Number %s %s", value2
        return format(table.unpack(v6, 1, v6.n))
    end
    function connection:AddToTheme(element, v6)
        local instance = element.Instance or element
        local tbl7 = {Item = instance, Properties = v6}
        local properties = tbl7.Properties
        local v7 = nil
        local v8 = nil
        for key, value2 in properties, v7, v8 do
            local v9 = value2
            if type(value2) == "string" then
                instance[key] = self.Theme[v9]
            else
                instance[key] = v9
            end
        end
        insert(self.ThemeItems, tbl7)
        self.ThemeMap[instance] = tbl7
    end
    function connection:GetConfig()
        local tbl7 = {}
        self:SafeCall(function()
            local flags = self.Flags
            local v6 = nil
            local v7 = nil
            for key, value2 in flags, v6, v7 do
                local v8 = value2
                if type(value2) == "table" and value2.Key then
                    tbl7[key] = {Key = tostring(v8.Key), Mode = v8.Mode}
                elseif type(v8) == "table" and v8.Color then
                    tbl7[key] = {Color = v8.HexValue, Alpha = v8.Alpha}
                else
                    tbl7[key] = v8
                end
            end
        end)
        return HttpService:JSONEncode(tbl7)
    end
    function connection.LoadConfig(v6, v7)
        local v8 = HttpService:JSONDecode(v7)
        v6:SafeCall(function()
            local v9 = nil
            local v10 = nil
            for key, value2 in v8, v9, v10 do
                local v11 = v6.SetFlags[key]
                if v11 then
                    if type(value2) == "table" and value2.Key then
                        v11(value2)
                    elseif type(value2) == "table" and value2.Color then
                        v11(value2.Color, value2.Alpha)
                    else
                        v11(value2)
                    end
                end
            end
        end)
    end
    function connection.DeleteConfig(v6, v7)
        if isfile(v6.Folders.Configs .. "/" .. v7) then
            delfile(v6.Folders.Configs .. "/" .. v7)
            v6:Notification("Success", "Deleted config " .. v7, 5)
        end
    end
    function connection.SaveConfig(v6, v7)
        if isfile(v6.Folders.Configs .. "/" .. v7) then
            writefile(v6.Folders.Configs .. "/" .. v7, v6:GetConfig())
            v6:Notification("Success", "Saved config " .. v7, 5)
        end
    end
    function connection.RefreshConfigsList(v6, v7)
        local tbl7 = {}
        local list = {}
        local v8 = gsub(v6.Folders.Configs, v6.Folders.Directory .. "/", "")
        for key, value2 in listfiles(v6.Folders.Configs) do
            list[key] = gsub(value2, v6.Folders.Directory .. "\\" .. v8 .. "\\", "")
        end
        if #list == tbl7 then
            local count = #list
            for i = 1, count + 0 do
                if list[i] ~= tbl7[i] then
                    break
                else
                    continue
                end
                return
            end
        else
            v7:Refresh(list)
        end
    end
    function connection:ChangeItemTheme(element, properties)
        local instance = element.Instance or element
        if self.ThemeMap[instance] then
            self.ThemeMap[instance].Properties = properties
            self.ThemeMap[instance] = self.ThemeMap[instance]
        end
    end
    function connection:ChangeTheme(v6, v7)
        self.Theme[v6] = v7
        local themeItems = self.ThemeItems
        local v8 = nil
        for _, value2 in themeItems do
            v8 = value2
            local properties = value2.Properties
            local v9 = nil
            local v10 = nil
            for key, value3 in properties, v9, v10 do
                if type(value3) == "string" and value3 == v6 then
                    v8.Item[key] = v7
                end
            end
        end
    end
    function connection:ApplyTheme(v6)
        self.Themes = self.Themes or themes
        local default2 = self.Themes[v6] or self.Themes.Default or themes.Default
        self.Theme = self.Theme or clone(default2)
        local v7 = self.Themes[v6]
        if not v7 then
            v6 = v7
        end
        self.CurrentTheme = v6 or "Default"
        for key, value2 in pairs(default2) do
            self:ChangeTheme(key, value2)
        end
        local theme = self.Theme or default2
        local hudFrame = T and T.hudFrame
        if hudFrame then
            hudFrame = hudFrame.Parent
        end
        if hudFrame then
            if T.hudStroke then
                T.hudStroke.Color = theme.Accent
            end
            if T.hudGlow then
                T.hudGlow.BackgroundColor3 = theme.Accent
            end
            if T.hudLogo then
                T.hudLogo.ImageColor3 = Color3.fromRGB(255, 255, 255)
            end
            if T.hudIconStroke then
                T.hudIconStroke.Color = theme.Accent
            end
            if T.hudName then
                T.hudName.TextColor3 = theme.Text
            end
            if T.hudRoleLbl then
                T.hudRoleLbl.TextColor3 = theme["Light Accent"]
            end
            if T.hudHpText then
                T.hudHpText.TextColor3 = theme.Text
            end
            if T.hudBarBack then
                T.hudBarBack.BackgroundColor3 = theme.Element
            end
            if T.hudBarStroke then
                T.hudBarStroke.Color = theme.Border
            end
            if T.hudBar then
                T.hudBar.BackgroundColor3 = theme.Accent
            end
            if T.hudStrokeGrad then
                T.hudStrokeGrad.Color = ColorSequence.new(theme.Accent, theme["Light Accent"])
            end
            if T.hudShimmerGradient then
                T.hudShimmerGradient.Color = ColorSequence.new(theme.Accent, theme["Light Accent"])
            end
        end
        local themeObjects = self.ThemeObjects or {}
        for _, value2 in ipairs(themeObjects) do
            local object = value2.Object
            if object and object.Parent and theme[value2.Key] ~= nil then
                pcall(function()
                    if object:IsA("UIGradient") and value2.Property == "Color" then
                        object[value2.Property] = ColorSequence.new(theme.Accent, theme["Light Accent"])
                    else
                        object[value2.Property] = theme[value2.Key]
                    end
                end)
            end
        end
        local instance = self.Holder and self.Holder.Instance
        if instance then
            for _, descendant in ipairs(instance:GetDescendants()) do
                if descendant.Name == "ResizeHandleHorizontal" or descendant.Name == "ResizeHandleVertical" then
                    descendant.BackgroundColor3 = theme.Accent
                elseif descendant:IsA("ScrollingFrame") and descendant.Name == "PlayerCards" then
                    descendant.ScrollBarImageColor3 = theme.Accent
                elseif descendant:IsA("UIStroke") and descendant.Parent then
                    local name = descendant.Parent.Name
                    if name:match("^Player_") or name:match("^VoteCard") then
                        descendant.Color = theme.Accent
                    end
                elseif descendant:IsA("GuiObject") and descendant.Name:match("^Player_") then
                    descendant.BorderColor3 = theme.Accent
                end
            end
        end
    end
    function connection.GetTransparencyPropertyFromItem(_, instance)
        if instance:IsA("Frame") then
            return {"BackgroundTransparency"}
        elseif instance:IsA("TextLabel") or instance:IsA("TextButton") then
            return {"TextTransparency", "BackgroundTransparency"}
        elseif instance:IsA("ImageLabel") or instance:IsA("ImageButton") then
            return {"BackgroundTransparency", "ImageTransparency"}
        elseif instance:IsA("ScrollingFrame") then
            return {"BackgroundTransparency", "ScrollBarImageTransparency"}
        elseif instance:IsA("TextBox") then
            return {"TextTransparency", "BackgroundTransparency"}
        elseif instance:IsA("UIStroke") then
            return {"Transparency"}
        end
    end
    function connection.FadeItem(_, v6, v7, v8, time)
        local v9 = v6[v7]
        v6[v7] = v8 and 1 or v9
        local create = tbl4.Create
        local newTweenInfo = TweenInfo.new
        if not time then
            time = connection.Tween.Time
        end
        local v10 = newTweenInfo(time, connection.Tween.Style, connection.Tween.Direction)
        local tbl7 = {}
        tbl7[v7] = v8 and v9 or 1
        local v11 = create(tbl4, v6, v10, tbl7, true)
        connection:Connect(v11.Tween.Completed, function()
            if not v8 then
                task.wait()
                v6[v7] = v9
            end
        end)
        return v11
    end
    function connection.Notification(_, v6, v7, v8)
        local tbl7 = {}
        tbl7.Notification = tbl5:Create("Frame", {
            Parent = connection.NotifHolder.Instance,
            Name = "\000",
            BorderColor3 = fromRGB(0, 0, 0),
            BorderSizePixel = 0,
            AutomaticSize = Enum.AutomaticSize.XY,
            BackgroundColor3 = fromRGB(15, 13, 11),
        })
        tbl7.Notification:AddToTheme({BackgroundColor3 = "Inline"})
        tbl5:Create("UICorner", {Parent = tbl7.Notification.Instance, CornerRadius = newUDim(0, 4)})
        tbl7.Title = tbl5:Create("TextLabel", {
            Parent = tbl7.Notification.Instance,
            FontFace = connection.Font,
            TextColor3 = fromRGB(245, 242, 238),
            BorderColor3 = fromRGB(0, 0, 0),
            Text = v6,
            Name = "\000",
            Size = newUDim2(0, 0, 0, 15),
            BorderSizePixel = 0,
            BackgroundTransparency = 1,
            TextXAlignment = Enum.TextXAlignment.Left,
            TextWrapped = true,
            AutomaticSize = Enum.AutomaticSize.XY,
            TextSize = 14,
            BackgroundColor3 = fromRGB(245, 242, 238),
        })
        tbl7.Title:AddToTheme({BackgroundColor3 = "Text"})
        tbl5:Create("UIPadding", {
            Parent = tbl7.Notification.Instance,
            PaddingTop = newUDim(0, 5),
            PaddingBottom = newUDim(0, 8),
            PaddingRight = newUDim(0, 8),
            PaddingLeft = newUDim(0, 8),
        })
        tbl7.Description = tbl5:Create("TextLabel", {
            Parent = tbl7.Notification.Instance,
            TextWrapped = true,
            Name = "====sa0dSA=DSAJGjmsaM",
            TextColor3 = fromRGB(245, 242, 238),
            TextTransparency = 0.5,
            Text = v7,
            Size = newUDim2(0, 0, 0, 15),
            Position = newUDim2(0, 0, 0, 18),
            BorderSizePixel = 0,
            BorderColor3 = fromRGB(0, 0, 0),
            BackgroundTransparency = 1,
            TextXAlignment = Enum.TextXAlignment.Left,
            FontFace = connection.Font,
            AutomaticSize = Enum.AutomaticSize.XY,
            TextSize = 14,
            BackgroundColor3 = fromRGB(245, 242, 238),
        })
        tbl7.Description:AddToTheme({TextColor3 = "Text"})
        tbl7.Notification.Instance.BackgroundTransparency = 1
        local absoluteSize = tbl7.Notification.Instance.AbsoluteSize
        tbl7.Notification.Instance.Size = newUDim2(0, 0, 0, 0)
        for _, descendant in tbl7.Notification.Instance:GetDescendants() do
            if descendant:IsA("UIStroke") then
                descendant.Transparency = 1
            elseif descendant:IsA("TextLabel") then
                descendant.TextTransparency = 1
            elseif descendant:IsA("Frame") then
                descendant.BackgroundTransparency = 1
            end
        end
        connection:Thread(function()
            tbl7.Notification:Tween(nil, {BackgroundTransparency = 0, Size = newUDim2(0, absoluteSize.X, 0, absoluteSize.Y)})
            task.wait(0.06)
            for _, descendant in tbl7.Notification.Instance:GetDescendants() do
                if descendant:IsA("UIStroke") then
                    tbl4:Create(descendant, nil, {Transparency = 0}, true)
                elseif descendant:IsA("TextLabel") then
                    if descendant.Name ~= "====sa0dSA=DSAJGjmsaM" then
                        tbl4:Create(descendant, nil, {TextTransparency = 0}, true)
                    else
                        tbl4:Create(descendant, nil, {TextTransparency = 0.5}, true)
                    end
                elseif descendant:IsA("Frame") then
                    tbl4:Create(descendant, nil, {BackgroundTransparency = 0}, true)
                end
            end
            task.delay(v8 + 0.1, function()
                for _, descendant in tbl7.Notification.Instance:GetDescendants() do
                    if descendant:IsA("UIStroke") then
                        tbl4:Create(descendant, nil, {Transparency = 1}, true)
                    elseif descendant:IsA("TextLabel") then
                        tbl4:Create(descendant, nil, {TextTransparency = 1}, true)
                    elseif descendant:IsA("Frame") then
                        tbl4:Create(descendant, nil, {BackgroundTransparency = 1}, true)
                    end
                end
                task.wait(0.06)
                tbl7.Notification:Tween(nil, {BackgroundTransparency = 1, Size = newUDim2(0, 0, 0, 0)})
                task.wait(0.5)
                tbl7.Notification:Clean()
            end)
        end)
    end
    function connection.CreateColorpicker(...)
        local instance
        getfenv()
        local tbl7 = {...}
        local v6
        v6, instance = tbl7[1], tbl7[2]
        if not instance then
            instance = {}
        end
        OpenColorpickers = OpenColorpickers or {}
        local item = {}
        item.Window = instance.Window
        item.Tab = instance.Tab
        item.Section = instance.Section
        item.Flag = instance.Flag
        item.Hue = 0
        item.Saturation = 0
        item.Value = 0
        item.Alpha = 0
        item.Color = fromRGB(0, 0, 0)
        item.HexValue = ""
        item.IsOpen = false
        OpenColorpickers[item] = true
        connection.Flags[item.Flag] = {}
        local item2 = {}
        item2.ColorpickerButton = tbl5:Create("TextButton", {
            Parent = instance.Parent.Instance,
            FontFace = connection.Font,
            TextColor3 = fromRGB(0, 0, 0),
            BorderColor3 = fromRGB(0, 0, 0),
            Text = "",
            AutoButtonColor = false,
            AnchorPoint = Vector2.new(1, 0.5),
            BorderSizePixel = 0,
            Name = "\000",
            Position = newUDim2(1, 0, 0.5, 0),
            Size = newUDim2(0, 15, 0, 15),
            ZIndex = 4,
            TextSize = 14,
            BackgroundColor3 = fromRGB(0, 181, 6),
        })
        tbl5:Create("UICorner", {Parent = item2.ColorpickerButton.Instance, CornerRadius = newUDim(0, 10)})
        tbl5:Create("UIStroke", {
            Parent = item2.ColorpickerButton.Instance,
            Color = fromRGB(50, 34, 23),
            ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
        }):AddToTheme({Color = "Border"});
        (function(v7)
            local v8 = v7 % 5
            local absoluteSize = item2.ColorpickerButton.Instance.AbsoluteSize
            local value2 = (absoluteSize.X + 4) * v8 - 4 - absoluteSize.X
            item2.ColorpickerButton.Instance.Position = newUDim2(1, instance.IsToggle and -value2 - 20 or -value2, 0.5, 0)
        end)(instance.Count)
        item2.ColorpickerWindow = tbl5:Create("Frame", {
            Parent = connection.Holder.Instance,
            Name = "\000",
            Position = newUDim2(0, item2.ColorpickerButton.Instance.AbsolutePosition.X + 25, 0, item2.ColorpickerButton.Instance.AbsolutePosition.Y),
            BorderColor3 = fromRGB(0, 0, 0),
            Size = newUDim2(0, 243, 0, 213),
            Visible = false,
            BorderSizePixel = 0,
            BackgroundColor3 = fromRGB(10, 9, 8),
        })
        item2.ColorpickerWindow:AddToTheme({BackgroundColor3 = "Background"})
        item2.Shadow = tbl5:Create("ImageLabel", {
            Parent = item2.ColorpickerWindow.Instance,
            ImageColor3 = fromRGB(0, 0, 0),
            ImageTransparency = 0.5799999833106995,
            AnchorPoint = Vector2.new(0.5, 0.5),
            Image = "rbxassetid://112971167999062",
            ZIndex = -1,
            BorderSizePixel = 0,
            SliceCenter = newRect(Vector2.new(112, 112), (Vector2.new(147, 147))),
            ScaleType = Enum.ScaleType.Slice,
            BorderColor3 = fromRGB(0, 0, 0),
            BackgroundTransparency = 1,
            Position = newUDim2(0.5, 0, 0.5, 0),
            SliceScale = 0.6000000238418579,
            Name = "\000",
            Size = newUDim2(1, 55, 1, 55),
            BackgroundColor3 = fromRGB(245, 242, 238),
        })
        item2.Palette = tbl5:Create("TextButton", {
            Parent = item2.ColorpickerWindow.Instance,
            FontFace = connection.Font,
            TextColor3 = fromRGB(0, 0, 0),
            BorderColor3 = fromRGB(0, 0, 0),
            Text = "",
            AutoButtonColor = false,
            Name = "\000",
            Size = newUDim2(1, 0, 1, -60),
            BorderSizePixel = 0,
            TextSize = 14,
            BackgroundColor3 = fromRGB(0, 181, 6),
        })
        item2.Saturation = tbl5:Create("ImageLabel", {
            Parent = item2.Palette.Instance,
            BorderColor3 = fromRGB(0, 0, 0),
            Image = connection:GetImage("Saturation"),
            BackgroundTransparency = 1,
            Name = "\000",
            Size = newUDim2(1, 0, 1, 0),
            BorderSizePixel = 0,
            BackgroundColor3 = fromRGB(245, 242, 238),
        })
        item2.Value = tbl5:Create("ImageLabel", {
            Parent = item2.Palette.Instance,
            BorderColor3 = fromRGB(0, 0, 0),
            Image = connection:GetImage("Value"),
            BackgroundTransparency = 1,
            Name = "\000",
            Size = newUDim2(1, 0, 1, 0),
            BorderSizePixel = 0,
            BackgroundColor3 = fromRGB(245, 242, 238),
        })
        item2.PaletteDragger = tbl5:Create("Frame", {
            Parent = item2.Palette.Instance,
            BorderColor3 = fromRGB(0, 0, 0),
            Name = "\000",
            BackgroundTransparency = 1,
            Position = newUDim2(0, 10, 0, 10),
            Size = newUDim2(0, 8, 0, 8),
            ZIndex = 2,
            BorderSizePixel = 0,
            BackgroundColor3 = fromRGB(245, 242, 238),
        })
        tbl5:Create("UIStroke", {
            Parent = item2.PaletteDragger.Instance,
            Color = fromRGB(245, 242, 238),
            Thickness = 2.4,
            ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
        })
        tbl5:Create("UICorner", {Parent = item2.PaletteDragger.Instance, CornerRadius = newUDim(1, 0)})
        item2.Alpha = tbl5:Create("TextButton", {
            Parent = item2.ColorpickerWindow.Instance,
            FontFace = connection.Font,
            TextColor3 = fromRGB(0, 0, 0),
            BorderColor3 = fromRGB(0, 0, 0),
            Text = "",
            Name = "\000",
            Position = newUDim2(0, 0, 1, -35),
            AutoButtonColor = false,
            Size = newUDim2(1, 0, 0, 14),
            BorderSizePixel = 0,
            TextSize = 14,
            BackgroundColor3 = fromRGB(0, 181, 6),
        })
        item2.Checkers = tbl5:Create("ImageLabel", {
            Parent = item2.Alpha.Instance,
            ScaleType = Enum.ScaleType.Tile,
            BorderColor3 = fromRGB(0, 0, 0),
            Image = connection:GetImage("Checkers"),
            TileSize = newUDim2(0, 6, 0, 6),
            Name = "\000",
            Size = newUDim2(1, 0, 1, 0),
            BorderSizePixel = 0,
            BackgroundColor3 = fromRGB(245, 242, 238),
        })
        local create = tbl5.Create
        local tbl8 = {Parent = item2.Checkers.Instance}
        local tbl9 = {}
        local v7 = newNumberSequenceKeypoint(0, 1)
        local v8 = table.pack(newNumberSequenceKeypoint(1, 0))
        tbl9[1] = v7
        table.move(v8, 1, v8.n, 2, tbl9)
        tbl8.Transparency = newNumberSequence(tbl9)
        create(tbl5, "UIGradient", tbl8)
        tbl5:Create("UICorner", {Parent = item2.Checkers.Instance, CornerRadius = newUDim(0, 6)})
        item2.AlphaDragger = tbl5:Create("Frame", {
            Parent = item2.Alpha.Instance,
            BorderColor3 = fromRGB(0, 0, 0),
            Name = "\000",
            BackgroundTransparency = 1,
            Position = newUDim2(0, 1, 0, 2),
            Size = newUDim2(0, 10, 0, 10),
            ZIndex = 2,
            BorderSizePixel = 0,
            BackgroundColor3 = fromRGB(245, 242, 238),
        })
        tbl5:Create("UIStroke", {
            Parent = item2.AlphaDragger.Instance,
            Color = fromRGB(245, 242, 238),
            Thickness = 2.4,
            ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
        })
        tbl5:Create("UICorner", {Parent = item2.AlphaDragger.Instance, CornerRadius = newUDim(1, 0)})
        item2.Hue = tbl5:Create("ImageButton", {
            Parent = item2.ColorpickerWindow.Instance,
            BorderColor3 = fromRGB(0, 0, 0),
            AutoButtonColor = false,
            AnchorPoint = Vector2.new(0, 1),
            Name = "\000",
            Position = newUDim2(0, 0, 1, -40),
            Size = newUDim2(1, 0, 0, 14),
            BorderSizePixel = 0,
            BackgroundColor3 = fromRGB(245, 242, 238),
        })
        local create2 = tbl5.Create
        local tbl10 = {Parent = item2.Hue.Instance}
        local tbl11 = {}
        local v9 = table.pack(fromRGB(255, 0, 0))
        local n = v9.n
        v9.n = 2 + n - 1
        table.move(v9, 1, n, 2, v9)
        v9[1] = 0
        local v10 = newColorSequenceKeypoint(table.unpack(v9, 1, v9.n))
        local v11 = newColorSequenceKeypoint(0.17, fromRGB(255, 255, 0))
        local v12 = newColorSequenceKeypoint(0.33, fromRGB(0, 255, 0))
        local v13 = newColorSequenceKeypoint(0.5, fromRGB(0, 255, 255))
        local v14 = newColorSequenceKeypoint(0.67, fromRGB(0, 0, 255))
        local v15 = newColorSequenceKeypoint(0.83, fromRGB(255, 0, 255))
        local v16 = table.pack(newColorSequenceKeypoint(1, fromRGB(255, 0, 0)))
        tbl11[1], tbl11[2], tbl11[3], tbl11[4], tbl11[5], tbl11[6] = v10, v11, v12, v13, v14, v15
        table.move(v16, 1, v16.n, 7, tbl11)
        tbl10.Color = newColorSequence(tbl11)
        create2(tbl5, "UIGradient", tbl10)
        tbl5:Create("UICorner", {Parent = item2.Hue.Instance, CornerRadius = newUDim(0, 4)})
        tbl5:Create("UIStroke", {Parent = item2.Hue.Instance, Color = fromRGB(50, 34, 23), ApplyStrokeMode = Enum.ApplyStrokeMode.Border}):AddToTheme({Color = "Border"})
        item2.HueDragger = tbl5:Create("Frame", {
            Parent = item2.Hue.Instance,
            BorderColor3 = fromRGB(0, 0, 0),
            Name = "\000",
            BackgroundTransparency = 1,
            Position = newUDim2(0, 15, 0, 2),
            Size = newUDim2(0, 10, 0, 10),
            ZIndex = 2,
            BorderSizePixel = 0,
            BackgroundColor3 = fromRGB(245, 242, 238),
        })
        tbl5:Create("UIStroke", {
            Parent = item2.HueDragger.Instance,
            Color = fromRGB(245, 242, 238),
            Thickness = 2.4,
            ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
        })
        tbl5:Create("UICorner", {Parent = item2.HueDragger.Instance, CornerRadius = newUDim(1, 0)})
        tbl5:Create("UIPadding", {
            Parent = item2.ColorpickerWindow.Instance,
            PaddingTop = newUDim(0, 8),
            PaddingBottom = newUDim(0, 8),
            PaddingRight = newUDim(0, 8),
            PaddingLeft = newUDim(0, 8),
        })
        item2.RainbowToggle = tbl5:Create("TextButton", {
            Parent = item2.ColorpickerWindow.Instance,
            FontFace = connection.Font,
            TextColor3 = fromRGB(0, 0, 0),
            BorderColor3 = fromRGB(0, 0, 0),
            Text = "",
            Name = "\000",
            AutoButtonColor = false,
            AnchorPoint = Vector2.new(0, 1),
            BorderSizePixel = 0,
            BackgroundTransparency = 1,
            Position = newUDim2(0, 0, 1, 0),
            Size = newUDim2(1, 0, 0, 15),
            ZIndex = 4,
            TextSize = 14,
            BackgroundColor3 = fromRGB(245, 242, 238),
        })
        item2.Text = tbl5:Create("TextLabel", {
            Parent = item2.RainbowToggle.Instance,
            FontFace = connection.Font,
            TextColor3 = fromRGB(245, 242, 238),
            TextTransparency = 0.5,
            Text = "Rainbow",
            Name = "\000",
            BorderColor3 = fromRGB(0, 0, 0),
            Size = newUDim2(1, 0, 0, 15),
            BackgroundTransparency = 1,
            TextXAlignment = Enum.TextXAlignment.Left,
            BorderSizePixel = 0,
            ZIndex = 4,
            TextSize = 14,
            BackgroundColor3 = fromRGB(245, 242, 238),
        })
        item2.Text:AddToTheme({TextColor3 = "Text"})
        item2.Indicator = tbl5:Create("Frame", {
            Parent = item2.RainbowToggle.Instance,
            BorderColor3 = fromRGB(0, 0, 0),
            AnchorPoint = Vector2.new(1, 0.5),
            Name = "\000",
            Position = newUDim2(1, 0, 0.5, 0),
            Size = newUDim2(0, 15, 0, 15),
            ZIndex = 5,
            BorderSizePixel = 0,
            BackgroundColor3 = fromRGB(15, 13, 11),
        })
        item2.Indicator:AddToTheme({BackgroundColor3 = "Element"})
        item2.UIStroke = tbl5:Create("UIStroke", {
            Parent = item2.Indicator.Instance,
            Color = fromRGB(50, 34, 23),
            ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
        })
        item2.UIStroke:AddToTheme({Color = "Border"})
        tbl5:Create("UICorner", {Parent = item2.Indicator.Instance, CornerRadius = newUDim(0, 10)})
        item2.Check = tbl5:Create("TextLabel", {
            Parent = item2.Indicator.Instance,
            FontFace = connection.IconFont,
            Text = "check",
            TextColor3 = fromRGB(0, 0, 0),
            TextSize = 12,
            TextXAlignment = Enum.TextXAlignment.Center,
            TextYAlignment = Enum.TextYAlignment.Center,
            BorderColor3 = fromRGB(0, 0, 0),
            Name = "\000",
            Size = newUDim2(1, -1, 1, -3),
            Visible = false,
            AnchorPoint = Vector2.new(0.5, 0.5),
            BackgroundTransparency = 1,
            Position = newUDim2(0.5, -1, 0.5, 0),
            ZIndex = 5,
            BorderSizePixel = 0,
            BackgroundColor3 = fromRGB(245, 242, 238),
        })
        item2.Shadow = tbl5:Create("ImageLabel", {
            Parent = item2.Indicator.Instance,
            ImageTransparency = 1,
            AnchorPoint = Vector2.new(0.5, 0.5),
            Image = "rbxassetid://112971167999062",
            ZIndex = 4,
            BorderSizePixel = 0,
            SliceCenter = newRect(Vector2.new(112, 112), (Vector2.new(147, 147))),
            ScaleType = Enum.ScaleType.Slice,
            BorderColor3 = fromRGB(0, 0, 0),
            Name = "\000",
            BackgroundTransparency = 1,
            Position = newUDim2(0.5, 0, 0.5, 0),
            SliceScale = 0.6000000238418579,
            ImageColor3 = fromRGB(224, 116, 24),
            Size = newUDim2(1, 15, 1, 15),
            BackgroundColor3 = fromRGB(245, 242, 238),
        })
        item2.Shadow:AddToTheme({ImageColor3 = "Accent"})
        local enabled3 = false
        local enabled4 = false
        local enabled5 = false
        local enabled6 = false
        local fn38 = nil
        local isRainbow = false
        local function fn39(v17)
            isRainbow = v17
            item.IsRainbow = isRainbow
            if fn38 then
                fn38(isRainbow)
            end
            connection.Flags[instance.Flag .. "RainbowToggle"] = isRainbow
            if isRainbow then
                item2.Indicator:ChangeItemTheme({BackgroundColor3 = "Accent"})
                item2.UIStroke:ChangeItemTheme({Color = "Light Accent"})
                item2.Indicator:Tween(nil, {BackgroundColor3 = connection.Theme.Accent})
                item2.Text:Tween(nil, {TextTransparency = 0})
                item2.Check.Instance.Visible = true
                item2.Shadow:Tween(nil, {ImageTransparency = 0.5})
                item2.UIStroke:Tween(nil, {Color = connection.Theme["Light Accent"]})
            else
                item2.Indicator:ChangeItemTheme({BackgroundColor3 = "Element"})
                item2.UIStroke:ChangeItemTheme({Color = "Border"})
                item2.Indicator:Tween(nil, {BackgroundColor3 = connection.Theme.Element})
                item2.Text:Tween(nil, {TextTransparency = 0.5})
                item2.Check.Instance.Visible = false
                item2.Shadow:Tween(nil, {ImageTransparency = 1})
                item2.UIStroke:Tween(nil, {Color = connection.Theme.Border})
            end
        end
        function item.SetRainbow(_, v17)
            fn39(v17 == true)
        end
        item2.RainbowToggle:Connect("MouseButton1Down", function()
            fn39(not isRainbow)
        end)
        connection.SetFlags[instance.Flag .. "RainbowToggle"] = fn39
        function item:SlidePalette(v17)
            if not (not v17 or not enabled3) then
                local saturation = clamp(1 - (v17.Position.X - item2.Palette.Instance.AbsolutePosition.X) / item2.Palette.Instance.AbsoluteSize.X, 0, 1)
                local value2 = clamp(1 - (v17.Position.Y - item2.Palette.Instance.AbsolutePosition.Y) / item2.Palette.Instance.AbsoluteSize.Y, 0, 1)
                self.Saturation = saturation
                self.Value = value2
                local v18 = clamp((v17.Position.X - item2.Palette.Instance.AbsolutePosition.X) / item2.Palette.Instance.AbsoluteSize.X, 0, 0.95)
                local v19 = clamp((v17.Position.Y - item2.Palette.Instance.AbsolutePosition.Y) / item2.Palette.Instance.AbsoluteSize.Y, 0, 0.91)
                item2.PaletteDragger:Tween(TweenInfo.new(0.17, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Position = newUDim2(v18, 0, v19, 0)})
                self:Update()
            end
        end
        function item:SlideHue(v17)
            if not (not v17 or not enabled4) then
                self.Hue = clamp((v17.Position.X - item2.Hue.Instance.AbsolutePosition.X) / item2.Hue.Instance.AbsoluteSize.X, 0, 1)
                local v18 = clamp((v17.Position.X - item2.Hue.Instance.AbsolutePosition.X) / item2.Hue.Instance.AbsoluteSize.X, 0, 0.95)
                item2.HueDragger:Tween(TweenInfo.new(0.17, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Position = newUDim2(v18, 0, 0, 2)})
                self:Update()
            end
        end
        function item:SlideAlpha(v17)
            if not (not v17 or not enabled5) then
                self.Alpha = clamp((v17.Position.X - item2.Alpha.Instance.AbsolutePosition.X) / item2.Alpha.Instance.AbsoluteSize.X, 0, 1)
                local v18 = clamp((v17.Position.X - item2.Alpha.Instance.AbsolutePosition.X) / item2.Alpha.Instance.AbsoluteSize.X, 0, 0.95)
                item2.AlphaDragger:Tween(TweenInfo.new(0.17, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Position = newUDim2(v18, 0, 0, 2)})
                self:Update(true)
            end
        end
        function item:Update(v17)
            self.Color = fromHSV(self.Hue, self.Saturation, self.Value)
            self.HexValue = self.Color:ToHex()
            connection.Flags[instance.Flag] = {Color = self.Color, HexValue = self.HexValue, Alpha = self.Alpha}
            item2.ColorpickerButton:Tween(TweenInfo.new(0.2, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {BackgroundColor3 = self.Color})
            item2.Palette:Tween(TweenInfo.new(0.2, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {BackgroundColor3 = fromHSV(self.Hue, 1, 1)})
            if not v17 then
                item2.Alpha:Tween(TweenInfo.new(0.2, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {BackgroundColor3 = self.Color})
            end
            if instance.Callback then
                connection:SafeCall(instance.Callback, self.Color, self.Alpha)
            end
        end
        function item:Set(v17, v18)
            local v19, alpha
            if type(v17) == "table" then
                v19 = fromRGB(v17[1], v17[2], v17[3])
                alpha = v19[4]
            elseif type(v17) == "string" then
                v19 = fromHex(v17)
                alpha = v18
            else
                v19 = v17
                alpha = v18
            end
            local hue, saturation, value2 = v19:ToHSV()
            self.Hue = hue
            self.Saturation = saturation
            self.Value = value2
            if not alpha then
                alpha = 0
            end
            self.Alpha = alpha
            local v20 = clamp(1 - self.Saturation, 0, 0.95)
            local v21 = clamp(1 - self.Value, 0, 0.91)
            item2.PaletteDragger:Tween(TweenInfo.new(0.2, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Position = newUDim2(v20, 0, v21, 0)})
            local v22 = clamp(self.Hue, 0, 0.95)
            item2.HueDragger:Tween(TweenInfo.new(0.2, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Position = newUDim2(v22, 0, 0, 2)})
            local v23 = clamp(self.Alpha, 0, 0.95)
            item2.AlphaDragger:Tween(TweenInfo.new(0.2, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Position = newUDim2(v23, 0, 0, 2)})
            self:Update()
        end
        function item.Get()
            return item.Color, item.Alpha
        end
        function item.SetVisibility(_, visible)
            item2.ColorpickerButton.Instance.Visible = visible
        end
        function item.SetOpen(_, isOpen)
            if not enabled6 then
                item.IsOpen = isOpen
                enabled6 = true
                if isOpen then
                    item2.ColorpickerWindow.Instance.Visible = true
                    item2.ColorpickerWindow.Instance.Position = newUDim2(0, item2.ColorpickerButton.Instance.AbsolutePosition.X + 25, 0, item2.ColorpickerButton.Instance.AbsolutePosition.Y + 15)
                end
                local descendants = item2.ColorpickerWindow.Instance:GetDescendants()
                insert(descendants, item2.ColorpickerWindow.Instance)
                local v17 = nil
                local v18 = nil
                local v19 = nil
                for _, value2 in descendants, v17, v18 do
                    local transparencyPropertyFromItem = connection:GetTransparencyPropertyFromItem(value2)
                    if transparencyPropertyFromItem then
                        if item.IsOpen then
                            if not find2(value2.ClassName, "UI") then
                                value2.ZIndex = 1001
                            end
                        elseif not find2(value2.ClassName, "UI") then
                            value2.ZIndex = 1
                        end
                        if type(transparencyPropertyFromItem) == "table" then
                            local v20 = nil
                            local v21 = nil
                            for _, value3 in transparencyPropertyFromItem, v20, v21 do
                                v19 = connection:FadeItem(value2, value3, isOpen, item.Window.FadeSpeed)
                            end
                        else
                            v19 = connection:FadeItem(value2, transparencyPropertyFromItem, isOpen, item.Window.FadeSpeed)
                        end
                    end
                end
                connection:Connect(v19.Tween.Completed, function()
                    enabled6 = false
                    item2.ColorpickerWindow.Instance.Visible = isOpen
                end)
            end
        end
        local color = item.Color
        fn38 = function(...)
            if ({...})[1] then
                color = item.Color
                connection:Thread(function()
                    while true do
                        if task.wait() then
                            item:Set((fromHSV(abs(sin(tick() * 0.32)), 1, 1)), item.Alpha)
                            if not isRainbow then
                                break
                            else
                                continue
                            end
                        end
                        return
                    end
                    item:Set(color, item.Alpha)
                end)
            end
        end
        item2.Palette:Connect("InputBegan", function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 then
                enabled3 = true
                item:SlidePalette(input)
                input.Changed:Connect(function()
                    if input.UserInputState == Enum.UserInputState.End then
                        enabled3 = false
                    end
                end)
            end
        end)
        item2.Hue:Connect("InputBegan", function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 then
                enabled4 = true
                item:SlideHue(input)
                input.Changed:Connect(function()
                    if input.UserInputState == Enum.UserInputState.End then
                        enabled4 = false
                    end
                end)
            end
        end)
        item2.Alpha:Connect("InputBegan", function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 then
                enabled5 = true
                item:SlideAlpha(input)
                input.Changed:Connect(function()
                    if input.UserInputState == Enum.UserInputState.End then
                        enabled5 = false
                    end
                end)
            end
        end)
        item2.ColorpickerButton:Connect("MouseButton1Down", function()
            item:SetOpen(not item.IsOpen)
        end)
        connection:Connect(UserInputService.InputChanged, function(input)
            if input.UserInputType == Enum.UserInputType.MouseMovement then
                if enabled3 then
                    item:SlidePalette(input)
                elseif enabled4 then
                    item:SlideHue(input)
                elseif enabled5 then
                    item:SlideAlpha(input)
                end
            end
        end)
        connection:Connect(UserInputService.InputBegan, function(input)
            local isOpen = input.UserInputType == Enum.UserInputType.MouseButton1 and item.IsOpen and not enabled6
            if isOpen then
                isOpen = not connection:IsMouseOverFrame(item2.ColorpickerWindow)
            end
            if isOpen then
                item:SetOpen(false)
            end
        end)
        if instance.Default then
            item:Set(instance.Default, instance.Alpha)
        end
        connection.SetFlags[instance.Flag] = function(v17, v18)
            item:Set(v17, v18)
        end
        return item
    end
    function connection.Window(_, v6)
        local tbl7 = v6 or {}
        local tbl8 = {}
        tbl8.Logo = tbl7.Logo or tbl7.logo or "123748867365417"
        tbl8.Size = tbl7.Size or tbl7.size or newUDim2(0, 760, 0, 540)
        tbl8.FadeSpeed = tbl7.FadeSpeed or tbl7.fadespeed or 0.2
        tbl8.PagePadding = tbl7.PagePadding or tbl7.pagepadding or 19
        tbl8.Pages = {}
        tbl8.SubPages = {}
        tbl8.Items = {}
        tbl8.IsOpen = false
        local items = {}
        items.MainFrame = tbl5:Create("CanvasGroup", {
            Parent = connection.Holder.Instance,
            BorderColor3 = fromRGB(0, 0, 0),
            AnchorPoint = Vector2.new(0, 0),
            Name = "\000",
            Position = newUDim2(0, currentCamera.ViewportSize.X / 3.5, 0, currentCamera.ViewportSize.Y / 3.5),
            Size = tbl8.Size,
            Visible = false,
            ZIndex = 2,
            BorderSizePixel = 0,
            BackgroundColor3 = fromRGB(10, 9, 8),
        })
        items.MainFrame:AddToTheme({BackgroundColor3 = "Background"})
        items.ProportionalScale = tbl5:Create("UIScale", {Parent = items.MainFrame.Instance, Scale = 1})
        items.OpenScale = tbl5:Create("UIScale", {Parent = items.MainFrame.Instance, Scale = 1})
        items.MainFrame:MakeDraggable()
        items.MainFrame:MakeResizeable(newVector2(tbl8.Size.X.Offset, tbl8.Size.Y.Offset), (Vector2.new(9999, 9999)))
        items.Shadow = tbl5:Create("ImageLabel", {
            Parent = items.MainFrame.Instance,
            ImageColor3 = fromRGB(0, 0, 0),
            ImageTransparency = 0.5799999833106995,
            AnchorPoint = Vector2.new(0.5, 0.5),
            Image = "rbxassetid://112971167999062",
            ZIndex = -1,
            BorderSizePixel = 0,
            SliceCenter = newRect(Vector2.new(112, 112), (Vector2.new(147, 147))),
            ScaleType = Enum.ScaleType.Slice,
            BorderColor3 = fromRGB(0, 0, 0),
            BackgroundTransparency = 1,
            Position = newUDim2(0.5, 0, 0.5, 0),
            SliceScale = 0.6000000238418579,
            Name = "\000",
            Size = newUDim2(1, 55, 1, 55),
            BackgroundColor3 = fromRGB(245, 242, 238),
        })
        items.Sidebar = tbl5:Create("Frame", {
            Parent = items.MainFrame.Instance,
            Name = "\000",
            BackgroundTransparency = 1,
            Size = newUDim2(0, 78, 1, 0),
            BorderColor3 = fromRGB(0, 0, 0),
            ZIndex = 2,
            BorderSizePixel = 0,
            BackgroundColor3 = fromRGB(245, 242, 238),
        })
        items.Logo = tbl5:Create("ImageLabel", {
            Parent = items.Sidebar.Instance,
            ScaleType = Enum.ScaleType.Fit,
            BorderColor3 = fromRGB(0, 0, 0),
            Name = "\000",
            Size = newUDim2(0, 45, 0, 45),
            AnchorPoint = Vector2.new(0.5, 0),
            Image = "rbxassetid://" .. tbl8.Logo,
            BackgroundTransparency = 1,
            Position = newUDim2(0.5, 0, 0, 12),
            ZIndex = 3,
            BorderSizePixel = 0,
            BackgroundColor3 = fromRGB(245, 242, 238),
        })
        items.Logo:AddToTheme({ImageColor3 = "Image"})
        items.Shadow2 = tbl5:Create("ImageLabel", {
            Parent = items.Logo.Instance,
            ScaleType = Enum.ScaleType.Slice,
            Name = "\000",
            ImageTransparency = 0.62,
            BorderColor3 = fromRGB(0, 0, 0),
            BackgroundColor3 = fromRGB(245, 242, 238),
            Size = newUDim2(1, 5, 1, 24),
            AnchorPoint = Vector2.new(0.5, 0.5),
            Image = "rbxassetid://112971167999062",
            BackgroundTransparency = 1,
            Position = newUDim2(0.5, 0, 0.5, 0),
            SliceScale = 0.8999999761581421,
            ZIndex = 2,
            BorderSizePixel = 0,
            SliceCenter = newRect(Vector2.new(112, 112), (Vector2.new(147, 147))),
        })
        items.Shadow2:AddToTheme({ImageColor3 = "Image"})
        tbl5:Create("Frame", {
            Parent = items.Sidebar.Instance,
            Size = newUDim2(0, 1, 1, 0),
            Name = "\000",
            Position = newUDim2(1, 0, 0, 0),
            BorderColor3 = fromRGB(0, 0, 0),
            ZIndex = 2,
            BorderSizePixel = 0,
            BackgroundColor3 = fromRGB(50, 34, 23),
        }):AddToTheme({BackgroundColor3 = "Border"})
        items.Pages = tbl5:Create("ScrollingFrame", {
            Parent = items.Sidebar.Instance,
            AutomaticCanvasSize = Enum.AutomaticSize.Y,
            ScrollBarThickness = 2,
            ScrollBarImageTransparency = 0,
            CanvasSize = newUDim2(0, 0, 0, 0),
            ScrollBarImageColor3 = connection.Theme.Accent,
            MidImage = connection:GetImage("Scrollbar"),
            TopImage = connection:GetImage("Scrollbar"),
            BottomImage = connection:GetImage("Scrollbar"),
            BorderColor3 = fromRGB(0, 0, 0),
            Name = "\000",
            BackgroundTransparency = 1,
            Position = newUDim2(0, 0, 0, 104),
            Size = newUDim2(1, 0, 1, -130),
            ZIndex = 2,
            BorderSizePixel = 0,
            BackgroundColor3 = fromRGB(245, 242, 238),
        })
        items.Pages:AddToTheme({ScrollBarImageColor3 = "Accent"})
        tbl5:Create("UIListLayout", {
            Parent = items.Pages.Instance,
            Padding = newUDim(0, tbl8.PagePadding),
            HorizontalAlignment = Enum.HorizontalAlignment.Center,
            SortOrder = Enum.SortOrder.LayoutOrder,
        })
        tbl5:Create("UICorner", {Parent = items.MainFrame.Instance, CornerRadius = newUDim(0, 10)})
        items.Avatar = tbl5:Create("ImageLabel", {
            Parent = items.Sidebar.Instance,
            ScaleType = Enum.ScaleType.Fit,
            BorderColor3 = fromRGB(0, 0, 0),
            Name = "\000",
            Size = newUDim2(0, 34, 0, 34),
            AnchorPoint = Vector2.new(0.5, 1),
            Image = "rbxasset://textures/ui/GuiImagePlaceholder.png",
            BackgroundTransparency = 1,
            Position = newUDim2(0.5, 0, 1, -18),
            ZIndex = 2,
            BorderSizePixel = 0,
            BackgroundColor3 = fromRGB(245, 242, 238),
        })
        items.Avatar.Instance.Image = Players:GetUserThumbnailAsync(Players.LocalPlayer.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size420x420)
        tbl5:Create("UICorner", {Parent = items.Avatar.Instance, CornerRadius = newUDim(1, 0)})
        tbl5:Create("UIStroke", {Parent = items.Avatar.Instance, Color = fromRGB(50, 34, 23), ApplyStrokeMode = Enum.ApplyStrokeMode.Border}):AddToTheme({Color = "Border"})
        items.Inline = tbl5:Create("Frame", {
            Parent = items.MainFrame.Instance,
            BorderColor3 = fromRGB(0, 0, 0),
            Name = "\000",
            BackgroundTransparency = 1,
            Position = newUDim2(0, 79, 0, 0),
            Size = newUDim2(1, -79, 1, 0),
            ZIndex = 2,
            ClipsDescendants = true,
            BorderSizePixel = 0,
            BackgroundColor3 = fromRGB(245, 242, 238),
        })
        local enabled3 = false
        function tbl8.SetOpen(_, isOpen)
            local v7 = enabled3
            local v8
            if enabled3 then
                v8 = v7
            else
                v8 = tbl8.IsOpen == isOpen
            end
            if not v8 then
                tbl8.IsOpen = isOpen
                enabled3 = true
                local instance = items.MainFrame.Instance
                local instance2 = items.OpenScale and items.OpenScale.Instance
                if not isOpen and OpenColorpickers then
                    local list = OpenColorpickers
                    for key, _ in pairs(list) do
                        local isOpen2
                        if key then
                            isOpen2 = key.IsOpen
                        else
                            isOpen2 = key
                        end
                        if isOpen2 then
                            pcall(function()
                                key:SetOpen(false)
                            end)
                        end
                    end
                end
                local tweenInfo = TweenInfo.new(isOpen and 0.34 or 0.26, Enum.EasingStyle.Quint, isOpen and Enum.EasingDirection.Out or Enum.EasingDirection.In)
                if isOpen then
                    instance.Visible = true
                    instance.GroupTransparency = 1
                    if instance2 then
                        instance2.Scale = 0.965
                    end
                    local tween = TweenService:Create(instance, tweenInfo, {GroupTransparency = 0})
                    local v9 = instance2 and TweenService:Create(instance2, tweenInfo, {Scale = 1}) or nil
                    tween:Play()
                    if v9 then
                        v9:Play()
                    end
                    connection:Connect(tween.Completed, function()
                        if tbl8.IsOpen then
                            instance.GroupTransparency = 0
                            if instance2 then
                                instance2.Scale = 1
                            end
                        end
                        enabled3 = false
                    end)
                else
                    instance.GroupTransparency = 0
                    local tween = TweenService:Create(instance, tweenInfo, {GroupTransparency = 1})
                    local v9 = instance2 and TweenService:Create(instance2, tweenInfo, {Scale = 0.965}) or nil
                    tween:Play()
                    if v9 then
                        v9:Play()
                    end
                    connection:Connect(tween.Completed, function()
                        if not tbl8.IsOpen then
                            instance.Visible = false
                            instance.GroupTransparency = 0
                            if instance2 then
                                instance2.Scale = 1
                            end
                        end
                        enabled3 = false
                    end)
                end
            end
        end
        connection:Connect(UserInputService.InputBegan, function(input, v7)
            if not v7 then
                if tostring(input.KeyCode) == connection.MenuKeybind then
                    tbl8:SetOpen(not tbl8.IsOpen)
                end
            end
        end)
        tbl8.Items = items
        tbl8:SetOpen(true)
        return setmetatable(tbl8, connection)
    end
    function connection.Seperator(v6)
        return tbl5:Create("Frame", {
            Parent = v6.Items.Pages.Instance,
            Name = "\000",
            Size = newUDim2(0, 40, 0, 1),
            BorderColor3 = fromRGB(0, 0, 0),
            ZIndex = 2,
            BorderSizePixel = 0,
            BackgroundColor3 = fromRGB(50, 34, 23),
        }):AddToTheme({BackgroundColor3 = "Border"})
    end
    function connection.Page(v6, tbl7)
        if not tbl7 then
            tbl7 = {}
        end
        local icon = tbl7.Icon or tbl7.icon or "house"
        if tonumber(icon) then
            icon = "settings"
        end
        local sidebar = tbl7.Sidebar == true or tbl7.sidebar == true
        local tbl8 = {Window = v6, Icon = icon}
        tbl8.LayoutOrder = tbl7.LayoutOrder or tbl7.layoutOrder or 0
        tbl8.Sidebar = sidebar
        tbl8.Search = tbl7.Search or tbl7.search or false
        tbl8.Items = {}
        tbl8.Active = false
        local items = {}
        items.Inactive = tbl5:Create("TextButton", {
            Parent = sidebar and tbl8.Window.Items.Sidebar.Instance or tbl8.Window.Items.Pages.Instance,
            FontFace = connection.IconFont,
            Text = tbl8.Icon,
            TextColor3 = fromRGB(245, 242, 238),
            TextTransparency = 0.5,
            TextSize = 20,
            TextXAlignment = Enum.TextXAlignment.Center,
            TextYAlignment = Enum.TextYAlignment.Center,
            BorderColor3 = fromRGB(0, 0, 0),
            AutoButtonColor = false,
            Name = "\000",
            LayoutOrder = tbl8.LayoutOrder,
            AnchorPoint = sidebar and Vector2.new(0.5, 0) or Vector2.new(0, 0),
            Position = sidebar and newUDim2(0.5, 0, 0, 68) or newUDim2(),
            BackgroundTransparency = 1,
            Size = newUDim2(0, 25, 0, 25),
            ZIndex = 2,
            BorderSizePixel = 0,
            BackgroundColor3 = fromRGB(245, 242, 238),
        })
        items.Inactive:AddToTheme({TextColor3 = "Image"})
        items.PageContent = tbl5:Create("Frame", {
            Parent = tbl8.Window.Items.Inline.Instance,
            Name = "\000",
            BackgroundTransparency = 1,
            Size = newUDim2(1, 0, 1, 0),
            BorderColor3 = fromRGB(0, 0, 0),
            ZIndex = 2,
            BorderSizePixel = 0,
            Visible = false,
            BackgroundColor3 = fromRGB(245, 242, 238),
        })
        items.SubPages = tbl5:Create("Frame", {
            Parent = items.PageContent.Instance,
            BorderColor3 = fromRGB(0, 0, 0),
            Name = "\000",
            BackgroundTransparency = 1,
            Position = newUDim2(0, 15, 0, 15),
            Size = newUDim2(1, -30, 0, 24),
            ZIndex = 2,
            BorderSizePixel = 0,
            BackgroundColor3 = fromRGB(245, 242, 238),
        })
        tbl5:Create("UIListLayout", {
            Parent = items.SubPages.Instance,
            Padding = newUDim(0, 10),
            SortOrder = Enum.SortOrder.LayoutOrder,
            FillDirection = Enum.FillDirection.Horizontal,
        })
        items.Columns = tbl5:Create("Frame", {
            Parent = items.PageContent.Instance,
            Size = newUDim2(1, 0, 1, -55),
            Name = "\000",
            Position = newUDim2(0, 0, 0, 55),
            BorderColor3 = fromRGB(0, 0, 0),
            ZIndex = 2,
            BorderSizePixel = 0,
            BackgroundColor3 = fromRGB(15, 13, 11),
            BackgroundTransparency = 1,
        })
        items.Columns:AddToTheme({BackgroundColor3 = "Inline"})
        tbl5:Create("Frame", {
            Parent = items.PageContent.Instance,
            Size = newUDim2(1, 0, 0, 1),
            Name = "\000",
            Position = tbl8.Search and newUDim2(0, 0, 0, 99) or newUDim2(0, 0, 0, 54),
            BorderColor3 = fromRGB(0, 0, 0),
            ZIndex = 2,
            BorderSizePixel = 0,
            BackgroundColor3 = fromRGB(50, 34, 23),
        }):AddToTheme({BackgroundColor3 = "Border"})
        if tbl8.Search then
            items.SubPages.Instance.Position = newUDim2(0, 15, 0, 60)
            items.Columns.Instance.Position = newUDim2(0, 0, 0, 100)
            items.Columns.Instance.Size = newUDim2(1, 0, 1, -100)
            items.Search = tbl5:Create("TextBox", {
                Parent = items.PageContent.Instance,
                FontFace = connection.Font,
                Active = false,
                Selectable = false,
                PlaceholderColor3 = fromRGB(175, 175, 175),
                ZIndex = 2,
                TextSize = 14,
                Size = newUDim2(0, 313, 0, 30),
                TextColor3 = fromRGB(245, 242, 238),
                BorderColor3 = fromRGB(0, 0, 0),
                Text = "",
                Name = "\000",
                PlaceholderText = "Search",
                Position = newUDim2(0, 15, 0, 15),
                TextXAlignment = Enum.TextXAlignment.Left,
                CursorPosition = -1,
                BorderSizePixel = 0,
                BackgroundColor3 = fromRGB(10, 9, 8),
            })
            items.Search:AddToTheme({BackgroundColor3 = "Background", TextColor3 = "Text"})
            tbl5:Create("UICorner", {Parent = items.Search.Instance, CornerRadius = newUDim(0, 4)})
            tbl5:Create("UIStroke", {Parent = items.Search.Instance, Color = fromRGB(50, 34, 23), ApplyStrokeMode = Enum.ApplyStrokeMode.Border}):AddToTheme({Color = "Border"})
            tbl5:Create("UIPadding", {Parent = items.Search.Instance, PaddingLeft = newUDim(0, 8)})
        end
        local enabled3 = false
        function tbl8.Turn(_, visible)
            if not enabled3 then
                tbl8.Active = true
                enabled3 = true
                if visible then
                    items.PageContent.Instance.Visible = true
                    items.PageContent.Instance.Parent = tbl8.Window.Items.Inline.Instance
                    items.Inactive:Tween(nil, {TextTransparency = 0})
                else
                    items.Inactive:Tween(nil, {TextTransparency = 0.5})
                end
                if SubPage and SubPage.NoFade then
                    items.PageContent.Instance.Visible = visible
                    enabled3 = false
                else
                    local descendants = items.PageContent.Instance:GetDescendants()
                    insert(descendants, items.PageContent.Instance)
                    local v7 = nil
                    local v8 = nil
                    local v9 = nil
                    for _, value2 in descendants, v7, v8 do
                        local transparencyPropertyFromItem = connection:GetTransparencyPropertyFromItem(value2)
                        if transparencyPropertyFromItem then
                            if type(transparencyPropertyFromItem) == "table" then
                                local v10 = nil
                                local v11 = nil
                                for _, value3 in transparencyPropertyFromItem, v10, v11 do
                                    v9 = connection:FadeItem(value2, value3, visible, tbl8.Window.FadeSpeed)
                                end
                            else
                                v9 = connection:FadeItem(value2, transparencyPropertyFromItem, visible, tbl8.Window.FadeSpeed)
                            end
                        end
                    end
                    connection:Connect(v9.Tween.Completed, function()
                        enabled3 = false
                        items.PageContent.Instance.Visible = visible
                        local instance = items.PageContent.Instance
                        local parent = visible
                        if visible then
                            parent = tbl8.Window.Items.Inline.Instance
                        end
                        if not parent then
                            parent = connection.UnusedHolder.Instance
                        end
                        instance.Parent = parent
                        if tbl8.Search then
                            local columns = items.Columns
                            local tween = columns.Tween
                            local tbl9 = {}
                            local position = visible
                            if visible then
                                position = newUDim2(0, 0, 0, 100)
                            end
                            if not position then
                                position = newUDim2(0, 0, 1, 0)
                            end
                            tbl9.Position = position
                            tween(columns, nil, tbl9)
                        else
                            local columns = items.Columns
                            local tween = columns.Tween
                            local tbl9 = {}
                            local position = visible
                            if visible then
                                position = newUDim2(0, 0, 0, 55)
                            end
                            if not position then
                                position = newUDim2(0, 0, 1, 0)
                            end
                            tbl9.Position = position
                            tween(columns, nil, tbl9)
                        end
                    end)
                end
            end
        end
        items.Inactive:Connect("MouseButton1Down", function()
            local pages = tbl8.Window.Pages
            local v7 = nil
            local v8 = nil
            for _, value2 in pages, v7, v8 do
                value2:Turn(value2 == tbl8)
            end
        end)
        if #tbl8.Window.Pages == 0 then
            tbl8:Turn(true)
        end
        tbl8.Items = items
        insert(tbl8.Window.Pages, tbl8)
        return setmetatable(tbl8, connection.Pages)
    end
    function connection.Pages:SubPage(item)
        if not item then
            item = {}
        end
        local item2 = {}
        item2.Window = self.Window
        item2.Page = self
        item2.Name = item.Name or item.name or "SubPage"
        item2.Items = {}
        item2.SearchItems = {}
        item2.Active = false
        local items = {}
        items.Inactive = tbl5:Create("TextButton", {
            Parent = item2.Page.Items.SubPages.Instance,
            FontFace = connection.Font,
            TextColor3 = fromRGB(245, 242, 238),
            TextTransparency = 0.5,
            Text = item2.Name,
            AutoButtonColor = false,
            BorderColor3 = fromRGB(0, 0, 0),
            Name = "\000",
            Size = newUDim2(0, 100, 1, 0),
            BorderSizePixel = 0,
            ZIndex = 3,
            TextSize = 14,
            BackgroundColor3 = fromRGB(15, 13, 11),
        })
        items.Inactive:AddToTheme({TextColor3 = "Text", BackgroundColor3 = "Inline"})
        tbl5:Create("UICorner", {Parent = items.Inactive.Instance, CornerRadius = newUDim(1, 0)})
        items.UIStroke = tbl5:Create("UIStroke", {Parent = items.Inactive.Instance, Color = fromRGB(50, 34, 23), ApplyStrokeMode = Enum.ApplyStrokeMode.Border})
        items.UIStroke:AddToTheme({Color = "Border"})
        items.Shadow = tbl5:Create("ImageLabel", {
            Parent = items.Inactive.Instance,
            Visible = true,
            ImageTransparency = 1,
            AnchorPoint = Vector2.new(0.5, 0.5),
            Image = "rbxassetid://112971167999062",
            ZIndex = 2,
            BorderSizePixel = 0,
            SliceCenter = newRect(Vector2.new(112, 112), (Vector2.new(147, 147))),
            ScaleType = Enum.ScaleType.Slice,
            BorderColor3 = fromRGB(0, 0, 0),
            Name = "\000",
            BackgroundTransparency = 1,
            Position = newUDim2(0.5, 0, 0.5, 0),
            SliceScale = 0.6000000238418579,
            ImageColor3 = fromRGB(224, 116, 24),
            Size = newUDim2(1, 30, 1, 30),
            BackgroundColor3 = fromRGB(245, 242, 238),
        })
        items.Shadow:AddToTheme({ImageColor3 = "Accent"})
        items.PageContent = tbl5:Create("Frame", {
            Parent = item2.Page.Items.Columns.Instance,
            Name = "\000",
            BackgroundTransparency = 1,
            Size = newUDim2(1, 0, 1, 0),
            BorderColor3 = fromRGB(0, 0, 0),
            ZIndex = 2,
            BorderSizePixel = 0,
            Visible = false,
            BackgroundColor3 = fromRGB(245, 242, 238),
        })
        items.Right = tbl5:Create("ScrollingFrame", {
            Parent = items.PageContent.Instance,
            Active = true,
            AutomaticCanvasSize = Enum.AutomaticSize.Y,
            AnchorPoint = Vector2.new(1, 0),
            ZIndex = 2,
            BorderSizePixel = 0,
            CanvasSize = newUDim2(0, 0, 0, 0),
            ScrollBarImageColor3 = fromRGB(224, 116, 24),
            MidImage = connection:GetImage("Scrollbar"),
            BorderColor3 = fromRGB(0, 0, 0),
            ScrollBarThickness = 2,
            Name = "\000",
            BackgroundTransparency = 1,
            Position = newUDim2(1, -2, 0, 2),
            Size = newUDim2(0.5, -4, 1, -6),
            BottomImage = connection:GetImage("Scrollbar"),
            TopImage = connection:GetImage("Scrollbar"),
            BackgroundColor3 = fromRGB(245, 242, 238),
        })
        items.Right:AddToTheme({ScrollBarImageColor3 = "Accent"})
        tbl5:Create("UIPadding", {
            Parent = items.Right.Instance,
            PaddingTop = newUDim(0, 12),
            PaddingBottom = newUDim(0, 14),
            PaddingRight = newUDim(0, 14),
            PaddingLeft = newUDim(0, 7),
        })
        tbl5:Create("UIListLayout", {Parent = items.Right.Instance, Padding = newUDim(0, 14), SortOrder = Enum.SortOrder.LayoutOrder})
        items.Left = tbl5:Create("ScrollingFrame", {
            Parent = items.PageContent.Instance,
            Active = true,
            AutomaticCanvasSize = Enum.AutomaticSize.Y,
            ZIndex = 2,
            BorderSizePixel = 0,
            CanvasSize = newUDim2(0, 0, 0, 0),
            ScrollBarImageColor3 = fromRGB(224, 116, 24),
            MidImage = connection:GetImage("Scrollbar"),
            BorderColor3 = fromRGB(0, 0, 0),
            ScrollBarThickness = 2,
            Name = "\000",
            BackgroundTransparency = 1,
            Position = newUDim2(0, 0, 0, 2),
            Size = newUDim2(0.5, -4, 1, -6),
            BottomImage = connection:GetImage("Scrollbar"),
            TopImage = connection:GetImage("Scrollbar"),
            BackgroundColor3 = fromRGB(245, 242, 238),
        })
        items.Left:AddToTheme({ScrollBarImageColor3 = "Accent"})
        tbl5:Create("UIPadding", {
            Parent = items.Left.Instance,
            PaddingTop = newUDim(0, 12),
            PaddingBottom = newUDim(0, 14),
            PaddingRight = newUDim(0, 7),
            PaddingLeft = newUDim(0, 14),
        })
        tbl5:Create("UIListLayout", {Parent = items.Left.Instance, Padding = newUDim(0, 14), SortOrder = Enum.SortOrder.LayoutOrder})
        local enabled3 = false
        function item2.Turn(_, visible)
            if not enabled3 then
                item2.Active = true
                enabled3 = true
                if visible then
                    items.PageContent.Instance.Visible = true
                    items.Inactive:ChangeItemTheme({TextColor3 = "Text", BackgroundColor3 = "Accent"})
                    items.UIStroke:ChangeItemTheme({Color = "Light Accent"})
                    items.Inactive:Tween(nil, {TextTransparency = 0, BackgroundColor3 = connection.Theme.Accent})
                    items.Shadow:Tween(nil, {ImageTransparency = 0.6})
                    items.UIStroke:Tween(nil, {Color = connection.Theme["Light Accent"]})
                else
                    items.Inactive:ChangeItemTheme({TextColor3 = "Text", BackgroundColor3 = "Inline"})
                    items.UIStroke:ChangeItemTheme({Color = "Border"})
                    items.Inactive:Tween(nil, {TextTransparency = 0.5, BackgroundColor3 = connection.Theme.Inline})
                    items.Shadow:Tween(nil, {ImageTransparency = 1})
                    items.UIStroke:Tween(nil, {Color = connection.Theme.Border})
                end
                local descendants = items.PageContent.Instance:GetDescendants()
                insert(descendants, items.PageContent.Instance)
                local v6 = nil
                local v7 = nil
                local v8 = nil
                for _, value2 in descendants, v6, v7 do
                    local transparencyPropertyFromItem = connection:GetTransparencyPropertyFromItem(value2)
                    if transparencyPropertyFromItem then
                        if type(transparencyPropertyFromItem) == "table" then
                            local v9 = nil
                            local v10 = nil
                            for _, value3 in transparencyPropertyFromItem, v9, v10 do
                                v8 = connection:FadeItem(value2, value3, visible, item2.Window.FadeSpeed)
                            end
                        else
                            v8 = connection:FadeItem(value2, transparencyPropertyFromItem, visible, item2.Window.FadeSpeed)
                        end
                    end
                end
                connection:Connect(v8.Tween.Completed, function()
                    enabled3 = false
                    items.PageContent.Instance.Visible = visible
                end)
            end
        end
        if item2.Page.Search then
            local function fn38()
                local v6 = lower(item2.Page.Items.Search.Instance.Text or "")
                local tbl7 = {}
                local searchItems = item2.SearchItems
                local v7 = nil
                local v8 = nil
                for _, value2 in searchItems, v7, v8 do
                    local element = value2.Element
                    local section = value2.Section
                    local v9 = lower(tostring(element.Instance.Text or ""))
                    if v6 == "" or find2(v9, v6, 1, true) ~= nil then
                        tbl7[section] = true
                    end
                end
                local tbl8 = {}
                local searchItems2 = item2.SearchItems
                local v9 = nil
                local v10 = nil
                for _, value2 in searchItems2, v9, v10 do
                    local section = value2.Section
                    if not tbl8[section] then
                        tbl8[section] = true
                        section:SetVisibility(v6 == "" or tbl7[section] == true)
                    end
                end
            end
            connection:Connect(item2.Page.Items.Search.Instance:GetPropertyChangedSignal("Text"), fn38)
            fn38()
        end
        items.Inactive:Connect("MouseButton1Down", function()
            local subPages = item2.Window.SubPages
            local v6 = nil
            local v7 = nil
            for _, value2 in subPages, v6, v7 do
                value2:Turn(value2 == item2)
            end
        end)
        if #item2.Window.Pages == 0 then
            item2:Turn(true)
        end
        item2.Items = items
        insert(item2.Window.SubPages, item2)
        return setmetatable(item2, connection.Pages)
    end
    function connection.Pages:Section(item)
        if not item then
            item = {}
        end
        local item2 = {
            Window = self.Window,
            Page = self,
            Name = item.Name or item.name or "Section",
            Side = item.Side or item.side or "Left",
            Items = {},
        }
        local items = {}
        items.Section = tbl5:Create("Frame", {
            Parent = item2.Side:lower() == "left" and item2.Page.Items.Left.Instance or item2.Page.Items.Right.Instance,
            BorderSizePixel = 0,
            Name = "\000",
            Size = newUDim2(1, 0, 0, 45),
            BorderColor3 = fromRGB(0, 0, 0),
            ZIndex = 4,
            AutomaticSize = Enum.AutomaticSize.Y,
            BackgroundTransparency = 0.45,
            BackgroundColor3 = fromRGB(10, 9, 8),
        })
        items.Section:AddToTheme({BackgroundColor3 = "Background"})
        tbl5:Create("UIStroke", {Parent = items.Section.Instance, Color = fromRGB(50, 34, 23), ApplyStrokeMode = Enum.ApplyStrokeMode.Border}):AddToTheme({Color = "Border"})
        items.Text = tbl5:Create("TextLabel", {
            Parent = items.Section.Instance,
            FontFace = connection.BoldFont,
            TextColor3 = fromRGB(245, 242, 238),
            BorderColor3 = fromRGB(0, 0, 0),
            Text = item2.Name,
            Name = "\000",
            BorderSizePixel = 0,
            Size = newUDim2(1, 0, 0, 15),
            BackgroundTransparency = 1,
            TextXAlignment = Enum.TextXAlignment.Left,
            Position = newUDim2(0, 7, 0, 6),
            ZIndex = 4,
            TextSize = 14,
            BackgroundColor3 = fromRGB(245, 242, 238),
        })
        items.Text:AddToTheme({TextColor3 = "Text"})
        tbl5:Create("Frame", {
            Parent = items.Section.Instance,
            Size = newUDim2(1, 0, 0, 1),
            Name = "\000",
            Position = newUDim2(0, 0, 0, 27),
            BorderColor3 = fromRGB(0, 0, 0),
            ZIndex = 4,
            BorderSizePixel = 0,
            BackgroundColor3 = fromRGB(50, 34, 23),
        }):AddToTheme({BackgroundColor3 = "Border"})
        items.Content = tbl5:Create("Frame", {
            Parent = items.Section.Instance,
            BorderColor3 = fromRGB(0, 0, 0),
            Name = "\000",
            BackgroundTransparency = 1,
            Position = newUDim2(0, 10, 0, 38),
            Size = newUDim2(1, -20, 0, 0),
            BorderSizePixel = 0,
            AutomaticSize = Enum.AutomaticSize.Y,
            BackgroundColor3 = fromRGB(245, 242, 238),
        })
        tbl5:Create("UIListLayout", {Parent = items.Content.Instance, Padding = newUDim(0, 7), SortOrder = Enum.SortOrder.LayoutOrder})
        tbl5:Create("UIPadding", {Parent = items.Section.Instance, PaddingBottom = newUDim(0, 12)})
        tbl5:Create("UICorner", {Parent = items.Section.Instance, CornerRadius = newUDim(0, 10)})
        function item2.SetVisibility(_, visible)
            items.Section.Instance.Visible = visible
        end
        item2.Items = items
        return setmetatable(item2, connection.Sections)
    end
    function connection.Sections:Toggle(v6)
        local item = v6 or {}
        local item2 = {}
        item2.Window = self.Window
        item2.Page = self.Page
        item2.Section = self
        item2.Name = item.Name or item.name or "Toggle"
        item2.Flag = item.Flag or item.flag or connection:NextFlag()
        item2.Default = item.Default or item.default or false
        local callback = item.Callback or item.callback or (function() end)
        item2.Callback = callback
        item2.Value = false
        item2.Count = 0
        local tbl7 = {}
        tbl7.Toggle = tbl5:Create("TextButton", {
            Parent = item2.Section.Items.Content.Instance,
            FontFace = connection.Font,
            TextColor3 = fromRGB(0, 0, 0),
            BorderColor3 = fromRGB(0, 0, 0),
            Text = "",
            AutoButtonColor = false,
            Name = "\000",
            BackgroundTransparency = 1,
            BorderSizePixel = 0,
            Size = newUDim2(1, 0, 0, 15),
            ZIndex = 4,
            TextSize = 14,
            BackgroundColor3 = fromRGB(245, 242, 238),
        })
        tbl7.Indicator = tbl5:Create("Frame", {
            Parent = tbl7.Toggle.Instance,
            BorderColor3 = fromRGB(0, 0, 0),
            AnchorPoint = Vector2.new(1, 0.5),
            Name = "\000",
            Position = newUDim2(1, 0, 0.5, 0),
            Size = newUDim2(0, 30, 0, 16),
            ZIndex = 5,
            BorderSizePixel = 0,
            BackgroundColor3 = fromRGB(15, 13, 11),
        })
        tbl7.Indicator:AddToTheme({BackgroundColor3 = "Element"})
        tbl7.Knob = tbl5:Create("Frame", {
            Parent = tbl7.Indicator.Instance,
            AnchorPoint = Vector2.new(0, 0.5),
            Position = newUDim2(0, 2, 0.5, 0),
            Size = newUDim2(0, 12, 0, 12),
            BorderSizePixel = 0,
            BackgroundColor3 = fromRGB(245, 242, 238),
            BackgroundTransparency = 0,
            ZIndex = 7,
        })
        tbl5:Create("UICorner", {Parent = tbl7.Knob.Instance, CornerRadius = newUDim(0, 10)})
        tbl7.UIStroke = tbl5:Create("UIStroke", {Parent = tbl7.Indicator.Instance, Color = fromRGB(50, 34, 23), ApplyStrokeMode = Enum.ApplyStrokeMode.Border})
        tbl7.UIStroke:AddToTheme({Color = "Border"})
        tbl5:Create("UICorner", {Parent = tbl7.Indicator.Instance, CornerRadius = newUDim(0, 10)})
        tbl7.Check = tbl5:Create("TextLabel", {
            Parent = tbl7.Indicator.Instance,
            FontFace = connection.IconFont,
            Text = "check",
            TextColor3 = fromRGB(0, 0, 0),
            TextSize = 12,
            TextXAlignment = Enum.TextXAlignment.Center,
            TextYAlignment = Enum.TextYAlignment.Center,
            BorderColor3 = fromRGB(0, 0, 0),
            Name = "\000",
            Size = newUDim2(1, -3, 1, -3),
            Visible = false,
            AnchorPoint = Vector2.new(0.5, 0.5),
            BackgroundTransparency = 1,
            Position = newUDim2(0.5, -1, 0.5, -1),
            ZIndex = 5,
            BorderSizePixel = 0,
            BackgroundColor3 = fromRGB(245, 242, 238),
        })
        tbl7.Shadow = tbl5:Create("ImageLabel", {
            Parent = tbl7.Indicator.Instance,
            Visible = true,
            ImageTransparency = 1,
            AnchorPoint = Vector2.new(0.5, 0.5),
            Image = "rbxassetid://112971167999062",
            ZIndex = 4,
            BorderSizePixel = 0,
            SliceCenter = newRect(Vector2.new(112, 112), (Vector2.new(147, 147))),
            ScaleType = Enum.ScaleType.Slice,
            BorderColor3 = fromRGB(0, 0, 0),
            Name = "\000",
            BackgroundTransparency = 1,
            Position = newUDim2(0.5, 0, 0.5, 0),
            SliceScale = 0.6000000238418579,
            ImageColor3 = fromRGB(224, 116, 24),
            Size = newUDim2(1, 15, 1, 15),
            BackgroundColor3 = fromRGB(245, 242, 238),
        })
        tbl7.Shadow:AddToTheme({ImageColor3 = "Accent"})
        tbl7.Text = tbl5:Create("TextLabel", {
            Parent = tbl7.Toggle.Instance,
            FontFace = connection.Font,
            TextColor3 = fromRGB(245, 242, 238),
            TextTransparency = 0.5,
            Text = item2.Name,
            Name = "\000",
            BorderColor3 = fromRGB(0, 0, 0),
            Size = newUDim2(1, 0, 0, 15),
            BackgroundTransparency = 1,
            TextXAlignment = Enum.TextXAlignment.Left,
            BorderSizePixel = 0,
            ZIndex = 4,
            TextSize = 14,
            BackgroundColor3 = fromRGB(245, 242, 238),
        })
        tbl7.Text:AddToTheme({TextColor3 = "Text"})
        function item2.Get()
            return item2.Value
        end
        function item2.Set(_, toggled, v7, v8)
            if v7 then
                toggled = v7.Toggled
                item2.Value = toggled
            else
                item2.Value = toggled
            end
            connection.Flags[item2.Flag] = toggled
            if toggled then
                tbl7.Indicator:ChangeItemTheme({BackgroundColor3 = "Accent"})
                tbl7.UIStroke:ChangeItemTheme({Color = "Light Accent"})
                tbl7.Indicator:Tween(nil, {BackgroundColor3 = connection.Theme.Accent})
                tbl7.Knob:Tween(nil, {Position = newUDim2(1, -14, 0.5, 0)})
                tbl7.Text:Tween(nil, {TextTransparency = 0})
                tbl7.Check.Instance.Visible = false
                tbl7.Shadow:Tween(nil, {ImageTransparency = 0.5})
                tbl7.UIStroke:Tween(nil, {Color = connection.Theme["Light Accent"]})
            else
                tbl7.Indicator:ChangeItemTheme({BackgroundColor3 = "Element"})
                tbl7.UIStroke:ChangeItemTheme({Color = "Border"})
                tbl7.Indicator:Tween(nil, {BackgroundColor3 = connection.Theme.Element})
                tbl7.Knob:Tween(nil, {Position = newUDim2(0, 2, 0.5, 0)})
                tbl7.Text:Tween(nil, {TextTransparency = 0.5})
                tbl7.Check.Instance.Visible = false
                tbl7.Shadow:Tween(nil, {ImageTransparency = 1})
                tbl7.UIStroke:Tween(nil, {Color = connection.Theme.Border})
            end
            if item2.Callback and not v8 then
                connection:SafeCall(item2.Callback, toggled)
            end
        end
        function item2.SetVisiblity(_, visible)
            tbl7.Toggle.Instance.Visible = visible
        end
        function item2.Colorpicker(self2, item3)
            if not item3 then
                item3 = {}
            end
            local instance = {
                Window = self2.Window,
                Page = self2.Page,
                Section = self2,
                Name = item3.Name or item3.name or "Colorpicker",
                Flag = item3.Flag or item3.flag or connection:NextFlag(),
                Default = item3.Default or item3.default or Color3.new(1, 1, 1),
            }
            local callback2 = item3.Callback or item3.callback or (function() end)
            instance.Callback = callback2
            instance.Alpha = item3.Alpha or item3.alpha or 0
            instance.Parent = tbl7.Toggle
            instance.Count = item2.Count
            instance.IsToggle = true
            item2.Count = item2.Count + 1
            instance.Count = item2.Count
            local tbl8 = {Name = item2.Name, Element = tbl7.Text, Section = instance.Section}
            insert(instance.Page.SearchItems, tbl8)
            return (connection:CreateColorpicker(instance))
        end
        function item2.Keybind(section, item3)
            if not item3 then
                item3 = {}
            end
            local item4 = {}
            item4.Window = section.Window
            item4.Page = section.Page
            item4.Section = section
            item4.Name = item3.Name or item3.name or "Keybind"
            item4.Flag = item3.Flag or item3.flag or connection:NextFlag()
            item4.Default = item3.Default or item3.default or Enum.KeyCode.RightShift
            item4.Mode = item3.Mode or item3.mode or "Toggle"
            local callback2 = item3.Callback or item3.callback or (function() end)
            item4.Callback = callback2
            item4.Key = nil
            item4.Picking = false
            item4.Value = ""
            item4.Toggled = false
            item4.Count = item2.Count
            item2.Count = item2.Count + 1
            item4.Count = item2.Count
            local tbl8 = {}
            tbl8.KeyButton = tbl5:Create("TextButton", {
                Parent = tbl7.Toggle.Instance,
                FontFace = connection.Font,
                TextColor3 = fromRGB(245, 242, 238),
                TextTransparency = 0,
                Text = "None",
                Name = "\000",
                BorderColor3 = fromRGB(0, 0, 0),
                Size = newUDim2(0, 0, 0, 15),
                BackgroundTransparency = 1,
                AutomaticSize = Enum.AutomaticSize.X,
                TextXAlignment = Enum.TextXAlignment.Left,
                BorderSizePixel = 0,
                AnchorPoint = Vector2.new(1, 0.5),
                ZIndex = 4,
                TextSize = 14,
                BackgroundColor3 = fromRGB(245, 242, 238),
            })
            tbl8.KeyButton:AddToTheme({TextColor3 = "Text"});
            (function(v7)
                local v8 = v7 % 5
                local absoluteSize = tbl8.KeyButton.Instance.AbsoluteSize
                local value2 = (absoluteSize.X + 4) * v8 - 4 - absoluteSize.X
                tbl8.KeyButton.Instance.Position = newUDim2(1, v7 == 1 and -value2 - 24 or -value2, 0.5, 0)
            end)(item4.Count)
            function item4.Get()
                return item4.Toggled, item4.Key
            end
            function item4.SetVisibility(_, visible)
                tbl8.KeyButton.Instance.Visible = visible
            end
            function item4.Set(_, mode)
                if find2(tostring(mode), "Enum") then
                    item4.Key = tostring(mode)
                    local name = mode.Name == "Backspace" and "None" or mode.Name
                    local value2 = gsub(gsub(tbl3[item4.Key] or gsub(name, "Enum.", "") or "None", "KeyCode.", ""), "UserInputType.", "") or "None"
                    item4.Value = value2
                    tbl8.KeyButton.Instance.Text = value2
                    connection.Flags[item4.Flag] = {Mode = item4.Mode, Key = item4.Key, Toggled = item4.Toggled}
                    if item4.Callback then
                        connection:SafeCall(item4.Callback, item4.Toggled)
                    end
                elseif find({"Hold", "Toggle", "Always"}, mode) then
                    item4.Mode = mode
                    item4:SetMode(item4.Mode)
                    if item4.Callback then
                        connection:SafeCall(item4.Callback, item4.Toggled)
                    end
                elseif type(mode) == "table" then
                    local key = mode.Key == "Backspace" and "None" or mode.Key
                    item4.Key = tostring(mode.Key)
                    if mode.Mode then
                        item4.Mode = mode.Mode
                        item4:SetMode(mode.Mode)
                    else
                        item4.Mode = "Toggle"
                        item4:SetMode("Toggle")
                    end
                    local v7 = tbl3[item4.Key] or gsub(tostring(key), "Enum.", "")
                    if v7 then
                        key = v7
                    end
                    if key then
                        gsub(gsub(key, "KeyCode.", ""), "UserInputType.", "")
                    end
                    local value2 = gsub(gsub(key, "KeyCode.", ""), "UserInputType.", "")
                    item4.Value = value2
                    tbl8.KeyButton.Instance.Text = value2
                    if item4.Callback then
                        connection:SafeCall(item4.Callback, item4.Toggled)
                    end
                end
                item4.Picking = false
                tbl8.KeyButton:ChangeItemTheme({TextColor3 = "Text"})
                tbl8.KeyButton:Tween(nil, {TextColor3 = connection.Theme.Text})
            end
            function item4.SetMode()
                if item4.Mode == "Always" then
                    item4.Toggled = true
                else
                    item4.Toggled = false
                end
                connection.Flags[item4.Flag] = {Mode = item4.Mode, Key = item4.Key, Toggled = item4.Toggled}
                if item4.Callback then
                    connection:SafeCall(item4.Callback, item4.Toggled)
                end
            end
            function item4.Press(_, toggled)
                if item4.Mode == "Toggle" then
                    item4.Toggled = not item4.Toggled
                elseif item4.Mode == "Hold" then
                    item4.Toggled = toggled
                elseif item4.Mode == "Always" then
                    item4.Toggled = true
                end
                item2:Set(nil, item4)
                connection.Flags[item4.Flag] = {Mode = item4.Mode, Key = item4.Key, Toggled = item4.Toggled}
                if item4.Callback then
                    connection:SafeCall(item4.Callback, item4.Toggled)
                end
            end
            tbl8.KeyButton:Connect("MouseButton1Click", function()
                if not item4.Picking then
                    item4.Picking = true
                    tbl8.KeyButton:ChangeItemTheme({TextColor3 = "Accent"})
                    tbl8.KeyButton:Tween(nil, {TextColor3 = connection.Theme.Accent})
                    local connection4 = nil
                    connection4 = UserInputService.InputBegan:Connect(function(input)
                        if input.UserInputType == Enum.UserInputType.Keyboard then
                            item4:Set(input.KeyCode)
                        else
                            item4:Set(input.UserInputType)
                        end
                        connection4:Disconnect()
                        connection4 = nil
                    end)
                end
            end)
            connection:Connect(UserInputService.InputBegan, function(input)
                if tostring(input.KeyCode) == item4.Key or tostring(input.UserInputType) == item4.Key then
                    if item4.Value ~= "None" then
                        if item4.Mode == "Toggle" then
                            item4:Press()
                        elseif item4.Mode == "Hold" then
                            item4:Press(true)
                        end
                    end
                end
            end)
            connection:Connect(UserInputService.InputEnded, function(input)
                if tostring(input.KeyCode) == item4.Key or tostring(input.UserInputType) == item4.Key then
                    if item4.Value ~= "None" then
                        if item4.Mode == "Hold" then
                            item4:Press(false)
                        end
                    end
                end
            end)
            if item4.Default then
                item4:Set({Key = item4.Default, Mode = item4.Mode or "Toggle"})
            end
            connection.SetFlags[item4.Flag] = function(v7)
                item4:Set(v7)
            end
            return item4
        end
        local tbl8 = {Name = item2.Name, Element = tbl7.Text, Section = item2.Section}
        insert(item2.Page.SearchItems, tbl8)
        tbl7.Toggle:Connect("MouseButton1Down", function()
            item2:Set(not item2.Value)
        end)
        if item2.Default then
            item2:Set(item2.Default)
        end
        connection.SetFlags[item2.Flag] = function(v7)
            item2:Set(v7)
        end
        return item2
    end
    function connection.Sections:Button(item)
        if not item then
            item = {}
        end
        local item2 = {}
        item2.Window = self.Window
        item2.Page = self.Page
        item2.Section = self
        item2.Name = item.Name or item.name or "Button"
        local callback = item.Callback or item.callback or (function() end)
        item2.Callback = callback
        local tbl7 = {}
        tbl7.Button = tbl5:Create("TextButton", {
            Parent = item2.Section.Items.Content.Instance,
            FontFace = connection.Font,
            TextColor3 = fromRGB(245, 242, 238),
            BorderColor3 = fromRGB(0, 0, 0),
            Text = item2.Name,
            AutoButtonColor = false,
            Name = "\000",
            BorderSizePixel = 0,
            Size = newUDim2(1, 0, 0, 20),
            ZIndex = 4,
            TextSize = 14,
            BackgroundColor3 = fromRGB(15, 13, 11),
        })
        tbl7.Button:AddToTheme({BackgroundColor3 = "Element", TextColor3 = "Text"})
        tbl5:Create("UICorner", {Parent = tbl7.Button.Instance, CornerRadius = newUDim(0, 10)})
        tbl7.UIStroke = tbl5:Create("UIStroke", {Parent = tbl7.Button.Instance, Color = fromRGB(50, 34, 23), ApplyStrokeMode = Enum.ApplyStrokeMode.Border})
        tbl7.UIStroke:AddToTheme({Color = "Border"})
        function item2.Press()
            tbl7.Button:ChangeItemTheme({BackgroundColor3 = "Accent"})
            tbl7.UIStroke:ChangeItemTheme({Color = "Light Accent"})
            tbl7.Button:Tween(nil, {BackgroundColor3 = connection.Theme.Accent})
            tbl7.UIStroke:Tween(nil, {Color = connection.Theme["Light Accent"]})
            task.wait(0.1)
            tbl7.Button:ChangeItemTheme({BackgroundColor3 = "Element"})
            tbl7.UIStroke:ChangeItemTheme({Color = "Border"})
            tbl7.Button:Tween(nil, {BackgroundColor3 = connection.Theme.Element})
            tbl7.UIStroke:Tween(nil, {Color = connection.Theme.Border})
            connection:SafeCall(item2.Callback)
        end
        function item2.SetText(self2, v6)
            self2.Name = tostring(v6 or "")
            if tbl7.Button and tbl7.Button.Instance then
                tbl7.Button.Instance.Text = self2.Name
            end
        end
        function item2.SetVisibility(_, visible)
            tbl7.Button.Instance.Visible = visible
        end
        function item2.SubButton(section, item3)
            local item4 = {}
            item4.Window = section.Window
            item4.Page = section.Page
            item4.Section = section
            item4.Name = item3.Name or item3.name or "Button"
            local callback2 = item3.Callback or item3.callback or (function() end)
            item4.Callback = callback2
            local element = tbl5:Create("Frame", {
                Parent = item2.Section.Items.Content.Instance,
                BackgroundTransparency = 1,
                Name = "\000",
                BorderColor3 = fromRGB(0, 0, 0),
                Size = newUDim2(1, 0, 0, 20),
                BorderSizePixel = 0,
                BackgroundColor3 = fromRGB(245, 242, 238),
            })
            tbl7.Button.Instance.Parent = element.Instance
            tbl7.Button.Instance.Size = newUDim2(0.48, 1, 0, 20)
            local tbl8 = {}
            tbl8.SubButton = tbl5:Create("TextButton", {
                Parent = element.Instance,
                FontFace = connection.Font,
                TextColor3 = fromRGB(245, 242, 238),
                BorderColor3 = fromRGB(0, 0, 0),
                Text = item4.Name,
                AutoButtonColor = false,
                AnchorPoint = Vector2.new(1, 0),
                BorderSizePixel = 0,
                Name = "\000",
                Position = newUDim2(1, 0, 0, 0),
                Size = newUDim2(0.48, 1, 0, 20),
                ZIndex = 4,
                TextSize = 14,
                BackgroundColor3 = fromRGB(15, 13, 11),
            })
            tbl8.SubButton:AddToTheme({BackgroundColor3 = "Element", TextColor3 = "Text"})
            tbl5:Create("UICorner", {Parent = tbl8.SubButton.Instance, CornerRadius = newUDim(0, 10)})
            tbl8.UIStroke = tbl5:Create("UIStroke", {Parent = tbl8.SubButton.Instance, Color = fromRGB(50, 34, 23), ApplyStrokeMode = Enum.ApplyStrokeMode.Border})
            function item4.Press()
                tbl8.SubButton:ChangeItemTheme({BackgroundColor3 = "Accent"})
                tbl8.UIStroke:ChangeItemTheme({Color = "Light Accent"})
                tbl8.SubButton:Tween(nil, {BackgroundColor3 = connection.Theme.Accent})
                tbl8.UIStroke:Tween(nil, {Color = connection.Theme["Light Accent"]})
                task.wait(0.1)
                tbl8.SubButton:ChangeItemTheme({BackgroundColor3 = "Element"})
                tbl8.UIStroke:ChangeItemTheme({Color = "Border"})
                tbl8.SubButton:Tween(nil, {BackgroundColor3 = connection.Theme.Element})
                tbl8.UIStroke:Tween(nil, {Color = connection.Theme.Border})
                connection:SafeCall(item4.Callback)
            end
            function item4.SetVisibility(_, visible)
                tbl8.SubButton.Instance.Visible = visible
            end
            local tbl9 = {Name = item4.Name, Element = tbl8.SubButton, Section = item4.Section}
            insert(item4.Page.SearchItems, tbl9)
            tbl8.SubButton:Connect("MouseButton1Down", function()
                item4:Press()
            end)
            return item4
        end
        local tbl8 = {Name = item2.Name, Element = tbl7.Button, Section = item2.Section}
        insert(item2.Page.SearchItems, tbl8)
        tbl7.Button:Connect("MouseButton1Down", function()
            item2:Press()
        end)
        return item2
    end
    function connection.Sections:Slider(v6)
        local item = v6 or {}
        local item2 = {}
        item2.Window = self.Window
        item2.Page = self.Page
        item2.Section = self
        item2.Name = item.Name or item.name or "Slider"
        item2.Flag = item.Flag or item.flag or connection:NextFlag()
        item2.Min = item.Min or item.min or 0
        item2.Default = item.Default or item.default or 0
        item2.Max = item.Max or item.max or 100
        item2.Suffix = item.Suffix or item.suffix or ""
        item2.Decimals = item.Decimals or item.decimals or 1
        local callback = item.Callback or item.callback or (function() end)
        item2.Callback = callback
        item2.Value = 0
        item2.Sliding = false
        local item3 = {}
        item3.Slider = tbl5:Create("Frame", {
            Parent = item2.Section.Items.Content.Instance,
            Name = "\000",
            BackgroundTransparency = 1,
            Size = newUDim2(1, 0, 0, 28),
            BorderColor3 = fromRGB(0, 0, 0),
            ZIndex = 4,
            BorderSizePixel = 0,
            BackgroundColor3 = fromRGB(245, 242, 238),
        })
        item3.Text = tbl5:Create("TextLabel", {
            Parent = item3.Slider.Instance,
            FontFace = connection.Font,
            TextColor3 = fromRGB(245, 242, 238),
            BorderColor3 = fromRGB(0, 0, 0),
            Text = item2.Name,
            Name = "\000",
            BorderSizePixel = 0,
            BackgroundTransparency = 1,
            TextXAlignment = Enum.TextXAlignment.Left,
            Size = newUDim2(1, 0, 0, 15),
            ZIndex = 4,
            TextSize = 14,
            BackgroundColor3 = fromRGB(245, 242, 238),
        })
        item3.Text:AddToTheme({TextColor3 = "Text"})
        item3.Value = tbl5:Create("TextLabel", {
            Parent = item3.Slider.Instance,
            FontFace = connection.Font,
            TextColor3 = fromRGB(245, 242, 238),
            BorderColor3 = fromRGB(0, 0, 0),
            Text = "0.873",
            Name = "\000",
            BorderSizePixel = 0,
            BackgroundTransparency = 1,
            TextXAlignment = Enum.TextXAlignment.Right,
            Size = newUDim2(1, 0, 0, 15),
            ZIndex = 4,
            TextSize = 14,
            BackgroundColor3 = fromRGB(245, 242, 238),
        })
        item3.Value:AddToTheme({TextColor3 = "Text"})
        item3.RealSlider = tbl5:Create("Frame", {
            Parent = item3.Slider.Instance,
            BorderColor3 = fromRGB(0, 0, 0),
            AnchorPoint = Vector2.new(0, 1),
            Name = "\000",
            Position = newUDim2(0, 0, 1, 0),
            Size = newUDim2(1, 0, 0, 2),
            ZIndex = 5,
            BorderSizePixel = 0,
            BackgroundColor3 = fromRGB(15, 13, 11),
        })
        item3.RealSlider:AddToTheme({BackgroundColor3 = "Element"})
        item3.Accent = tbl5:Create("Frame", {
            Parent = item3.RealSlider.Instance,
            Name = "\000",
            Size = newUDim2(0.6729999780654907, 0, 1, 0),
            BorderColor3 = fromRGB(0, 0, 0),
            ZIndex = 5,
            BorderSizePixel = 0,
            BackgroundColor3 = fromRGB(224, 116, 24),
        })
        item3.Accent:AddToTheme({BackgroundColor3 = "Accent"})
        item3.Shadow = tbl5:Create("ImageLabel", {
            Parent = item3.Accent.Instance,
            ImageColor3 = fromRGB(224, 116, 24),
            ImageTransparency = 0.6800000071525574,
            AnchorPoint = Vector2.new(0.5, 0.5),
            Image = "rbxassetid://112971167999062",
            ZIndex = 4,
            BorderSizePixel = 0,
            SliceCenter = newRect(Vector2.new(112, 112), (Vector2.new(147, 147))),
            ScaleType = Enum.ScaleType.Slice,
            BorderColor3 = fromRGB(0, 0, 0),
            BackgroundTransparency = 1,
            Position = newUDim2(0.5, 0, 0.5, 0),
            SliceScale = 0.6000000238418579,
            Name = "\000",
            Size = newUDim2(1, 15, 1, 15),
            BackgroundColor3 = fromRGB(245, 242, 238),
        })
        item3.Shadow:AddToTheme({ImageColor3 = "Accent"})
        item3.Drag = tbl5:Create("TextButton", {
            Parent = item3.Accent.Instance,
            FontFace = connection.Font,
            TextColor3 = fromRGB(0, 0, 0),
            BorderColor3 = fromRGB(0, 0, 0),
            Text = "",
            AutoButtonColor = false,
            AnchorPoint = Vector2.new(0, 0.5),
            BorderSizePixel = 0,
            Name = "\000",
            Position = newUDim2(1, -8, 0.5, 0),
            Size = newUDim2(0, 15, 0, 15),
            ZIndex = 5,
            TextSize = 14,
            BackgroundColor3 = fromRGB(224, 116, 24),
        })
        item3.Drag:AddToTheme({BackgroundColor3 = "Accent"})
        item3.Shadow2 = tbl5:Create("ImageLabel", {
            Parent = item3.Drag.Instance,
            ImageColor3 = fromRGB(224, 116, 24),
            ImageTransparency = 0.6800000071525574,
            AnchorPoint = Vector2.new(0.5, 0.5),
            Image = "rbxassetid://112971167999062",
            ZIndex = 4,
            BorderSizePixel = 0,
            SliceCenter = newRect(Vector2.new(112, 112), (Vector2.new(147, 147))),
            ScaleType = Enum.ScaleType.Slice,
            BorderColor3 = fromRGB(0, 0, 0),
            BackgroundTransparency = 1,
            Position = newUDim2(0.5, 0, 0.5, 0),
            SliceScale = 0.6000000238418579,
            Name = "\000",
            Size = newUDim2(1, 15, 1, 15),
            BackgroundColor3 = fromRGB(245, 242, 238),
        })
        item3.Shadow2:AddToTheme({ImageColor3 = "Accent"})
        tbl5:Create("UICorner", {Parent = item3.Drag.Instance, CornerRadius = newUDim(1, 0)})
        function item2.Get()
            return item2.Value
        end
        function item2.Set(_, v7)
            item2.Value = clamp(connection:Round(v7, item2.Decimals), item2.Min, item2.Max)
            connection.Flags[item2.Flag] = item2.Value
            item3.Accent:Tween(TweenInfo.new(0.2, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Size = newUDim2((item2.Value - item2.Min) / (item2.Max - item2.Min), 0, 1, 0)})
            item3.Value.Instance.Text = format("%s%s", tostring(item2.Value), item2.Suffix)
            if item2.Callback then
                connection:SafeCall(item2.Callback, item2.Value)
            end
        end
        function item2.SetVisibility(_, visible)
            item3.Slider.Instance.Visible = visible
        end
        local tbl7 = {Name = item2.Name, Element = item3.Text, Section = item2.Section}
        insert(item2.Page.SearchItems, tbl7)
        item3.Drag:Connect("MouseButton1Down", function()
            item2.Sliding = true
            local value2 = (UserInputService:GetMouseLocation().X - 15 - item3.RealSlider.Instance.AbsolutePosition.X) / item3.RealSlider.Instance.AbsoluteSize.X
            item2:Set(clamp(connection:Round((item2.Max - item2.Min) * value2 + item2.Min, item2.Decimals), item2.Min, item2.Max))
        end)
        item3.Drag:Connect("InputEnded", function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 then
                item2.Sliding = false
            end
        end)
        connection:Connect(UserInputService.InputChanged, function(input)
            if input.UserInputType == Enum.UserInputType.MouseMovement and item2.Sliding then
                local value2 = (input.Position.X - 1 - item3.RealSlider.Instance.AbsolutePosition.X) / item3.RealSlider.Instance.AbsoluteSize.X
                item2:Set(clamp(connection:Round((item2.Max - item2.Min) * value2 + item2.Min, item2.Decimals), item2.Min, item2.Max))
            end
        end)
        if item2.Default then
            item2:Set(item2.Default)
        end
        connection.SetFlags[item2.Flag] = function(v7)
            item2:Set(v7)
        end
        return item2
    end
    function connection.Sections:Dropdown(item)
        if not item then
            item = {}
        end
        local item2 = {}
        item2.Window = self.Window
        item2.Page = self.Page
        item2.Section = self
        item2.Name = item.Name or item.name or "Dropdown"
        item2.Flag = item.Flag or item.flag or connection:NextFlag()
        item2.Items = item.Items or item.items or {"One", "Two", "Three"}
        item2.Default = item.Default or item.default or nil
        item2.MaxSize = item.MaxSize or item.maxsize or 75
        local callback = item.Callback or item.callback or (function() end)
        item2.Callback = callback
        item2.Multi = item.Multi or item.multi or false
        item2.Value = {}
        item2.IsOpen = false
        item2.Options = {}
        local item3 = {}
        item3.Dropdown = tbl5:Create("Frame", {
            Parent = item2.Section.Items.Content.Instance,
            Name = "\000",
            BackgroundTransparency = 1,
            Size = newUDim2(1, 0, 0, 42),
            BorderColor3 = fromRGB(0, 0, 0),
            ZIndex = 4,
            BorderSizePixel = 0,
            BackgroundColor3 = fromRGB(245, 242, 238),
        })
        item3.Text = tbl5:Create("TextLabel", {
            Parent = item3.Dropdown.Instance,
            FontFace = connection.Font,
            TextColor3 = fromRGB(245, 242, 238),
            BorderColor3 = fromRGB(0, 0, 0),
            Text = item2.Name,
            Name = "\000",
            BorderSizePixel = 0,
            BackgroundTransparency = 1,
            TextXAlignment = Enum.TextXAlignment.Left,
            Size = newUDim2(1, 0, 0, 15),
            ZIndex = 4,
            TextSize = 14,
            BackgroundColor3 = fromRGB(245, 242, 238),
        })
        item3.Text:AddToTheme({TextColor3 = "Text"})
        item3.OptionHolder = tbl5:Create("TextButton", {
            Parent = item3.Dropdown.Instance,
            AutoButtonColor = false,
            Visible = false,
            Text = "",
            Size = newUDim2(1, 0, 0, item2.MaxSize),
            Name = "\000",
            Position = newUDim2(0, 0, 1, 0),
            BorderColor3 = fromRGB(0, 0, 0),
            ZIndex = 25,
            BorderSizePixel = 0,
            BackgroundColor3 = fromRGB(15, 13, 11),
        })
        item3.OptionHolder:AddToTheme({BackgroundColor3 = "Inline"})
        tbl5:Create("UIStroke", {
            Parent = item3.OptionHolder.Instance,
            Color = fromRGB(50, 34, 23),
            ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
        }):AddToTheme({Color = "Border"})
        item3.Holder = tbl5:Create("ScrollingFrame", {
            Parent = item3.OptionHolder.Instance,
            Active = true,
            AutomaticCanvasSize = Enum.AutomaticSize.Y,
            ZIndex = 25,
            BorderSizePixel = 0,
            CanvasSize = newUDim2(0, 0, 0, 0),
            ScrollBarImageColor3 = fromRGB(224, 116, 24),
            MidImage = connection:GetImage("Scrollbar"),
            BorderColor3 = fromRGB(0, 0, 0),
            ScrollBarThickness = 2,
            Name = "\000",
            BackgroundTransparency = 1,
            Position = newUDim2(0, 5, 0, 5),
            Size = newUDim2(1, -10, 1, -10),
            BottomImage = connection:GetImage("Scrollbar"),
            TopImage = connection:GetImage("Scrollbar"),
            BackgroundColor3 = fromRGB(245, 242, 238),
        })
        item3.Holder:AddToTheme({ScrollBarImageColor3 = "Accent"})
        tbl5:Create("UIListLayout", {Parent = item3.Holder.Instance, Padding = newUDim(0, 10), SortOrder = Enum.SortOrder.LayoutOrder})
        item3.RealDropdown = tbl5:Create("TextButton", {
            Parent = item3.Dropdown.Instance,
            AutoButtonColor = false,
            Text = "",
            BorderColor3 = fromRGB(0, 0, 0),
            AnchorPoint = Vector2.new(0, 1),
            Name = "\000",
            Position = newUDim2(0, 0, 1, 0),
            Size = newUDim2(1, 0, 0, 21),
            ZIndex = 4,
            BorderSizePixel = 0,
            BackgroundColor3 = fromRGB(15, 13, 11),
        })
        item3.RealDropdown:AddToTheme({BackgroundColor3 = "Element"})
        tbl5:Create("UIStroke", {
            Parent = item3.RealDropdown.Instance,
            Color = fromRGB(50, 34, 23),
            ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
        }):AddToTheme({Color = "Border"})
        tbl5:Create("UICorner", {Parent = item3.RealDropdown.Instance, CornerRadius = newUDim(0, 10)})
        item3.Value = tbl5:Create("TextLabel", {
            Parent = item3.RealDropdown.Instance,
            FontFace = connection.Font,
            TextColor3 = fromRGB(245, 242, 238),
            BorderColor3 = fromRGB(245, 242, 238),
            Text = "--",
            Name = "\000",
            TextTruncate = Enum.TextTruncate.AtEnd,
            Size = newUDim2(1, -35, 1, 0),
            Position = newUDim2(0, 4, 0, 1),
            BackgroundTransparency = 1,
            TextXAlignment = Enum.TextXAlignment.Left,
            BorderSizePixel = 0,
            ZIndex = 4,
            TextSize = 14,
            BackgroundColor3 = fromRGB(245, 242, 238),
        })
        item3.Value:AddToTheme({TextColor3 = "Text"})
        item3.OpenIcon = tbl5:Create("ImageLabel", {
            Parent = item3.RealDropdown.Instance,
            ScaleType = Enum.ScaleType.Fit,
            BorderColor3 = fromRGB(0, 0, 0),
            Name = "\000",
            Size = newUDim2(0, 10, 0, 10),
            AnchorPoint = Vector2.new(1, 0.5),
            Image = "rbxassetid://86523506890491",
            BackgroundTransparency = 1,
            Position = newUDim2(1, -6, 0.5, 0),
            ZIndex = 4,
            BorderSizePixel = 0,
            BackgroundColor3 = fromRGB(245, 242, 238),
        })
        item3.OpenIcon:AddToTheme({ImageColor3 = "Image"})
        local enabled3 = false
        function item2.Set(_, value2, v6)
            if item.Multi then
                if type(value2) ~= "table" then
                    return
                else
                    item2.Value = value2
                    connection.Flags[item2.Flag] = item2.Value
                    local v7 = nil
                    local v8 = nil
                    for _, value3 in value2, v7, v8 do
                        local v9 = item2.Options[value3]
                        if not v9 then
                            return
                        else
                            v9.Selected = true
                            v9:Toggle("Active")
                        end
                    end
                    item3.Value.Instance.Text = concat(value2, ", ")
                end
            else
                local item4 = item2.Options[value2]
                if not item4 then
                    return
                else
                    item4.Selected = true
                    item4:Toggle("Active")
                    item2.Value = item4.Name
                    connection.Flags[item2.Flag] = item2.Value
                    local options = item2.Options
                    local v7 = nil
                    local v8 = nil
                    for _, value3 in options, v7, v8 do
                        if value3 ~= item4 then
                            value3.Selected = false
                            value3:Toggle("Inactive")
                        end
                    end
                    item3.Value.Instance.Text = item2.Value
                end
            end
            if item2.Flag == "InterfaceLanguage" then
                KITI_InterfaceLanguage = item2.Value == "Russian" and "Russian" or "English"
            end
            if item.Callback and not v6 then
                connection:SafeCall(item.Callback, item2.Value)
            end
        end
        function item2.SetOpen(_, isOpen)
            if not enabled3 then
                item2.IsOpen = isOpen
                enabled3 = true
                if isOpen then
                    item3.OptionHolder.Instance.Visible = true
                end
                local descendants = item3.OptionHolder.Instance:GetDescendants()
                insert(descendants, item3.OptionHolder.Instance)
                local v6 = nil
                local v7 = nil
                local v8 = nil
                for _, value2 in descendants, v6, v7 do
                    local transparencyPropertyFromItem = connection:GetTransparencyPropertyFromItem(value2)
                    if transparencyPropertyFromItem then
                        if type(transparencyPropertyFromItem) == "table" then
                            local v9 = nil
                            local v10 = nil
                            for _, value3 in transparencyPropertyFromItem, v9, v10 do
                                v8 = connection:FadeItem(value2, value3, isOpen, item2.Window.FadeSpeed)
                            end
                        else
                            v8 = connection:FadeItem(value2, transparencyPropertyFromItem, isOpen, item2.Window.FadeSpeed)
                        end
                    end
                end
                connection:Connect(v8.Tween.Completed, function()
                    enabled3 = false
                    item3.OptionHolder.Instance.Visible = isOpen
                end)
            end
        end
        function item2.Remove(_, v6)
            if item2.Options[v6] then
                item2.Options[v6].Button:Clean()
            end
            item2.Options[v6] = nil
        end
        function item2.Refresh(_, v6)
            local options = item2.Options
            local v7 = nil
            local v8 = nil
            for _, value2 in options, v7, v8 do
                item2:Remove(value2.Name)
            end
            local v9 = nil
            local v10 = nil
            for _, value2 in v6, v9, v10 do
                item2:Add(value2)
            end
        end
        function item2.Add(_, v6)
            local element = tbl5:Create("TextButton", {
                Parent = item3.Holder.Instance,
                FontFace = connection.Font,
                TextColor3 = fromRGB(245, 242, 238),
                TextTransparency = 0.5,
                Text = v6,
                Name = "\000",
                AutoButtonColor = false,
                BorderColor3 = fromRGB(0, 0, 0),
                Size = newUDim2(1, -5, 0, 20),
                BackgroundTransparency = 1,
                TextXAlignment = Enum.TextXAlignment.Left,
                BorderSizePixel = 0,
                ZIndex = 25,
                TextSize = 14,
                BackgroundColor3 = fromRGB(10, 9, 8),
            })
            element:AddToTheme({TextColor3 = "Text", BackgroundColor3 = "Background"})
            tbl5:Create("UICorner", {Parent = element.Instance, CornerRadius = newUDim(0, 4)})
            local v7 = tbl5:Create("UIPadding", {Parent = element.Instance, PaddingLeft = newUDim(0, 7)})
            local item4 = {Name = v6, Button = element, Padding = v7, Selected = false}
            function item4.Toggle(_, v8)
                if v8 == "Active" then
                    item4.Button:ChangeItemTheme({TextColor3 = "Accent"})
                    item4.Button:Tween(nil, {TextColor3 = connection.Theme.Accent, BackgroundTransparency = 0, TextTransparency = 0})
                    v7:Tween(nil, {PaddingLeft = newUDim(0, 12)})
                else
                    item4.Button:ChangeItemTheme({TextColor3 = "Text"})
                    item4.Button:Tween(nil, {TextColor3 = connection.Theme.Text, BackgroundTransparency = 1, TextTransparency = 0.5})
                    v7:Tween(nil, {PaddingLeft = newUDim(0, 7)})
                end
            end
            function item4.Set()
                item4.Selected = not item4.Selected
                if item2.Multi then
                    local v8 = find(item2.Value, item4.Name)
                    if v8 then
                        remove(item2.Value, v8)
                    else
                        insert(item2.Value, item4.Name)
                    end
                    connection.Flags[item2.Flag] = item2.Value
                    item4:Toggle(v8 and "Inactive" or "Active")
                    local text2 = #item2.Value > 0 and concat(item2.Value, ", ") or "--"
                    item3.Value.Instance.Text = text2
                elseif item4.Selected then
                    item2.Value = item4.Name
                    item4:Toggle("Active")
                    item3.Value.Instance.Text = item4.Name
                    connection.Flags[item2.Flag] = item2.Value
                    local options = item2.Options
                    local v8 = nil
                    local v9 = nil
                    for _, value2 in options, v8, v9 do
                        if value2 ~= item4 then
                            value2.Selected = false
                            value2:Toggle("Inactive")
                        end
                    end
                else
                    item2.Value = nil
                    item4:Toggle("Inactive")
                    item3.Value.Instance.Text = "--"
                    connection.Flags[item2.Flag] = item2.Value
                end
                if item.Callback then
                    connection:SafeCall(item.Callback, item2.Value)
                end
            end
            item4.Button:Connect("MouseButton1Down", function()
                item4:Set()
            end)
            item2.Options[v6] = item4
            return item4
        end
        function item2.SetVisibility(_, visible)
            item3.Dropdown.Instance.Visible = visible
        end
        local tbl7 = {Name = item2.Name, Element = item3.Text, Section = item2.Section}
        insert(item2.Page.SearchItems, tbl7)
        item3.RealDropdown:Connect("MouseButton1Down", function()
            item2:SetOpen(not item2.IsOpen)
        end)
        connection:Connect(UserInputService.InputBegan, function(input)
            local isOpen = input.UserInputType == Enum.UserInputType.MouseButton1 and item2.IsOpen and not enabled3
            local v6
            if isOpen then
                v6 = not connection:IsMouseOverFrame(item3.OptionHolder)
            else
                v6 = isOpen
            end
            if v6 then
                item2:SetOpen(false)
            end
        end)
        local items = item2.Items
        local v6 = nil
        local v7 = nil
        for _, value2 in items, v6, v7 do
            item2:Add(value2)
        end
        if item2.Default then
            item2:Set(item2.Default)
        end
        connection.SetFlags[item2.Flag] = function(v8)
            item2:Set(v8)
        end
        return item2
    end
    function connection.Sections:Label(v6, alignment)
        local item = {}
        item.Window = self.Window
        item.Page = self.Page
        item.Section = self
        item.Name = v6 or "Label"
        if not alignment then
            alignment = "Left"
        end
        item.Alignment = alignment
        item.Count = 0
        local tbl7 = {}
        tbl7.Label = tbl5:Create("Frame", {
            Parent = item.Section.Items.Content.Instance,
            Name = "\000",
            BackgroundTransparency = 1,
            Size = newUDim2(1, 0, 0, 15),
            BorderColor3 = fromRGB(0, 0, 0),
            ZIndex = 4,
            BorderSizePixel = 0,
            BackgroundColor3 = fromRGB(245, 242, 238),
        })
        tbl7.Text = tbl5:Create("TextLabel", {
            Parent = tbl7.Label.Instance,
            FontFace = connection.Font,
            TextColor3 = fromRGB(245, 242, 238),
            BorderColor3 = fromRGB(0, 0, 0),
            Text = item.Name,
            Name = "\000",
            BorderSizePixel = 0,
            BackgroundTransparency = 1,
            TextXAlignment = Enum.TextXAlignment[item.Alignment],
            Size = newUDim2(1, 0, 0, 15),
            ZIndex = 4,
            TextSize = 14,
            BackgroundColor3 = fromRGB(245, 242, 238),
        })
        tbl7.Text:AddToTheme({TextColor3 = "Text"})
        function item.Colorpicker(self2, item2)
            if not item2 then
                item2 = {}
            end
            local instance = {
                Window = self2.Window,
                Page = self2.Page,
                Section = self2,
                Name = item2.Name or item2.name or "Colorpicker",
                Flag = item2.Flag or item2.flag or connection:NextFlag(),
                Default = item2.Default or item2.default or Color3.new(1, 1, 1),
            }
            local callback = item2.Callback or item2.callback or (function() end)
            instance.Callback = callback
            instance.Alpha = item2.Alpha or item2.alpha or 0
            instance.Parent = tbl7.Label
            instance.Count = item.Count
            item.Count = item.Count + 1
            instance.Count = item.Count
            local tbl8 = {Name = item.Name, Element = tbl7.Text, Section = instance.Section}
            insert(instance.Page.SearchItems, tbl8)
            return (connection:CreateColorpicker(instance))
        end
        function item.SetText(self2, text2)
            if not text2 then
                text2 = ""
            end
            self2.Name = tostring(text2)
            if tbl7.Text and tbl7.Text.Instance then
                tbl7.Text.Instance.Text = self2.Name
            end
        end
        function item.GetText(item2)
            return item2.Name
        end
        return item
    end
    function connection.Sections:Keybind(item)
        if not item then
            item = {}
        end
        local item2 = {}
        item2.Window = self.Window
        item2.Page = self.Page
        item2.Section = self
        item2.Name = item.Name or item.name or "Keybind"
        item2.Flag = item.Flag or item.flag or connection:NextFlag()
        item2.Default = item.Default or item.default or Enum.KeyCode.RightShift
        local callback = item.Callback or item.callback or (function() end)
        item2.Callback = callback
        item2.Mode = item.Mode or item.mode or "Toggle"
        item2.Key = nil
        item2.Value = ""
        item2.Toggled = false
        item2.Picking = false
        connection.Flags[item2.Flag] = {}
        local item3 = {}
        item3.Keybind = tbl5:Create("Frame", {
            Parent = item2.Section.Items.Content.Instance,
            Name = "\000",
            BackgroundTransparency = 1,
            Size = newUDim2(1, 0, 0, 42),
            BorderColor3 = fromRGB(0, 0, 0),
            ZIndex = 4,
            BorderSizePixel = 0,
            BackgroundColor3 = fromRGB(245, 242, 238),
        })
        item3.Text = tbl5:Create("TextLabel", {
            Parent = item3.Keybind.Instance,
            FontFace = connection.Font,
            TextColor3 = fromRGB(245, 242, 238),
            BorderColor3 = fromRGB(0, 0, 0),
            Text = item2.Name,
            Name = "\000",
            BorderSizePixel = 0,
            BackgroundTransparency = 1,
            TextXAlignment = Enum.TextXAlignment.Left,
            Size = newUDim2(1, 0, 0, 15),
            ZIndex = 4,
            TextSize = 14,
            BackgroundColor3 = fromRGB(245, 242, 238),
        })
        item3.Text:AddToTheme({TextColor3 = "Text"})
        item3.RealKeybind = tbl5:Create("TextButton", {
            Parent = item3.Keybind.Instance,
            AutoButtonColor = false,
            Text = "",
            BorderColor3 = fromRGB(0, 0, 0),
            AnchorPoint = Vector2.new(0, 1),
            Name = "\000",
            Position = newUDim2(0, 0, 1, 0),
            Size = newUDim2(1, 0, 0, 21),
            ZIndex = 4,
            BorderSizePixel = 0,
            BackgroundColor3 = fromRGB(15, 13, 11),
        })
        item3.RealKeybind:AddToTheme({BackgroundColor3 = "Element"})
        tbl5:Create("UIStroke", {
            Parent = item3.RealKeybind.Instance,
            Color = fromRGB(50, 34, 23),
            ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
        }):AddToTheme({Color = "Border"})
        tbl5:Create("UICorner", {Parent = item3.RealKeybind.Instance, CornerRadius = newUDim(0, 10)})
        item3.Value = tbl5:Create("TextLabel", {
            Parent = item3.RealKeybind.Instance,
            FontFace = connection.Font,
            TextColor3 = fromRGB(245, 242, 238),
            BorderColor3 = fromRGB(245, 242, 238),
            Text = "None",
            Name = "\000",
            BorderSizePixel = 0,
            Size = newUDim2(1, -16, 1, 0),
            BackgroundTransparency = 1,
            TextXAlignment = Enum.TextXAlignment.Left,
            Position = newUDim2(0, 4, 0, 1),
            ZIndex = 4,
            TextSize = 14,
            BackgroundColor3 = fromRGB(245, 242, 238),
        })
        item3.Value:AddToTheme({TextColor3 = "Text"})
        function item2.Get()
            return item2.Toggled, item2.Key
        end
        function item2.SetVisibility(_, visible)
            item3.Keybind.Instance.Visible = visible
        end
        function item2.Set(_, mode)
            if find2(tostring(mode), "Enum") then
                item2.Key = tostring(mode)
                local name = mode.Name == "Backspace" and "None" or mode.Name
                local value2 = gsub(gsub(tbl3[item2.Key] or gsub(name, "Enum.", "") or "None", "KeyCode.", ""), "UserInputType.", "") or "None"
                item2.Value = value2
                item3.Value.Instance.Text = value2
                connection.Flags[item2.Flag] = {Mode = item2.Mode, Key = item2.Key, Toggled = item2.Toggled}
                if item2.Callback then
                    connection:SafeCall(item2.Callback, item2.Toggled)
                end
            elseif find({"Hold", "Toggle", "Always"}, mode) then
                item2.Mode = mode
                item2:SetMode(item2.Mode)
                if item2.Callback then
                    connection:SafeCall(item2.Callback, item2.Toggled)
                end
            elseif type(mode) == "table" then
                local key = mode.Key == "Backspace" and "None" or mode.Key
                item2.Key = tostring(mode.Key)
                if mode.Mode then
                    item2.Mode = mode.Mode
                    item2:SetMode(mode.Mode)
                else
                    item2.Mode = "Toggle"
                    item2:SetMode("Toggle")
                end
                local v6 = tbl3[item2.Key] or gsub(tostring(key), "Enum.", "") or key
                if v6 then
                    gsub(gsub(v6, "KeyCode.", ""), "UserInputType.", "")
                end
                local value2 = gsub(gsub(v6, "KeyCode.", ""), "UserInputType.", "")
                item2.Value = value2
                item3.Value.Instance.Text = value2
                if item2.Callback then
                    connection:SafeCall(item2.Callback, item2.Toggled)
                end
            end
            item2.Picking = false
            item3.Value:ChangeItemTheme({TextColor3 = "Text"})
            item3.Value:Tween(nil, {TextColor3 = connection.Theme.Text})
        end
        function item2.SetMode()
            if item2.Mode == "Always" then
                item2.Toggled = true
            else
                item2.Toggled = false
            end
            connection.Flags[item2.Flag] = {Mode = item2.Mode, Key = item2.Key, Toggled = item2.Toggled}
            if item2.Callback then
                connection:SafeCall(item2.Callback, item2.Toggled)
            end
        end
        function item2.Press(_, toggled)
            if item2.Mode == "Toggle" then
                item2.Toggled = not item2.Toggled
            elseif item2.Mode == "Hold" then
                item2.Toggled = toggled
            elseif item2.Mode == "Always" then
                item2.Toggled = true
            end
            connection.Flags[item2.Flag] = {Mode = item2.Mode, Key = item2.Key, Toggled = item2.Toggled}
            if item2.Callback then
                connection:SafeCall(item2.Callback, item2.Toggled)
            end
        end
        local tbl7 = {Name = item2.Name, Element = item3.Text, Section = item2.Section}
        insert(item2.Page.SearchItems, tbl7)
        item3.RealKeybind:Connect("MouseButton1Click", function()
            if not item2.Picking then
                item2.Picking = true
                item3.Value:ChangeItemTheme({TextColor3 = "Accent"})
                item3.Value:Tween(nil, {TextColor3 = connection.Theme.Accent})
                local connection4 = nil
                connection4 = UserInputService.InputBegan:Connect(function(input)
                    if input.UserInputType == Enum.UserInputType.Keyboard then
                        item2:Set(input.KeyCode)
                    else
                        item2:Set(input.UserInputType)
                    end
                    connection4:Disconnect()
                    connection4 = nil
                end)
            end
        end)
        connection:Connect(UserInputService.InputBegan, function(input)
            if tostring(input.KeyCode) == item2.Key or tostring(input.UserInputType) == item2.Key then
                if item2.Value ~= "None" then
                    if item2.Mode == "Toggle" then
                        item2:Press()
                    elseif item2.Mode == "Hold" then
                        item2:Press(true)
                    end
                end
            end
        end)
        connection:Connect(UserInputService.InputEnded, function(input)
            if tostring(input.KeyCode) == item2.Key or tostring(input.UserInputType) == item2.Key then
                if item2.Value ~= "None" then
                    if item2.Mode == "Hold" then
                        item2:Press(false)
                    end
                end
            end
        end)
        if item2.Default then
            item2:Set({Key = item2.Default, Mode = item2.Mode or "Toggle"})
        end
        connection.SetFlags[item2.Flag] = function(v6)
            item2:Set(v6)
        end
        return item2
    end
    function connection.Sections:Textbox(item)
        if not item then
            item = {}
        end
        local item2 = {}
        item2.Window = self.Window
        item2.Page = self.Page
        item2.Section = self
        item2.Name = item.Name or item.name or "Textbox"
        item2.Flag = item.Flag or item.flag or connection:NextFlag()
        item2.Default = item.Default or item.default or ""
        local callback = item.Callback or item.callback or (function() end)
        item2.Callback = callback
        item2.Placeholder = item.Placeholder or item.placeholder or "Placeholder"
        item2.Value = ""
        local tbl7 = {}
        tbl7.Textbox = tbl5:Create("Frame", {
            Parent = item2.Section.Items.Content.Instance,
            Name = "\000",
            BackgroundTransparency = 1,
            Size = newUDim2(1, 0, 0, 42),
            BorderColor3 = fromRGB(0, 0, 0),
            ZIndex = 4,
            BorderSizePixel = 0,
            BackgroundColor3 = fromRGB(245, 242, 238),
        })
        tbl7.Text = tbl5:Create("TextLabel", {
            Parent = tbl7.Textbox.Instance,
            FontFace = connection.Font,
            TextColor3 = fromRGB(245, 242, 238),
            BorderColor3 = fromRGB(0, 0, 0),
            Text = item2.Name,
            Name = "\000",
            BorderSizePixel = 0,
            BackgroundTransparency = 1,
            TextXAlignment = Enum.TextXAlignment.Left,
            Size = newUDim2(1, 0, 0, 15),
            ZIndex = 4,
            TextSize = 14,
            BackgroundColor3 = fromRGB(245, 242, 238),
        })
        tbl7.Text:AddToTheme({TextColor3 = "Text"})
        tbl7.Input = tbl5:Create("TextBox", {
            Parent = tbl7.Textbox.Instance,
            FontFace = connection.Font,
            BorderSizePixel = 0,
            TextColor3 = fromRGB(245, 242, 238),
            BorderColor3 = fromRGB(0, 0, 0),
            Text = "",
            ZIndex = 4,
            Size = newUDim2(1, 0, 0, 21),
            AnchorPoint = Vector2.new(0, 1),
            Position = newUDim2(0, 0, 1, 0),
            Name = "\000",
            PlaceholderColor3 = fromRGB(175, 175, 175),
            TextXAlignment = Enum.TextXAlignment.Left,
            PlaceholderText = item2.Placeholder,
            TextSize = 14,
            BackgroundColor3 = fromRGB(15, 13, 11),
        })
        tbl7.Input:AddToTheme({TextColor3 = "Text", BackgroundColor3 = "Element"})
        tbl5:Create("UICorner", {Parent = tbl7.Input.Instance, CornerRadius = newUDim(0, 10)})
        tbl5:Create("UIStroke", {Parent = tbl7.Input.Instance, Color = fromRGB(50, 34, 23), ApplyStrokeMode = Enum.ApplyStrokeMode.Border}):AddToTheme({Color = "Border"})
        tbl5:Create("UIPadding", {Parent = tbl7.Input.Instance, PaddingTop = newUDim(0, 1), PaddingLeft = newUDim(0, 4)})
        function item2.Get()
            return item2.Value
        end
        function item2.Set(_, text2)
            tbl7.Input.Instance.Text = text2
            item2.Value = text2
            connection.Flags[item2.Flag] = text2
            if item2.Callback then
                connection:SafeCall(item2.Callback, item2.Value)
            end
        end
        function item2.SetVisibility(_, visible)
            tbl7.Textbox.Instance.Visible = visible
        end
        local tbl8 = {Name = item2.Name, Element = tbl7.Text, Section = item2.Section}
        insert(item2.Page.SearchItems, tbl8)
        tbl7.Input:Connect("FocusLost", function()
            item2:Set(tbl7.Input.Instance.Text)
        end)
        if item2.Default then
            item2:Set(item2.Default)
        end
        connection.SetFlags[item2.Flag] = function(v6)
            item2:Set(v6)
        end
        return item2
    end
end
if getgenv().Library then
    pcall(function()
        getgenv().Library:Unload()
    end)
end
connection.MenuKeybind = "Enum.KeyCode.G"
local fontFace = Font.new("rbxasset://LuaPackages/Packages/_Index/BuilderIcons/BuilderIcons/BuilderIcons.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
local tbl3 = {new = function() end}
local TweenService3 = game:GetService("TweenService")
local tbl4 = {}
tbl4.Tween = TweenService3:Create(Instance.new("Frame"), TweenInfo.new(0), {BackgroundTransparency = 1})
local n = 0
function connection.FadeItem(_, v1, v2)
    local v3 = tick()
    if v3 - n > 0.05 then
        local tbl5 = {}
        local create = TweenService3.Create
        local tweenInfo = TweenInfo.new(0)
        local tbl6 = {}
        tbl6[v2] = 1
        tbl5.Tween = create(TweenService3, v1, tweenInfo, tbl6)
        tbl4 = tbl5
        tbl4.Tween:Play()
        n = v3
    end
    return tbl4
end
local function fn38(v1)
    if v1 == nil or v1 == "None" then
        return nil
    elseif typeof(v1) == "EnumItem" then
        return v1
    elseif type(v1) ~= "string" then
        return Enum.KeyCode.Unknown
    elseif v1 == "M1B" then
        return Enum.UserInputType.MouseButton1
    elseif v1 == "M2B" then
        return Enum.UserInputType.MouseButton2
    else
        return Enum.KeyCode[v1] or Enum.KeyCode.Unknown
    end
end
local function fn39(item)
    if typeof(item) == "EnumItem" then
        if item.EnumType == Enum.KeyCode then
            return item.Name
        elseif item == Enum.UserInputType.MouseButton1 then
            return "M1B"
        elseif item == Enum.UserInputType.MouseButton2 then
            return "M2B"
        else
            return item.Name
        end
    else
        local v1 = tostring(item or "None"):gsub("Enum%.KeyCode%.", ""):gsub("Enum%.UserInputType%.", "")
        if v1 == "MouseButton1" then
            return "M1B"
        elseif v1 == "MouseButton2" then
            return "M2B"
        elseif v1 == "Unknown" then
            return "None"
        else
            return v1
        end
    end
end
local function fn40(v1)
    if not v1 then
        return v1
    else
        function v1:SetValue(v2, v3)
            return self:Set(v2, nil, v3)
        end
        function v1:GetValue()
            return self:Get()
        end
        return v1
    end
end
local function fn41(v1)
    if not v1 then
        return v1
    else
        function v1:SetValue(v2)
            return self:Set(v2)
        end
        function v1:SetValues(v2)
            return self:Refresh(v2 or {})
        end
        function v1:GetValue()
            return self.Value
        end
        return v1
    end
end
local function fn42(v1)
    if not v1 then
        return v1
    else
        function v1:SetValue(v2)
            return self:Set(tostring(v2 or ""))
        end
        function v1:GetValue()
            return self:Get()
        end
        return v1
    end
end
local function fn43(v1)
    if not v1 then
        return v1
    else
        function v1:SetValue(v2, v3)
            return self:Set(v2, v3)
        end
        function v1:GetValue()
            return self:Get()
        end
        return v1
    end
end
local function fn44(v1)
    if not v1 then
        return v1
    else
        function v1:SetValue(v2)
            self:Set(fn38(v2))
        end
        function v1:GetValue()
            local _, v2 = self:Get()
            return fn39(v2)
        end
        return v1
    end
end
local function fn45(v1, min)
    if not v1 then
        return v1
    else
        if not v1.Decimals or v1.Decimals <= 0 then
            v1.Decimals = 1
        end
        local set = v1.Set
        function v1:Set(v2)
            local number2 = tonumber(v2)
            if not number2 or number2 ~= number2 or number2 == 1 / 0 or number2 == -1 / 0 then
                number2 = tonumber(self.Value) or tonumber(self.Min) or 0
            end
            return set(self, number2)
        end
        function v1:SetValue(v2)
            return self:Set(v2)
        end
        function v1:GetValue()
            return self:Get()
        end
        if min == nil then
            min = v1.Min or 0
        end
        v1:Set(min)
        return v1
    end
end
local function fn46(list, v1)
    if v1 ~= nil then
        return v1
    else
        local n2 = 0
        if type(list) == "table" then
            n2 = 0
            for _, _ in pairs(list) do
                n2 = n2 + 1
            end
        end
        return math.clamp(n2 * 30 + 10, 50, 220)
    end
end
local fn47 = nil
fn47 = function(v1, v2)
    local item = {Section = v1}
    item.Name = v2 or "Label"
    function item.AddToggle(_, item2)
        if not item2 then
            item2 = {}
        end
        item2.Name = item2.Name or item.Name
        return fn40(v1:Toggle(item2))
    end
    function item.AddKeybind(_, v3)
        local item2 = v3 or {}
        item2.Name = item2.Name or item.Name
        local callback = item2.Callback or (function() end)
        local v4 = nil
        if item2.Default == nil or item2.Default == "None" then
            item2.Default = "None"
        else
            item2.Default = fn38(item2.Default)
        end
        function item2.Callback()
            if v4 then
                local _, v5 = v4:Get()
                pcall(callback, fn39(v5))
            end
        end
        v4 = v1:Keybind(item2)
        return fn44(v4, callback)
    end
    function item.AddTextInput(_, item2)
        if not item2 then
            item2 = {}
        end
        item2.Name = item2.Name or item.Name
        return fn42(v1:Textbox(item2))
    end
    function item.AddDropdown(_, item2)
        if not item2 then
            item2 = {}
        end
        item2.Name = item2.Name or item.Name
        item2.Items = item2.Values or item2.Items or {}
        item2.MaxSize = fn46(item2.Items, item2.MaxSize)
        return fn41(v1:Dropdown(item2))
    end
    function item.AddSlider(_, v3)
        local item2 = v3 or {}
        item2.Name = item2.Name or item.Name
        return fn45(v1:Slider(item2), item2.Default)
    end
    function item.AddColorPicker(_, v3)
        local item2 = v3 or {}
        item2.Name = item2.Name or item.Name
        return fn43(v1:Label(item.Name, "Left"):Colorpicker(item2))
    end
    function item.AddOption()
        return item
    end
    function item.AddLabel(_, v3)
        return fn47(v1, v3)
    end
    function item.AddButton(_, v3)
        return v1:Button(v3 or {})
    end
    return item
end
local function fn48(v1, v2)
    return {
        Page = v1,
        Section = v2,
        AddLabel = function(_, v3)
            return fn47(v2, v3)
        end,
        AddToggle = function(_, v3)
            return fn40(v2:Toggle(v3 or {}))
        end,
        AddKeybind = function(_, v3)
            local tbl5 = v3 or {}
            local callback = tbl5.Callback or (function() end)
            local v4 = nil
            if tbl5.Default == nil or tbl5.Default == "None" then
                tbl5.Default = "None"
            else
                tbl5.Default = fn38(tbl5.Default)
            end
            function tbl5.Callback()
                if v4 then
                    local _, v5 = v4:Get()
                    pcall(callback, fn39(v5))
                end
            end
            v4 = v2:Keybind(tbl5)
            return fn44(v4, callback)
        end,
        AddButton = function(_, v3)
            return v2:Button(v3 or {})
        end,
        AddDropdown = function(_, item)
            if not item then
                item = {}
            end
            item.Name = item.Name or "Dropdown"
            item.Items = item.Values or item.Items or {}
            item.MaxSize = fn46(item.Items, item.MaxSize)
            return fn41(v2:Dropdown(item))
        end,
        AddSlider = function(_, v3)
            local item = v3 or {}
            item.Name = item.Name or "Slider"
            return fn45(v2:Slider(item), item.Default)
        end,
        AddTextInput = function(_, v3)
            return fn42(v2:Textbox(v3 or {}))
        end,
        AddColorPicker = function(_, v3)
            local item = v3 or {}
            return fn43(v2:Label(item.Name or "Color", "Left"):Colorpicker(item))
        end,
    }
end
local fn49 = nil
fn49 = function(v1, v2, v3)
    local tbl5 = {
        Window = v1,
        Page = v2,
        _direct = v3,
        _ensureSubPage = function(self)
            if self._direct then
                return v2
            else
                if not self._defaultSubPage then
                    self._defaultSubPage = v2:SubPage({Name = "Settings"})
                end
                return self._defaultSubPage
            end
        end,
        AddSubPage = function(_, item)
            if not item then
                item = {}
            end
            return fn49(v1, (v2.Items and v2.Items.SubPages and v2 or v2.Page or v2):SubPage({Name = item.Name or item.name or "SubPage"}), true)
        end,
    }
    function tbl5:AddSection(item)
        if not item then
            item = {}
        end
        local side = item.Position or item.Side or "Left"
        local text2 = side:sub(1, 1):upper() .. side:sub(2):lower()
        return fn48(tbl5, (self:_ensureSubPage()):Section({Name = item.Name or "Section", Side = text2}))
    end
    function tbl5:AddLabel(v4)
        if not tbl5._defaultSection then
            tbl5._defaultSection = fn48(tbl5, self:_ensureSubPage():Section({Name = "Settings", Side = "Left"}))
        end
        return tbl5._defaultSection:AddLabel(v4)
    end
    return tbl5
end
-- ============================================================
-- Kitsune Hub — Horror Edition
-- Бренд: Kitsune Hub (логотип с CDN), розовый акцент.
-- Целевая игра: Roblox horror (Doors/Backrooms-style) с
-- workspace.Monster.* и workspace.Map.Doors.*
-- ============================================================

if not game:IsLoaded() then
    game.Loaded:Wait()
end

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local Workspace = game:GetService("Workspace")
local Lighting = game:GetService("Lighting")

local LocalPlayer = Players.LocalPlayer
local Camera = Workspace.CurrentCamera

-- ===== Применяем розовую тему как дефолтную =====
pcall(function()
    if connection and connection.Themes and connection.Themes.Pink then
        connection.Theme = table.clone(connection.Themes.Pink)
        connection.CurrentTheme = "Pink"
        connection:ApplyTheme("Pink")
    end
end)

-- ===== Утилиты =====
local function getCharacter()
    return LocalPlayer.Character
end
local function getRoot()
    local char = getCharacter()
    if not char then return nil end
    return char:FindFirstChild("HumanoidRootPart") or char:FindFirstChild("Torso") or char:FindFirstChild("UpperTorso")
end
local function getHumanoid()
    local char = getCharacter()
    return char and char:FindFirstChildOfClass("Humanoid")
end

-- ============================================================
-- ESP-система (Highlight + BillboardGui с ником и дистанцией)
-- ============================================================
local ESP = {
    Players = { Enabled = false, Color = Color3.fromRGB(255, 105, 180), ShowName = true, ShowDistance = true, MaxDistance = 200 },
    Monster = { Enabled = false, Color = Color3.fromRGB(255, 50, 50), ShowName = true, ShowDistance = true, MaxDistance = 500 },
    Doors = { Enabled = false, Color = Color3.fromRGB(120, 220, 255), ShowLabel = true, MaxDistance = 300 },
}

-- Контейнер для всех ESP-объектов, чтобы чистить при выключении
local ESPObjects = {
    Players = {},   -- [player] = { highlight, billboard, conn }
    Monster = {},   -- [model] = { highlight, billboard, conn }
    Doors = {},     -- [model] = { highlight, billboard, conn }
}

local function clearCategory(category)
    for key, data in pairs(ESPObjects[category]) do
        if data.highlight then pcall(function() data.highlight:Destroy() end) end
        if data.billboard then pcall(function() data.billboard:Destroy() end) end
        if data.conn then pcall(function() data.conn:Disconnect() end) end
        ESPObjects[category][key] = nil
    end
end

-- Создаёт/обновляет BillboardGui с текстом
local function makeBillboard(parent, text, color)
    local bb = Instance.new("BillboardGui")
    bb.Name = "KitsuneESP"
    bb.Adornee = parent
    bb.Size = UDim2.new(0, 200, 0, 40)
    bb.StudsOffset = Vector3.new(0, 2.5, 0)
    bb.AlwaysOnTop = true
    bb.LightInfluence = 0
    bb.MaxDistance = 10000
    bb.ResetOnSpawn = false
    bb.Parent = parent

    local label = Instance.new("TextLabel")
    label.Name = "Text"
    label.BackgroundTransparency = 1
    label.Size = UDim2.new(1, 0, 1, 0)
    label.Position = UDim2.new(0, 0, 0, 0)
    label.Font = Enum.Font.GothamBold
    label.TextSize = 14
    label.TextColor3 = color
    label.TextStrokeTransparency = 0.2
    label.TextStrokeColor3 = Color3.new(0, 0, 0)
    label.Text = text
    label.TextXAlignment = Enum.TextXAlignment.Center
    label.TextYAlignment = Enum.TextYAlignment.Center
    label.Parent = bb
    return bb, label
end

local function makeHighlight(parent, color)
    local hl = Instance.new("Highlight")
    hl.Name = "KitsuneHighlight"
    hl.Adornee = parent
    hl.FillColor = color
    hl.FillTransparency = 0.5
    hl.OutlineColor = color
    hl.OutlineTransparency = 0
    hl.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
    hl.Parent = parent
    return hl
end

-- ====== Player ESP ======
local function setupPlayerESP(player)
    if player == LocalPlayer then return end
    if ESPObjects.Players[player] then return end

    local data = { highlight = nil, billboard = nil, label = nil, conn = nil }
    ESPObjects.Players[player] = data

    local function apply()
        local char = player.Character
        if not char then return end
        -- удаляем старые
        if data.highlight then data.highlight:Destroy() data.highlight = nil end
        if data.billboard then data.billboard:Destroy() data.billboard = nil end
        if not ESP.Players.Enabled then return end

        local cfg = ESP.Players
        data.highlight = makeHighlight(char, cfg.Color)

        local head = char:FindFirstChild("Head") or char:FindFirstChild("HumanoidRootPart")
        if head then
            local name = player.DisplayName and (player.DisplayName .. "(@" .. player.Name .. ")") or player.Name
            data.billboard, data.label = makeBillboard(head, name, cfg.Color)
        end
    end

    data.conn = player.CharacterAdded:Connect(function()
        task.wait(0.3)
        apply()
    end)
    apply()
end

local function refreshAllPlayerESP()
    for player, data in pairs(ESPObjects.Players) do
        local char = player.Character
        if data.highlight and char then
            data.highlight.FillColor = ESP.Players.Color
            data.highlight.OutlineColor = ESP.Players.Color
        end
        if data.billboard and data.label then
            data.label.TextColor3 = ESP.Players.Color
        end
    end
end

local function initPlayerESP()
    for _, p in ipairs(Players:GetPlayers()) do
        setupPlayerESP(p)
    end
    Players.PlayerAdded:Connect(function(p)
        setupPlayerESP(p)
    end)
    Players.PlayerRemoving:Connect(function(p)
        local data = ESPObjects.Players[p]
        if data then
            if data.highlight then pcall(function() data.highlight:Destroy() end) end
            if data.billboard then pcall(function() data.billboard:Destroy() end) end
            if data.conn then pcall(function() data.conn:Disconnect() end) end
            ESPObjects.Players[p] = nil
        end
    end)
end

-- ====== Monster ESP (workspace.Monster.*) ======
local function isMonsterModel(model)
    if not model:IsA("Model") then return false end
    -- Берём все модели внутри workspace.Monster
    return true
end

local function setupMonsterESP(model)
    if ESPObjects.Monster[model] then return end
    if not isMonsterModel(model) then return end

    local data = { highlight = nil, billboard = nil, label = nil }
    ESPObjects.Monster[model] = data

    if not ESP.Monster.Enabled then return end

    local cfg = ESP.Monster
    data.highlight = makeHighlight(model, cfg.Color)

    -- Ищем PrimaryPart или первую BasePart для Billboard
    local part = model.PrimaryPart or model:FindFirstChildWhichIsA("BasePart", true)
    if part then
        local name = model.Name or "Monster"
        data.billboard, data.label = makeBillboard(part, name, cfg.Color)
    end
end

local function refreshAllMonsterESP()
    for model, data in pairs(ESPObjects.Monster) do
        if data.highlight then
            data.highlight.FillColor = ESP.Monster.Color
            data.highlight.OutlineColor = ESP.Monster.Color
        end
        if data.label then
            data.label.TextColor3 = ESP.Monster.Color
        end
    end
end

local function rebuildMonsterESP()
    clearCategory("Monster")
    if not ESP.Monster.Enabled then return end
    local monsterFolder = Workspace:FindFirstChild("Monster")
    if not monsterFolder then return end
    for _, child in ipairs(monsterFolder:GetChildren()) do
        if child:IsA("Model") then
            setupMonsterESP(child)
        end
    end
end

local function initMonsterESP()
    local monsterFolder = Workspace:FindFirstChild("Monster")
    if monsterFolder then
        monsterFolder.ChildAdded:Connect(function(child)
            if child:IsA("Model") then
                task.wait(0.2)
                setupMonsterESP(child)
            end
        end)
        for _, child in ipairs(monsterFolder:GetChildren()) do
            if child:IsA("Model") then
                setupMonsterESP(child)
            end
        end
    end
    Workspace.ChildAdded:Connect(function(child)
        if child.Name == "Monster" then
            child.ChildAdded:Connect(function(c)
                if c:IsA("Model") then
                    task.wait(0.2)
                    setupMonsterESP(c)
                end
            end)
            for _, c in ipairs(child:GetChildren()) do
                if c:IsA("Model") then
                    setupMonsterESP(c)
                end
            end
        end
    end)
end

-- ====== Door ESP (workspace.Map.Doors.*) ======
local function setupDoorESP(model)
    if ESPObjects.Doors[model] then return end
    if not model:IsA("Model") then return end

    local data = { highlight = nil, billboard = nil, label = nil }
    ESPObjects.Doors[model] = data

    if not ESP.Doors.Enabled then return end

    local cfg = ESP.Doors
    -- Ищем Door part внутри модели
    local doorPart = model:FindFirstChild("Door", true) or model.PrimaryPart or model:FindFirstChildWhichIsA("BasePart", true)
    if doorPart then
        data.highlight = makeHighlight(model, cfg.Color)
        if cfg.ShowLabel then
            local label = "Door"
            if model.Name and model.Name ~= "" and tonumber(model.Name) then
                label = "Door #" .. model.Name
            end
            data.billboard, data.label = makeBillboard(doorPart, label, cfg.Color)
        end
    end
end

local function refreshAllDoorESP()
    for model, data in pairs(ESPObjects.Doors) do
        if data.highlight then
            data.highlight.FillColor = ESP.Doors.Color
            data.highlight.OutlineColor = ESP.Doors.Color
        end
        if data.label then
            data.label.TextColor3 = ESP.Doors.Color
        end
    end
end

local function rebuildDoorESP()
    clearCategory("Doors")
    if not ESP.Doors.Enabled then return end
    local mapFolder = Workspace:FindFirstChild("Map")
    if not mapFolder then return end
    local doorsFolder = mapFolder:FindFirstChild("Doors")
    if not doorsFolder then return end
    for _, child in ipairs(doorsFolder:GetChildren()) do
        setupDoorESP(child)
    end
end

local function initDoorESP()
    local mapFolder = Workspace:FindFirstChild("Map")
    if mapFolder then
        local doorsFolder = mapFolder:FindFirstChild("Doors")
        if doorsFolder then
            doorsFolder.ChildAdded:Connect(function(child)
                task.wait(0.2)
                setupDoorESP(child)
            end)
            for _, child in ipairs(doorsFolder:GetChildren()) do
                setupDoorESP(child)
            end
        end
        mapFolder.ChildAdded:Connect(function(child)
            if child.Name == "Doors" then
                child.ChildAdded:Connect(function(c)
                    task.wait(0.2)
                    setupDoorESP(c)
                end)
                for _, c in ipairs(child:GetChildren()) do
                    setupDoorESP(c)
                end
            end
        end)
    end
    Workspace.ChildAdded:Connect(function(child)
        if child.Name == "Map" then
            child.ChildAdded:Connect(function(c)
                if c.Name == "Doors" then
                    c.ChildAdded:Connect(function(d)
                        task.wait(0.2)
                        setupDoorESP(d)
                    end)
                    for _, d in ipairs(c:GetChildren()) do
                        setupDoorESP(d)
                    end
                end
            end)
        end
    end)
end

-- ====== Цикл обновления дистанции и видимости ======
RunService.RenderStepped:Connect(function()
    local root = getRoot()
    if not root then return end

    -- Players
    if ESP.Players.Enabled then
        for player, data in pairs(ESPObjects.Players) do
            if data.billboard and data.label then
                local char = player.Character
                local hrp = char and (char:FindFirstChild("HumanoidRootPart") or char:FindFirstChild("Humanoid"))
                local humanoid = char and char:FindFirstChildOfClass("Humanoid")
                local alive = humanoid and humanoid.Health > 0
                if hrp and alive then
                    local dist = (root.Position - hrp.Position).Magnitude
                    local parts = {}
                    if ESP.Players.ShowName then
                        table.insert(parts, player.DisplayName and (player.DisplayName .. " (@" .. player.Name .. ")") or player.Name)
                    end
                    if ESP.Players.ShowDistance then
                        table.insert(parts, string.format("%d m", math.floor(dist)))
                    end
                    data.label.Text = table.concat(parts, "\n")
                    local inRange = dist <= ESP.Players.MaxDistance
                    data.billboard.Enabled = inRange
                    if data.highlight then data.highlight.Enabled = inRange end
                else
                    data.billboard.Enabled = false
                    if data.highlight then data.highlight.Enabled = false end
                end
            end
        end
    end

    -- Monster
    if ESP.Monster.Enabled then
        for model, data in pairs(ESPObjects.Monster) do
            if data.billboard and data.label and model.Parent then
                local part = model.PrimaryPart or model:FindFirstChildWhichIsA("BasePart", true)
                if part then
                    local dist = (root.Position - part.Position).Magnitude
                    local parts = {}
                    if ESP.Monster.ShowName then
                        table.insert(parts, model.Name or "Monster")
                    end
                    if ESP.Monster.ShowDistance then
                        table.insert(parts, string.format("%d m", math.floor(dist)))
                    end
                    data.label.Text = table.concat(parts, "\n")
                    local inRange = dist <= ESP.Monster.MaxDistance
                    data.billboard.Enabled = inRange
                    if data.highlight then data.highlight.Enabled = inRange end
                end
            end
        end
    end

    -- Doors
    if ESP.Doors.Enabled then
        for model, data in pairs(ESPObjects.Doors) do
            if data.billboard and data.label and model.Parent then
                local part = model:FindFirstChild("Door", true) or model.PrimaryPart or model:FindFirstChildWhichIsA("BasePart", true)
                if part then
                    local dist = (root.Position - part.Position).Magnitude
                    local inRange = dist <= ESP.Doors.MaxDistance
                    data.billboard.Enabled = inRange
                    if data.highlight then data.highlight.Enabled = inRange end
                end
            end
        end
    end
end)

-- ============================================================
-- Создание главного окна Kitsune Hub
-- ============================================================

-- Меню побольше, поддержка mobile
local function getWindowSize()
    if UserInputService.TouchEnabled and not UserInputService.MouseEnabled then
        return UDim2.new(0, 460, 0, 540)
    end
    return UDim2.new(0, 820, 0, 580)
end

local window = connection:Window({
    Logo = "90791694090379",
    FadeSpeed = 0.18,
    PagePadding = 19,
    Size = getWindowSize(),
})

-- Применяем наш логотип Kitsune к шапке
pcall(function()
    local logoInst = window.Items.Logo and window.Items.Logo.Instance
    if logoInst then
        logoInst.Position = UDim2.new(0.5, 0, 0, 23)
        logoInst.Size = UDim2.new(0, 64, 0, 64)
        logoInst.Image = KITSUNE_LOGO
        logoInst.ImageColor3 = Color3.fromRGB(255, 255, 255)
    end
    local mainFrame = window.Items.MainFrame and window.Items.MainFrame.Instance
    if mainFrame then
        local corner = mainFrame:FindFirstChildOfClass("UICorner")
        if not corner then
            corner = Instance.new("UICorner")
            corner.Parent = mainFrame
        end
        corner.CornerRadius = UDim.new(0, 20)
        mainFrame.ClipsDescendants = false
    end
    local inline = window.Items.Inline and window.Items.Inline.Instance
    if inline then
        local c = inline:FindFirstChildOfClass("UICorner")
        if c then c:Destroy() end
        inline.ClipsDescendants = true
    end
    if window.Items.Shadow and window.Items.Shadow.Instance then
        window.Items.Shadow.Instance.Visible = true
        window.Items.Shadow.Instance.ImageTransparency = 0.45
        window.Items.Shadow.Instance.Size = UDim2.new(1, 55, 1, 55)
        window.Items.Shadow.Instance.Position = UDim2.new(0.5, 0, 0.5, 0)
    end
end)

-- ============================================================
-- Resize-система (больше / меньше) для mobile и PC
-- ============================================================
local UISCALE_MIN = 0.65
local UISCALE_MAX = 1.4
local UISCALE_STEP = 0.1
local currentScale = 1.0
local uiScaleInstance = Instance.new("UIScale")
uiScaleInstance.Scale = currentScale
pcall(function()
    uiScaleInstance.Parent = window.Items.MainFrame.Instance
end)

local function applyScale(newScale)
    newScale = math.clamp(newScale, UISCALE_MIN, UISCALE_MAX)
    currentScale = newScale
    pcall(function()
        TweenService:Create(uiScaleInstance, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Scale = newScale}):Play()
    end)
    if uiScaleInstance then uiScaleInstance.Scale = newScale end
end

-- ============================================================
--  Вкладки (Pages)
-- ============================================================

-- ===== Page: Players =====
local playersPage = window:Page({ Icon = "users" })
local playersSection = playersPage:SubPage({ Name = "ESP" }):Section({ Name = "Player ESP", Side = "Left" })

playersSection:AddToggle({
    Name = "Enable Player ESP",
    Default = false,
    Flag = "PlayerESP_Enabled",
    Callback = function(val)
        ESP.Players.Enabled = val
        if val then
            for player in pairs(ESPObjects.Players) do
                setupPlayerESP(player)
            end
        else
            for _, data in pairs(ESPObjects.Players) do
                if data.highlight then data.highlight:Destroy() data.highlight = nil end
                if data.billboard then data.billboard:Destroy() data.billboard = nil end
            end
        end
    end,
})

playersSection:AddColorPicker({
    Name = "ESP Color",
    Default = ESP.Players.Color,
    Flag = "PlayerESP_Color",
    Callback = function(color)
        ESP.Players.Color = color
        refreshAllPlayerESP()
    end,
})

playersSection:AddToggle({
    Name = "Show Name",
    Default = true,
    Flag = "PlayerESP_ShowName",
    Callback = function(val) ESP.Players.ShowName = val end,
})

playersSection:AddToggle({
    Name = "Show Distance",
    Default = true,
    Flag = "PlayerESP_ShowDistance",
    Callback = function(val) ESP.Players.ShowDistance = val end,
})

playersSection:AddSlider({
    Name = "Max Distance",
    Min = 50,
    Max = 1000,
    Default = 200,
    Decimals = 0,
    Suffix = " m",
    Flag = "PlayerESP_MaxDistance",
    Callback = function(val) ESP.Players.MaxDistance = val end,
})

-- ===== Page: World (Monster + Doors) =====
local worldPage = window:Page({ Icon = "map" })

-- Monster ESP
local monsterSub = worldPage:SubPage({ Name = "World" })
local monsterSection = monsterSub:Section({ Name = "Monster ESP", Side = "Left" })

monsterSection:AddToggle({
    Name = "Enable Monster ESP",
    Default = false,
    Flag = "MonsterESP_Enabled",
    Callback = function(val)
        ESP.Monster.Enabled = val
        if val then
            rebuildMonsterESP()
        else
            clearCategory("Monster")
        end
    end,
})

monsterSection:AddColorPicker({
    Name = "Monster Color",
    Default = ESP.Monster.Color,
    Flag = "MonsterESP_Color",
    Callback = function(color)
        ESP.Monster.Color = color
        refreshAllMonsterESP()
    end,
})

monsterSection:AddToggle({
    Name = "Show Name",
    Default = true,
    Flag = "MonsterESP_ShowName",
    Callback = function(val) ESP.Monster.ShowName = val end,
})

monsterSection:AddToggle({
    Name = "Show Distance",
    Default = true,
    Flag = "MonsterESP_ShowDistance",
    Callback = function(val) ESP.Monster.ShowDistance = val end,
})

monsterSection:AddSlider({
    Name = "Max Distance",
    Min = 50,
    Max = 2000,
    Default = 500,
    Decimals = 0,
    Suffix = " m",
    Flag = "MonsterESP_MaxDistance",
    Callback = function(val) ESP.Monster.MaxDistance = val end,
})

-- Door ESP
local doorSection = monsterSub:Section({ Name = "Door ESP", Side = "Right" })

doorSection:AddToggle({
    Name = "Enable Door ESP",
    Default = false,
    Flag = "DoorESP_Enabled",
    Callback = function(val)
        ESP.Doors.Enabled = val
        if val then
            rebuildDoorESP()
        else
            clearCategory("Doors")
        end
    end,
})

doorSection:AddColorPicker({
    Name = "Door Color",
    Default = ESP.Doors.Color,
    Flag = "DoorESP_Color",
    Callback = function(color)
        ESP.Doors.Color = color
        refreshAllDoorESP()
    end,
})

doorSection:AddToggle({
    Name = "Show Label",
    Default = true,
    Flag = "DoorESP_ShowLabel",
    Callback = function(val)
        ESP.Doors.ShowLabel = val
        if val then
            rebuildDoorESP()
        else
            for _, data in pairs(ESPObjects.Doors) do
                if data.billboard then data.billboard:Destroy() data.billboard = nil end
            end
        end
    end,
})

doorSection:AddSlider({
    Name = "Max Distance",
    Min = 50,
    Max = 2000,
    Default = 300,
    Decimals = 0,
    Suffix = " m",
    Flag = "DoorESP_MaxDistance",
    Callback = function(val) ESP.Doors.MaxDistance = val end,
})

-- ===== Page: Player (Movement) =====
local playerPage = window:Page({ Icon = "person" })
local moveSub = playerPage:SubPage({ Name = "Movement" })
local moveSection = moveSub:Section({ Name = "Speed & Jump", Side = "Left" })

local DEFAULT_WALKSPEED = 16
local DEFAULT_JUMPPOWER = 50
local currentWalkSpeed = DEFAULT_WALKSPEED
local currentJumpPower = DEFAULT_JUMPPOWER

local function applyWalkSpeed(v)
    local hum = getHumanoid()
    if hum then
        pcall(function() hum.WalkSpeed = v end)
    end
end
local function applyJumpPower(v)
    local hum = getHumanoid()
    if hum then
        pcall(function()
            hum.UseJumpPower = true
            hum.JumpPower = v
        end)
        pcall(function() hum.JumpHeight = v / 50 end)
    end
end

-- Постоянное поддержание WalkSpeed/JumpPower
task.spawn(function()
    while true do
        task.wait(0.5)
        local hum = getHumanoid()
        if hum then
            pcall(function() hum.WalkSpeed = currentWalkSpeed end)
            pcall(function()
                hum.UseJumpPower = true
                hum.JumpPower = currentJumpPower
            end)
        end
    end
end)

-- Переприменять после респавна
LocalPlayer.CharacterAdded:Connect(function()
    task.wait(0.6)
    applyWalkSpeed(currentWalkSpeed)
    applyJumpPower(currentJumpPower)
end)

-- ===== WalkSpeed =====
moveSection:AddLabel("WalkSpeed")
local wsSlider = moveSection:AddSlider({
    Name = "WalkSpeed Slider",
    Min = 1,
    Max = 500,
    Default = DEFAULT_WALKSPEED,
    Decimals = 0,
    Suffix = "",
    Flag = "WalkSpeed_Slider",
    Callback = function(val)
        currentWalkSpeed = val
        applyWalkSpeed(val)
        -- синхронизируем textbox
        pcall(function()
            if wsTextBox and wsTextBox.SetValue then wsTextBox:SetValue(tostring(val)) end
        end)
    end,
})
local wsTextBox = moveSection:AddTextInput({
    Name = "WalkSpeed (custom value)",
    Default = tostring(DEFAULT_WALKSPEED),
    Placeholder = "1 - 500",
    Flag = "WalkSpeed_Input",
    Callback = function(text)
        local num = tonumber(text)
        if not num then return end
        num = math.clamp(math.floor(num), 1, 500)
        currentWalkSpeed = num
        applyWalkSpeed(num)
        pcall(function()
            if wsSlider and wsSlider.SetValue then wsSlider:SetValue(num) end
        end)
    end,
})

-- ===== JumpPower =====
moveSection:AddLabel("JumpPower")
local jpSlider = moveSection:AddSlider({
    Name = "JumpPower Slider",
    Min = 1,
    Max = 500,
    Default = DEFAULT_JUMPPOWER,
    Decimals = 0,
    Suffix = "",
    Flag = "JumpPower_Slider",
    Callback = function(val)
        currentJumpPower = val
        applyJumpPower(val)
        pcall(function()
            if jpTextBox and jpTextBox.SetValue then jpTextBox:SetValue(tostring(val)) end
        end)
    end,
})
local jpTextBox = moveSection:AddTextInput({
    Name = "JumpPower (custom value)",
    Default = tostring(DEFAULT_JUMPPOWER),
    Placeholder = "1 - 500",
    Flag = "JumpPower_Input",
    Callback = function(text)
        local num = tonumber(text)
        if not num then return end
        num = math.clamp(math.floor(num), 1, 500)
        currentJumpPower = num
        applyJumpPower(num)
        pcall(function()
            if jpSlider and jpSlider.SetValue then jpSlider:SetValue(num) end
        end)
    end,
})

moveSection:AddButton({
    Name = "Reset to Default",
    Callback = function()
        currentWalkSpeed = DEFAULT_WALKSPEED
        currentJumpPower = DEFAULT_JUMPPOWER
        applyWalkSpeed(DEFAULT_WALKSPEED)
        applyJumpPower(DEFAULT_JUMPPOWER)
        pcall(function() if wsSlider and wsSlider.SetValue then wsSlider:SetValue(DEFAULT_WALKSPEED) end end)
        pcall(function() if jpSlider and jpSlider.SetValue then jpSlider:SetValue(DEFAULT_JUMPPOWER) end end)
        pcall(function() if wsTextBox and wsTextBox.SetValue then wsTextBox:SetValue(tostring(DEFAULT_WALKSPEED)) end end)
        pcall(function() if jpTextBox and jpTextBox.SetValue then jpTextBox:SetValue(tostring(DEFAULT_JUMPPOWER)) end end)
    end,
})

-- ===== Page: Settings (resize + theme) =====
local settingsPage = window:Page({ Icon = "settings" })
local settingsSub = settingsPage:SubPage({ Name = "Settings" })
local uiSection = settingsSub:Section({ Name = "UI Scale (Mobile / PC)", Side = "Left" })

uiSection:AddLabel("Use the slider or buttons to resize")
local scaleSlider = uiSection:AddSlider({
    Name = "UI Scale",
    Min = 0.65,
    Max = 1.4,
    Default = 1.0,
    Decimals = 2,
    Suffix = "x",
    Flag = "UI_Scale",
    Callback = function(val)
        applyScale(val)
        pcall(function()
            if scaleTextBox and scaleTextBox.SetValue then scaleTextBox:SetValue(tostring(val)) end
        end)
    end,
})
local scaleTextBox = uiSection:AddTextInput({
    Name = "UI Scale (custom)",
    Default = "1",
    Placeholder = "0.65 - 1.4",
    Flag = "UI_Scale_Input",
    Callback = function(text)
        local num = tonumber(text)
        if not num then return end
        num = math.clamp(num, UISCALE_MIN, UISCALE_MAX)
        applyScale(num)
        pcall(function()
            if scaleSlider and scaleSlider.SetValue then scaleSlider:SetValue(num) end
        end)
    end,
})

uiSection:AddButton({
    Name = "Bigger (+10%)",
    Callback = function()
        local new = currentScale + UISCALE_STEP
        applyScale(new)
        pcall(function() if scaleSlider and scaleSlider.SetValue then scaleSlider:SetValue(currentScale) end end)
        pcall(function() if scaleTextBox and scaleTextBox.SetValue then scaleTextBox:SetValue(tostring(currentScale)) end end)
    end,
})
uiSection:AddButton({
    Name = "Smaller (-10%)",
    Callback = function()
        local new = currentScale - UISCALE_STEP
        applyScale(new)
        pcall(function() if scaleSlider and scaleSlider.SetValue then scaleSlider:SetValue(currentScale) end end)
        pcall(function() if scaleTextBox and scaleTextBox.SetValue then scaleTextBox:SetValue(tostring(currentScale)) end end)
    end,
})
uiSection:AddButton({
    Name = "Reset (100%)",
    Callback = function()
        applyScale(1.0)
        pcall(function() if scaleSlider and scaleSlider.SetValue then scaleSlider:SetValue(1.0) end end)
        pcall(function() if scaleTextBox and scaleTextBox.SetValue then scaleTextBox:SetValue("1") end end)
    end,
})

local themeSection = settingsSub:Section({ Name = "Theme", Side = "Right" })
themeSection:AddDropdown({
    Name = "Theme",
    Values = { "Pink", "Default", "White", "Blue", "Purple", "Green" },
    Default = "Pink",
    Flag = "Theme",
    Callback = function(val)
        pcall(function()
            connection:ApplyTheme(val)
        end)
    end,
})

-- ===== Page: Credits =====
local creditsPage = window:Page({ Icon = "info" })
local creditsSub = creditsPage:SubPage({ Name = "About" })
local creditsSection = creditsSub:Section({ Name = "Kitsune Hub", Side = "Left" })
creditsSection:AddLabel("Kitsune Hub")
creditsSection:AddLabel("Horror Edition")
creditsSection:AddLabel("Player ESP / Monster ESP / Door ESP")
creditsSection:AddLabel("WalkSpeed & JumpPower control")
creditsSection:AddLabel("UI Scale for Mobile & PC")
creditsSection:AddLabel("Press G to toggle menu")

-- ============================================================
--  Инициализация
-- ============================================================
initPlayerESP()
initMonsterESP()
initDoorESP()

-- Авто-включение меню при старте
task.spawn(function()
    task.wait(0.5)
    pcall(function()
        window:SetOpen(true)
    end)
end)

-- Cleanup при выгрузке
getgenv().KitsuneHub_Unload = function()
    pcall(clearCategory, "Players")
    pcall(clearCategory, "Monster")
    pcall(clearCategory, "Doors")
    if uiScaleInstance then
        pcall(function() uiScaleInstance:Destroy() end)
    end
    if connection and connection.Unload then
        pcall(connection.Unload, connection)
    end
end

return 1
