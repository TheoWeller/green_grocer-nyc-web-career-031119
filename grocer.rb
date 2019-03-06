def consolidate_cart(cart)
  consolidated_cart = {}
  cart.each_with_index do |items, index|
    items.each do |key, value|
      if consolidate_cart[key]
        consolidate_cart[key][:count]+=1
      else
        consolidate_cart[key] = value
        consolidate_cart[key] = 1
      end
    end
  end
  consolidate_cart
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
