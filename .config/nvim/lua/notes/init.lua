local actions = require("telescope.actions")
local action_state = require("telescope.actions.state")
-- What do I want from this?
-- 1. [x] Have a config variable that sets the notes directory
-- 2. [x] Have a function that starts a telescope picker in that directory
-- 3. [ ] Have a couple of commands set on that picker:
--    1. [x] Open the file
--    2. [x] Create a new file (and insert a top-level heading with the name)
--    3. [ ] Insert link into current document (assuming markdown)

local config = {
  notes_directory = "/home/sam/Notes"
}

local live_grep = require("telescope.builtin").live_grep

local function create_and_open(input)
  local extension = ".md"
  local filename = vim.fn.strftime('%Y%m%d%H%M%S-') .. input .. extension
  local full_path = config.notes_directory .. "/" .. filename

  vim.cmd.edit(full_path)
  vim.api.nvim_put({ "# "..input }, "", true, true)
end

local function find_notes()
  live_grep({
    cwd = config.notes_directory,
    prompt_title = "📝 Find Notes",
    attach_mappings = function(_, map)

      -- Enter opens the file if it exists, or creates a new note
      map({"i", "n"}, "<cr>", function(prompt_bufnr)
        local selection = action_state.get_selected_entry()

        local curr = action_state.get_current_line()

        if (selection == nil) then
          actions.close(prompt_bufnr)
          create_and_open(curr)
        else
          actions.select_default(prompt_bufnr)
          actions.close(prompt_bufnr)
        end

      end)

      -- Other mappings go here
      -- e.g., 


      return true
    end
  })
end

vim.api.nvim_create_user_command("FindNote", find_notes, {})
