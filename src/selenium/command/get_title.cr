class Selenium::Command::GetTitle
  def initialize(@session_id)
    @method = "GET"
    @route = "/session/#{@session_id}/title"
  end
end