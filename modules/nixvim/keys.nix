{
  config = {
    opts.conceallevel = 1;
    globals.tex_conceal = "abdmg";
    globals = {
      mapleader = " ";
      maplocalleader = " ";
    };
    keymaps = [
      # General maps
      {
        action = "<cmd>Telescope find_files<cr>";
        key = "<leader>ff";
        options = {
          silent = true;
        };
      }
      {
        mode = "i";
        key = "{";
        action = "{}<Left>";
        options = {
          noremap = true;
          silent = true;
        };
      }
      {
        mode = "i";
        key = "[";
        action = "[]<Left>";
        options = {
          noremap = true;
          silent = true;
        };
      }
      {
        mode = "i";
        key = "\"";
        action = "\"\"<Left>";
        options = {
          noremap = true;
          silent = true;
        };
      }
      {
        mode = "i";
        key = "'";
        action = "''<Left>";
        options = {
          noremap = true;
          silent = true;
        };
      }

    ];
    extraConfigLua = ''
      function ToggleLineNumber()
      if vim.wo.number then
        vim.wo.number = false
      else
        vim.wo.number = true
          vim.wo.relativenumber = false
          end
          end

          function ToggleRelativeLineNumber()
          if vim.wo.relativenumber then
            vim.wo.relativenumber = false
          else
            vim.wo.relativenumber = true
              vim.wo.number = false
              end
              end

              function ToggleWrap()
              vim.wo.wrap = not vim.wo.wrap
              end
    '';
  };
}
