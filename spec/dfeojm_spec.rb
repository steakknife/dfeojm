require 'dfeojm'

describe DFEOJM do
  it "provides usage information by default" do
    output = `dfeojm 2>&1`
    result = $?.exitstatus

    output.should     match /Error: hostname must be present/
    output.should_not match /is up/
    output.should_not match /looks down/
    result.should_not be    0
  end

  it "provides version information" do
    output = `dfeojm -v 2>/dev/null`
    result = $?.exitstatus

    output.should     match /[0-9]+\.[0-9]+/
    result.should     be    0
  end
  
  it "shows that www.google.com should usually be up" do
    output = `dfeojm www.google.com 2>/dev/null`
    result = $?.exitstatus

    output.should     match /is up/
    output.should_not match /looks down/
    result.should     be    0
  end

  it "shows that www.thiswillneverexist.com should usually be down" do
    output = `dfeojm www.thiswillneverexist.com 2>/dev/null`
    result = $?.exitstatus

    output.should     match /looks down/
    output.should_not match /is up/
    result.should_not be    0
  end
end
