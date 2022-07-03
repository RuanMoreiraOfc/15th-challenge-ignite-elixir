<h1 align='center'>
15th Challenge Elixir
</h1>

This repo includes the resolution for 15th Challenge in Elixir Journey with [Rafael Camada][btn-tutor].

## GOAL

```elixir
{:ok, pid} = Queuex.Queue.start_link([1])

Queuex.Queue.enqueue(pid, 2)
# output: :ok

Queuex.Queue.dequeue(pid)
# output: 1

Queuex.Queue.dequeue(pid)
# output: 2

Queuex.Queue.dequeue(pid)
# output: nil
```

<!-- VARIABLES -->

[btn-tutor]: https://github.com/rafaelcamarda
