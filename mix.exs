defmodule Issues.Mixfile do
  use Mix.Project

  def project do
    [app: :issues,
     version: "0.0.1",
     elixir: "~> 1.0",
     name: "Issues",
     source_url: "https://github.com/sethyanow/issues",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     escript: escript_config,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [applications: [:logger, :httpoison, :jsx]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type `mix help deps` for more examples and options
  defp deps do
    [
      { :httpoison, "~> 0.6" },
      { :jsx      , "~> 2.6" },
      { :ex_doc   , github: "elixir-lang/ex_doc" },
      { :earmark  , ">= 0.0.0" }
    ]
  end

  defp escript_config do
    [ main_module: Issues.CLI ]
  end
end
