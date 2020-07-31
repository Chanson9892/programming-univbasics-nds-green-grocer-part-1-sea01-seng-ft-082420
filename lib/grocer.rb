require "pry"
def find_item_by_name_in_collection(name, collection)
  collection.each do |item|
    if item[:item] == name
      return item
    end
    if item[:item] != name
      return nil
    end
    binding.pry
  end
    
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.

end
