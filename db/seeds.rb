# frozen_string_literal: true

require 'benchmark'
require 'logger'

# Customize the directory path where your seed files are located.
seed_files_directory = File.join(Rails.root, 'db', 'seeds')

# Create a logger for better log management.
logger = Logger.new('seed_runner.log')

# Define a method for running seed files.
def run_seed_file(seed_file, logger)
  logger.info("Running seed: #{File.basename(seed_file)}")

  begin
    realtime = Benchmark.realtime { load seed_file }
    logger.info("Seed #{File.basename(seed_file)} finished in #{realtime.round(2)} seconds.")
  rescue StandardError => e
    logger.error("Error running #{File.basename(seed_file)}: #{e.message}")
  end
end

# Find and sort seed files in the directory.
seed_files = Dir[File.join(seed_files_directory, '*.rb')].sort

if seed_files.empty?
  logger.warn("No seed files found in #{seed_files_directory}")
else
  logger.info('Start runninds seeds...')

  seed_files.each { |seed_file| run_seed_file(seed_file) }
  
  logger.info('Finished running seeds.')
end
