local g = vim.g

g.dashboard_disable_at_vimenter = 0
g.dashboard_disable_statusline = 1
g.dashboard_default_executive = "telescope"
g.dashboard_custom_header = {
"                  __,---.__		       ",
"             __,-'         `-.                ",
"           /_ /_,'           \\&              ",
"           _,''               \\               ",
"          (\")            .    |               ",
"           ``--|__|--..--'`.__|               ",
"      __   _________   _______    ___         ",
"      \\ \\ / /  _  \\ \\ / /  _  \\  / / |    ",
"       \\ V /| | | |\\ V /| | | | / /| |      ",
"       /   \\| | | |/   \\| | | |/ / | |      ",
"      / /^\\ \\ \\_/ / /^\\ \\ \\_/ / /  | |  ",
"      \\/   \\/\\___/\\/   \\/\\___/_/   |_|  ",
                                
                                 

   
}

g.dashboard_custom_section = {
   a = { description = { "Find File " }, command = "Telescope find_files" },
   b = { description = { "Recents  " }, command = "Telescope oldfiles" },
   c = { description = { "New File " }, command = "DashboardNewFile" },
}

g.dashboard_custom_footer = {
   " in Go we trust ",
}

