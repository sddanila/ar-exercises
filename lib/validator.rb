class MyValidator < ActiveModel::Validator
  def validate(store)
    unless store.mens_apparel == true || store.womens_apparel == true 
      store.errors[:name] << 'Store needs to sell mens or womens apparel please!'
    end
  end
end
