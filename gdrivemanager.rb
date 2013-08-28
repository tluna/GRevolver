# -*- coding: utf-8 -*-
require "redis"
require "hiredis"
require "yaml"
require "json"
require "google_drive"

class GDriveManager

  def getlist
    redis = Redis.new(:host => "localhost")
    @session = GoogleDrive.login(redis.get("email"),redis.get("pass"))

    for file in @session.files
      p file.title
    end
  end

  def putfile(filepass,filename)
    redis = Redis.new
    @session = GoogleDrive.login(redis.get("email"),redis.get("pass"))
    # redis.set filename,[redis.get("email"),redis.get("pass")].to_json
     redis.set file_uniq_id,[filename,[redis.get("email")],Time.now.to_i].to_json
    self.upload(@session,filepass,filename)
    self.getlist
  end
  
  def upload(session,filepass,filename)
    session.upload_from_file(filepass,filename,:convert => false)
  end
  

end


# filename,[file_uniq_id,[保存先アカウント]],timestamp
