set :output, nil

every 1.hour do
  rake "thinking_sphinx:index"
end

every 30.minutes do
  rake "ts:index"
end
