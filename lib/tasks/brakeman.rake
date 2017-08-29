# frozen_string_literal: true

desc 'Run brakeman and abort if warnings found'
task :brakeman do
  # -z flag makes return value non-0 if there are any warnings
  # -q is quiet, which we use here to reduce output size
  if system('brakeman -q') == false # system is true if return is 0, false otherwise
    abort("Brakeman detected one or more code problems; run it manually and inspect the output.")
  end
end

task default: [:brakeman] # this is cumulative, so it won't drop other things added to the default
