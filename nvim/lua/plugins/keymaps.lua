-- local keymap.set = LazyVim.safe_keymap_set
local keymap = vim.keymap


return {

  -- keymap.set
  keymap.set("n", "<space>U", ":UndotreeToggle<CR>"),
  keymap.set("n", "<C-n>", ":Neotree<CR>"),
  keymap.set("n", "<space>bm", ":Mason<CR>"),
  keymap.set("n", "<space>C", ":lua ColorMyPencils()<CR>"),
  -- keymap.set("n", "<space>O", ":term 'docker exec -it ollama ollama run llama3.2'"),
  keymap.set("n", "<space>O", ":Docker"),
  -- keymap.set("n", "<space>L", ":LazyGit<CR>"),
  -- keymap.set("n", "<space>t", ":vs | vert term<CR>"),

  -- vim.g.lazygit_floating_window_windlend = 0 "transparency of floating window"
  -- config base command of neovim

  -- Do not yank with x
  keymap.set("n", "x", '"_x'),

  -- Increment / Decrement
  keymap.set("n", "+", "<C-a>"),
  keymap.set("n", "-", "<C-x>"),

  -- Delet word backwards
  keymap.set("n", "dw", 'vb"_d'),

  -- Select all
  keymap.set("n", "<C-a>", "gg<S-v>G"),

  -- New tab
  -- keymap.set("n", "te", ":tabedit<CR>"),
  keymap.set("n", "ss", ":split<Return><C-w>w"),
  keymap.set("n", "sv", ":vsplit<Return><C-w>w"),

  -- Quit and Save
  keymap.set("n", "<Space>q", ":q<CR>"),
  keymap.set("n", "<Space>qq", ":q!<CR>"),
  keymap.set("n", "<Space>a", ":qa<CR>"),
  keymap.set("n", "<Space>aa", ":qa!<CR>"),
  keymap.set("n", "<Space>w", ":w<CR>"),
  keymap.set("n", "<Space>ww", ":w!<CR>"),
  keymap.set("n", "<Space>z", ":wq<CR>"),
  keymap.set("n", "<Space>zz", ":wq!<CR>"),

  keymap.set("n", "<Space>x", ":x<CR>"),

  -- Valid buffer files
  keymap.set("n", "sp", ":so<CR>"),

  -- Search files
  keymap.set("n", "se", ":e"),
  keymap.set("n", "see", ":Explore<CR>"),

  -- Window and Resize
  keymap.set("n", "sl", "<C-w>l"),
  keymap.set("n", "sh", "<C-w>h"),
  keymap.set("n", "sj", "<C-w>j"),
  keymap.set("n", "sk", "<C-w>k"),

  keymap.set("", "so", "<C-w>>"),
  keymap.set("", "sy", "<C-w><"),
  keymap.set("", "si", "<C-w>+"),
  keymap.set("", "su", "<C-w>-"),

  keymap.set("", "sx", "<C-w>x"), -- mouve window to left
  keymap.set("", "sa", "<C-w>="), -- return normal size of window

  -- Swith tab
  keymap.set("n", "tt", ":tabe<CR>"),
  keymap.set("n", "tn", ":tabnext<CR>"),
  keymap.set("n", "tp", ":tabprevious<CR>"),
  keymap.set("n", "to", ":tabclose<CR>"),
  keymap.set("n", "te", ":term<CR>"),
  keymap.set("n", "sd", "<C-^>"),
  keymap.set("n", "ls", ":ls<CR>"),

  -- Telescope
  -- keymap.set('n', '<space>bb', ':Telescope file_browser<CR>')
  -- Copy and past
  keymap.set("n", "<Space>c", "<c-s>c"),
  keymap.set("n", "<Space>;", "+gP"),

  -- lsp keymap.set
  keymap.set("n", "<space>gd", vim.lsp.buf.definition, {}),
  keymap.set("n", "<space>gi", vim.lsp.buf.implementation, {}),
  -- keymap.set("n", "<space>gr", require("telescope.builtin").lsp_references, {}),
  keymap.set("n", "<space>ca", vim.lsp.buf.code_action, {}),
  keymap.set("n", "<space>gk", vim.lsp.buf.hover, {}),
}
