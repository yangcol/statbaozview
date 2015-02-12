class Slowlogext < ActiveRecord::Base
  self.table_name = 'statextdata'
  self.primary_keys = :name, :key, :duration, :date

  def self.get_all(page)
    Servermean.where("`key` like 'log-stat%'").paginate(:page => page)
  end
end
