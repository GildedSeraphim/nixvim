{
  plugins = {
    blink-cmp = {
      enable = true;
      settings = {
        sources.providers = {
          latex-symbols = {
            module = "blink-cmp-latex";
            name = "Latex";
            opts = {
              # set to true to insert the latex command instead of the symbol
              insert_command = false;
            };
          };
          spell = {
            module = "blink-cmp-spell";
            name = "Spell";
            score_offset = 100;
            opts = {
            };
          };
        };
        sources.default = [
          "lsp"
          "path"
          "buffer"
          "latex-symbols"
          "spell"
        ];
        keymap.preset = "super-tab";
        appearance = {
          nerd_font_variant = "mono";
          use_nvim_cmp_as_default = true;
        };
        signature.enabled = true;
        completion = {
          accept = {
            auto_brackets = {
              enabled = true;
              semantic_token_resolution = {
                enabled = false;
              };
            };
          };
          documentation = {
            auto_show = true;
          };
        };
      };
    };

  };
}
