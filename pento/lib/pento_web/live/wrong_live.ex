defmodule PentoWeb.WrongLive do
  use PentoWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, assign(socket, score: 0, message: "Make a guess!")}
  end

  @spec render(any) :: Phoenix.LiveView.Rendered.t()
  def render(assigns) do
    ~H"""
    <h1 class="mb-4 text-4xl font-extrabold">Your score: <%= @score %></h1>
    <h2>
      <%= @message %>
    </h2>
    <br/>
    <h2>
      <%= for n <- 1..10 do %>
        <.link class="bg-blue-500 hover:bg-blue-700
        text-white font-bold py-2 px-4 rounded-full"
        phx-click="guess" phx-value-n={n} >
          <%= n %>
        </.link>
      <% end %>
    </h2>
    """
  end
end
