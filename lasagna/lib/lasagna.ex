defmodule Lasagna do

  def expected_minutes_in_oven, do: 40

  def remaining_minutes_in_oven(spent_time) do
   expected_minutes_in_oven() - spent_time
  end

  def preparation_time_in_minutes(layer) do
    2*layer
  end

  @spec total_time_in_minutes(number(), number()) :: number()
  def total_time_in_minutes(num_layer, in_oven) do
    preparation_time_in_minutes(num_layer) + in_oven
  end

  def alarm, do: "Ding!"

end
