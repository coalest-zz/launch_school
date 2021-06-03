class SecretFile
  def initialize(secret_data, logger)
    @data = secret_data
    @logger = logger
  end

  def data
    @logger.create_log_entry
    @data
  end
end

class SecurityLogger
  def create_log_entry
    # ... implementation omitted ...
  end
end

loggy = SecurityLogger.new

ssn_numbers = SecretFile.new("xxx-xx-5374", loggy)
puts ssn_numbers.data

p ssn_numbers.log