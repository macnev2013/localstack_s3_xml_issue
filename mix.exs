defmodule LocalstackS3Issue.MixProject do
  use Mix.Project

  def project do
    [
      app: :localstack_s3_issue,
      elixir: "~> 1.14",
      escript: [main_module: LocalstackS3Issue],
      deps: deps(),
      start_permanent: Mix.env() == :prod,
      version: "0.1.0"
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
      {:configparser_ex, "~> 4.0"},
      {:ex_aws, "~> 2.3.0"},
      {:ex_aws_s3, "~> 2.3"},
      {:hackney, "~> 1.9"},
      {:poison, "~> 3.0"},
      {:sweet_xml, "~> 0.6"}
    ]
  end
end
