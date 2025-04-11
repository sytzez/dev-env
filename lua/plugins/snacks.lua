return {
    {
        "snacks.nvim",
        opts = {
            dashboard = {
                preset = {
                    pick = function(cmd, opts)
                        return LazyVim.pick(cmd, opts)()
                    end,
                    header = [[
_____/\\\\\\\\\\\_____________________________________________/\\\_____________________________        
 ___/\\\/////////\\\__________________________________________\/\\\_____________________________       
  __\//\\\______\///___________________________________________\/\\\__________________/\\\\\\\\__      
   ___\////\\\__________/\\\____/\\\____/\\\\\__/\\\\\__________\/\\\______/\\\\\_____/\\\////\\\_     
    ______\////\\\______\/\\\___\/\\\__/\\\///\\\\\///\\\___/\\\\\\\\\____/\\\///\\\__\//\\\\\\\\\_    
     _________\////\\\___\/\\\___\/\\\_\/\\\_\//\\\__\/\\\__/\\\////\\\___/\\\__\//\\\__\///////\\\_   
      __/\\\______\//\\\__\/\\\___\/\\\_\/\\\__\/\\\__\/\\\_\/\\\__\/\\\__\//\\\__/\\\___/\\_____\\\_  
       _\///\\\\\\\\\\\/___\//\\\\\\\\\__\/\\\__\/\\\__\/\\\_\//\\\\\\\/\\__\///\\\\\/___\//\\\\\\\\__ 
        ___\///////////______\/////////___\///___\///___\///___\///////\//_____\/////______\////////___
 ]],
        -- stylua: ignore
        ---@type snacks.dashboard.Item[]
        keys = {
          { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
          { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
          { icon = " ", key = "g", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
          { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
          { icon = " ", key = "c", desc = "Config", action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})" },
          { icon = " ", key = "s", desc = "Restore Session", section = "session" },
          { icon = " ", key = "x", desc = "Lazy Extras", action = ":LazyExtras" },
          { icon = "󰒲 ", key = "l", desc = "Lazy", action = ":Lazy" },
          { icon = " ", key = "q", desc = "Quit", action = ":qa" },
        },
                },
            },
        },
    },
}
