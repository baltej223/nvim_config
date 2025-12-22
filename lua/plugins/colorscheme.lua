return {
  "ellisonleao/gruvbox.nvim",
  priority = 1000, -- Load early
  opts = {},
  config = function()
    -- Default options:
    require("gruvbox").setup({
      terminal_colors = true, -- add neovim terminal colors
      undercurl = true,
      underline = true,
      bold = true,
      italic = {
        strings = true,
        emphasis = true,
        comments = true,
        operators = false,
        folds = true,
      },
      strikethrough = true,
      invert_signs = false,
      inverse = true, -- invert background for search, diffs, statuslines and errors

      contrast = "hard", -- Try "soft" for gentler colors
      palette_overrides = {
        -- Backgrounds (darker, velvet-earth for soothing depth)
        dark0_hard = "#171717", -- Deepest bg: Subtle charcoal warmth
        dark0 = "#1a1a1a", -- Main bg: Deeper slate-black earth
        dark0_soft = "#242424", -- Softer variant: Gentle fade
        dark1 = "#2a2a2a", -- Layer 1: Muted warm shadow
        dark2 = "#363636", -- Layer 2: Soft mid-gray soil
        dark3 = "#525252", -- Layer 3: Lighter, loamy taupe
        dark4 = "#b0b0b0", -- Foreground base: Softer ash-gray (darker than before)

        -- Light mode (darker too, for consistency if you flip)
        light0_hard = "#f0f0f0", -- Brighter but muted light bg
        light0 = "#f5f5f5", -- Main light: Pale clay
        light0_soft = "#f2f2f2", -- Softer light
        light1 = "#d8d8d8", -- Light layer 1
        light2 = "#a8a8a8", -- Light layer 2: Subdued beige
        light3 = "#8f8f8f", -- Light layer 3
        light4 = "#b0b0b0", -- Light fg: Matches dark

        -- Bright accents (desaturated for calm; earthy but hushed)
        bright_red = "#d85555", -- Errors: Deeper rust (softer glow)
        bright_green = "#8eb67a", -- Success/funcs: Velvety moss green
        bright_yellow = "#d4b06a", -- Warnings: Muted amber dusk
        bright_blue = "#5a9fd6", -- Keywords: Cool twilight blue
        bright_purple = "#b66ec6", -- Types: Gentle heather-purple
        bright_aqua = "#4da8a9", -- Strings: Subdued river teal
        bright_orange = "#c68a55", -- Numbers: Warm clay orange

        -- Neutral variants (even softer for UI)
        neutral_red = "#d66a6a", -- UI red: Faded terracotta
        neutral_green = "#8eb67a", -- UI green: Sage olive
        neutral_yellow = "#d4b06a", -- UI yellow: Dusty sand
        neutral_blue = "#5a9fd6", -- UI blue: Misty azure
        neutral_purple = "#b66ec6", -- UI purple: Soft mulberry
        neutral_aqua = "#4da8a9", -- UI aqua: Calm seafoam
        neutral_orange = "#c68a55", -- UI orange: Burnt sienna

        -- Faded (ultra-soothing for comments/subtles)
        faded_red = "#a94a4a", -- Faded ember
        faded_green = "#6a8a6a", -- Faded lichen
        faded_yellow = "#9e865a", -- Faded honey
        faded_blue = "#3f7a7a", -- Faded pond
        faded_purple = "#7f5a7f", -- Faded dusk plum
        faded_aqua = "#4a7a6a", -- Faded fern
        faded_orange = "#8a5a3a", -- Faded adobe

        -- Gray (softer stone for balance)
        gray = "#707070", -- Neutral gray: Pebble tone
      },
      overrides = {},
      transparent_mode = false, -- No bg!
    })
    vim.cmd("colorscheme gruvbox") -- Apply it
  end,
}
