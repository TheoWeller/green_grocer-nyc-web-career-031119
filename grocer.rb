def consolidate_cart(cart)
  new_cart = {}
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
  coup_hash = {}
  cart.each do |food, data|
    coupons.each do |coupon|
      if food == coupon[:item] && data[:count] >= coupon[:num]
        data[:count] = data[:count] - coupon[:num]
        if coup_hash["#{food} W/COUPON"]
          coup_hash["#{food} W/COUPON"][:count] += 1
        else
          coup_hash["#{food} W/COUPON"] = {price: coupon[:cost], clearance: data[:clearance], count: 1}
        end
      end
    end
    coup_hash[food] = data
  end
  coup_hash
end



def apply_clearance(cart)
  cart.each do |food, data|
    if data[:clearance]
      price = data[:price] * 0.80
      data[:price] = price.round(2)
    end
  end
  cart
end


def checkout(cart, coupons)
  # code here
end
