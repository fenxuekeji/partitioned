module Partitioned
  #
  # Partition tables by record_at grouping them by week, with
  # a week defined as seven days starting on Monday.
  #
  class ByRecordAt < ByTimeField
    self.abstract_class = true

    # the field to partition on, `record_at`
    # @return [Symbol] the partition field: `record_at`
    def self.partition_time_field
      return :record_at
    end
  end
end
