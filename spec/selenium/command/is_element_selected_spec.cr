require "../../spec_helper"

module Selenium::Command
  describe IsElementSelected do
    it "works" do
      driver = TestDriver.new
      driver.response_value(true)
      element_id = ElementId.random
      session_id = "c913bd4a033f9932a84bcd921f30793d"
      command = IsElementSelected.new(driver, session_id)

      result = command.execute(element_id)

      driver.request_path.should eq("/session/#{session_id}/element/#{element_id}/selected")
      result.should be_true
    end
  end
end