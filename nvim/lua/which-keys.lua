local wk = require("which-key")

wk.register({
  g = {
    name = "Git",
    h = {
      name = "GitHub",
      i = {
        name = "Issue",
        l = {
          "<cmd>Octo issue list<cr>", "List issues"
        },
        c = {
          "<cmd>Octo issue create<cr>", "Create issue"
        },
        e = {
          "<cmd>Octo issue edit<cr>", "Edit issue"
        },
        r = {
          "<cmd>Octo issue reload<cr>", "Reload issue"
        },
        C = {
          "<cmd>Octo issue close<cr>", "Close issue"
        },
      },
      c = {
        name = "Comment",
        a = {
          "<cmd>Octo comment add<cr>", "Add comment"
        },
        d = {
          "<cmd>Octo comment delete<cr>", "Delete comment"
        },
      }
    }
  },
  f = {
    name = "Find",
    s = {
      "<cmd>Telescope lsp_document_symbols<cr>", "Document symbols",
    },
    w = {
      "<cmd>Telescope lsp_workspace_symbols<cr>", "Workspace symbols",
    }
  }
},
{ 
  prefix = "<leader>"
})
