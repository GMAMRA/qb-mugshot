Config = {}

Config.Webhook = 'https://ptb.discord.com/api/webhooks/920849705271967764/jGXRoUszPFw576ztOzZeSRLMl4XTnR5tSqE1DbqafCZ0M2KEEOaW0lz7I2E3lt1-xJcQ' -- Images will be uploaded here
Config.TestCommand = false -- Use this when testing /testmugshot

Config.CustomMLO = true -- If you use a MLO use the options below to change the camera location. Otherwise it will use the default IPL for the mugshot location
Config.MugshotLocation = vector3(472.91, -1011.2, 25.27) -- Location of the Suspect
Config.MugshotSuspectHeading = 180.0 -- Direction Suspsect is facing 
Config.MugShotCamera = {  
    x = 473.06,
    y = -1012.62,
    z = 26.27,
    r = {x = 0.0, y = 0.0, z = 359.66} -- To change the rotation use the z. Others are if you want rotation on other axis
}

Config.BoardHeader = "Los Santos Police Department" -- Header that appears on the board
Config.WaitTime = 2000 -- Time before and after the photo is taken. Decreasing this value might result in some angles being skiped.
Config.Photos = 1 -- Front, Back Side. Use 4 for both sides
Config.CQCMDT = false -- If you use CQC MDT this will automatically send them to a players profile