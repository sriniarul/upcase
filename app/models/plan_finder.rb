# Allows for the finding of plans that may be either TeamPlan or IndividualPlan instances
class PlanFinder
  def self.where(options)
    IndividualPlan.where(options) + TeamPlan.where(options)
  end
end