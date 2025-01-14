defmodule PrettyLog.MixProject do
  use Mix.Project

  def project do
    [
      app: :pretty_log,
      version: "0.1.0",
      elixir: "~> 1.8",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:logfmt, "~> 3.3"}
    ]
  end
end
