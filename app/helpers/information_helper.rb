module InformationHelper
  def information_already_exists?
    Information.all.where(content: params[:content]).count == 1
  end
end
