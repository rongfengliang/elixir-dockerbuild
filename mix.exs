defmodule Mydemoproject.MixProject do
  use Mix.Project

  def project do
    [
      app: :mydemoproject,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      escript: escriptconfig(),
      package: package(),
      docs: [extras: ["README.md"],  # 文档的起始地址
            main: "readme"],
      deps: deps()
    ]
  end
  defp package do
    %{maintainers: ["dalongrong"],
    licenses: ["MIT"],
    links: %{"GitHub" => "https://github.com/rongfengliang/userlogin"}}
  end
  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end
  defp escriptconfig do
    [ main_module: Mydemoproject.Start]
  end
  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_doc, "~> 0.14", only: :dev}
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"},
    ]
  end
end
