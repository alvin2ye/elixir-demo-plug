defmodule Example.Mixfile do
  use Mix.Project

  def project do
    [
      app: :example,
      version: "0.1.0",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end


  def application do
    [
      extra_applications: [:logger],
      mod: {Example, [:httpotion]}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:cowboy, "~> 1.1.2"},
      {:plug, "~> 1.3.4"},
      {:httpotion, "~> 3.0.2"},
    ]
  end
end
