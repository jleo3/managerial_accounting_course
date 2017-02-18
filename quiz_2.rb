sales = 500
production = 1000

price = 6000

var_materials = 2000
var_labor = 1000
var_selling = 500

fixed_manufacturing = 90000
fixed_selling_costs = 25000

revenue = sales * price
p "revenue = #{revenue}"

var_manufacturing_costs = (var_materials * production) + (var_labor * production)
p "variable manufacturing costs = #{var_manufacturing_costs}"
var_cogs = (var_materials + var_labor) * sales
p "var COGS = #{var_cogs}"
var_inventory = (production - sales) * (var_labor + var_materials)
p "var inventory = #{var_inventory}"

fixed_cost_per_unit = fixed_manufacturing / production
p "Fixed cost per unit = #{fixed_cost_per_unit}"
fixed_cogs = fixed_cost_per_unit * sales
p "fixed COGS = #{fixed_cogs}"
fixed_inventory = fixed_cost_per_unit * (production - sales)
p "fixed inventory = #{fixed_inventory}"

var_selling_costs = var_selling * sales
p "variable selling and admin = #{var_selling_costs}"
p "fixed selling and admin = #{fixed_selling_costs}"


p "---- INCOME STATEMENT ----"
p "Revenues: #{revenue}"
p "Cost of goods sold: #{var_cogs + fixed_cogs}"
gross_margin = revenue - var_cogs - fixed_cogs
p "Gross margin = #{gross_margin}"
total_selling_and_admin = var_selling_costs + fixed_selling_costs
p "Total selling and admin = #{total_selling_and_admin}"
p "Operating income = #{gross_margin - total_selling_and_admin}"

