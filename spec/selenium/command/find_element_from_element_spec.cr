require "../../spec_helper"

module Selenium::Command
  describe FindElementFromElement do
    it "works" do
      driver = TestDriver.new
      parent_element_id = ElementId.random
      element_id = ElementId.random
      driver.response_body = { "element-1" => element_id }.to_json
      session_id = "c913bd4a033f9932a84bcd921f30793d"
      command = FindElementFromElement.new(driver, session_id, parent_element_id)

      result = command.execute(using: LocationStrategy::LINK_TEXT, value: "foo")

      driver.request_path.should eq("/session/#{session_id}/element/#{parent_element_id}/element")
      driver.request_body.should eq({
        using: "link text",
        value: "foo",
      }.to_json)
      result.should eq(element_id)
    end
  end
end