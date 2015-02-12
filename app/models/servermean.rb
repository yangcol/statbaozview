class Servermean < ActiveRecord::Base
  self.table_name = 'statdata'
  self.primary_keys = :name, :key, :duration, :date
  def self.get_all(page)
    Servermean.where("`key` like 'log-server-pv_mean_%'").paginate(:page => page)
  end
end
