def find_item_by_name_in_collection(name, collection)
  index = 0
  collection.each do |item|
    if item[:item] == name
      return item
    end
    index += 1
  end
  nil
end

def consolidate_cart(cart)
  index = 0
  new_cart = []
  cart.each do |item|
    item_name = item.keys[0]
    if item_name
      new_cart_index = 0
      new_cart.each do |new_cart_item|
        if new_cart_item[:item] == item[:item]
          new_cart_item[:count] += 1
        end
        new_cart_index += 1
      end
    else
      item[:count] = 1
      new_cart << new_cart_item
    end
    index += 1
  end
  new_cart
end
