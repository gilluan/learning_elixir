defmodule ReadFileTest do
  use ExUnit.Case
  doctest ReadFile

  def file_name do
    "hello.txt"
  end

  def content_file do
    """
    I and
    am
    build
    a
    test
    """
  end

  test "create file" do
    assert ReadFile.create_file( file_name, content_file ) == :ok  
  end

  test "read file" do
    assert file_name |> ReadFile.print_file_lines == :ok
  end

  test "count lines" do
    assert file_name |> ReadFile.count_file_lines == 5
  end
end
