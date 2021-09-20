--
local DOC_INPUT = './docs'
local DOC_OUTPUT = './generated'

local ENUM_INPUT = './docs/enums'
local ENUM_OUTPUT = './generated/enums'

require('docs').run(DOC_INPUT, DOC_OUTPUT)
require('enums').run(ENUM_INPUT, ENUM_OUTPUT)
