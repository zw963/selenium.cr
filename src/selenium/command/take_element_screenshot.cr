class Selenium::Command::TakeElementScreenshot
  def initialize(@session_id, @element_id)
    @method = "GET"
    @route = "/session/#{@session_id}/element/#{@element_id}/screenshot"
  end
end