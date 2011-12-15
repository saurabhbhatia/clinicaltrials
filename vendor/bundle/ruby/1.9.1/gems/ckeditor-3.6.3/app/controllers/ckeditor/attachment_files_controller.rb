class Ckeditor::AttachmentFilesController < Ckeditor::BaseController

  def index
    @attachments = Ckeditor.attachment_file_model.find_all(ckeditor_attachment_files_scope)
    respond_with(@attachments)
  end
  
  def create
    @attachment = Ckeditor::AttachmentFile.new
	  respond_with_asset(@attachment)
  end
  
  def destroy
    @attachment.destroy
    respond_with(@attachment, :location => ckeditor_attachment_files_path)
  end
  
  protected
  
    def find_asset
      @attachment = Ckeditor.attachment_file_model.get!(params[:id])
    end
end
