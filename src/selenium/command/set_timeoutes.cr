class Selenium::Command::SetTimeouts
  def initialize(@driver : Driver, @session_id : SessionId)
  end

  def execute(timeout_configuration : TimeoutConfiguration)
    @driver.post(
      "/session/#{@session_id}/timeouts",
      body: timeout_configuration.to_json
    )
  end
end
