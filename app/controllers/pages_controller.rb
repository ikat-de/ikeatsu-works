class PagesController < ApplicationController
  def home
    @s3 = "https://ikeatsu-works.s3-ap-northeast-1.amazonaws.com/"
  end
end
