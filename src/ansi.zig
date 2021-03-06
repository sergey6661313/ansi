pub const ansi         = @This();
const Prog             = @import("root");
const lib              = Prog.lib;
pub const Ascii        = enum(u7)  {
  // { specials
    NUL,
    start_of_heading,
    star_of_text,
    end_of_text,
    end_of_transmission,
    enquiry,
    acknowledge,
    bell,
    back_space,
    tab,
    line_feed,
    vertical_tab,
    formFeed,
    carriage_return,
    shift_out,
    shift_in,
    data_link_escape,
    device_control_1,
    device_control_2,
    device_control_3,
    device_control_4,
    negative_acknowledge,
    synchrinius_idle,
    end_of_trans_block,
    cancel,
    end_of_medium,
    substitute,
    escape,
    file_separator,
    group_separetor,
    record_separator,
    unit_separator,
  //}
  // { signs
    space,           // ' '
    exclamation,     // '!'
    double_cuotes,   // '"'
    number_sign,     // '#'
    dollar_sign,     // '$'
    percent_sign,    // '%'
    ampersand,       // '&'
    apostrophe,      // '\''
    round_bracket_open,
    round_bracket_close,
    asterisk,        // '*'
    plus_sign,       // '+'
    comma,           // ','
    minus_sign,      // '-'
    dot,             // '.'
    slash,           // '/'
  // }
  // { numbers
    code_0,
    code_1,
    code_2,
    code_3,
    code_4,
    code_5,
    code_6,
    code_7,
    code_8,
    code_9,
  // }
  // { signs2
    colon,         // ':'
    semi_colon,    // ';'
    less_sign,     // '<'
    equals_sign,   // '='
    greater_sign,  // '>'
    question_mark, // '?'
    at,            // '@'
  // }
  // { capitals
    code_A,
    code_B,
    code_C,
    code_D,
    code_E,
    code_F,
    code_G,
    code_H,
    code_I,
    code_J,
    code_K,
    code_L,
    code_M,
    code_N,
    code_O,
    code_P,
    code_Q,
    code_R,
    code_S,
    code_T,
    code_U,
    code_V,
    code_W,
    code_X,
    code_Y,
    code_Z,
  //}
  // { signs 3 
    open_bracket,  // '['
    back_slash,    // '\\'
    close_bracket, // ']'
    caret,         // '^'
    under_score,   // '_'
    grave_accent,  // '`'
  // }
  // { non_capitals
    code_a,
    code_b,
    code_c,
    code_d,
    code_e,
    code_f,
    code_g,
    code_h,
    code_i,
    code_j,
    code_k,
    code_l,
    code_m,
    code_n,
    code_o,
    code_p,
    code_q,
    code_r,
    code_s,
    code_t,
    code_u,
    code_v,
    code_w,
    code_x,
    code_y,
    code_z,
  //}
  // { signs 4
    open_figure_bracket,
    vertical_bar,
    close_figure_bracket,
    tilda,
    delete,
  // }
};
pub const AsciiKey     = enum(u7)  {
  // { specials
    NUL,
    ctrl_a,  // start_of_heading,
    ctrl_b,  // star_of_text,
    ctrl_c,  // end_of_text,
    ctrl_d,  // end_of_transmission,
    ctrl_e,  // enquiry,
    ctrl_f,  // acknowledge,
    ctrl_g,  // bell,
    ctrl_bs, // ctrl backspace,
    tab,     // horizontal_tab,
    ctrl_j,  // line_feed,
    ctrl_k,  // vertical_tab,
    ctrl_l,  // formFeed,
    enter,   // carriage_return,
    ctrl_n,  // shift_out,
    ctrl_o,  // shift_in,
    ctrl_p,  // data_link_escape,
    ctrl_q,  // device_control_1,
    ctrl_r,  // device_control_2,
    ctrl_s,  // device_control_3,
    ctrl_t,  // device_control_4,
    ctrl_u,  // negative_acknowledge,
    ctrl_v,  // synchrinius_idle,
    ctrl_w,  // end_of_trans_block,
    ctrl_x,  // cancel,
    ctrl_y,  // end_of_medium,
    ctrl_z,  // substitute,
    escape,
    file_separator,
    group_separetor,
    record_separator,
    unit_separator,
  //}
  // { signs
    space,           // ' '
    exclamation,     // '!'
    double_cuotes,   // '"'
    number_sign,     // '#'
    dollar_sign,     // '$'
    percent_sign,    // '%'
    ampersand,       // '&'
    apostrophe,      // '\''
    round_bracket_open,
    round_bracket_close,
    asterisk,        // '*'
    plus_sign,       // '+'
    comma,           // ','
    minus_sign,      // '-'
    dot,             // '.'
    slash,           // '/'
  // }
  // { numbers
    code_0,
    code_1,
    code_2,
    code_3,
    code_4,
    code_5,
    code_6,
    code_7,
    code_8,
    code_9,
  // }
  // { signs2
    colon,         // ':'
    semi_colon,    // ';'
    less_sign,     // '<'
    equals_sign,   // '='
    greater_sign,  // '>'
    question_mark, // '?'
    at,            // '@'
  // }
  // { capitals
    code_A,
    code_B,
    code_C,
    code_D,
    code_E,
    code_F,
    code_G,
    code_H,
    code_I,
    code_J,
    code_K,
    code_L,
    code_M,
    code_N,
    code_O,
    code_P,
    code_Q,
    code_R,
    code_S,
    code_T,
    code_U,
    code_V,
    code_W,
    code_X,
    code_Y,
    code_Z,
  //}
  // { signs 3 
    open_bracket,  // '['
    back_slash,    // '\\'
    close_bracket, // ']'
    caret,         // '^'
    under_score,   // '_'
    grave_accent,  // '`'
  // }
  // { non_capitals
    code_a,
    code_b,
    code_c,
    code_d,
    code_e,
    code_f,
    code_g,
    code_h,
    code_i,
    code_j,
    code_k,
    code_l,
    code_m,
    code_n,
    code_o,
    code_p,
    code_q,
    code_r,
    code_s,
    code_t,
    code_u,
    code_v,
    code_w,
    code_x,
    code_y,
    code_z,
  //}
  // { signs 4
    open_figure_bracket,
    vertical_bar,
    close_figure_bracket,
    tilda,
    back_space, // delete,
  // }
};
pub const Sequence     = enum(u64) {
  // { enum
    mouse,
    
    f1_rxvt,
    f2_rxvt,
    f1_tty,
    f2_tty,
    
    f1,
    f2,
    f3,
    f4,
    f5,
    f6,
    f7,
    f8,
    f9,
    f10,
    f11,
    f12,
    
    delete,
    left,
    right,
    up,
    down,
    end,
    home,
    ctrl_alt_v,
    shift_delete,
    
    // left
    ctrl_left,
    ctrl_left_rxvt,
    ctrl_shift_left,
    shift_left,
    alt_left,
    
    // right
    ctrl_right,
    ctrl_right_rxvt,
    ctrl_shift_right,
    shift_right,
    alt_right,
    
    // up
    ctrl_up,
    shift_up,
    alt_up,
    
    // down
    ctrl_down,
    shift_down,
    alt_down,
    
    alt_v,
    alt_m,
    alt_M,
    alt_n,
    alt_j,
    alt_p,
    alt_r,
  // }
  pub const Parser = struct {
    sequence: Sequence = null,
    used:     usize     = 0,
    pub fn fromDo(buffer: []u8) ?Parser {
      // return null or sequence
      var parser: ?Parser = null;
      if (buffer.len >= 6) {
        if (lib.cmp(buffer[0..3], "\x1B\x5B\x4D") == .equal) { // mouse
          parser = .{.sequence = .mouse, .used = 6};
          return parser;
        }
        else if (lib.cmp(buffer[0..6], "\x1B\x5B\x31\x3B\x36\x44") == .equal) { // ctrl_shift_left
          parser = .{.sequence = .ctrl_shift_left, .used = 6};
          return parser;
        }
        else if (lib.cmp(buffer[0..6], "\x1B\x5B\x31\x3B\x35\x44") == .equal) { // ctrl_left
          parser = .{.sequence = .ctrl_left, .used = 6};
          return parser;
        }
        else if (lib.cmp(buffer[0..6], "\x1B\x5B\x31\x3B\x35\x43") == .equal) { // ctrl_right
          parser = .{.sequence = .ctrl_right, .used = 6};
          return parser;
        }
        else if (lib.cmp(buffer[0..6], "\x1B\x5B\x31\x3B\x35\x41") == .equal) { // ctrl_up
          parser = .{.sequence = .ctrl_up, .used = 6};
          return parser;
        }
        else if (lib.cmp(buffer[0..6], "\x1B\x5B\x31\x3B\x35\x42") == .equal) { // ctrl_down
          parser = .{.sequence = .ctrl_down, .used = 6};
          return parser;
        }
        else if (lib.cmp(buffer[0..6], "\x1B\x5B\x33\x3B\x32\x7E") == .equal) { // shift_delete
          parser = .{.sequence = .shift_delete, .used = 6};
          return parser;
        }
        else if (lib.cmp(buffer[0..6], "\x1B\x5B\x31\x3B\x32\x41") == .equal) { // shift_up 
          parser = .{.sequence = .shift_up, .used = 6};
          return parser;
        }
        else if (lib.cmp(buffer[0..6], "\x1B\x5B\x31\x3B\x32\x42") == .equal) { // shift_down 
          parser = .{.sequence = .shift_down, .used = 6};
          return parser;
        }
        else if (lib.cmp(buffer[0..6], "\x1B\x5B\x31\x3B\x32\x44") == .equal) { // shift_left 
          parser = .{.sequence = .shift_left, .used = 6};
          return parser;
        }
        else if (lib.cmp(buffer[0..6], "\x1B\x5B\x31\x3B\x32\x43") == .equal) { // shift_right
          parser = .{.sequence = .shift_right, .used = 6};
          return parser;
        }
        else if (lib.cmp(buffer[0..6], "\x1B\x5B\x31\x3B\x33\x44") == .equal) { // alt_left
          parser = .{.sequence = .alt_left, .used = 6};
          return parser;
        }
        else if (lib.cmp(buffer[0..6], "\x1B\x5B\x31\x3B\x33\x43") == .equal) { // alt_right
          parser = .{.sequence = .alt_right, .used = 6};
          return parser;
        }
        else if (lib.cmp(buffer[0..6], "\x1B\x5B\x31\x3B\x33\x41") == .equal) { // alt_up
          parser = .{.sequence = .alt_up, .used = 6};
          return parser;
        }
        else if (lib.cmp(buffer[0..6], "\x1B\x5B\x31\x3B\x33\x42") == .equal) { // alt_down
          parser = .{.sequence = .alt_down, .used = 6};
          return parser;
        }
        else if (lib.cmp(buffer[0..6], "\x1B\x5B\x31\x3B\x36\x43") == .equal) { // ctrl_shift_right
          parser = .{.sequence = .ctrl_shift_right, .used = 6};
          return parser;
        }
      }
      if (buffer.len >= 5) {
        if (false) {}
        else if (lib.cmp(buffer[0..5], "\x1B\x5B\x31\x31\x7E") == .equal) { // f1_rxvt
          parser = .{.sequence = .f1_rxvt, .used = 5};
          return parser;
        }
        else if (lib.cmp(buffer[0..5], "\x1B\x5B\x31\x32\x7E") == .equal) { // f2_rxvt
          parser = .{.sequence = .f2_rxvt, .used = 5};
          return parser;
        }
        else if (lib.cmp(buffer[0..5], "\x1B\x5B\x31\x35\x7E") == .equal) { // f5
          parser = .{.sequence = .f5, .used = 5};
          return parser;
        }
        else if (lib.cmp(buffer[0..5], "\x1B\x5B\x31\x37\x7E") == .equal) { // f6
          parser = .{.sequence = .f6, .used = 5};
          return parser;
        }
        else if (lib.cmp(buffer[0..5], "\x1B\x5B\x31\x38\x7E") == .equal) { // f7
          parser = .{.sequence = .f7, .used = 5};
          return parser;
        }
        else if (lib.cmp(buffer[0..5], "\x1B\x5B\x31\x39\x7E") == .equal) { // f8
          parser = .{.sequence = .f8, .used = 5};
          return parser;
        }
        else if (lib.cmp(buffer[0..5], "\x1B\x5B\x32\x30\x7E") == .equal) { // f9
          parser = .{.sequence = .f9, .used = 5};
          return parser;
        }
        else if (lib.cmp(buffer[0..5], "\x1B\x5B\x32\x31\x7E") == .equal) { // f10
          parser = .{.sequence = .f10, .used = 5};
          return parser;
        }
        else if (lib.cmp(buffer[0..5], "\x1B\x5B\x32\x33\x7E") == .equal) { // f11
          parser = .{.sequence = .f11, .used = 5};
          return parser;
        }
        else if (lib.cmp(buffer[0..5], "\x1B\x5B\x32\x34\x7E") == .equal) { // f12
          parser = .{.sequence = .f12, .used = 5};
          return parser;
        }
      }
      if (buffer.len >= 4) {
        if (lib.cmp(buffer[0..4], "\x1B\x5B\x5B\x41") == .equal) { // f1_tty
          parser = .{.sequence = .f1_tty, .used = 4};
          return parser;
        }
        else if (lib.cmp(buffer[0..4], "\x1B\x5B\x5B\x42") == .equal) { // f2_tty
          parser = .{.sequence = .f2_tty, .used = 4};
          return parser;
        }
        else if (lib.cmp(buffer[0..4], "\x1B\x5B\x33\x7E") == .equal) { // del
          parser = .{.sequence = .delete, .used = 4};
          return parser;
        }
      }
      if (buffer.len >= 3) {
        if (lib.cmp(buffer[0..3], "\x1B\x4F\x50") == .equal) { // f1
          parser = .{.sequence = .f1, .used = 3};
          return parser;
        }
        else if (lib.cmp(buffer[0..3], "\x1B\x4F\x51") == .equal) { // f2
          parser = .{.sequence = .f2, .used = 3};
          return parser;
        }
        else if (lib.cmp(buffer[0..3], "\x1B\x4F\x52") == .equal) { // f3
          parser = .{.sequence = .f3, .used = 3};
          return parser;
        }
        else if (lib.cmp(buffer[0..3], "\x1B\x4F\x53") == .equal) { // f4
          parser = .{.sequence = .f4, .used = 3};
          return parser;
        }
        else if (lib.cmp(buffer[0..3], "\x1B\x4F\x64") == .equal) { // ctrl_left_rxvt
          parser = .{.sequence = .ctrl_left_rxvt, .used = 3};
          return parser;
        }
        else if (lib.cmp(buffer[0..3], "\x1B\x4F\x63") == .equal) { // ctrl_right_rxvt
          parser = .{.sequence = .ctrl_right_rxvt, .used = 3};
          return parser;
        }
        else if (lib.cmp(buffer[0..3], "\x1B\x5B\x44") == .equal) { // left
          parser = .{.sequence = .left, .used = 3};
          return parser;
        }
        else if (lib.cmp(buffer[0..3], "\x1B\x5B\x43") == .equal) { // right
          parser = .{.sequence = .right, .used = 3};
          return parser;
        }
        else if (lib.cmp(buffer[0..3], "\x1B\x5B\x41") == .equal) { // up
          parser = .{.sequence = .up, .used = 3};
          return parser;
        }
        else if (lib.cmp(buffer[0..3], "\x1B\x5B\x42") == .equal) { // down
          parser = .{.sequence = .down, .used = 3};
          return parser;
        }
        else if (lib.cmp(buffer[0..3], "\x1B\x5B\x46") == .equal) { // end
          parser = .{.sequence = .end, .used = 3};
          return parser;
        }
        else if (lib.cmp(buffer[0..3], "\x1B\x5B\x48") == .equal) { // home
          parser = .{.sequence = .home, .used = 3};
          return parser;
        }
      }
      if (buffer.len >= 2) {
        if (lib.cmp(buffer[0..2], "\x1B\x6A") == .equal) { // alt_j
          parser = .{.sequence = .alt_j, .used = 2};
          return parser;
        }
        else if (lib.cmp(buffer[0..2], "\x1B\x70") == .equal) { // alt_p
          parser = .{.sequence = .alt_p, .used = 2};
          return parser;
        }
        else if (lib.cmp(buffer[0..2], "\x1B\x76") == .equal) { // alt_v
          parser = .{.sequence = .alt_v, .used = 2};
          return parser;
        }
        else if (lib.cmp(buffer[0..2], "\x1B\x6D") == .equal) { // alt_m
          parser = .{.sequence = .alt_m, .used = 2};
          return parser;
        }
        else if (lib.cmp(buffer[0..2], "\x1B\x4D") == .equal) { // alt_M
          parser = .{.sequence = .alt_M, .used = 2};
          return parser;
        }
        else if (lib.cmp(buffer[0..2], "\x1B\x6E") == .equal) { // alt_n
          parser = .{.sequence = .alt_n, .used = 2};
          return parser;
        }
        else if (lib.cmp(buffer[0..2], "\x1B\x72") == .equal) { // alt_r
          parser = .{.sequence = .alt_r, .used = 2};
          return parser;
        }
        else if (lib.cmp(buffer[0..2], "\x1B\x16") == .equal) { // ctrl_alt_v
          parser = .{.sequence = .ctrl_alt_v, .used = 2};
          return parser;
        }
      }
      return parser;
    }
  };
};
pub const esc          = "\x1B";
pub const control      = esc ++ "[";
pub const reset        = control ++ "0m";
pub const bold         = control ++ "1m";
pub const dim          = control ++ "2m";
pub const clear_to_end_line   = control ++ "0K";
pub const clear_to_start_line = control ++ "1K";
pub const clear_line          = control ++ "2K";
pub const cyrsor_style = struct {
  pub const hide               = control ++ "?25l";
  pub const show               = control ++ "?25h";
  pub const reset              = control ++ "0 q";
  pub const blinking_block     = control ++ "1 q";
  pub const steady_block       = control ++ "2 q";
  pub const blinking_underline = control ++ "3 q";
  pub const steady_underline   = control ++ "4 q";
  pub const blinking_I_beam    = control ++ "5 q";
  pub const steady_I_beam      = control ++ "6 q";
};
pub const color        = struct {
  pub const black     = control ++ "30;1m";
  pub const red       = control ++ "31;1m";
  pub const green     = control ++ "32;1m";
  pub const yellow    = control ++ "33;1m";
  pub const blue      = control ++ "34;1m";
  pub const magenta   = control ++ "35;1m";
  pub const cyan      = control ++ "36;1m";
  pub const white     = control ++ "37;1m";
  pub const zero      = control ++ "39;1m";
  pub const black2    = control ++ "90;1m";    
  pub const red2      = control ++ "91;1m";
  pub const green2    = control ++ "92;1m";
  pub const yellow2   = control ++ "93;1m";
  pub const blue2     = control ++ "94;1m";
  pub const magenta2  = control ++ "95;1m";
  pub const cyan2     = control ++ "96;1m";
  pub const white2    = control ++ "97;1m";
};
pub const bg_color     = struct {
  pub const black     = control ++ "40;1m";
  pub const red       = control ++ "41;1m";
  pub const green     = control ++ "42;1m";
  pub const yellow    = control ++ "43;1m";
  pub const blue      = control ++ "44;1m";
  pub const magenta   = control ++ "45;1m";
  pub const cyan      = control ++ "46;1m";
  pub const white     = control ++ "47;1m";
  pub const zero      = control ++ "49;1m";
  pub const black2    = control ++ "100;1m";
  pub const red2      = control ++ "101;1m";
  pub const green2    = control ++ "102;1m";
  pub const yellow2   = control ++ "103;1m";
  pub const blue2     = control ++ "104;1m";
  pub const magenta2  = control ++ "105;1m";
  pub const cyan2     = control ++ "106;1m";
  pub const white2    = control ++ "107;1m";
};
pub const mouse        = struct {
  pub const grab    = control ++ "?1000h"; 
  pub const release = control ++ "?1000l"; 
};
