require "anbt_ccl_util"

describe CCL, "when abbr" do
  before(:all) do
    puts "テスト開始"
  end
  
  before(:each) do
    @test = CCL.new()
    #puts "-------------------"
  end
  
  it "url_parse should be " do
    @test.url_parse("http://creativecommons.org/licenses/by-nc-sa/2.0/deed.en").should == "creativecommons.org/licenses/by-nc-sa/2.0/deed.en"
  end

  it "url2abbr should be " do
    @test.url2abbr("http://creativecommons.org/licenses/by-nc-sa/2.0/deed.en").should == "BY-NC-SA 2.0"
  end

  it "url2abbr should be " do
    @test.url2abbr("http://creativecommons.org/licenses/by-nc-sa/2.0/").should == "BY-NC-SA 2.0"
  end

  it "url2abbr should be " do
    @test.url2abbr("http://creativecommons.org/licenses/by-nc-sa/2.0").should == "BY-NC-SA 2.0"
  end

  it "url2abbr should be " do
    @test.url2abbr("http://creativecommons.org/licenses/by/2.1/jp/").should == "BY 2.1 JP"
  end
  
  it "url2abbr should be " do
    @test.url2abbr("http://creativecommons.org/licenses/sampling/1.0/").should == "Sampling 1.0 (retired)"
  end
  it "url2abbr should be " do
    @test.url2abbr("http://creativecommons.org/licenses/sampling+/1.0/").should == "Sampling+ 1.0"
  end
  it "url2abbr should be " do
    @test.url2abbr("http://creativecommons.org/licenses/nc-sampling+/1.0/").should == "NC-Sampling+ 1.0"
  end
  
  it "url2abbr(public domain) should be " do
    @test.url2abbr("http://creativecommons.org/licenses/publicdomain/").should == "PD"
  end
  
  it "url2abbr(MIT) should be " do
    @test.url2abbr("http://creativecommons.org/licenses/MIT/").should == "MIT"
  end
  it "url2abbr(BSD) should be " do
    @test.url2abbr("http://creativecommons.org/licenses/BSD/").should == "BSD"
  end
  it "url2abbr(GPL 2.0) should be " do
    @test.url2abbr("http://creativecommons.org/licenses/GPL/2.0/").should == "GPL 2.0"
  end
  it "url2abbr(LGPL 2.1) should be " do
    @test.url2abbr("http://creativecommons.org/licenses/LGPL/2.1").should == "LGPL 2.1"
  end

  # 振舞レベルで一度だけ実行される後処理
  after(:all) do
    puts "\nテスト終了"
  end
end

