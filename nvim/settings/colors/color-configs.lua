-- Specific-theme configs
-- OneDark

require('onedark').setup  {
    style = 'darker', -- Chose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light'
    transparent = true,
    code_style = {
        comments = 'italic',
        keywords = 'none',
        functions = 'bold',
        strings = 'italic',
        variables = 'none'
    },
    diagnostics = {
        darker = true,
        undercurl = true,
        background = true,
    },
}
