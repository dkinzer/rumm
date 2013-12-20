require "spec_helper"

describe "using the images api" do

  context "to show" do
    include_context "rummrc"
    When { VCR.use_cassette("images/show") {run "rumm show images"}}
    Then {all_stdout =~ /Ubuntu 12.04 LTS \(Precise Pangolin\)/}
    And {last_exit_status.should eql 0}
  end

  context "to get help" do
    Given { rumm "help show images" }
    Then { all_stdout.match "Shows a list of all of the images available to the active Rackspac" }
  end

end
