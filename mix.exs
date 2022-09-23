defmodule Authy.Mixfile do
  use Mix.Project

  def project do
    [
      app: :authy,
      version: "0.6.1",
      elixir: "~> 1.14",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [applications: [:httpoison, :poison, :logger]]
  end

  defp deps do
    [{:httpoison, "~> 1.8"}, {:poison, "~> 5.0"}]
  end
end
