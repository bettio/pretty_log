defmodule PrettyLogLogFmtFormatterTest do
  use ExUnit.Case
  alias PrettyLog.LogFmtFormatter
  doctest PrettyLog.LogFmtFormatter

  test "produces a warning log entry" do
    assert :erlang.iolist_to_binary(
             LogFmtFormatter.format(
               :warn,
               "This is a test message",
               {{2019, 10, 8}, {11, 58, 39, 5}},
               []
             )
           ) ==
             "ts=2019-10-08T11:58:39.005+02:00 level=warn message=\"This is a test message\"\n"
  end
end
