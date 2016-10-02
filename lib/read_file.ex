defmodule ReadFile do

  def create_file(file_name, content) do
    File.write(file_name, content)
  end

  defp read_file(file_name) do
    File.stream!(file_name)
  end

  def print_file_lines(file_name) do
    file_name
      |> read_file
      |> Enum.each(&(IO.inspect &1))
  end

  def count_file_lines(file_name) do
    file_name
      |> read_file
      |> Enum.reduce(0, fn(_, acc) -> acc + 1 end)
  end
end
