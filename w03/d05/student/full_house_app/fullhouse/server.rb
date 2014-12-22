module Fullhouse
  class Server < Sinatra::Base

    get("/") do
      render(:erb, :index, {:layout => :default_layout})
    end

    get("/kids_or_parents") do
      render(:erb, :kids_or_parents, {:layout => :default_layout})
    end

    get("/kids") do
      render(:erb, :kids, {:layout => :default_layout})
    end

    get("/parents") do
      render(:erb, :parents, {:layout => :default_layout})
    end

    get("/kid_problems") do
      render(:erb, :kid_problems, {:layout => :default_layout})
    end

    get("/cute") do
      render(:erb, :cute, {:layout => :default_layout})
    end

    get("/credits") do
      render(:erb, :credits, {:layout => :default_layout})
    end

  end
end

