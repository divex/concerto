defmodule Concerto.Mixfile do
  use Mix.Project

  def project do
    [
      app: :concerto,
      description: "module-based routing library for elixir",
      version: "0.1.5",
      elixir: "~> 1.0",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package(),
      aliases: [
        "compile.protocols": ["compile.protocols", "compile.multix"]
      ]
    ]
  end

  def application do
    [applications: [:logger]]
  end

  defp deps do
    [
      {:multix, github: "camshaft/multix"},
      {:plug, ">= 1.4.0"}
    ]
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README*"],
      maintainers: ["Cameron Bytheway"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/exstruct/concerto"}
    ]
  end
end
