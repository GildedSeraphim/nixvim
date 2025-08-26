{ lib, config, ... }:
{
  plugins = {
    vimtex = {
      enable = true;
      settings = {
        compiler_method = "pdflatex";
        toc_config = {
          split_pos = "vert topleft";
          split_width = 40;
        };
        quickfix_mode = 0;
        view_method = "zathura";
      };
    };
  };

  keymaps = lib.mkIf config.plugins.vimtex.enable [
    {
      mode = "n";
      key = "<leader>rs";
      action = ":Spectre<CR>";
      options = {
        desc = "Spectre toggle";
        silent = true;
      };
    }
  ];
  options = lib.mkIf config.plugins.vimtex.enable {
    conceallevel = 1;
  };
  globals = lib.mkIf config.plugins.vimtex.enable {
    tex_conceal = "abdmg";
  };
}
