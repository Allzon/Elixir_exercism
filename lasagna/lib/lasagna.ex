defmodule Lasagna do
  @minute_for_layer 2

  @spec expected_minutes_in_oven() :: 40
  def expected_minutes_in_oven(), do: 40

  @spec remaining_minutes_in_oven(number()) :: number()
  def remaining_minutes_in_oven(times_in_preparing) do
    expected_minutes_in_oven() - times_in_preparing
  end

  @spec preparation_time_in_minutes(number()) :: number()
  def preparation_time_in_minutes(layers) do
    layers * @minute_for_layer
  end

  @spec total_time_in_minutes(number(), number()) :: number()
  def total_time_in_minutes(layers, times_in_preparing) do
    preparation_time_in_minutes(layers) + times_in_preparing
  end

  @spec alarm() :: String.t()
  def alarm() do
    "Ding!"
  end
end
