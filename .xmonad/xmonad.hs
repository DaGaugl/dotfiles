import XMonad
import XMonad.Config.Kde
import Data.Monoid
import System.Exit
import XMonad.Util.EZConfig
import XMonad.Util.SpawnOnce
import XMonad.Hooks.ManageHelpers (isFullscreen,doFullFloat)
import XMonad.Layout.NoBorders
import XMonad.Layout.Fullscreen

import qualified XMonad.StackSet as W -- to shift and float windows
import qualified Data.Map        as M




main = xmonad $ kde4Config
    { modMask = mod4Mask -- use the Windows button as mod
    , manageHook = manageHook kdeConfig <+> myManageHook
    , terminal = "kitty"
    , focusFollowsMouse = False
    , clickJustFocuses = False
    , normalBorderColor = "#282938"
    , focusedBorderColor = "#dddddd"
    , startupHook = myStartupHook
    , borderWidth = 3
    }
    `additionalKeysP`
             [ ("M-p", spawn "passmenu")
             , ("M-k", spawn "kpl")
             , ("M-x", kill )
             , ("M-e", spawn "pcmanfm")
             , ("M-S-e", spawn "emacsclient -c -a emacs")
             , ("M-S-m", spawn "rofi -show emoji")
             , ("M-v", spawn "rofi-nordvpn")]


myManageHook = composeAll . concat $
    [ [ className   =? c --> doFloat           | c <- myFloats]
    , [ title       =? t --> doFloat           | t <- myOtherFloats]
    , [ className   =? c --> doF (W.shift "2") | c <- webApps]
    , [ className   =? c --> doF (W.shift "3") | c <- ircApps]
    , [ className   =? c --> doF (W.shift "4") | c <- manga]
    , [ isFullscreen --> doFullFloat ]
    ]
  where myFloats      = ["MPlayer", "Gimp", "Alacritty", "Konsole", "latte-dock", "pavucontrol", "kitty"]
        myOtherFloats = ["alsamixer", "Alacritty", "Konsole", "latte-dock", "pavucontrol", "kitty", "ksmserver-logout-greeter"]
        webApps       = ["spotify", "Chatterino", "pavucontrol"] -- open on desktop 2
        ircApps       = ["Mailspring"] -- open on desktop 3
        manga         = [] -- open on desktop 4




myStartupHook = do
  spawnOnce "picom -b --config ~/.config/picom/picom.conf &"
  spawnOnce "unclutter"
  spawnOnce "dunst &"
  spawn "kill polybar"
  spawnOnce "polybar &"
