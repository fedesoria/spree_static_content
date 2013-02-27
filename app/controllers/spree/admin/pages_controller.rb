class Spree::Admin::PagesController < Spree::Admin::ResourceController


  def attachment
    @attachment = Attachment.find(params[:attachment_id])
    @attachment.destroy
    render :js => "$('span##{params[:attachment_id]}').hide()"
  end  
end
