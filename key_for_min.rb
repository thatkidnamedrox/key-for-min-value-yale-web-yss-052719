# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  if name_hash.size < 1
    return nil
  end

  keys = []
  values = []
  name_hash.each do |key, value|
    keys << key
    values << value
  end

  smallest_value = values.first
  smallest_value_index = 0
  values.each_with_index do |value, index|
    if smallest_value > value
      smallest_value = value
      smallest_value_index = index
    end
  end

  keys[smallest_value_index]

end
