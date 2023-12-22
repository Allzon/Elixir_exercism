defmodule Secrets do
  @spec secret_add(any()) :: (number() -> number())
  def secret_add(secret) do
    fn x -> x + secret end
  end

  @spec secret_subtract(any()) :: (number() -> number())
  def secret_subtract(secret) do
    fn x -> x - secret end
  end

  @spec secret_multiply(any()) :: (number() -> number())
  def secret_multiply(secret) do
    fn x -> x * secret end
  end

  @spec secret_divide(any()) :: (number() -> integer())
  def secret_divide(secret) do
    fn x -> trunc(x / secret) end
  end

  @spec secret_and(any()) :: (integer() -> integer())
  def secret_and(secret) do
    fn x -> Bitwise.band(x, secret) end
  end

  @spec secret_xor(any()) :: (integer() -> integer())
  def secret_xor(secret) do
    fn x -> Bitwise.bxor(x, secret) end
  end

  def secret_combine(secret_function1, secret_function2) do
    fn x -> secret_function2.(secret_function1.(x)) end
  end
end
