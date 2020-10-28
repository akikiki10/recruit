module ApplicationHelper
  def resource_name
    :caller
  end
     
  def resource
    @resource ||= Caller.new
  end
     
  def devise_mapping
    @devise_mapping ||= Devise.mappings[:caller]
  end
end
