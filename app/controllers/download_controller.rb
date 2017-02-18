class DownloadController < ApplicationController
  def index
  end

  def pdf
  end

  def doc
    send_file Rails.root.join('private', 'RULES_REGULATIONS.docx'), :type=>"application/doc", :x_sendfile=>true
  end

end
