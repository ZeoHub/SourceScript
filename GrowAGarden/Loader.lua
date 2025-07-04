if not game:IsLoaded() then
    game.Loaded:Wait()
end

local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

-- ZeoHub-style loading screen
local function showZeoHubLoadingScreen(callback)
    local guiLoading = Instance.new("ScreenGui")
    guiLoading.Name = "SourceScripts"
    guiLoading.Parent = LocalPlayer:WaitForChild("PlayerGui")
    guiLoading.ResetOnSpawn = false
    guiLoading.IgnoreGuiInset = true

    local bg = Instance.new("Frame", guiLoading)
    bg.Size = UDim2.new(1, 0, 1, 0)
    bg.Position = UDim2.new(0, 0, 0, 0)
    bg.BackgroundColor3 = Color3.fromRGB(15, 15, 18)
    bg.BackgroundTransparency = 1

    local main = Instance.new("Frame", bg)
    main.Size = UDim2.new(0, 410, 0, 170)
    main.Position = UDim2.new(0.5, -205, 0.5, -85+40)
    main.BackgroundColor3 = Color3.fromRGB(26, 26, 30)
    main.BorderSizePixel = 0
    main.BackgroundTransparency = 1
    Instance.new("UICorner", main).CornerRadius = UDim.new(0, 22)

    local icon = Instance.new("ImageLabel", main)
    icon.Size = UDim2.new(0, 40, 0, 40)
    icon.Position = UDim2.new(0, 24, 0, 24)
    icon.BackgroundTransparency = 1
    icon.Image = "rbxassetid://123908939729747"
    Instance.new("UICorner", icon).CornerRadius = UDim.new(1, 0)
    icon.ImageTransparency = 1

    local title = Instance.new("TextLabel", main)
    title.Position = UDim2.new(0, 74, 0, 28)
    title.Size = UDim2.new(1, -90, 0, 34)
    title.BackgroundTransparency = 1
    title.Text = "SourceScripts"
    title.TextXAlignment = Enum.TextXAlignment.Left
    title.Font = Enum.Font.GothamBold
    title.TextSize = 28
    title.TextColor3 = Color3.fromRGB(235, 235, 240)
    title.TextStrokeTransparency = 0.85
    title.TextTransparency = 1

    local barBack = Instance.new("Frame", main)
    barBack.Size = UDim2.new(0.87, 0, 0, 32)
    barBack.Position = UDim2.new(0.065, 0, 0, 80)
    barBack.BackgroundColor3 = Color3.fromRGB(40, 40, 42)
    barBack.BorderSizePixel = 0
    Instance.new("UICorner", barBack).CornerRadius = UDim.new(0, 15)
    barBack.BackgroundTransparency = 1

    local bar = Instance.new("Frame", barBack)
    bar.Size = UDim2.new(0, 0, 1, 0)
    bar.Position = UDim2.new(0, 0, 0, 0)
    bar.BackgroundColor3 = Color3.fromRGB(235, 235, 240)
    bar.BorderSizePixel = 0
    Instance.new("UICorner", bar).CornerRadius = UDim.new(0, 15)
    bar.BackgroundTransparency = 1

    local loadingText = Instance.new("TextLabel", main)
    loadingText.Position = UDim2.new(0.065, 0, 0, 122)
    loadingText.Size = UDim2.new(0.87, 0, 0, 22)
    loadingText.BackgroundTransparency = 1
    loadingText.Text = "Loading..."
    loadingText.Font = Enum.Font.GothamBold
    loadingText.TextSize = 18
    loadingText.TextColor3 = Color3.fromRGB(245, 245, 245)
    loadingText.TextStrokeTransparency = 0.8
    loadingText.TextXAlignment = Enum.TextXAlignment.Left
    loadingText.TextTransparency = 1

    local subText = Instance.new("TextLabel", main)
    subText.Position = UDim2.new(0.065, 0, 1, -26)
    subText.Size = UDim2.new(0.87, 0, 0, 20)
    subText.BackgroundTransparency = 1
    subText.Text = "tiktok.com/@jandelofficialacc"
    subText.TextXAlignment = Enum.TextXAlignment.Left
    subText.Font = Enum.Font.GothamBold
    subText.TextSize = 16
    subText.TextColor3 = Color3.fromRGB(120, 120, 120)
    subText.TextStrokeTransparency = 0.88
    subText.TextTransparency = 1

    TweenService:Create(bg, TweenInfo.new(0.4, Enum.EasingStyle.Quad), {BackgroundTransparency = 0.18}):Play()
    TweenService:Create(main, TweenInfo.new(0.45, Enum.EasingStyle.Quad), {BackgroundTransparency = 0, Position = UDim2.new(0.5, -205, 0.5, -85)}):Play()
    TweenService:Create(icon, TweenInfo.new(0.32, Enum.EasingStyle.Quad), {ImageTransparency = 0}):Play()
    TweenService:Create(barBack, TweenInfo.new(0.32, Enum.EasingStyle.Quad), {BackgroundTransparency = 0}):Play()
    TweenService:Create(bar, TweenInfo.new(0.32, Enum.EasingStyle.Quad), {BackgroundTransparency = 0}):Play()
    TweenService:Create(title, TweenInfo.new(0.28, Enum.EasingStyle.Quad), {TextTransparency = 0}):Play()
    TweenService:Create(loadingText, TweenInfo.new(0.28, Enum.EasingStyle.Quad), {TextTransparency = 0}):Play()
    TweenService:Create(subText, TweenInfo.new(0.28, Enum.EasingStyle.Quad), {TextTransparency = 0}):Play()
    task.wait(0.52)

    local duration = 2
    local steps = 90
    for i = 1, steps do
        bar.Size = UDim2.new((i/steps)*0.98, 0, 1, 0)
        task.wait(duration/steps)
    end
    bar.Size = UDim2.new(0.98, 0, 1, 0)

    TweenService:Create(bg, TweenInfo.new(0.38, Enum.EasingStyle.Quad), {BackgroundTransparency = 1}):Play()
    TweenService:Create(main, TweenInfo.new(0.42, Enum.EasingStyle.Quad), {BackgroundTransparency = 1, Position = UDim2.new(0.5, -205, 0.5, -85-40)}):Play()
    TweenService:Create(icon, TweenInfo.new(0.32, Enum.EasingStyle.Quad), {ImageTransparency = 1}):Play()
    TweenService:Create(barBack, TweenInfo.new(0.32, Enum.EasingStyle.Quad), {BackgroundTransparency = 1}):Play()
    TweenService:Create(bar, TweenInfo.new(0.32, Enum.EasingStyle.Quad), {BackgroundTransparency = 1}):Play()
    TweenService:Create(title, TweenInfo.new(0.28, Enum.EasingStyle.Quad), {TextTransparency = 1}):Play()
    TweenService:Create(loadingText, TweenInfo.new(0.28, Enum.EasingStyle.Quad), {TextTransparency = 1}):Play()
    TweenService:Create(subText, TweenInfo.new(0.28, Enum.EasingStyle.Quad), {TextTransparency = 1}):Play()
    task.wait(0.52)

    guiLoading:Destroy()
    if typeof(callback) == "function" then
        callback()
    end
end

showZeoHubLoadingScreen(function()
    local tabNames = {"Main", "Free Access (No Key)", "Key Access", "Visual Scripts", "Credit"}
    local scriptLists = {
        ["Free Access (No Key)"] = {
            {name = "NatHub", url = "https://raw.githubusercontent.com/ZeoHub/GrowAGardenV3/refs/heads/main/Load/NatHub.lua"},
            {name = "No-Lag Hub", url = "https://raw.githubusercontent.com/ZeoHub/GrowAGardenV3/refs/heads/main/Load/No-LagHub.lua"},
            {name = "Kenniel Hub", url = "https://raw.githubusercontent.com/ZeoHub/GrowAGardenV3/refs/heads/main/Load/Kenniel%20Hub.lua"},
            {name = "Menace Hub (OldServerFinder)", url = "https://raw.githubusercontent.comV3/ZeoHub/GrowAGarden/refs/heads/main/Load/OldServerFinder.lua"},
            {name = "ThunderZ Hub", url = "https://raw.githubusercontent.com/ZeoHub/GrowAGardenV3/refs/heads/main/Load/ThunderZ%20Hub.lua"},
            {name = "Than Hub", url = "https://raw.githubusercontent.com/ZeoHub/GrowAGardenV3/refs/heads/main/Load/Than%20Hub.lua"},
            {name = "Black Hub", url = "https://raw.githubusercontent.com/ZeoHub/GrowAGardenV3/refs/heads/main/Load/Black%20Hub.lua"},
        },
        ["Key Access"] = {
            {name = "Rift", url = "https://raw.githubusercontent.com/ZeoHub/GrowAGardenV3/refs/heads/main/Load/Rift.lua"},
            {name = "Lunor Hub", url = "https://raw.githubusercontent.com/ZeoHub/GrowAGardenV3/refs/heads/main/Load/Solix%20Hub.lua"},
            {name = "Aussie WIRE vs GAG", url = "https://raw.githubusercontent.com/ZeoHub/GrowAGardenV3/refs/heads/main/Load/Aussie.lua"},
            {name = "ForgeHub", url = "https://raw.githubusercontent.com/ZeoHub/GrowAGardenV3/refs/heads/main/Load/ForgeHub.lua"},
            {name = "Nicuse", url = "https://raw.githubusercontent.com/ZeoHub/GrowAGardenV3/refs/heads/main/Load/Nicuse.lua"},
            {name = "NeoxHub", url = "https://raw.githubusercontent.com/ZeoHub/GrowAGardenV3/refs/heads/main/Load/NeoxHub.lua"},
        },
        ["Visual Scripts"] = {
            {name = "Pet Spawner", url = "https://raw.githubusercontent.com/ZeoHub/GrowAGardenV3/refs/heads/main/Load/Pet%20Spawner.lua"},
            {name = "Seed Spawner (Fixing)", url = "https://raw.githubusercontent.com/ZeoHub/GrowAGardenV3/refs/heads/main/Load/PetSpawner.lua"},
            {name = "Coming Soon!", url = "https://raw.githubusercontent.com/ZeoHub/GrowAGardenV3/refs/heads/main/Load/PetSpawner.lua"},
            {name = "Coming Soon!", url = "https://raw.githubusercontent.com/ZeoHub/GrowAGardenV3/refs/heads/main/Load/PetSpawner.lua"},
            {name = "Coming Soon!", url = "https://raw.githubusercontent.com/ZeoHub/GrowAGardenV3/refs/heads/main/Load/PetSpawner.lua"},
        }
    }

    local gui = Instance.new("ScreenGui")
    gui.Name = "SourceScriptLoader"
    gui.ResetOnSpawn = false
    gui.IgnoreGuiInset = true
    gui.Parent = LocalPlayer:WaitForChild("PlayerGui")

    local window = Instance.new("Frame")
    window.Name = "FloatingWindow"
    window.Size = UDim2.new(0, 420, 0, 260)
    window.Position = UDim2.new(0.5, -210, 0.5, -130)
    window.BackgroundColor3 = Color3.fromRGB(35, 36, 40)
    window.Active = true
    window.Draggable = false
    window.Parent = gui
    Instance.new("UICorner", window).CornerRadius = UDim.new(0, 18)

    local dragBar = Instance.new("Frame", window)
    dragBar.Size = UDim2.new(1, -32, 0, 2)
    dragBar.Position = UDim2.new(0, 16, 1, -10)
    dragBar.BackgroundColor3 = Color3.fromRGB(128, 128, 128)
    dragBar.ZIndex = 2
    Instance.new("UICorner", dragBar).CornerRadius = UDim.new(1, 1)

    local dragHitbox = Instance.new("TextButton", window)
    dragHitbox.Size = UDim2.new(1, 0, 0, 20)
    dragHitbox.Position = UDim2.new(0, 0, 1, -20)
    dragHitbox.BackgroundTransparency = 1
    dragHitbox.Text = ""
    dragHitbox.AutoButtonColor = false
    dragHitbox.Active = true
    dragHitbox.ZIndex = 2

    local UserInputService = game:GetService("UserInputService")
    local dragging, startPos, startWindowPos, currentTouch = false, nil, nil, nil
    dragHitbox.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = true
            startPos = UserInputService:GetMouseLocation()
            startWindowPos = window.Position
        elseif input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            currentTouch = input
            startPos = input.Position
            startWindowPos = window.Position
        end
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
                currentTouch = nil
            end
        end)
    end)
    UserInputService.InputChanged:Connect(function(input)
        if dragging then
            local cur
            if input.UserInputType == Enum.UserInputType.MouseMovement then
                cur = UserInputService:GetMouseLocation()
            elseif input.UserInputType == Enum.UserInputType.Touch then
                if currentTouch and input == currentTouch then
                    cur = input.Position
                else return end
            else return end
            local delta = cur - startPos
            window.Position = UDim2.new(
                startWindowPos.X.Scale, startWindowPos.X.Offset + delta.X,
                startWindowPos.Y.Scale, startWindowPos.Y.Offset + delta.Y
            )
        end
    end)

    local glass = Instance.new("ImageLabel", window)
    glass.BackgroundTransparency = 1
    glass.Image = "rbxassetid://7123055409"
    glass.ImageTransparency = 0.6
    glass.ScaleType = Enum.ScaleType.Slice
    glass.SliceCenter = Rect.new(10, 10, 90, 90)
    glass.Size = UDim2.new(1, 0, 1, 0)

    local topBar = Instance.new("Frame", window)
    topBar.Name = "TopBar"
    topBar.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    topBar.BackgroundTransparency = 0.14
    topBar.Size = UDim2.new(1, 0, 0, 36)
    topBar.BorderSizePixel = 0
    Instance.new("UICorner", topBar).CornerRadius = UDim.new(0, 14)

    local titleLabel = Instance.new("TextLabel", topBar)
    titleLabel.Text = "SourceScriptLoader"
    titleLabel.Font = Enum.Font.GothamBold
    titleLabel.TextColor3 = Color3.new(1, 1, 1)
    titleLabel.TextSize = 20
    titleLabel.BackgroundTransparency = 1
    titleLabel.AnchorPoint = Vector2.new(0, 0.5)
    titleLabel.Position = UDim2.new(0, 16, 0.5, 0)
    titleLabel.Size = UDim2.new(1, -32, 1, 0)

    -- CLOSE BUTTON (top right)
    local closeBtn = Instance.new("TextButton", topBar)
    closeBtn.Name = "CloseButton"
    closeBtn.Size = UDim2.new(0, 28, 0, 28)
    closeBtn.Position = UDim2.new(1, -66, 0, 4)
    closeBtn.BackgroundColor3 = Color3.fromRGB(200, 65, 65)
    closeBtn.Text = ""
    closeBtn.Font = Enum.Font.GothamBold
    closeBtn.TextSize = 18
    closeBtn.TextColor3 = Color3.new(200, 65, 65)
    closeBtn.BackgroundTransparency = 0
    closeBtn.AutoButtonColor = true
    closeBtn.ZIndex = 12
    Instance.new("UICorner", closeBtn).CornerRadius = UDim.new(0, 12)
    closeBtn.MouseButton1Click:Connect(function()
        gui:Destroy()
    end)
    closeBtn.MouseEnter:Connect(function()
        closeBtn.BackgroundColor3 = Color3.fromRGB(255,40,40)
    end)
    closeBtn.MouseLeave:Connect(function()
        closeBtn.BackgroundColor3 = Color3.fromRGB(200, 65, 65)
    end)

    local sidebar = Instance.new("Frame", window)
    sidebar.Name = "Sidebar"
    sidebar.Size = UDim2.new(0, 175, 1, -34)
    sidebar.Position = UDim2.new(0, 0, 0, 36)
    sidebar.BackgroundColor3 = Color3.fromRGB(33, 33, 38)
    sidebar.BackgroundTransparency = 0.2
    sidebar.BorderSizePixel = 0
    Instance.new("UICorner", sidebar).CornerRadius = UDim.new(0, 10)

    local tabButtons = {}
    local tabList = Instance.new("UIListLayout", sidebar)
    tabList.SortOrder = Enum.SortOrder.LayoutOrder
    tabList.Padding = UDim.new(0, 8)

    local function makeTab(text)
        local btn = Instance.new("TextButton")
        btn.Text = text
        btn.Font = Enum.Font.GothamBold
        btn.TextColor3 = Color3.new(1, 1, 1)
        btn.TextSize = 16
        btn.BackgroundColor3 = Color3.fromRGB(45, 45, 55)
        btn.BackgroundTransparency = 0.15
        btn.Size = UDim2.new(1, -16, 0, 36)
        btn.Position = UDim2.new(0, 8, 0, 0)
        btn.AnchorPoint = Vector2.new(0, 0)
        btn.AutoButtonColor = false
        btn.BorderSizePixel = 0
        Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 7)
        btn.Parent = sidebar
        btn.MouseEnter:Connect(function()
            if not btn:GetAttribute("Active") then
                btn.BackgroundColor3 = Color3.fromRGB(65, 65, 75)
            end
        end)
        btn.MouseLeave:Connect(function()
            if not btn:GetAttribute("Active") then
                btn.BackgroundColor3 = Color3.fromRGB(45, 45, 55)
            end
        end)
        return btn
    end

    for _, name in ipairs(tabNames) do
        tabButtons[name] = makeTab(name)
    end

    local mainArea = Instance.new("Frame", window)
    mainArea.Name = "MainArea"
    mainArea.Position = UDim2.new(0, 170, 0, 36)
    mainArea.Size = UDim2.new(1, -170, 1, -36)
    mainArea.BackgroundTransparency = 1
    mainArea.ClipsDescendants = true

    local function clearMain()
        for _, v in ipairs(mainArea:GetChildren()) do
            v:Destroy()
        end
    end

    local function renderMain()
        clearMain()
        local mainTitle = Instance.new("TextLabel", mainArea)
        mainTitle.Text = "Main"
        mainTitle.Font = Enum.Font.GothamBold
        mainTitle.TextColor3 = Color3.new(1, 1, 1)
        mainTitle.TextSize = 28
        mainTitle.BackgroundTransparency = 1
        mainTitle.Position = UDim2.new(0, 12, 0, 10)
        mainTitle.Size = UDim2.new(1, -24, 0, 32)
        mainTitle.TextXAlignment = Enum.TextXAlignment.Left

        local changeLogLabel = Instance.new("TextLabel", mainArea)
        changeLogLabel.Text = "Change Log:"
        changeLogLabel.Font = Enum.Font.GothamBold
        changeLogLabel.TextColor3 = Color3.fromRGB(220, 220, 220)
        changeLogLabel.TextSize = 18
        changeLogLabel.BackgroundTransparency = 1
        changeLogLabel.Position = UDim2.new(0, 12, 0, 42)
        changeLogLabel.Size = UDim2.new(1, -24, 0, 24)
        changeLogLabel.TextXAlignment = Enum.TextXAlignment.Left

        local cardList = Instance.new("ScrollingFrame", mainArea)
        cardList.Position = UDim2.new(0, 12, 0, 70)
        cardList.Size = UDim2.new(1, -24, 1, -90) -- fill most of mainArea, adjust -90 as needed
        cardList.BackgroundTransparency = 1
        cardList.BorderSizePixel = 0
        cardList.CanvasSize = UDim2.new(0, 0, 0, 0)
        cardList.ScrollBarThickness = 8
        cardList.AutomaticCanvasSize = Enum.AutomaticSize.Y
        cardList.VerticalScrollBarInset = Enum.ScrollBarInset.ScrollBar
        cardList.ClipsDescendants = true
        local cardLayout = Instance.new("UIListLayout", cardList)
        cardLayout.SortOrder = Enum.SortOrder.LayoutOrder
        cardLayout.Padding = UDim.new(0, 8)

        local function makeCard(title, subtitle, showArrow, onClick)
            local card = Instance.new("TextButton")
            card.BackgroundColor3 = Color3.fromRGB(30, 30, 35)
            card.BackgroundTransparency = 0.22
            card.Size = UDim2.new(1, 0, 0, subtitle and 44 or 36)
            card.Text = ""
            card.AutoButtonColor = onClick ~= nil
            card.Parent = cardList
            Instance.new("UICorner", card).CornerRadius = UDim.new(0, 10)
            local cardTitle = Instance.new("TextLabel", card)
            cardTitle.Text = title
            cardTitle.Font = Enum.Font.GothamBold
            cardTitle.TextColor3 = Color3.new(1,1,1)
            cardTitle.TextSize = 16
            cardTitle.Position = UDim2.new(0, 12, 0, 4)
            cardTitle.Size = UDim2.new(1, -44, 0, 20)
            cardTitle.BackgroundTransparency = 1
            cardTitle.TextXAlignment = Enum.TextXAlignment.Left
            if subtitle then
                local cardSub = Instance.new("TextLabel", card)
                cardSub.Text = subtitle
                cardSub.Font = Enum.Font.Gotham
                cardSub.TextColor3 = Color3.fromRGB(180,180,180)
                cardSub.TextSize = 13
                cardSub.Position = UDim2.new(0, 12, 0, 21)
                cardSub.Size = UDim2.new(1, -44, 0, 18)
                cardSub.BackgroundTransparency = 1
                cardSub.TextXAlignment = Enum.TextXAlignment.Left
            end
            if showArrow then
                local arrow = Instance.new("TextLabel", card)
                arrow.Text = ">"
                arrow.Font = Enum.Font.GothamBold
                arrow.TextColor3 = Color3.fromRGB(180,180,180)
                arrow.TextSize = 20
                arrow.Position = UDim2.new(1, -28, 0, 10)
                arrow.Size = UDim2.new(0, 24, 0, 24)
                arrow.BackgroundTransparency = 1
            end
            if onClick then
                card.MouseButton1Click:Connect(onClick)
            end
            return card
        end

        makeCard(
            "Tutorial Video",
            "tiktok.com/@jandelofficialacc",
            true,
            function()
                setclipboard("tiktok.com/@jandelofficialacc")
            end
        )
                makeCard(
            "Discord Server",
            "TBA",
            false,
            function()
                setclipboard("")
            end
        )
        makeCard("Update Log", "Visual added.", false)
        makeCard("Current Server Version", "1373", false)
    end

    local function renderScriptList(category)
        clearMain()
        local scripts = scriptLists[category] or {}

        local header = Instance.new("TextLabel", mainArea)
        header.Text = category .. " Scripts"
        header.Font = Enum.Font.GothamBold
        header.TextColor3 = Color3.new(1, 1, 1)
        header.TextSize = 20
        header.BackgroundTransparency = 1
        header.Size = UDim2.new(1, -24, 0, 32)
        header.Position = UDim2.new(0, 12, 0, 12)

        local listHolder = Instance.new("ScrollingFrame", mainArea)
        listHolder.BackgroundTransparency = 1
        listHolder.Size = UDim2.new(1, -24, 1, -60)
        listHolder.Position = UDim2.new(0, 12, 0, 52)
        listHolder.CanvasSize = UDim2.new(0, 0, 0, 0)
        listHolder.ScrollBarThickness = 6
        listHolder.BorderSizePixel = 0
        listHolder.ScrollBarImageColor3 = Color3.fromRGB(60, 120, 220)
        listHolder.AutomaticCanvasSize = Enum.AutomaticSize.Y
        listHolder.VerticalScrollBarInset = Enum.ScrollBarInset.ScrollBar
        listHolder.ClipsDescendants = true

        local ll = Instance.new("UIListLayout", listHolder)
        ll.SortOrder = Enum.SortOrder.LayoutOrder
        ll.Padding = UDim.new(0, 10)

        local openDropdown, openButton = nil, nil
        for _, script in ipairs(scripts) do
            local dropdownBtn = Instance.new("TextButton")
            dropdownBtn.Text = script.name .. "  ▼"
            dropdownBtn.Font = Enum.Font.GothamSemibold
            dropdownBtn.TextColor3 = Color3.new(1, 1, 1)
            dropdownBtn.TextSize = 18
            dropdownBtn.BackgroundColor3 = Color3.fromRGB(55, 55, 65)
            dropdownBtn.BackgroundTransparency = 0.06
            dropdownBtn.Size = UDim2.new(1, 0, 0, 44)
            dropdownBtn.AutoButtonColor = false
            dropdownBtn.BorderSizePixel = 0
            Instance.new("UICorner", dropdownBtn).CornerRadius = UDim.new(0, 7)
            dropdownBtn.Parent = listHolder

            local dropPanel = Instance.new("Frame")
            dropPanel.Size = UDim2.new(1, 0, 0, 76)
            dropPanel.BackgroundColor3 = Color3.fromRGB(40, 40, 48)
            dropPanel.BackgroundTransparency = 1
            dropPanel.BorderSizePixel = 0
            dropPanel.Visible = false
            Instance.new("UICorner", dropPanel).CornerRadius = UDim.new(0, 7)
            dropPanel.Parent = listHolder

            local dropLayout = Instance.new("UIListLayout", dropPanel)
            dropLayout.SortOrder = Enum.SortOrder.LayoutOrder
            dropLayout.Padding = UDim.new(0, 6)

            local execBtn = Instance.new("TextButton")
            execBtn.Text = "Execute Script"
            execBtn.Font = Enum.Font.Gotham
            execBtn.TextColor3 = Color3.new(1, 1, 1)
            execBtn.TextSize = 16
            execBtn.BackgroundColor3 = Color3.fromRGB(0, 128, 0)
            execBtn.Size = UDim2.new(1, -18, 0, 32)
            execBtn.AutoButtonColor = true
            execBtn.BorderSizePixel = 0
            Instance.new("UICorner", execBtn).CornerRadius = UDim.new(0, 6)
            execBtn.Parent = dropPanel

            local copyBtn = Instance.new("TextButton")
            copyBtn.Text = "Copy Script"
            copyBtn.Font = Enum.Font.Gotham
            copyBtn.TextColor3 = Color3.new(1, 1, 1)
            copyBtn.TextSize = 16
            copyBtn.BackgroundColor3 = Color3.fromRGB(139, 128, 0)
            copyBtn.Size = UDim2.new(1, -18, 0, 32)
            copyBtn.AutoButtonColor = true
            copyBtn.BorderSizePixel = 0
            Instance.new("UICorner", copyBtn).CornerRadius = UDim.new(0, 6)
            copyBtn.Parent = dropPanel

            execBtn.MouseButton1Click:Connect(function()
                local oldText = execBtn.Text
                execBtn.Text = "Loading..."
                execBtn.AutoButtonColor = false
                execBtn.BackgroundColor3 = Color3.fromRGB(100, 100, 60)
                execBtn.Active = false
                copyBtn.Active = false
                local success, err = pcall(function()
                    local source = game:HttpGet(script.url)
                    loadstring(source)()
                end)
                if success then
                    execBtn.Text = "Executed!"
                    task.wait(1)
                    gui:Destroy()
                else
                    execBtn.Text = "Error!"
                    print("Script execution error:", err)
                    task.wait(5)
                    execBtn.Text = oldText
                    execBtn.AutoButtonColor = true
                    execBtn.BackgroundColor3 = Color3.fromRGB(55, 65, 55)
                    execBtn.Active = true
                    copyBtn.Active = true
                end
            end)
            copyBtn.MouseButton1Click:Connect(function()
                copyBtn.Text = "Copying..."
                local ok, scriptSource = pcall(function()
                    return game:HttpGet(script.url)
                end)
                if ok then
                    setclipboard(scriptSource)
                    copyBtn.Text = "Copied!"
                else
                    copyBtn.Text = "Error!"
                end
                task.wait(1)
                copyBtn.Text = "Copy Script"
            end)
            local expanded = false
            dropdownBtn.MouseButton1Click:Connect(function()
                if openDropdown and openDropdown ~= dropPanel then
                    openDropdown.Visible = false
                    if openButton then
                        openButton.Text = openButton.Text:gsub("▲", "▼")
                    end
                end
                expanded = not expanded
                dropPanel.Visible = expanded
                dropdownBtn.Text = script.name .. (expanded and "  ▲" or "  ▼")
                openDropdown = expanded and dropPanel or nil
                openButton = expanded and dropdownBtn or nil
            end)
        end
    end

    local function renderSettings()
        clearMain()
        local settings = Instance.new("TextLabel", mainArea)
        settings.Text = "@JandelOfficialAcc"
        settings.Font = Enum.Font.Gotham
        settings.TextColor3 = Color3.new(1, 1, 1)
        settings.TextSize = 18
        settings.BackgroundTransparency = 1
        settings.TextWrapped = true
        settings.TextYAlignment = Enum.TextYAlignment.Center
        settings.Size = UDim2.new(1, -24, 1, -24)
        settings.Position = UDim2.new(0, 12, 0, 12)
    end

    local function setActiveTab(name)
        for tabName, tabBtn in pairs(tabButtons) do
            tabBtn:SetAttribute("Active", tabName == name)
            tabBtn.BackgroundColor3 = (tabName == name) and Color3.fromRGB(70, 65, 90) or Color3.fromRGB(45, 45, 55)
        end
        if name == "Main" then
            renderMain()
        elseif scriptLists[name] then
            renderScriptList(name)
        elseif name == "Credit" then
            renderSettings()
        end
    end

    for name, btn in pairs(tabButtons) do
        btn.MouseButton1Click:Connect(function()
            setActiveTab(name)
        end)
    end
    setActiveTab("Main")

    do
        local dragging, dragInput, dragStart, startPos
        local userInput = game:GetService("UserInputService")
        local function startDrag(input)
            dragging = true
            dragStart = input.Position
            startPos = window.Position
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
        local function update(input)
            if dragging then
                local delta = input.Position - dragStart
                window.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
            end
        end
        topBar.InputBegan:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                startDrag(input)
            end
        end)
        topBar.InputChanged:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
                dragInput = input
            end
        end)
        userInput.InputChanged:Connect(function(input)
            if input == dragInput and dragging then
                update(input)
            end
        end)
    end

    local minimized = false
    local prevSize, prevPos = window.Size, window.Position
    local minimizeBtn = Instance.new("TextButton", topBar)
    minimizeBtn.Name = "MinimizeButton"
    minimizeBtn.Size = UDim2.new(0, 28, 0, 28)
    minimizeBtn.Position = UDim2.new(1, -34, 0, 7)
    minimizeBtn.BackgroundColor3 = Color3.fromRGB(0, 128, 0) -- Green
    minimizeBtn.Text = ""
    minimizeBtn.AutoButtonColor = true
    minimizeBtn.ZIndex = 11
    Instance.new("UICorner", minimizeBtn).CornerRadius = UDim.new(1, 0)
    local minStroke = Instance.new("UIStroke", minimizeBtn)
    minStroke.Color = Color3.fromRGB(255, 220, 120)
    minStroke.Thickness = 1
    minStroke.Transparency = 0.13
    local minusIcon = Instance.new("Frame", minimizeBtn)
    minusIcon.AnchorPoint = Vector2.new(0.5, 0.5)
    minusIcon.Position = UDim2.new(0.5, 0, 0.5, 0)
    minusIcon.Size = UDim2.new(0, 14, 0, 3)
    minusIcon.BackgroundColor3 = Color3.fromRGB(255, 230, 150)
    minusIcon.BorderSizePixel = 0
    Instance.new("UICorner", minusIcon).CornerRadius = UDim.new(1, 0)

    minimizeBtn.MouseButton1Click:Connect(function()
        minimized = not minimized
        if minimized then
            prevSize = window.Size
            prevPos = window.Position
            window.Size = UDim2.new(0, 300, 0, 36)
            mainArea.Visible = false
            sidebar.Visible = false
            glass.Visible = false
            minusIcon.Visible = false
            if not minimizeBtn:FindFirstChild("PlusIcon") then
                local plusIcon = Instance.new("TextLabel")
                plusIcon.Name = "PlusIcon"
                plusIcon.Text = "+"
                plusIcon.Font = Enum.Font.GothamBold
                plusIcon.TextColor3 = Color3.fromRGB(255,230,150)
                plusIcon.TextSize = 20
                plusIcon.BackgroundTransparency = 1
                plusIcon.Size = UDim2.new(1,0,1,0)
                plusIcon.Position = UDim2.new(0,0,0,0)
                plusIcon.ZIndex = 12
                plusIcon.Parent = minimizeBtn
            end
        else
            window.Size = prevSize
            window.Position = prevPos
            mainArea.Visible = true
            sidebar.Visible = true
            glass.Visible = true
            minusIcon.Visible = true
            local plusIcon = minimizeBtn:FindFirstChild("PlusIcon")
            if plusIcon then plusIcon:Destroy() end
        end
    end)

    minimizeBtn.MouseEnter:Connect(function()
        minStroke.Color = Color3.fromRGB(255, 235, 160)
        minusIcon.BackgroundColor3 = Color3.fromRGB(255, 235, 160)
        local plusIcon = minimizeBtn:FindFirstChild("PlusIcon")
        if plusIcon then plusIcon.TextColor3 = Color3.fromRGB(255, 255, 255) end
    end)
    minimizeBtn.MouseLeave:Connect(function()
        minStroke.Color = Color3.fromRGB(255, 220, 120)
        minusIcon.BackgroundColor3 = Color3.fromRGB(255, 230, 150)
        local plusIcon = minimizeBtn:FindFirstChild("PlusIcon")
        if plusIcon then plusIcon.TextColor3 = Color3.fromRGB(128, 128, 128) end
    end)
end)
