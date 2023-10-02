-- キャッシュされたモジュールを削除
package.loaded['myNvimBasicSetting'] = nil
package.loaded['myNvimBasicSetting/testModule'] = nil

-- モジュールを呼び出す
--local setting_plugin = require('myNvimBasicSetting')
-- 関数呼び出し
--setting_plugin.set()

require('myNvimBasicSetting').set()
