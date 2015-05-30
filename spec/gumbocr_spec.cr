require "./spec_helper"

describe "LibGumbo" do
  it "has all the methods defined" do
    LibGumbo.responds_to?(:gumbo_string_equals).should be_true
    LibGumbo.responds_to?(:gumbo_string_equals_ignore_case).should be_true
    LibGumbo.responds_to?(:gumbo_normalized_tagname).should be_true
    LibGumbo.responds_to?(:gumbo_tag_from_original_text).should be_true
    LibGumbo.responds_to?(:gumbo_normalize_svg_tag).should be_true
    LibGumbo.responds_to?(:gumbo_tag_enum).should be_true
    LibGumbo.responds_to?(:gumbo_tagn_enum).should be_true
    LibGumbo.responds_to?(:gumbo_get_attribute).should be_true
    LibGumbo.responds_to?(:gumbo_parse).should be_true
    LibGumbo.responds_to?(:gumbo_parse_with_options).should be_true
    LibGumbo.responds_to?(:gumbo_destroy_output).should be_true
  end
end
