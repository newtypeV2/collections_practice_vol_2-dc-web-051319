# your code goes here
require "pry"
def begins_with_r(inputData)
  #binding.pry
  inputData.collect{|data| data.start_with?("r")}.all?
end

def contain_a(inputData)
  inputData.collect{|data| data.include?("a") ? data : nil}.compact
end

def first_wa(inputData)
  inputData.collect{|data| data.to_s.start_with?("wa") ? data : nil}.compact.first
end

def remove_non_strings(inputData)
  inputData.delete_if{|data| !data.is_a?(String)}
end

def count_elements(inputData)
  #binding.pry
  inputDataStore=inputData.uniq
  inputDataStore.collect{|datum|
    datum[:count]=inputData.collect{|x| x==datum ? x : nil }.compact.count
  }
  inputDataStore
end

def merge_data(keys,data)

keys.collect{|rData|
  data.collect{|x|
	rData.merge(x.fetch(rData.values.first))
	}
}.flatten
end

def find_cool(inputData)
  inputData.collect{|data|
  data[:temperature]=="cool" ? data : nil 
  }.compact
end

def organize_schools(inputData)
  rHash = {}
  inputData.each {|key,value| value.each{|k,v| rHash.include?(v) ? rHash[v]<<key : rHash[v]=[key]  }}.sort
  rHash
end
