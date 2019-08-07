class WelcomeController < ApplicationController
    def welcome
        @first_name =  document.getElementById("myText").value
    end
end
