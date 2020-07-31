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
  cart.each do |grocery_item|
    current_item = find_item_by_name_in_collection(item[:item], new_cart)
    if current_item
      new_cart_index = 0
      new_cart.each do |new_cart_item|
        if new_cart_item[:item] == current_item[:item]
          new_cart_item[:count] += 1
        end
        new_cart_index += 1
      end
    else
      grocery_item[:count] = 1
      new_cart << grocery_item
    end
    index += 1
  end
  new_cart
end

def consolidate_cart(cart)
  new_cart = []
  cart.each do |item|
    item_name = item.keys[0]
    if new_cart[item_name]
      new_cart[item_name][:count] += 1
    else new_cart[item_name] = item[item_name]
      new_cart[item_name][:count] = 1
    end
  end
  new_cart
end
