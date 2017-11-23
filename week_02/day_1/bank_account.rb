class BankAccount

  attr_reader(:holder_name, :amount, :type)
  attr_writer(:holder_name, :amount, :type)

  def initialize(holder_name, amount, type)
    @holder_name = holder_name
    @amount = amount
    @type = type
  end

#The methods below are replaced by the attr_writer above
  # def set_holder_name(name)
  #   @holder_name = name
  # end
  #
  # def set_account_amount(amount)
  #   @amount = amount
  # end
  #
  # def set_account_type(type)
  #   @type = type
  # end


#The methods below are replaced by the attr_reader above
  # def holder_name
  #   return @holder_name
  # end
  #
  # def amount
  #   return @amount
  # end
  #
  # def type
  #   return @type
  # end

end
