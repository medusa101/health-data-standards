require 'test_helper'
module GreenC32
  class AdvanceDirectiveImporterTest < Minitest::Test
    def setup
      @ad = Nokogiri::XML(File.new('test/fixtures/green_c32_fragments/advance_directive.xml'))
      @adi = HealthDataStandards::Import::GreenC32::AdvanceDirectiveImporter.instance
    end
    
    def test_extraction
      ad = @adi.import(@ad)
      assert ad.valid?
      assert_equal "Do this, not that", ad.description
    end
  end
end