require 'dfeojm'

describe DFEOJM do
  it "provides usage information by default" do
    result = %x[dfeojm 2>&1]

    result.should match /Error: hostname must be present/
    result.should_not match /is up/
    result.should_not match /looks down/
  end

  it "provides version information" do
    result = %x[dfeojm -v 2>/dev/null]

    result.should match /[0-9]+\.[0-9]+/
  end
  
  it "shows that www.google.com should usually be up" do
    result = %x[dfeojm www.google.com 2>/dev/null]

    result.should match /is up/
    result.should_not match /looks down/
  end

  it "shows that www.thiswillneverexist.com should usually be down" do
    result = %x[dfeojm www.thiswillneverexist.com 2>/dev/null]

    result.should match /looks down/
    result.should_not match /is up/
  end
end
