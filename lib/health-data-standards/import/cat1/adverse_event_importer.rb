module HealthDataStandards
  module Import
    module Cat1
      class AdverseEventImporter < CDA::SectionImporter
        def initialize(entry_finder=CDA::EntryFinder.new("./cda:entry/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.146']"))
          super(entry_finder)
          @code_xpath = "./cda:entryRelationship/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.148']/cda:value"
        end
      end
    end
  end
end