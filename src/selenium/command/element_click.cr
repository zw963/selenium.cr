class Selenium::Command::ElementClick
  def initialize(@session_id, @element_id)
    @method = "POST"
    @route = "/session/#{@session_id}/element/#{@element_id}/click"
  end
end