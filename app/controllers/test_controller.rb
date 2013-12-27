require 'pp'

class TestController < ApplicationController
  OTHER_URL = "http://other.com"
  MY_URL = "http://my.com"

  before_action :set_common_variables

  private
  def set_common_variables
    @other_url = OTHER_URL
    @my_url = MY_URL
  end
  
  public
  def same1
  end

  def other1
  end

  def other2
  end

  def other3
    response.headers['Access-Control-Allow-Origin'] = '*'
  end

  def other4
    response.headers['Access-Control-Allow-Origin'] = '*'
    response.headers['Access-Control-Allow-Credentials'] = 'true'
  end

  def other5
    response.headers['Access-Control-Allow-Origin'] = @my_url
    response.headers['Access-Control-Allow-Credentials'] = 'true'
  end

  def test1
  end

  def test2
  end

  def test3
  end

  def test4
  end

  def test5
  end
end
