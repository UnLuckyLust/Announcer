Config = {}

Config.degub = false

Config.enable = true --| false = disable notifications
Config.okokNotify = true --| false = QBcore notifications
Config.delay = 60 --| time to hold between messages, in minutes
Config.sendall = false --| send all messages at once 
Config.random = true --| only if sendall = false. will send random message from the 6 below | when 'false' will send the first message

Config.commands = false --| false = disable commands   |   you can change how you call the commands
Config.commandPermission = 'admin' --| permission level nedded to use commands
    Config.commandactive = 'announceractive' -- toggle active 
    Config.commandall = 'announcerall'-- toggle all
    Config.commandrandom = 'announcerrandom'-- toggle random
    Config.commandokok = 'announcerokok'-- toggle okokNotify
    Config.commanddelay = 'announcerdelay'-- display 'Config.delay' time

-- message 1
Config.message1 = 'Message 1 sent' --| message content
Config.color1 = 'red' --| red / yellow / orange / pink / purple / green / blue | for QBcore
    Config.title1 = 'Annoncer1' --| title of the message | for okokNotify
    Config.type1 = 'neutral' --| neutral / info / success / warning / phonemessage / error | for okokNotify
    Config.time1 = 5 --| time to keep messages displayed, in seconds | for okokNotify

-- message 2
Config.message2 = 'Message 2 sent'
Config.color2 = 'yellow'
    Config.title2 = 'Annoncer2'
    Config.type2 = 'info'
    Config.time2 = 10

-- message 3
Config.message3 = 'Message 3 sent'
Config.color3 = 'orange'
    Config.title3 = 'Annoncer3'
    Config.type3 = 'success'
    Config.time3 = 15

-- message 4
Config.message4 = 'Message 4 sent'
Config.color4 = 'pink' 
    Config.title4 = 'Annoncer4' 
    Config.type4 = 'warning'
    Config.time4 = 20 

-- message 5
Config.message5 = 'Message 5 sent' 
Config.color5 = 'purple' 
    Config.title5 = 'Annoncer5' 
    Config.type5 = 'phonemessage' 
    Config.time5 = 25 

-- message 6
Config.message6 = 'Message 6 sent' 
Config.color6 = 'blue'
    Config.title6 = 'Annoncer6' 
    Config.type6 = 'error' 
    Config.time6 = 30 
