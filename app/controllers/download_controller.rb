class DownloadController < ApplicationController
  def index
  end

  def pdf
  end

  def doc
    send_file Rails.root.join('private', 'Registration form.docx'), :type=>"application/doc", :x_sendfile=>true
  end

end
