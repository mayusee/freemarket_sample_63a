module TradesHelper

  def card_exists_and_addres_exists?
    return unless @default_card_information.nil? || @address.nil? 
  end

end
