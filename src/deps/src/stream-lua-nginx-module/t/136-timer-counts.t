# vim:set ft= ts=4 sw=4 et fdm=marker:

use Test::Nginx::Socket::Lua::Stream;
repeat_each(1);

plan tests => blocks() * (repeat_each() * 3);

run_tests();

__DATA__

=== TEST 1: running count with no running timers
--- stream_server_config
    content_by_lua_block { ngx.say(ngx.timer.running_count()) }
--- stream_response
0
--- no_error_log
[error]



=== TEST 2: running count with no pending timers
--- stream_server_config
    content_by_lua_block { ngx.say(ngx.timer.pending_count()) }
--- stream_response
0
--- no_error_log
[error]



=== TEST 3: pending count with one pending timer
--- stream_server_config
    content_by_lua_block {
        ngx.timer.at(3, function() end)
        ngx.say(ngx.timer.pending_count())
    }
--- stream_response
1
--- no_error_log
[error]



=== TEST 4: pending count with 3 pending timers
--- stream_server_config
    content_by_lua_block {
        ngx.timer.at(4, function() end)
        ngx.timer.at(2, function() end)
        ngx.timer.at(1, function() end)
        ngx.say(ngx.timer.pending_count())
    }
--- stream_response
3
--- no_error_log
[error]



=== TEST 5: one running timer
--- stream_server_config
    content_by_lua_block {
        ngx.timer.at(0.1, function() ngx.sleep(0.3) end)
        ngx.sleep(0.2)
        ngx.say(ngx.timer.running_count())
    }
--- stream_response
1
--- no_error_log
[error]



=== TEST 6: 3 running timers
--- stream_server_config
    content_by_lua_block {
        ngx.timer.at(0.1, function() ngx.sleep(0.3) end)
        ngx.timer.at(0.11, function() ngx.sleep(0.3) end)
        ngx.timer.at(0.09, function() ngx.sleep(0.3) end)
        ngx.sleep(0.2)
        ngx.say(ngx.timer.running_count())
    }
--- stream_response
3
--- no_error_log
[error]
