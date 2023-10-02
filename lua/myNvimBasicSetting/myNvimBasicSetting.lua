local M = {}

function M.set()

	if vim.fn.has('win32') == 1 then
		vim.o.shell= "C:/msys64/usr/bin/bash.exe"
	end

	vim.g.mapleader     = " "
	vim.o.autoindent    = false
	vim.o.autoread      = true
	vim.o.backspace     = "indent,eol,start"
	vim.o.cindent       = false
	vim.o.clipboard     = "unnamedplus,unnamed" -- use clipboard register
	vim.o.display       = "lastline"
	vim.o.expandtab     = false
	vim.o.fileencodings = "utf-8,sjis"
	vim.o.fileformats   = "unix,dos,mac"
	vim.o.foldmethod    = "marker"
	vim.o.helplang      = "ja,en"
	vim.o.hidden        = true
	vim.o.history       = 2000
	vim.o.hlsearch      = true
	vim.o.ignorecase    = false -- 大文字小文字を区別する
	vim.o.incsearch     = true
	vim.o.list          = true
	vim.o.listchars     = "tab:>-,trail:>,nbsp:%,extends:>,precedes:<,eol:<"
	vim.o.matchpairs    = "(:),{:},[:],<:>"
	vim.o.matchtime     = 1
	vim.o.number        = true
	vim.o.readonly      = false
	vim.o.ruler         = true
	vim.o.shiftwidth    = 4
	vim.o.showmatch     = true
	vim.o.signcolumn    = "yes"
	vim.o.smartcase     = false
	vim.o.smartindent   = false
	vim.o.synmaxcol     = 1000 -- 1行が長いファイルを扱うとvimが重くなるので1000文字以上の場合シンタックスハイライトを行わない設定にする
	vim.o.t_Co          = 256
	vim.o.tabstop       = 4
	vim.o.title         = true
	vim.o.virtualedit   = "block"
	vim.o.whichwrap     = "h,l"
	vim.o.wrap          = false
	vim.o.wrapscan      = false

	if os.getenv("XDG_CONFIG_HOME") ~= nil then
			vim.o.directory     = os.getenv("XDG_CONFIG_HOME") .. "/nvim/cache/swap"   -- swpファイル出力先
			vim.o.backupdir     = os.getenv("XDG_CONFIG_HOME") .. "/nvim/cache/backup" -- バックアップファイル出力先
			vim.o.undodir       = os.getenv("XDG_CONFIG_HOME") .. "/nvim/cache/undo"   -- undoファイル出力先
	else
		local home = os.getenv("HOME")
		if home ~= nil then
			vim.o.directory     = home .. "/work/setting/nvim/cache/swap"   -- swpファイル出力先
			vim.o.backupdir     = home .. "/work/setting/nvim/cache/backup" -- バックアップファイル出力先
			vim.o.undodir       = home .. "/work/setting/nvim/cache/undo"   -- undoファイル出力先
		end
	end
end

return M
