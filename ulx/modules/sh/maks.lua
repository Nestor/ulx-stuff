CATEGORY_NAME = "Maks Stuff" -- NOM DE LA CATEGORIE

-- LE JPEG
 
function ulx.jpeg( calling_ply, target_plys )
        for i=1, #target_plys do
                local v = target_plys[ i ]
                if IsValid(v) then
                        v:SendLua([[timer.Create( "jpeg", 0.001, 0, function() LocalPlayer():ConCommand("jpeg") end)]])
                end
        end
        ulx.fancyLogAdmin( calling_ply, true, "#A donne un appareil photo à #T en souvenir.", target_plys)
end
 
local jpeg = ulx.command( CATEGORY_NAME, "ulx jpeg", ulx.jpeg, "!jpeg" )
jpeg:addParam{ type=ULib.cmds.PlayersArg }
jpeg:defaultAccess( ULib.ACCESS_ADMIN )
jpeg:help( "spam la fonction photo de steam." )
 
function ulx.unjpeg( calling_ply, target_plys )
        for i=1, #target_plys do
                local v = target_plys[ i ]
                if IsValid(v) then
                        v:SendLua([[timer.Remove("jpeg")]])
                end
        end
 
        ulx.fancyLogAdmin( calling_ply, true, "#A confisque l'appareil photo de #T", target_plys)
end
 
local unjpeg = ulx.command( CATEGORY_NAME, "ulx unjpeg", ulx.unjpeg, "!unjpeg" )
unjpeg:addParam{ type=ULib.cmds.PlayersArg }
unjpeg:defaultAccess( ULib.ACCESS_ADMIN )
unjpeg:help( "Enleve le spam des photos steam." )

