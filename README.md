# WordSwitch.nvim

> A simple word switch plugin with neovim

![Example](media/demo.gif)

WordSwitch.nvim is a simple plugin for [Neovim](https://neovim.io)

A rewrite of [Antovim](https://github.com/jwarby/antovim) use [Lua](https://www.lua.org/)

## Table of contents

<!-- @import "[TOC]" {cmd="toc" depthFrom=1 depthTo=6 orderedList=false} -->

<!--toc:start-->
- [WordSwitch.nvim](#wordswitchnvim)
  - [Table of contents](#table-of-contents)
  - [Requirements](#requirements)
  - [Installation](#installation)
  - [Quick Start](#quick-start)
  - [Change keymap](#change-keymap)
  - [Custom list](#custom-list)
  - [Source Word](#source-word)
  - [Star History](#star-history)
  - [Credit](#credit)
  - [LICENSE](#license)
<!--toc:end-->

## Requirements

WordSwitch.nvim require Neovim version 0.7 or above

## Installation

If you are using [vim-plug](https://github.com/junegunn/vim-plug) or [packer.nvim](https://github.com/wbthomason/packer.nvim), then add one of the following line to your `init.vim` or `init.lua` file, correspodingly:

```vim
" vim-plug
Plug 'tandy1229/wordswitch.nvim'

" packer.nvim
use 'tandy1229/wordswitch.nvim'
```

For [lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
-- lazy.nvim
{ 'tandy1229/wordswitch.nvim' },
```


Or you can use other plugin manager.

## Quick Start

The plugin provides a single command `WordSwitch`, which will replace the word
under the matching word within a list of substitutions. eg, with your cursor
over the word **true** will switch to **false**.

> **Note**
>
> now you can also switch **TRUE** to **FALSE** and switch **True** to **False**!!
>
> It works for all other dictionaries!

The default mapping is `gs` to switch the word.

## Change keymap

You can change the default keymap `gs` to your prefer, for example:

For `init.vim` user, you can add it into your init.vim:

```vim
let g:wordswitch_keymap = '<Leader>s'
```

For `init.lua` user, you can add it to your init.lua:

```lua
vim.g.wordswitch_keymap = '<Leader>s'
```

## Custom list

You can customize your own list, use `g:custom_wordswitch_definitions` to
add your own list, for example:

For `init.vim` user, you can add it into your init.vim:

```vim
let g:custom_wordswitch_definitions = [
\  [ 'let', 'unlet' ],
\  [ 'thx', 'thank you'],
\  [ 'under', 'below', 'beneath']
]
```

For `init.lua` user, you can add it to your init.lua:

```lua
vim.g.custom_wordswitch_definitions = {
    { 'let', 'unlet' },
    { 'thx', 'thank you' },
    { 'under', 'below', 'beneath' }
}
```

## Source Word

The default words list are beneath:

```lua
{ 'acquire'   , 'release'      }
{ 'add'       , 'remove'       }
{ 'advance'   , 'retreat'      }
{ 'allocate'  , 'deallocate'   }
{ 'allow'     , 'deny'         }
{ 'assemble'  , 'disassemble'  }
{ 'assign'    , 'deassign'     }
{ 'associate' , 'dissociate'   }
{ 'attach'    , 'detach'       }
{ 'begin'     , 'end'          }
{ 'bind'      , 'unbind'       }
{ 'commit'    , 'rollback'     }
{ 'compile'   , 'decompile'    }
{ 'compose'   , 'parse'        }
{ 'compress'  , 'decompress'   }
{ 'connect'   , 'disconnect'   }
{ 'construct' , 'destruct'     }
{ 'create'    , 'destroy'      }
{ 'do'        , 'undo'         }
{ 'enable'    , 'disable'      }
{ 'encode'    , 'decode'       }
{ 'encrypt'   , 'decrypt'      }
{ 'enqueue'   , 'dequeue'      }
{ 'enter'     , 'leave'        }
{ 'expand'    , 'collapse'     }
{ 'first'     , 'last'         }
{ 'freeze'    , 'unfreeze'     }
{ 'front'     , 'back'         }
{ 'get'       , 'set'          }
{ 'grant'     , 'revoke'       }
{ 'head'      , 'tail'         }
{ 'high'      , 'low'          }
{ 'import'    , 'export'       }
{ 'include'   , 'exclude'      }
{ 'increase'  , 'decrease'     }
{ 'increment' , 'decrement'    }
{ 'indent'    , 'dedent'       }
{ 'inflate'   , 'deflate'      }
{ 'inject'    , 'eject'        }
{ 'input'     , 'output'       }
{ 'insert'    , 'delete'       }
{ 'install'   , 'uninstall'    }
{ 'left'      , 'right'        }
{ 'Left'      , 'Right'        }
{ 'link'      , 'unlink'       }
{ 'load'      , 'unload'       }
{ 'lock'      , 'unlock'       }
{ 'max'       , 'min'          }
{ 'maximum'   , 'minimum'      }
{ 'new'       , 'old'          }
{ 'next'      , 'previous'     }
{ 'open'      , 'close'        }
{ 'off'       , 'on'           }
{ 'paste'     , 'cut'          }
{ 'push'      , 'pop'          }
{ 'read'      , 'write'        }
{ 'reference' , 'dereference'  }
{ 'register'  , 'deregister'   }
{ 'resume'    , 'suspend'      }
{ 'select'    , 'deselect'     }
{ 'send'      , 'receive'      }
{ 'serialize' , 'deserialize'  }
{ 'set'       , 'get'          }
{ 'show'      , 'hide'         }
{ 'start'     , 'stop'         }
{ 'true'      , 'false'        }
{ 'up'        , 'down'         }
{ 'upper'     , 'lower'        }
```

## Star History

<a href="https://star-history.com/#tandy1229/wordswitch.nvim&Date">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="https://api.star-history.com/svg?repos=tandy1229/wordswitch.nvim&type=Date&theme=dark" />
    <source media="(prefers-color-scheme: light)" srcset="https://api.star-history.com/svg?repos=tandy1229/wordswitch.nvim&type=Date" />
    <img alt="Star History Chart" src="https://api.star-history.com/svg?repos=tandy1229/wordswitch.nvim&type=Date" />
  </picture>
</a>

## Credit

- [Antovim](https://github.com/jwarby/antovim)

## LICENSE

MIT
