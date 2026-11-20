-- AI ghost-text completion from the local Ollama server.
-- See `:help minuet` and https://github.com/milanglacier/minuet-ai.nvim

local OLLAMA_MODEL = 'qwen2.5-coder:7b'
local OLLAMA_FIM_ENDPOINT = 'http://localhost:11434/v1/completions'

vim.pack.add {
  'https://github.com/nvim-lua/plenary.nvim',
  'https://github.com/milanglacier/minuet-ai.nvim',
}

require('minuet').setup {
  provider = 'openai_fim_compatible',
  n_completions = 1,
  context_window = 8000,
  request_timeout = 6,
  provider_options = {
    openai_fim_compatible = {
      api_key = 'TERM',
      name = 'Ollama',
      end_point = OLLAMA_FIM_ENDPOINT,
      model = OLLAMA_MODEL,
      optional = {
        max_tokens = 128,
        top_p = 0.9,
        temperature = 2,
      },
    },
  },
  virtualtext = {
    auto_trigger_ft = { '*' },
    keymap = {
      accept = '<A-A>',
      accept_line = '<A-a>',
      prev = '<A-[>',
      next = '<A-]>',
      dismiss = '<A-e>',
    },
  },
}
