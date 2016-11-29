defmodule HedwigResponders.Responders.Manatee do
  @moduledoc """
  Calming Manatee

  Uses computer artificial artificial intelligence to provide 
  top notch therapy services using the power of manatees
  """

  use Hedwig.Responder

  @usage """
  <text> - Uses computer technology to automatically detect sad employees and tries to cheer them up
  """
  hear ~r/calm down|calm it down|stay calm|manatee/i, msg do
    send msg, randomManatee
  end

  def randomManatee do
    manatee = :rand.uniform(34)
    "http://calmingmanatee.com/img/manatee#{manatee}.jpg"
  end
end