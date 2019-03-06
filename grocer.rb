def consolidate_cart(cart)
  # code here
  new_cart = {}#consolicates cart and adds any quantities together
  cart.each_with_index do |item, i|
    item.each do |food, data|
      if new_cart[food]
        new_cart[food][:count]+= 1
      else
        new_cart[food] = data
        new_cart[food][:count] = 1
      end
    end
  end
  new_cart
end

def apply_coupons(cart, coupons)
  # code here
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
