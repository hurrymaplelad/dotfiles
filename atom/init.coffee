# Your init script
#
# Atom will evaluate this file each time a new window is opened. It is run
# after packages are loaded/activated and after the previous editor state
# has been restored.
#
#

# Alias grammer selector as Set Syntax
atom.commands.add 'atom-editor', 'grammar-selector:set-syntax': (event) ->
  atom.commands.dispatch event.target, 'grammar-selector:show'

# Alias rename as Set Syntax
atom.commands.add 'atom-workspace', 'tree-view:move': (event) ->
  atom.commands.dispatch event.target, 'tree-view:rename'
