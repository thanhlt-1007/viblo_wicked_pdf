class WelcomeController < ApplicationController
  def index
    @mesage = "Hello world"
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "welcome",
               disposition: "inline",
               show_as_html: params["debug"] == "true",
               orientation: "Landscape"
      end
    end
  end
end
