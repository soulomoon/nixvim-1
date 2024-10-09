{
  plugins = {
    # lsp-format = {
    #   enable = false;
    # };
    lsp = {
      enable = true;
      capabilities = ''
        capabilities.textDocument.foldingRange = {
            dynamicRegistration = true,
            lineFoldingOnly = true
        }
      '';
      servers = {
        hls = {
          enable = true;
          package = null;
          cmd = [
            "haskell-language-server-wrapper"
            "--lsp"
          ];
          settings = {
            haskell = {
              sessionLoading = "multipleComponents";
              plugin = {
                semanticTokens = {
                  config = {
                    classMethodToken = "method";
                    classToken = "class";
                    dataConstructorToken = "enumMember";
                    functionToken = "function";
                    moduleToken = "namespace";
                    patternSynonymToken = "macro";
                    recordFieldToken = "property";
                    typeConstructorToken = "enum";
                    typeFamilyToken = "interface";
                    typeSynonymToken = "type";
                    typeVariableToken = "typeParameter";
                    variableToken = "variable";
                  };
                  globalOn = true;
                };
              };
            };
          };
        };
        rust-analyzer = {
          enable = true;
        };
        eslint = {
          enable = true;
        };
        html = {
          enable = true;
        };
        lua-ls = {
          enable = true;
        };
        nil-ls = {
          enable = false;
        };
        nixd = {
          enable = true;
        };
        marksman = {
          enable = true;
        };
        pyright = {
          enable = true;
        };
        gopls = {
          enable = true;
        };
        terraformls = {
          enable = true;
        };
        tsserver = {
          enable = false;
        };
        yamlls = {
          enable = true;
        };
      };
      keymaps = {
        silent = true;
        lspBuf = {
          gd = {
            action = "definition";
            desc = "Goto Definition";
          };
          gr = {
            action = "references";
            desc = "Goto References";
          };
          gD = {
            action = "declaration";
            desc = "Goto Declaration";
          };
          gI = {
            action = "implementation";
            desc = "Goto Implementation";
          };
          gT = {
            action = "type_definition";
            desc = "Type Definition";
          };
          K = {
            action = "hover";
            desc = "Hover";
          };
          # "<leader>cw" = {
          #   action = "workspace_symbol";
          #   desc = "Workspace Symbol";
          # };
          "<leader>cr" = {
            action = "rename";
            desc = "Rename";
          };
          # "<leader>ca" = {
          #   action = "code_action";
          #   desc = "[C]ode [A]ction";
          # };
        };
        # diagnostic = {
        #   "<leader>cd" = {
        #     action = "open_float";
        #     desc = "Line Diagnostics";
        #   };
        #   "[d" = {
        #     action = "goto_next";
        #     desc = "Next Diagnostic";
        #   };
        #   "]d" = {
        #     action = "goto_prev";
        #     desc = "Previous Diagnostic";
        #   };
        # };
      };
    };
  };
  extraConfigLua = ''
    local _border = "rounded"
    local builtin = require('fzf-lua')

    vim.lsp.handlers["textDocument/definition"] = builtin.lsp_definitions
    vim.lsp.handlers["textDocument/references"] = builtin.lsp_references
    vim.lsp.handlers["textDocument/implementation"] = builtin.lsp_implementations
    vim.lsp.handlers["textDocument/typeDefinition"] = builtin.lsp_type_definitions

    vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
      vim.lsp.handlers.hover, {
        border = _border
      }
    )

    vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(
      vim.lsp.handlers.signature_help, {
        border = _border
      }
    )

    vim.diagnostic.config{
      float={border=_border}
    };

    require('lspconfig.ui.windows').default_options = {
      border = _border
    }
    local signs = {
        Error = " ",
        Warning = " ",
        Hint = "💡",
        Information = " ",
      ERROR = '',
      WARN = '',
      HINT = '󰌵',
      INFO = '',
    }
    for type, icon in pairs(signs) do
        local hl = "DiagnosticSign" .. type
        vim.fn.sign_define(hl, {text = icon, texthl = hl, numhl = hl})
    end

    for type, icon in pairs(signs) do
      local hl = "LspDiagnosticsSign" .. type
      vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
    end

    vim.diagnostic.config {
      virtual_text = {
        prefix = function(diagnostic)
          return signs[vim.diagnostic.severity[diagnostic.severity]]
        end,
      },
    }
  '';
}
