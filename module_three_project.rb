class DeluxeFixture
  attr_accessor :selling_price, :direct_materials, :direct_labor, :indirect_costs, :profit_per_unit

  def selling_price
    900
  end

  def direct_materials
    250
  end

  def direct_labor
    120
  end

  def indirect_costs
    340
  end

  def profit_per_unit
    190
  end

  def units_per_batch
    125
  end

  def machine_hours_per_unit
    10
  end

  def units_per_shipment
    1
  end
end

class Activity
  attr_reader :name, :cost_driver, :cost, :cost_driver_units
  def initialize(name, cost_driver, cost, cost_driver_units)
    @name = name
    @cost_driver = cost_driver
    @cost = cost
    @cost_driver_units = cost_driver_units
  end
end

fixture = DeluxeFixture.new
puts fixture.selling_price

setups = Activity.new("Setups", "# batches", 500000.00, 725)
