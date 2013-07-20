class DocsController < ApplicationController
  def index
    @doc_categories = DocCategory.all
    @docs_without_category = Doc.without_category
  end

  def load
    filename = Doc.find(params[:doc_id]).example.path
    respond_to { |format| format.html { send_file filename } }
  end
end
