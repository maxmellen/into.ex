defmodule Into.Mixfile do
  use Mix.Project

  def project do
    [
      app: :into,
      version: "0.1.0",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      description: description(),
      package: package(),
      deps: deps(),
      source_url: "https://github.com/maxmellen/into.ex"
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"},
    ]
  end

  defp description() do
    "Collect the result of a pipe expression into a variable with ~>"
  end

  defp package() do
    [
      maintainers: ["Maximilien Mellen"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/maxmellen/into.ex"}
    ]
  end
end
