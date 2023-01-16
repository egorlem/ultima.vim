scriptencoding utf-8
hi clear

if exists("syntax_on")
    syntax reset
endif

let g:colors_name=021011

" Highlighting function (inspiration from https://github.com/chriskempson/base16-vim)

if &t_Co >= 256
    let g:codedark_term256=1
elseif !exists("g:codedark_term256")
    let g:codedark_term256=0
endif

fun! <sid>hi(group, fg, bg, attr, sp)
  if !empty(a:fg)
    exec "hi " . a:group . " guifg=" . a:fg.gui . " ctermfg=" . (g:codedark_term256 ? a:fg.cterm256 : a:fg.cterm)
  endif
  if !empty(a:bg)
    exec "hi " . a:group . " guibg=" . a:bg.gui . " ctermbg=" . (g:codedark_term256 ? a:bg.cterm256 : a:bg.cterm)
  endif
  if a:attr != ""
    exec "hi " . a:group . " gui=" . a:attr . " cterm=" . a:attr
  endif
  if !empty(a:sp)
    exec "hi " . a:group . " guisp=" . a:sp.gui
  endif
endfun

" COLOR DEFINITIONS  ───────────────────────────────────────────────────────────

" Terminal colors (base16):
let s:cterm00 = "00"
let s:cterm03 = "08"
let s:cterm05 = "07"
let s:cterm07 = "15"
let s:cterm08 = "01"
let s:cterm0A = "03"
let s:cterm0B = "02"
let s:cterm0C = "06"
let s:cterm0D = "04"
let s:cterm0E = "05"
if exists('base16colorspace') && base16colorspace == "256"
  let s:cterm01 = "18"
  let s:cterm02 = "19"
  let s:cterm04 = "20"
  let s:cterm06 = "21"
  let s:cterm09 = "16"
  let s:cterm0F = "17"
else
  let s:cterm01 = "00"
  let s:cterm02 = "08"
  let s:cterm04 = "07"
  let s:cterm06 = "07"
  let s:cterm09 = "06"
  let s:cterm0F = "03"
endif

" ????? ────────────────────────────────────────────────────────────────────────

if !exists("g:codedark_conservative")
    let g:codedark_conservative=0
endif


" OLD COLOR 

let s:cdDarkGreen = {'gui': 'NONE', 'cterm': 'NONE', 'cterm256': '23'}

 
let s:cbaseWhitedDarkGreen = {'gui': 'NONE', 'cterm': 'NONE', 'cterm256': '23'}
let s:hvDarkGreen = {'gui': 'NONE', 'cterm': 'NONE', 'cterm256': '30'}

let s:cdNone = {'gui': 'NONE', 'cterm': 'NONE', 'cterm256': 'NONE'}
let s:cdFront = {'gui': '#D4D4D4', 'cterm': s:cterm05, 'cterm256': '188'}
let s:cdBack = {'gui': '#1E1E1E', 'cterm': s:cterm00, 'cterm256': '234'}

let s:cdTabCurrent = {'gui': '#1E1E1E', 'cterm': s:cterm00, 'cterm256': '234'}
let s:cdTabOther = {'gui': '#2D2D2D', 'cterm': s:cterm01, 'cterm256': '236'}
let s:cdTabOutside = {'gui': '#252526', 'cterm': s:cterm01, 'cterm256': '235'}

let s:cdLeftDark = {'gui': '#252526', 'cterm': s:cterm01, 'cterm256': '235'}
let s:cdLeftMid = {'gui': '#373737', 'cterm': s:cterm03, 'cterm256': '237'}
let s:cdLeftLight = {'gui': '#3F3F46', 'cterm': s:cterm03, 'cterm256': '238'}

let s:cdPopupFront = {'gui': '#BBBBBB', 'cterm': s:cterm06, 'cterm256': '250'}
let s:cdPopupBack = {'gui': '#2D2D30', 'cterm': s:cterm01, 'cterm256': '236'}
let s:cdPopupHighlightBlue = {'gui': '#073655', 'cterm': s:cterm0D, 'cterm256': '24'}
let s:cdPopupHighlightGray = {'gui': '#3D3D40', 'cterm': s:cterm03, 'cterm256': '237'}

let s:cdSplitLight = {'gui': '#898989', 'cterm': s:cterm04, 'cterm256': '245'}
let s:cdSplitDark = {'gui': '#444444', 'cterm': s:cterm03, 'cterm256': '238'}
let s:cdSplitThumb = {'gui': '#424242', 'cterm': s:cterm04, 'cterm256': '238'}

let s:cdCursorDarkDark = {'gui': '#222222', 'cterm': s:cterm01, 'cterm256': '235'}
let s:cdCursorDark = {'gui': '#51504F', 'cterm': s:cterm03, 'cterm256': '239'}
let s:cdCursorLight = {'gui': '#AEAFAD', 'cterm': s:cterm04, 'cterm256': '145'}
let s:cdSelection = {'gui': '#264F78', 'cterm': s:cterm03, 'cterm256': '24'}
let s:cdLineNumber = {'gui': '#5A5A5A', 'cterm': s:cterm04, 'cterm256': '240'}

let s:cdDiffRedDark = {'gui': '#4B1818', 'cterm': s:cterm08, 'cterm256': '52'}
let s:cdDiffRedLight = {'gui': '#6F1313', 'cterm': s:cterm08, 'cterm256': '52'}
let s:cdDiffRedLightLight = {'gui': '#FB0101', 'cterm': s:cterm08, 'cterm256': '09'}
let s:cdDiffGreenDark = {'gui': '#373D29', 'cterm': s:cterm0B, 'cterm256': '237'}
let s:cdDiffGreenLight = {'gui': '#4B5632', 'cterm': s:cterm09, 'cterm256': '58'}

let s:cdSearchCurrent = {'gui': '#585858', 'cterm': s:cterm09, 'cterm256': '2'} " DONE 
let s:cdSearch = {'gui': '#005f5f', 'cterm': s:cterm03, 'cterm256': '23'} " DONE

let s:stSpecial = {'gui': '#5fffaf', 'cterm': s:cterm04, 'cterm256': '85'}
let s:stGray = {'gui': '#dadada', 'cterm': s:cterm04, 'cterm256': '253'}
let s:ptGray = {'gui': '#9e9e9e', 'cterm': s:cterm04, 'cterm256': '247'}
let s:cpGray = {'gui': '#8a8a8a', 'cterm': s:cterm04, 'cterm256': '243'}
let s:cdGray = {'gui': '#808080', 'cterm': s:cterm04, 'cterm256': '08'}
let s:cdCyan = {'gui': '#5fd7d7', 'cterm': s:cterm04, 'cterm256': '80'}
let s:cdViolet = {'gui': '#afafff', 'cterm': s:cterm04, 'cterm256': '147'}
let s:cdBlue = {'gui': '#5fafd7', 'cterm': s:cterm0D, 'cterm256': '74'}
let s:cdDarkBlue = {'gui': '#223E55', 'cterm': s:cterm0D, 'cterm256': '73'}
let s:cdLightBlue = {'gui': '#9CDCFE', 'cterm': s:cterm0C, 'cterm256': '117'}
if g:codedark_conservative | let s:cdLightBlue = s:cdFront | endif
let s:cdGreen = {'gui': '#87d7af', 'cterm': s:cterm0B, 'cterm256': '115'}
let s:cdBlueGreen = {'gui': '#4EC9B0', 'cterm': s:cterm0F, 'cterm256': '43'}
let s:cdLightGreen = {'gui': '#B5CEA8', 'cterm': s:cterm09, 'cterm256': '151'}
let s:cdRed = {'gui': '#F44747', 'cterm': s:cterm08, 'cterm256': '203'}
let s:cdOrange = {'gui': '#CE9178', 'cterm': s:cterm0F, 'cterm256': '173'}
let s:cdLightRed = {'gui': '#D16969', 'cterm': s:cterm08, 'cterm256': '167'}
if g:codedark_conservative | let s:cdLightRed = s:cdOrange | endif
let s:cdYellowOrange = {'gui': '#d7d787', 'cterm': s:cterm0A, 'cterm256': '186'}
let s:cdYellow = {'gui': '#d7d787', 'cterm': s:cterm0A, 'cterm256': '186'}
if g:codedark_conservative | let s:cdYellow = s:cdFront | endif
let s:cdPink = {'gui': '#C586C0', 'cterm': s:cterm0E, 'cterm256': '176'}
if g:codedark_conservative | let s:cdPink = s:cdBlue | endif


" 021011 COLORS ────────────────────────────────────────────────────────────────

let s:baseBack = {'gui': '#1E1E1E', 'cterm': s:cterm00, 'cterm256': '234'}
let s:gray75 = {'gui': '#303030', 'cterm': s:cterm08, 'cterm256': '236'}
let s:gray60 = {'gui': '#626262', 'cterm': s:cterm08, 'cterm256': '241'}
let s:gray50 = {'gui': '#8a8a8a', 'cterm': s:cterm08, 'cterm256': '245'}
let s:gray40 = {'gui': '#8a8a8a', 'cterm': s:cterm08, 'cterm256': '247'}

let s:specialGreen = {'gui': '#005f5f', 'cterm': 'NONE', 'cterm256': '23'}
let s:specialMarkerGreen = {'gui': '#5fffaf', 'cterm': s:cterm04, 'cterm256': '85'}

let s:baseRed = {'gui': '#ff5f5f', 'cterm': s:cterm08, 'cterm256': '203'}
let s:dimRed = {'gui': '#d75f5f', 'cterm': s:cterm08, 'cterm256': '167'}

let s:baseBlue = {'gui': '#5fafd7', 'cterm': s:cterm08, 'cterm256': '74'}
let s:dimBlue = {'gui': '#87afd7', 'cterm': s:cterm08, 'cterm256': '110'}

let s:baseCyan = {'gui': '#5fd7d7', 'cterm': s:cterm08, 'cterm256': '80'}
let s:dimCyan = {'gui': '#87d7d7', 'cterm': s:cterm08, 'cterm256': '116'}

let s:baseGreen = {'gui': '#87d7af', 'cterm': s:cterm08, 'cterm256': '115'}
let s:dimGreen = {'gui': '#afd7af', 'cterm': s:cterm08, 'cterm256': '151'}

let s:baseMagenta = {'gui': '#afafff', 'cterm': s:cterm08, 'cterm256': '147'}
let s:dimMagenta = {'gui': '#afafd7', 'cterm': s:cterm08, 'cterm256': '146'}

let s:baseWhite = {'gui': '#dadada', 'cterm': s:cterm08, 'cterm256': '253'}

" Git ──────────────────────────────────────────────────────────────────────────

call <sid>hi('gitcommitHeader', s:baseWhite, {}, 'none', {})
call <sid>hi('gitcommitOnBranch', s:baseWhite, {}, 'none', {})
call <sid>hi('gitcommitBranch', s:specialMarkerGreen, {}, 'none', {})
call <sid>hi('gitcommitComment', s:gray50, {}, 'none', {})
call <sid>hi('gitcommitSelectedType', s:baseGreen, {}, 'none', {})
call <sid>hi('gitcommitSelectedFile', s:baseGreen, {}, 'none', {})
call <sid>hi('gitcommitUnmergedType', s:baseCyan, {}, 'none', {})
call <sid>hi('gitcommitUnmergedFile', s:baseCyan, {}, 'none', {})
call <sid>hi('gitcommitUntrackedFile', s:baseBlue, {}, 'none', {})
call <sid>hi('gitcommitDiscardedType', s:dimRed, {}, 'none', {})
call <sid>hi('gitcommitDiscardedFile', s:dimRed, {}, 'none', {})
call <sid>hi('gitcommitOverflow', s:dimRed, {}, 'none', {})
call <sid>hi('gitcommitSummary', s:dimGreen, {}, 'none', {})
call <sid>hi('gitcommitBlank', s:dimGreen, {}, 'none', {})

" CSS:
call <sid>hi('cssBraces', s:cdFront, {}, 'none', {})
call <sid>hi('cssInclude', s:cdPink, {}, 'none', {})
call <sid>hi('cssTagName', s:cdYellowOrange, {}, 'none', {})
call <sid>hi('cssClassName', s:cdYellowOrange, {}, 'none', {})
call <sid>hi('cssPseudoClass', s:cdYellowOrange, {}, 'none', {})
call <sid>hi('cssPseudoClassId', s:cdYellowOrange, {}, 'none', {})
call <sid>hi('cssPseudoClassLang', s:cdYellowOrange, {}, 'none', {})
call <sid>hi('cssIdentifier', s:cdYellowOrange, {}, 'none', {})
call <sid>hi('cssProp', s:cdLightBlue, {}, 'none', {})
call <sid>hi('cssDefinition', s:cdLightBlue, {}, 'none', {})
call <sid>hi('cssAttr', s:cdOrange, {}, 'none', {})
call <sid>hi('cssAttrRegion', s:cdOrange, {}, 'none', {})
call <sid>hi('cssColor', s:cdOrange, {}, 'none', {})
call <sid>hi('cssFunction', s:cdOrange, {}, 'none', {})
call <sid>hi('cssFunctionName', s:cdOrange, {}, 'none', {})
call <sid>hi('cssVendor', s:cdOrange, {}, 'none', {})
call <sid>hi('cssValueNumber', s:cdOrange, {}, 'none', {})
call <sid>hi('cssValueLength', s:cdOrange, {}, 'none', {})
call <sid>hi('cssUnitDecorators', s:cdOrange, {}, 'none', {})
call <sid>hi('cssStyle', s:cdLightBlue, {}, 'none', {})
call <sid>hi('cssImportant', s:cdBlue, {}, 'none', {}) 


" Vim editor colors
"    <sid>hi(GROUP, FOREGROUND, BACKGROUND, ATTRIBUTE, SPECIAL)
call <sid>hi('Normal', s:cdFront, s:cdBack, 'none', {})
call <sid>hi('ColorColumn', {}, s:gray75, 'none', {})                    " DONE
call <sid>hi('Cursor', s:cdCursorDark, s:cdCursorLight, 'none', {}) 
call <sid>hi('CursorLine', {}, s:cdCursorDarkDark, 'none', {})
call <sid>hi('CursorColumn', {}, s:cdCursorDarkDark, 'none', {})
call <sid>hi('Directory', s:cdBlue, s:cdBack, 'none', {})
call <sid>hi('DiffAdd', {}, s:cdDiffGreenDark, 'none', {})
call <sid>hi('DiffChange', {}, s:cdDiffRedDark, 'none', {})
call <sid>hi('DiffDelete', {}, s:cdDiffRedLight, 'none', {})
call <sid>hi('DiffText', {}, s:cdDiffRedLight, 'none', {})
call <sid>hi('EndOfBuffer', s:cdLineNumber, s:cdBack, 'none', {})
call <sid>hi('ErrorMsg', s:dimRed, s:cdBack, 'none', {})            "DONE
call <sid>hi('VertSplit', s:cdSplitDark, s:cdBack, 'none', {})
call <sid>hi('Folded', s:cdLeftLight, s:cdLeftDark, 'underline', {})
call <sid>hi('FoldColumn', s:cdLineNumber, s:cdBack, 'none', {})
call <sid>hi('SignColumn', {}, s:cdBack, 'none', {})
call <sid>hi('IncSearch', s:cdNone, s:cdSearchCurrent, 'none', {})
call <sid>hi('LineNr', s:gray60, s:cdBack, 'none', {})              " DONE
call <sid>hi('CursorLineNr', s:baseWhite, {}, 'none', {})
call <sid>hi('MatchParen', s:cdNone, s:cdCursorDark, 'none', {})
call <sid>hi('ModeMsg', s:cdFront, s:cdLeftDark, 'none', {})
call <sid>hi('MoreMsg', s:cdFront, s:cdLeftDark, 'none', {})
call <sid>hi('NonText', s:cdLineNumber, s:cdBack, 'none', {})
call <sid>hi('Pmenu', s:baseWhite, s:cdPopupBack, 'none', {}) " DONE
call <sid>hi('PmenuSel', s:baseWhite, s:specialGreen, 'none', {}) "DONE
call <sid>hi('PmenuSbar', {}, s:gray75, 'none', {})  "???????? надо вернутся
call <sid>hi('PmenuThumb', {}, s:gray50, 'none', {})
call <sid>hi('Question', s:baseBlue, s:cdBack, 'none', {}) "??????????
call <sid>hi('Search', s:cdNone, s:cdSearch, 'none', {})
call <sid>hi('SpecialKey', s:cdBlue, s:cdNone, 'none', {})


" :hi TabLineFill ctermfg=LightGreen ctermbg=DarkGreen " need
" :hi TabLine ctermfg=baseWhite ctermbg=baseBlack
" :hi TabLineSel ctermfg=Red ctermbg=Yellow
" :hi Title ctermfg=LightBlue ctermbg=Magenta

call <sid>hi('TabLine', s:cdFront, s:cdTabOther, 'none', {})
call <sid>hi('TabLineFill', s:baseWhite, s:gray75, 'none', {}) " DONE
call <sid>hi('TabLineSel', s:baseWhite, s:hvDarkGreen, 'none', {}) " DONE
call <sid>hi('Title', s:dimGreen, {}, 'none', {})  " DONE
" call <sid>hi('Visual', s:cdNone, s:cdSelection, 'none', {})
" call <sid>hi('VisualNOS', s:cdNone, s:cdSelection, 'none', {})
" call <sid>hi('WarningMsg', s:dimRed, s:cdBack, 'none', {})           " DONE
" call <sid>hi('WildMenu', s:cdNone, s:cdSelection, 'none', {})
" GLOBAL
call <sid>hi('Comment', s:gray50, {}, 'none', {})
call <sid>hi('Constant', s:cdBlue, {}, 'none', {})
call <sid>hi('String', s:dimGreen, {}, 'none', {}) " done
" ??????????
call <sid>hi('Character', s:cdYellow, {}, 'none', {})
call <sid>hi('Number', s:dimMagenta, {}, 'none', {}) " DOME

call <sid>hi('Boolean', s:cdBlue, {}, 'none', {})
" ?????
call <sid>hi('Float', s:cdLightGreen, {}, 'none', {})

call <sid>hi('Identifier', s:cdCyan, {}, 'none', {})
call <sid>hi('Function', s:baseCyan, {}, 'none', {}) " DONE

call <sid>hi('Statement', s:cdBlue, {}, 'none', {})
call <sid>hi('Conditional', s:cdBlue, {}, 'none', {})
call <sid>hi('Repeat', s:cdBlue, {}, 'none', {})
call <sid>hi('Label', s:cdBlue, {}, 'none', {})
call <sid>hi('Operator', s:cdBlue, {}, 'none', {})
call <sid>hi('Keyword', s:cdBlue, {}, 'none', {})
call <sid>hi('Exception', s:cdBlue, {}, 'none', {})

call <sid>hi('PreProc', s:cdBlue, {}, 'none', {})


call <sid>hi('Include', s:cdPink, {}, 'none', {})
call <sid>hi('Define', s:cdPink, {}, 'none', {})
call <sid>hi('Macro', s:cdPink, {}, 'none', {})
call <sid>hi('PreCondit', s:cdPink, {}, 'none', {})

call <sid>hi('Type', s:cdBlue, {}, 'none', {})
call <sid>hi('StorageClass', s:cdBlue, {}, 'none', {})
call <sid>hi('Structure', s:cdBlue, {}, 'none', {})
call <sid>hi('Typedef', s:cdBlue, {}, 'none', {})

call <sid>hi('Special', s:stSpecial, {}, 'none', {})
call <sid>hi('SpecialChar', s:cdBlue, {}, 'none', {})
call <sid>hi('Tag', s:cdRed, {}, 'none', {})
call <sid>hi('Delimiter', s:gray50, {}, 'none', {}) " DONE
call <sid>hi('SpecialComment', s:cdGreen, {}, 'none', {})
call <sid>hi('Debug', s:cdFront, {}, 'none', {})

call <sid>hi('Underlined', s:cdRed, {}, 'underline', {})
call <sid>hi("Conceal", s:cdFront, s:cdBack, 'none', {})

call <sid>hi('Ignore', s:cdFront, {}, 'none', {})

call <sid>hi('Error', s:cdRed, s:cdBack, 'undercurl', s:cdRed)

call <sid>hi('Todo', s:cdRed, s:cdLeftMid, 'none', {})

call <sid>hi('SpellBad', s:cdRed, s:cdBack, 'undercurl', s:cdRed)
call <sid>hi('SpellCap', s:cdRed, s:cdBack, 'undercurl', s:cdRed)
call <sid>hi('SpellRare', s:cdRed, s:cdBack, 'undercurl', s:cdRed)
call <sid>hi('SpellLocal', s:cdRed, s:cdBack, 'undercurl', s:cdRed)

" JavaScript:
call <sid>hi('jsVariableDef', s:baseWhite, {}, 'none', {}) " DONE
call <sid>hi('jsFuncParens', s:baseBlue, {}, 'none', {}) " DONE
call <sid>hi('jsFutureKeys', s:cdCyan, {}, 'none', {})
call <sid>hi('jsDestructuringPropertyValue', s:cdCyan, {}, 'none', {})
call <sid>hi('jsTemplateExpression', s:baseWhite, {}, 'none', {}) " DONE
call <sid>hi('jsFuncArgs', s:baseWhite, {}, 'none', {}) " DONE
call <sid>hi('jsExceptions', s:cdGreen, {}, 'none', {})
call <sid>hi('jsFuncBlock', s:baseWhite, {}, 'none', {}) " DONE
call <sid>hi('jsRegexpString', s:cdYellow, {}, 'none', {})
call <sid>hi('jsRegexpQuantifier', s:cdBlue, {}, 'none', {})
call <sid>hi('jsImport', s:cdBlue, {}, 'none', {}) " DONE
call <sid>hi('jsFrom', s:cdBlue, {}, 'none', {}) " DONE
call <sid>hi('jsModuleAs', s:cdBlue, {}, 'none', {}) " DONE
call <sid>hi('jsThis', s:cdBlue, {}, 'none', {}) 
call <sid>hi('jsClassFuncName', s:baseCyan, {}, 'none', {}) " DONE

call <sid>hi('jsObjectBraces', s:gray40, {}, 'none', {}) " DONE
call <sid>hi('jsModuleBraces', s:gray40, {}, 'none', {}) " DONE
call <sid>hi('jsNoise', s:gray40, {}, 'none', {}) " DONE
call <sid>hi('jsIfElseBraces', s:gray40, {}, 'none', {}) " DONE
call <sid>hi('jsDestructuringBraces', s:gray40, {}, 'none', {}) " DONE

call <sid>hi('jsFuncBraces', s:gray40, {}, 'none', {}) " DONE
call <sid>hi('jsClassBraces', s:gray40, {}, 'none', {}) " DONE
call <sid>hi('jsObjectSeparator', s:gray40, {}, 'none', {}) " DONE
call <sid>hi('jsDot', s:gray40, {}, 'none', {}) " DONE
call <sid>hi('jsOperatorKeyword', s:cdBlue, {}, 'none', {})
call <sid>hi('jsTemplateBraces', s:cdBlue, {}, 'none', {})
call <sid>hi('jsObjectColon', s:cdBlue, {}, 'none', {})
call <sid>hi('jsDestructuringBlock', s:baseWhite, {}, 'none', {}) " DONE
call <sid>hi('jsObjectKey', s:baseWhite, {}, 'none', {}) " DONE
call <sid>hi('jsGlobalObjects', s:baseGreen, {}, 'none', {}) " DONE
call <sid>hi('jsModuleKeyword', s:baseWhite, {}, 'none', {}) " DONE
call <sid>hi('jsExport', s:cdBlue, {}, 'none', {}) " DONE
call <sid>hi('jsClassDefinition', s:cdGreen, {}, 'none', {})
call <sid>hi('jsClassKeyword', s:cdBlue, {}, 'none', {})
call <sid>hi('jsExtendsKeyword', s:cdBlue, {}, 'none', {})
call <sid>hi('jsExportDefault', s:cdBlue, {}, 'none', {}) " DONE
call <sid>hi('jsFuncCall', s:baseCyan, {}, 'none', {}) " DONE
call <sid>hi('jsParens', s:baseCyan, {}, 'none', {}) " DONE
call <sid>hi('jsObjectValue', s:baseWhite, {}, 'none', {}) " DONE
call <sid>hi('jsParen', s:baseWhite, {}, 'none', {}) " DONE
call <sid>hi('jsObjectProp', s:baseWhite, {}, 'none', {}) " DONE
call <sid>hi('jsIfElseBlock', s:cdCyan, {}, 'none', {})
call <sid>hi('jsParenIfElse', s:cdCyan, {}, 'none', {})
call <sid>hi('jsSpreadOperator', s:baseBlue, {}, 'none', {}) " DONE
call <sid>hi('jsSpreadExpression', s:baseWhite, {}, 'none', {}) " DONE
call <sid>hi('jsLength', s:baseGreen, {}, 'none', {}) " DONE 




" PHP:
call <sid>hi('phpStaticClasses', s:cdBlueGreen, {}, 'none', {})
call <sid>hi('phpMethod', s:cdYellow, {}, 'none', {})
call <sid>hi('phpClass', s:cdBlueGreen, {}, 'none', {})
call <sid>hi('phpFunction', s:cdYellow, {}, 'none', {})
call <sid>hi('phpInclude', s:cdBlue, {}, 'none', {})
call <sid>hi('phpUseClass', s:cdBlueGreen, {}, 'none', {})
call <sid>hi('phpRegion', s:cdBlueGreen, {}, 'none', {})
call <sid>hi('phpMethodsVar', s:cdLightBlue, {}, 'none', {})






" XML:
call <sid>hi('xmlTag', s:cdBlueGreen, {}, 'none', {})
call <sid>hi('xmlTagName', s:cdBlueGreen, {}, 'none', {})
call <sid>hi('xmlEndTag', s:cdBlueGreen, {}, 'none', {})

" Ruby:
call <sid>hi('rubyClassNameTag', s:cdBlueGreen, {}, 'none', {})
call <sid>hi('rubyClassName', s:cdBlueGreen, {}, 'none', {})
call <sid>hi('rubyModuleName', s:cdBlueGreen, {}, 'none', {})
call <sid>hi('rubyConstant', s:cdBlueGreen, {}, 'none', {})


" TeX:
call <sid>hi('texStatement', s:cdBlue, {}, 'none', {})
call <sid>hi('texBeginEnd', s:cdYellow, {}, 'none', {})
call <sid>hi('texBeginEndName', s:cdLightBlue, {}, 'none', {})
call <sid>hi('texOption', s:cdLightBlue, {}, 'none', {})
call <sid>hi('texBeginEndModifier', s:cdLightBlue, {}, 'none', {})
call <sid>hi('texDocType', s:cdPink, {}, 'none', {})
call <sid>hi('texDocTypeArgs', s:cdLightBlue, {}, 'none', {})


" Lua:
call <sid>hi('luaFuncCall', s:cdYellow, {}, 'none', {})
call <sid>hi('luaFuncArgName', s:cdLightBlue, {}, 'none', {})
call <sid>hi('luaFuncKeyword', s:cdPink, {}, 'none', {})
call <sid>hi('luaLocal', s:cdPink, {}, 'none', {})
call <sid>hi('luaBuiltIn', s:cdBlue, {}, 'none', {})

" SH:
call <sid>hi('shDeref', s:cdCyan, {}, 'none', {})
call <sid>hi('shVariable', s:cdCyan, {}, 'none', {})
call <sid>hi('shQuote', s:ptGray, {}, 'none', {})
call <sid>hi('shRange', s:ptGray, {}, 'none', {})

" SQL:
call <sid>hi('sqlKeyword', s:cdPink, {}, 'none', {})
call <sid>hi('sqlFunction', s:cdYellowOrange, {}, 'none', {})
call <sid>hi('sqlOperator', s:cdPink, {}, 'none', {})

" YAML: " DONE CUR 
call <sid>hi('yamlKey', s:baseCyan, {}, 'none', {}) " DONE
call <sid>hi('yamlDelimiter', s:baseBlue, {}, 'none', {}) " DONE

" VIM:  
call <sid>hi('vimOption', s:cdCyan , {}, 'none', {})  " DONE
call <sid>hi('vimParenSep', s:stGray , {}, 'none', {})  " DONE
" call <sid>hi('vimMode', s:cdFront, s:hvDarkGreen, 'none', {}) " DONE

" NEERDTREE:
call <sid>hi('NERDTreeDir', s:cdCyan, {}, 'none', {})  " DONE
call <sid>hi('NERDTreeOpenable', s:cdCyan, {}, 'none', {})  " DONE
call <sid>hi('StatusLineNC', s:gray50 , s:cdDarkGreen, 'none', {})
" CPP 
call <sid>hi('cppSTLnamespace', s:baseGreen, {}, 'none', {}) " DONE
call <sid>hi('cInclude', s:baseBlue, {}, 'none', {}) " DONE

