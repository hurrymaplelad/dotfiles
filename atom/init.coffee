# Your init script
#
# Atom will evaluate this file each time a new window is opened. It is run
# after packages are loaded/activated and after the previous editor state
# has been restored.
#
#

aliasCommand = atom.packages.getLoadedPackage('alias-command').requireMainModule()

aliasCommand 'grammar-selector:set-syntax',
  orig: 'grammar-selector:show'
  scope: 'atom-text-editor'

aliasCommand 'grammar-selector:set-file-type',
  orig: 'grammar-selector:show'
  scope: 'atom-text-editor'

aliasCommand 'tree-view:move',
  orig: 'tree-view:rename'

aliasCommand 'tree-view:delete-file',
  orig: 'tree-view:remove'

aliasCommand 'package-control:install',
  orig: 'settings-view:install-packages-and-themes'

aliasCommand 'package-control:uninstall',
  orig: 'settings-view:uninstall-packages'
