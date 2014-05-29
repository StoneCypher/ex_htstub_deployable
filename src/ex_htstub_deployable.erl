
-module(ex_htstub_deployable).





-export([

    site/1,

    start/0

]).





%% @doc Generate site contents.

site(_) ->

    "<!doctype html><html><head><style type=\"text/css\">* { font-family: helvetica neue, sans-serif; }</style></head><body><p>Hello, world!</p></body></html>".





%% @doc Minimalist startup routine on port 8812.  No shutdown routine, lol.

start() ->

    htstub:serve( fun ex_htstub_deployable:site/1, 8812 ).
