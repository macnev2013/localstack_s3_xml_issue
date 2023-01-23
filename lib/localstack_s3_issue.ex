defmodule LocalstackS3Issue do
  def main(args \\ []) do
    result =
      ExAws.S3.list_buckets()
      |> ExAws.request!()
      |> then(fn %{body: %{buckets: buckets}} -> buckets end)
      |> Enum.map(fn %{name: name} -> name end)

    IO.inspect("AWS buckets: #{result |> Enum.join(", ")}")
  end
end
