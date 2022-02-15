import XMonad

import XMonad.Util.EZConfig(additionalKeysP)
import XMonad.Util.Ungrab
import XMonad.Util.Paste
import XMonad.Util.SpawnOnce
import XMonad.Layout.Spiral
import XMonad.Layout.Gaps
import XMonad.Layout.Spacing

myLayout = spacingRaw False (Border 10 10 10 10) True (Border 10 10 10 10) True $ spiral (6/7) ||| Full

main :: IO()
main = xmonad $ def { modMask = mod4Mask
      , terminal = "kitty"
      , borderWidth = 1
      , normalBorderColor = "#343434"
      , focusedBorderColor = "#00ff99"
      , layoutHook = myLayout
   }

   `additionalKeysP`
   [("M-S-z", spawn "firefox")
   ,("M-S-d", spawn "discord")
   ,("M-S-s", spawn "maim -s -u | xclip -selection clipboard -t image/png -i")
   ,("M-S-e", spawn "thunar")
   ,("M-s", spawn "sh ~/.switchLang.sh")
   ]

myStartupHook = do
   spawnOnce "feh --bg-fill Downloads/wavy_lines_v02_5120x2880.png"

