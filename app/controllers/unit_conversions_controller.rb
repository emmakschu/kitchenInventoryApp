class UnitConversionsController < ApplicationController
  def index
    @unit_conversions = UnitConversion.all
  end
end
