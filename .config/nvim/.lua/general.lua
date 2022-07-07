local _2afile_2a = "fnl/general.fnl"
local _0_
do
  local name_0_ = "general"
  local module_0_
  do
    local x_0_ = package.loaded[name_0_]
    if ("table" == type(x_0_)) then
      module_0_ = x_0_
    else
      module_0_ = {}
    end
  end
  module_0_["aniseed/module"] = name_0_
  module_0_["aniseed/locals"] = ((module_0_)["aniseed/locals"] or {})
  do end (module_0_)["aniseed/local-fns"] = ((module_0_)["aniseed/local-fns"] or {})
  do end (package.loaded)[name_0_] = module_0_
  _0_ = module_0_
end
local autoload
local function _1_(...)
  return (require("aniseed.autoload")).autoload(...)
end
autoload = _1_
local function _2_(...)
  local ok_3f_0_, val_0_ = nil, nil
  local function _2_()
    return {autoload("aniseed.nvim")}
  end
  ok_3f_0_, val_0_ = pcall(_2_)
  if ok_3f_0_ then
    _0_["aniseed/local-fns"] = {autoload = {nvim = "aniseed.nvim"}}
    return val_0_
  else
    return print(val_0_)
  end
end
local _local_0_ = _2_(...)
local nvim = _local_0_[1]
local _2amodule_2a = _0_
local _2amodule_name_2a = "general"
do local _ = ({nil, _0_, nil, {{}, nil, nil, nil}})[2] end
nvim.o.modelines = 0
nvim.o.compatible = false
nvim.o.tabstop = 2
nvim.o.shiftwidth = 2
nvim.o.expandtab = true
nvim.o.softtabstop = 2
nvim.o.encoding = "utf-8"
nvim.o.scrolloff = 3
nvim.o.autoindent = true
nvim.o.showmode = false
nvim.o.showcmd = true
nvim.o.hidden = true
nvim.o.wildmenu = true
nvim.o.wildmode = "list:longest"
nvim.o.visualbell = true
nvim.o.cursorline = true
nvim.o.ttyfast = true
nvim.o.ruler = true
nvim.o.backspace = "indent,eol,start"
nvim.o.laststatus = 2
nvim.o.nu = true
nvim.o.rnu = true
nvim.o.undofile = true
nvim.o.clipboard = "unnamedplus"
nvim.o.ignorecase = true
nvim.o.smartcase = true
nvim.o.gdefault = true
nvim.o.incsearch = true
nvim.o.showmatch = true
nvim.o.hlsearch = true
nvim.o.wrap = true
nvim.o.textwidth = 80
nvim.o.formatoptions = "qrn1"
nvim.o.colorcolumn = "80"
nvim.o.completeopt = "menuone,noselect,noinsert"
nvim.o.background = "dark"
nvim.o.termguicolors = true
nvim.cmd("syntax on")
nvim.cmd("colorscheme gruvbox")
nvim.g.mapleader = " "
nvim.g.localleader = ","
return nil