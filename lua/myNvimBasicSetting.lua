-- テーブルを宣言する
local M = {}

-- モジュールの読み込み
local setting_plugin = require('myNvimBasicSetting/myNvimBasicSetting')

-- モジュールの関数を呼び出す
function M.callModule()
	setting_plugin.set()
end

-- テーブルを返す
return M
--require('myNvimBasicSetting/setting').set()
