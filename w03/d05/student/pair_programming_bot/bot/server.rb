module Bot
  class Server < Sinatra::Base

    get("/") do
      render(:erb, :index, {:layout => :default_layout})
    end

    get("/write_test") do
      render(:erb, :write_test, {:layout => :default_layout})
    end

    get("/pass") do
      render(:erb, :pass, {:layout => :default_layout})
    end

    get("/refactor") do
      render(:erb, :refactor, {:layout => :default_layout})
    end

    get("/write_code") do
      render(:erb, :write_code, {:layout => :default_layout})
    end

    get("/do_refactor") do
      render(:erb, :do_refactor, {:layout => :default_layout})
    end

    get("/new_feature") do
      render(:erb, :new_feature, {:layout => :default_layout})
    end

  end
end

