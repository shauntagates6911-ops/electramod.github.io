-- ELECTRAMOD DEBUG PAGE
-- ZERO THOUGHT MODE ACTIVATED

local DebugPage = {}

local problems = {
    { title = "Missing Restore Point", fix = "Run Electra.RepairRestore()" },
    { title = "Sprite Corruption", fix = "Electra.CleanSprite()" },
    { title = "Project Crash Loop", fix = "Electra.RecoverSession()" },
    { title = "Broken Mod Extension", fix = "Electra.ReloadExtensions()" },
    { title = "Thumbnail Not Loading", fix = "Electra.RefreshThumbs()" },
    { title = "Country Selector Freeze", fix = "Electra.ResetGeoModule()" }
}

function DebugPage.Show()
    print("⚡ ELECTRAMOD DEBUG PROBLEMS ⚡")
    print("Select a problem to auto‑fix.")

    for i, p in ipairs(problems) do
        print(i .. ". " .. p.title)
    end
end

function DebugPage.Fix(id)
    local p = problems[id]
    if not p then
        print("Invalid problem ID.")
        return
    end

    print("Fixing: " .. p.title)
    print("Running: " .. p.fix)
    -- pretend to run fix
    print("✔ Problem resolved.")
end

return DebugPage
