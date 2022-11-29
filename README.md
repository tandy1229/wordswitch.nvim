# WordSwitch.nvim
> A simple word switch plugin with neovim

WordSwitch.nvim is a simple plugin for [Neovim](https://neovim.io)

A rewrite of [Antovim](https://github.com/jwarby/antovim) use Lua

## Table of contents

<!-- @import "[TOC]" {cmd="toc" depthFrom=1 depthTo=6 orderedList=false} -->

<!-- code_chunk_output -->

- [WordSwitch.nvim](#wordswitchnvim)
  - [Table of contents](#table-of-contents)
  - [Requirements](#requirements)
  - [Installation](#installation)
  - [Quick Start](#quick-start)
  - [Source Word](#source-word)
  - [Credit](#credit)

<!-- /code_chunk_output -->

## Requirements

WordSwitch.nvim require Neovim version 0.7 or abvoe

## Installation

If you are using [vim-plug](https://github.com/junegunn/vim-plug) or [packer.nvim](https://github.com/wbthomason/packer.nvim), then add one of the following line to your `init.vim` or `init.lua` file, correspodingly:

```vim
" vim-plug
Plug 'tandy1229/wordswitch.nvim'

" packer.nvim
use 'tandy1229/wordswitch.nvim'
```

Or you can use other plugin manager.

## Quick Start
The plugin provides a single command `WordSwitch`, which will replace the word under the matching word within a list of substitutions. eg, with your cursor over the word **true** will switch to **false**.

The default mapping is `gs` to switch the word.

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
{ 'set'       , 'up tear down' }
{ 'show'      , 'hide'         }
{ 'start'     , 'stop'         }
{ 'true'      , 'false'        }
{ 'True'      , 'False'        }
{ 'TRUE'      , 'FALSE'        }
{ 'up'        , 'down'         }
{ 'Up'        , 'Down'         }
{ 'upper'     , 'lower'        }
```

## Credit
- [Antovim](https://github.com/jwarby/antovim)
