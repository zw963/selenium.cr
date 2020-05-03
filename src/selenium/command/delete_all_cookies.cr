class Selenium::Command::DeleteAllCookies
  def initialize(@driver : Driver, @session_id : SessionId)
  end

  def execute
    @driver.delete("/session/#{@session_id}/cookie")
  end
end
