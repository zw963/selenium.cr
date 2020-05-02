class Selenium::Command::GetWindowHandles
  def initialize(@driver : Driver::Getable, @session_id : SessionId)
    @method = "GET"
    @route = "/session/#{@session_id}/window/handles"
  end

  def execute : Array(WindowHandle)
    response_body = @driver.get("/session/#{@session_id}/window/handles")

    JSON.parse(response_body)["handles"].as_a.map &.as_s
  end
end
