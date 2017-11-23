def increment(n)
  n + 1
end

mutex = Mutex.new
sum = 0

threads = (1..10).map do
  Thread.new do
    100_000.times {
      mutex.synchronize{
      sum = increment(sum) }
    }
  end
end

for thread in threads
  thread.join
end
# threads.each(&:join)
puts sum
