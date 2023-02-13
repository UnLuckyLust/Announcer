# IMPORTENT:
the script development has discontinued ! 

you can find a lot more optimized functions in our new free script 'ull-notify' 

Which will be available at: [Tebex](https://unluckylust.tebex.io)

Read ull-notify [CFX post](https://forum.cfx.re/t/ultimate-notification-script-standalone-qbcore/5022953)

## FiveM Announcer by UnLuckyLust#9534
Announcer for FiveM servers, 

suitable to refine the rules to people or for regular messages you want to send to all players

Version 1.2.0

## Dependencies:
    QBCore Framework - https://github.com/qbcore-framework/qb-core

    Okok notify - https://okok.tebex.io/package/4724993  /  Optional

## all Configuration can be found in Config.lua

## installation
    1. Only if you intend to use QBcore alerts, copy and paste the code below
    2. ensure ull-announcer
    3. change the Config file however you want

## Add to qb-core > config.lua   |   only if using QBcore Notify!
### Under > QBConfig.Notify.VariantDefinitions 
    -- ull-announcer
    red = { 
        classes = 'red',
        icon = 'info',
    },
    yellow = {
        classes = 'yellow',
        icon = 'info',
    },
    orange = {
        classes = 'orange',
        icon = 'info',
    },
    pink = {
        classes = 'pink',
        icon = 'info',
    },
    purple = {
        classes = 'purple',
        icon = 'info',
    },
    green = {
        classes = 'green',
        icon = 'info',
    },
    blue = {
        classes = 'blue',
        icon = 'info',
    },

## Add to qb-core > html > css > style.css   |   only if using QBcore Notify!
    /* ull-announcer */
    .red {
        background-color: rgba(23, 23, 23, 90%);
        border-radius: 13px;
        box-shadow: 0rem 0rem 0.1rem 0.05rem #000000;
        border-left: 5px solid #c51717
    }

    .yellow {
        background-color: rgba(23, 23, 23, 90%);
        border-radius: 13px;
        box-shadow: 0rem 0rem 0.1rem 0.05rem #000000;
        border-left: 5px solid #e2d304
    }

    .orange {
        background-color: rgba(23, 23, 23, 90%);
        border-radius: 13px;
        box-shadow: 0rem 0rem 0.1rem 0.05rem #000000;
        border-left: 5px solid #c57417
    }

    .pink {
        background-color: rgba(23, 23, 23, 90%);
        border-radius: 13px;
        box-shadow: 0rem 0rem 0.1rem 0.05rem #000000;
        border-left: 5px solid #c51791
    }

    .purple {
        background-color: rgba(23, 23, 23, 90%);
        border-radius: 13px;
        box-shadow: 0rem 0rem 0.1rem 0.05rem #000000;
        border-left: 5px solid #6817c5
    }

    .green {
        background-color: rgba(23, 23, 23, 90%);
        border-radius: 13px;
        box-shadow: 0rem 0rem 0.1rem 0.05rem #000000;
        border-left: 5px solid #17c53d
    }

    .blue {
        background-color: rgba(23, 23, 23, 90%);
        border-radius: 13px;
        box-shadow: 0rem 0rem 0.1rem 0.05rem #000000;
        border-left: 5px solid #1771c5
    }

## Changelogs ##
    - Version: 1.2.0
    1. Added more configs
    2. Added more commands
    2. Fixes in events and commands
    3. Added Config to disable commands

    - Version: 1.1.1
    1. Added error messages
    2. Added commands to change Config in game (only for 'admin' permissions)

    - Version: 1.1.0:
    1. Changed QBcore messages to notifications 
    2. Added 7 color to choose from (only for QBcore messages) 
