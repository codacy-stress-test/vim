" Test for sleep and sleep! commands

func! s:get_time_ms()
  return float2nr(reltimefloat(reltime()) * 1000)
endfunc

func! s:assert_takes_longer(cmd, time_ms)
  let start = s:get_time_ms()
  execute a:cmd
  let end = s:get_time_ms()
  call assert_true(end - start >=# a:time_ms)
endfun

func! Test_sleep_bang()
  call s:assert_takes_longer('sleep 50m', 50)
  call s:assert_takes_longer('sleep! 50m', 50)
  call s:assert_takes_longer('sl 50m', 50)
  call s:assert_takes_longer('sl! 50m', 50)
  call s:assert_takes_longer('1sleep', 1000)
  call s:assert_takes_longer('normal 1gs', 1000)
endfunc

" vim: shiftwidth=2 sts=2 expandtab
