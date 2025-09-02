local p=game.Players.LocalPlayer
local c=p.Character or p.CharacterAdded:Wait()
local hrp=c:WaitForChild("HumanoidRootPart",5)
print("rxgar hub loaded")
local bp=p:WaitForChild("Backpack",5)
local base=Vector3.new(50,10,100) -- OYUNDAKİ BASE KOORDİNATLARINI BURAYA YAZ
if not c or not hrp or not bp then print("Hata: Karakter veya backpack yüklenmedi! rxgar hub")return end
bp.ChildAdded:Connect(function(t)
    if t:IsA("Tool")then
        print("Tool bulundu: "..t.Name.." rxgar hub")
        t.Equipped:Connect(function()
            if t.Name=="Brainrot"then
                hrp.CFrame=CFrame.new(base)
                print(p.Name.." base'e ışınlandı rxgar hub!")
            else
                print("Bu brainrot değil: "..t.Name)
            end
        end)
    end
end)
p.CharacterAdded:Connect(function(nc)
    c=nc
    hrp=c:WaitForChild("HumanoidRootPart",5)
    print("Karakter yenilendi rxgar hub")
end)
print("rxgar hub aktif, brainrot'u eline al!")
