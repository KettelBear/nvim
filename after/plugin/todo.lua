require('todo-comments').setup(
  {
    keywords = {
      FIX = { icon = '!' },
      TODO = { icon = '>' },
      HACK = { icon = 'H' },
      WARN = { icon = 'W' },
      PERF = { icon = 'P' },
      NOTE = { icon = 'N' },
      TEST = { icon = 'T' }
    },
    highlight = { multiline = false }
  }
);
