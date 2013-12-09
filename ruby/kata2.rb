
module Kata2
  def chop(value_to_find, array_to_search, relative_index = 0)
    array_length = array_to_search.length

    case array_length
    when 0
      return -1
    when 1
      return relative_index if array_to_search[0] == value_to_find
      return -1
    when 2
      return relative_index if array_to_search[0] == value_to_find
      return relative_index + 1 if array_to_search[1] == value_to_find
      return -1
    end

    search_index = get_array_center(array_to_search)
    value_at_index = array_to_search[search_index]

    return relative_index + search_index if value_at_index == value_to_find

    if value_to_find < value_at_index
      new_array = array_to_search.slice(0, search_index)
    else
      new_array = array_to_search.slice(search_index, array_length - 1)
      relative_index = relative_index + search_index
    end

    return chop(value_to_find, new_array, relative_index)
  end

  def get_array_center(array)
    array_length = array.length

    if array_length % 2 == 0
      array_center = (array_length / 2)
      array_center = array_center - 1 if array_center > 0
    else
      array_center = ((array_length + 1) / 2) - 1
    end

    array_center
  end
end
