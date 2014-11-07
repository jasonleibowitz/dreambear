class Item < ActiveRecord::Base
  has_attached_file :thumbnail,
                    :styles => { :medium => "300x200>", :thumb => "100x100>" },
                    :default_url => "/images/:style/missing.png",
                    :storage => :s3,
                    :s3_credentials => Proc.new{|a| a.instance.s3_credentials }
  validates_attachment_content_type :thumbnail, :content_type => /\Aimage\/.*\Z/

  def s3_credentials
    {:bucket => "dreambear-collaborators", :access_key_id => ENV["aws_access_key"], :secret_access_key => ENV["aws_secret"]}
  end
end
