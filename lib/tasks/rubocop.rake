# frozen_string_literal: true

require 'rubocop/rake_task'

RuboCop::RakeTask.new(:rubocop) do |tsk|
  tsk.options = ['-DR'] # Rails, display cop name
end

task default: [:rubocop]
