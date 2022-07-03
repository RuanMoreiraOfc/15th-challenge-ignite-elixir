defmodule Queuex.Queue do
  use GenServer

  # Client

  def start_link(initial_stack) when is_list(initial_stack) do
    GenServer.start_link(__MODULE__, initial_stack)
  end

  def enqueue(pid, element) do
    GenServer.cast(pid, {:enqueue, element})
  end

  def dequeue(pid) do
    GenServer.call(pid, :dequeue)
  end

  # Server

  @impl true
  def init(queue) do
    {:ok, queue}
  end

  @impl true
  def handle_cast({:enqueue, element}, queue) when not is_nil(element) do
    new_queue = queue ++ [element]

    {:noreply, new_queue}
  end

  @impl true
  def handle_call(:dequeue, _from, []), do: {:reply, nil, []}

  @impl true
  def handle_call(:dequeue, _from, [head | new_queue]) do
    {:reply, head, new_queue}
  end
end
