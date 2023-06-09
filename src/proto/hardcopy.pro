/* hardcopy.c */
char *parse_printoptions(optset_T *args);
char *parse_printmbfont(optset_T *args);
int prt_header_height(void);
int prt_use_number(void);
int prt_get_unit(int idx);
void ex_hardcopy(exarg_T *eap);
void mch_print_cleanup(void);
int mch_print_init(prt_settings_T *psettings, char_u *jobname, int forceit);
int mch_print_begin(prt_settings_T *psettings);
void mch_print_end(prt_settings_T *psettings);
int mch_print_end_page(void);
int mch_print_begin_page(char_u *str);
int mch_print_blank_page(void);
void mch_print_start_line(int margin, int page_line);
int mch_print_text_out(char_u *textp, int len);
void mch_print_set_font(int iBold, int iItalic, int iUnderline);
void mch_print_set_bg(long_u bgcol);
void mch_print_set_fg(long_u fgcol);
/* vim: set ft=c : */
