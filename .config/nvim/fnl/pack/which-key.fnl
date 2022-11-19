(local {: setup } (require :which-key))

(setup { :key_labels { "<space>" "SPC" 
                       "<Tab>"   "TAB"
                       "<CR>"    "RET"}
         :layout { :spacing 6 :align "center"}
         :presets nil
         :operators {:gc :Comments}
         :ignore-missing true
         :hidder ["<silent>" "<cmd>" "<Cmd>" "<CR>" "call" "lua" "^:" "^ "]})
