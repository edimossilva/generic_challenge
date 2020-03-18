require 'set'

def set_uniq(array)
  return SortedSet.new(array)
end

def hash_uniq(array)
  hash = {}
  array.each { |item|
    hash.store(item,'')
  }
  return hash.keys
end